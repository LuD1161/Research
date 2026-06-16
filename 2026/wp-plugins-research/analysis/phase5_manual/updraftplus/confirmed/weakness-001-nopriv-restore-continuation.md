# Weakness: Unauthenticated Restore Continuation Handler

## Overview
- **ID**: updraftplus-weakness-001
- **Severity**: Low (CVSS ~3.1)
- **Type**: Broken Access Control / Missing Authentication
- **Exploitability**: Requires knowledge of active job_id (info leak prerequisite)
- **Affected File**: `admin.php`
- **Lines**: 557-559, 748-753, 5667-5678

## Description

UpdraftPlus registers `wp_ajax_nopriv_updraft_ajaxrestore_continue` (admin.php:559), allowing unauthenticated users to reach the `updraft_ajaxrestore()` method. The nonce check at line 751 is conditional:

```php
public function updraft_ajaxrestore() {
    $request_action = UpdraftPlus_Manipulation_Functions::fetch_superglobal('request', 'action');
    $request_nonce = UpdraftPlus_Manipulation_Functions::fetch_superglobal('request', 'nonce');
    if ('updraft_ajaxrestore' === $request_action && (empty($request_nonce) || !wp_verify_nonce($request_nonce, 'updraftplus-credentialtest-nonce'))) die('Security Check');
    $this->prepare_restore();
    die();
}
```

When called via `action=updraft_ajaxrestore_continue`, the condition `'updraft_ajaxrestore' === $request_action` is false, so the nonce check is entirely skipped.

In `prepare_restore()` (line 5676-5678), the only guard for the `_continue` path is:

```php
if (isset($_REQUEST['action']) && 'updraft_ajaxrestore_continue' === $_REQUEST['action']) {
    $restore_in_progress = get_site_option('updraft_restore_in_progress');
    if (empty($restore_in_progress) || !$restore_job_id || $restore_job_id !== $restore_in_progress) die;
}
```

There is **no `current_user_can()` check** anywhere in this code path.

## Exploitation Requirements

1. An admin must have an active restore operation in progress (the `updraft_restore_in_progress` site option must be set)
2. The attacker must know the 12-hex-character job_id, which is generated as `substr(md5(time().wp_rand()), 20)` (class-updraftplus.php:937)
3. `wp_rand()` uses PHP's CSPRNG when available, making the job_id effectively 48 bits of entropy

## Attack Scenario

```
POST /wp-admin/admin-ajax.php HTTP/1.1
Content-Type: application/x-www-form-urlencoded

action=updraft_ajaxrestore_continue&job_id=<leaked_job_id>&updraftplus_ajax_restore=do_ajax_restore
```

If the job_id matches, the attacker can:
- Continue/resume the active restore operation
- Potentially inject filesystem credentials via `$_REQUEST` (line 5752-5757)
- Influence the restore flow through `$_REQUEST` parameters

## Why This Is "Low" Not "Medium/High"

1. **Cannot initiate a new restore** - only continue an existing one started by an admin
2. **Job ID has 48 bits of entropy** - brute-forcing ~281 trillion combinations is impractical
3. **Restore must already be in progress** - narrow time window
4. **Requires info leak** - the job_id would need to be leaked from logs, error messages, or a separate vulnerability
5. **The restore operates on backups already present** - cannot inject arbitrary backup files

## Historical Context

This is architecturally similar to CVE-2022-0633 (backup download without auth), which was also an authorization bypass where the nonce was the only intended guard but could be leaked to subscribers. The current code acknowledges the issue in a comment at line 5676: "unlike updraft_ajaxrestore which requires nonce to start a new restoration, updraft_ajaxrestore_continue doesn't require nonces at all so additional checks are required" - yet the "additional checks" are only job_id matching, not capability verification.

## Recommendation

Add `current_user_can('manage_options')` check in the continuation path:

```php
if (isset($_REQUEST['action']) && 'updraft_ajaxrestore_continue' === $_REQUEST['action']) {
    if (!UpdraftPlus_Options::user_can_manage()) die('Unauthorised.');
    $restore_in_progress = get_site_option('updraft_restore_in_progress');
    if (empty($restore_in_progress) || !$restore_job_id || $restore_job_id !== $restore_in_progress) die;
}
```

Alternatively, remove the `nopriv` hooks entirely since restore operations should always require authentication.
