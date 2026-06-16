# BACKUPLY-001: Unauthenticated Privilege Escalation via Session Creation

## Severity: CRITICAL (CVSS ~9.8)

## Summary

The `backuply_creating_session` AJAX handler is registered for both authenticated and unauthenticated users (`wp_ajax_nopriv_backuply_creating_session`). When called with a valid `security` token (the RESTORE_KEY) and `sess_key`, it creates a full WordPress admin session for an unauthenticated user -- effectively logging them in as an administrator.

## Vulnerable Code

**File:** `main/ajax.php`, lines 36-37 (registration):
```php
add_action('wp_ajax_backuply_creating_session', 'backuply_creating_session');
add_action('wp_ajax_nopriv_backuply_creating_session', 'backuply_creating_session');
```

**File:** `main/ajax.php`, lines 562-613 (handler):
```php
function backuply_creating_session(){
    // Security Check
    if(!backuply_verify_self(backuply_optreq('security'), true)){
        backuply_status_log('Security Check Failed', 'error');
        die();
    }
    
    $key = get_option('backuply_restore_session_key');
    
    if(empty($key)){
        wp_send_json(array('success' => false, 'error' => true, 'message' => 'Session Key has not been updated yet!'));
    }
    
    if((time() - $key['time']) > 600 || (isset($_REQUEST['sess_key']) && $_REQUEST['sess_key'] != $key['key'])){
        die();
    }
    
    if(is_user_logged_in()){
        wp_send_json(array('success' => false, 'message' => 'Already logged in'));
    }
    
    // Lines 587-609: Creates admin session
    if(!empty($key['user_id'])){
        $user = get_user_by('id', $key['user_id']);
    }else{
        $user = get_userdata(1);
        // Falls back to any admin
        if(empty($user) || empty($user->user_login)){
            $admin_id = get_users(array('role__in' => array('administrator'), 'number' => 1, 'fields' => array('ID')));
            $user = get_userdata($admin_id[0]->ID);
        }
    }

    // Sets auth cookies for the admin user
    wp_clear_auth_cookie();
    wp_set_current_user($user->ID, $user->user_login);
    wp_set_auth_cookie($user->ID, 1, is_ssl());
    do_action('wp_login', $user->user_login, $user);
}
```

## Attack Prerequisites

1. **RESTORE_KEY must be known:** The `security` parameter is verified against `RESTORE_KEY` stored in the `backuply_config_keys` WP option. This key is a 64-character hex string generated via `openssl_random_pseudo_bytes(32)`.

2. **sess_key must be known:** The `sess_key` parameter must match the value stored in `backuply_restore_session_key` option, which is set during a restore operation.

3. **Timing window:** The session key must be used within 600 seconds (10 minutes) of creation.

## Exploitability Analysis

**Direct brute-force of RESTORE_KEY:** Infeasible -- 64 hex chars = 256 bits of entropy.

**Realistic attack scenarios:**

1. **During active restore operations:** When an admin triggers a restore, the RESTORE_KEY is sent to the frontend via `backuply_get_restore_key` AJAX endpoint (line 536-558) and returned in the JSON response. If an attacker can observe network traffic (MITM, shared hosting logs, browser extension), they obtain the key.

2. **Config file exposure:** The RESTORE_KEY is written to `wp-content/backuply/backuply_config.php` with a `<?php exit();?>` prefix. While the PHP prefix prevents direct reading via HTTP, the file is only chmod 0600. On shared hosting or if `.htaccess` protection is missing/bypassed (Nginx without equivalent rules), the file could be readable.

3. **Post-compromise chain:** If any other vulnerability leaks the RESTORE_KEY (e.g., through a separate LFI/information disclosure bug in another plugin), this endpoint converts a read-only leak into full admin access.

**Critical design flaw:** The endpoint exists as `nopriv` specifically to re-authenticate the admin user after a restore that may have changed the database (invalidating session cookies). However, the auth mechanism is a static secret rather than a proper WP nonce, meaning it has no CSRF protection and the token can be reused within the 10-minute window.

## Impact

- **Full administrator access** to the WordPress site
- Complete site takeover: modify content, install backdoors, access database
- The 10-minute window during/after any restore operation is the vulnerable period

## Classification

- CWE-287: Improper Authentication
- CWE-306: Missing Authentication for Critical Function
- The endpoint creates an authenticated admin session for unauthenticated callers using a custom (non-WP-nonce) token scheme

## Recommendation

1. Remove the `wp_ajax_nopriv_` registration entirely -- this should never be accessible to unauthenticated users
2. Use WP nonces + capability checks instead of custom token auth
3. If the post-restore re-auth flow is necessary, implement it through a signed, single-use, short-lived URL rather than a reusable token
