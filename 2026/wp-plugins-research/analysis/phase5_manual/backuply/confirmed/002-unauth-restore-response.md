# BACKUPLY-002: Unauthenticated Restore Response Handler

## Severity: MEDIUM (CVSS ~5.3)

## Summary

The `backuply_restore_response` AJAX handler is registered as `wp_ajax_nopriv_backuply_restore_response` (line 34 of ajax.php). It is protected by `backuply_verify_self()` using the RESTORE_KEY, but if called with a valid key, an unauthenticated user can:

1. Trigger database serialization repair operations
2. Trigger email notifications to the admin
3. Delete restoration files
4. Manipulate restore state

## Vulnerable Code

**File:** `main/ajax.php`, line 34:
```php
add_action('wp_ajax_nopriv_backuply_restore_response', 'backuply_restore_response');
```

**File:** `main/ajax.php`, lines 344-442:
```php
function backuply_restore_response($is_last = false) {
    if(!backuply_verify_self(backuply_optreq('security'), true)){
        backuply_status_log('Security Check Failed', 'error');
        die();
    }

    // Triggers DB serialization repair if restore_db + is_migrating are set
    if(!$is_last && !empty($_REQUEST['restore_db']) && !empty($_REQUEST['is_migrating'])){
        $session_data = array('time' => time(), 'key' => backuply_optreq('sess_key'), 'user_id' => backuply_optreq('user_id'));
        update_option('backuply_restore_session_key', $session_data, false);
        // ...
    }
    // Sends email with site path info
    // Cleans up restoration files
}
```

## Key Observation

At line 354, the handler writes `$_REQUEST['sess_key']` and `$_REQUEST['user_id']` into the `backuply_restore_session_key` option. This is the same option that `backuply_creating_session` (BACKUPLY-001) reads to authenticate session creation. This means: if an attacker has the RESTORE_KEY, they can:

1. Call `backuply_restore_response` with `restore_db=1&is_migrating=1&sess_key=CHOSEN_VALUE&user_id=1`
2. This sets `backuply_restore_session_key` with their chosen `sess_key` and `user_id`
3. Then call `backuply_creating_session` with `security=RESTORE_KEY&sess_key=CHOSEN_VALUE`
4. Get an admin session for user_id=1

This makes the BACKUPLY-001 attack chain self-contained -- the attacker only needs the RESTORE_KEY.

## Also Registered as nopriv

`backuply_update_serialization_ajax` (line 35) and `backuply_restore_status_log` (lines 48-49) are also nopriv. The serialization handler uses `backuply_verify_self` with RESTORE_KEY. The status log handler uses a separate `status_key` verification.

## Impact

- Enables the full attack chain for BACKUPLY-001 (privilege escalation)
- Information disclosure via email notifications containing site paths
- Potential DoS through database manipulation operations

## Classification

- CWE-306: Missing Authentication for Critical Function
- CWE-639: Authorization Bypass Through User-Controlled Key (user_id in request)
