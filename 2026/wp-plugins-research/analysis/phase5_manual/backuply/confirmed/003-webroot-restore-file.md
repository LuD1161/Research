# BACKUPLY-003: Temporary Restore PHP File Written to Web Root

## Severity: HIGH (CVSS ~7.5)

## Summary

During the restore process, Backuply writes a PHP file `backuply-restore.php` directly into the WordPress web root (`ABSPATH`). This file contains hardcoded paths to the plugin directory and includes `restore_ins.php`. It persists beyond the restore operation if cleanup fails, creating a permanent unauthenticated entry point.

## Vulnerable Code

**File:** `functions.php`, lines 1703-1710:
```php
$tmp_restore_file = ABSPATH . '/backuply-restore.php';
$tmp_restore_include = "<?php\ndefine('BACKUPLY_DIR_FOR_RESTORE', '".BACKUPLY_DIR."');\ninclude_once '".BACKUPLY_DIR."/restore_ins.php';";

if(file_put_contents($tmp_restore_file, $tmp_restore_include)){
    $restore_url = site_url() . '/backuply-restore.php';
} else {
    $restore_url = BACKUPLY_URL . '/restore_ins.php';
}
```

## Attack Vectors

### 1. Stale File After Failed Restore

If a restore operation fails or is interrupted (server crash, timeout, OOM), the cleanup in `backuply_restore_response` may never execute. The file `backuply-restore.php` persists in the web root indefinitely.

Cleanup only happens in `backuply_restore_response` (ajax.php) and `backuply_force_stop` -- both require explicit calls.

### 2. File Discovery

The file is at a predictable path: `https://target.com/backuply-restore.php`. Any attacker can check for its existence.

### 3. What the File Does When Accessed

When accessed directly, `restore_ins.php` is included. At line 8-11:
```php
if(isset($_REQUEST['status_key']) && defined('BACKUPLY_DIR_FOR_RESTORE')){
    include_once BACKUPLY_DIR_FOR_RESTORE . '/status_logs.php';
    die();
}
```

This means: if the attacker provides `status_key` parameter, it loads `status_logs.php` which reads and returns log file contents. The status_key is verified against a file on disk (`status_key.php`), but the mere existence of this endpoint expands attack surface.

At line 13:
```php
if(empty($_SERVER['REQUEST_METHOD']) || $_SERVER['REQUEST_METHOD'] !== 'POST' || !backuply_verify_self()){
    die('HACKING ATTEMPT!');
}
```

POST requests with a valid `restore_key` parameter proceed to the full restore logic.

### 4. Path Information Disclosure

The file itself contains the absolute server path to the plugin directory:
```php
define('BACKUPLY_DIR_FOR_RESTORE', '/var/www/html/wp-content/plugins/backuply');
```

If the file is somehow readable (e.g., source disclosure vulnerability), this leaks server paths.

## Impact

- **Persistent unauthenticated endpoint** in the web root after failed restores
- Combined with RESTORE_KEY knowledge, enables unauthenticated full restore operations
- Server path information disclosure
- Bypass of WordPress's plugin loading and authentication infrastructure

## Classification

- CWE-459: Incomplete Cleanup
- CWE-552: Files or Directories Accessible to External Parties
- CWE-200: Exposure of Sensitive Information (path disclosure)

## Recommendation

1. Never write PHP files to the web root
2. Use WordPress's built-in AJAX or REST API infrastructure instead
3. If a temporary file is absolutely necessary, use wp_tempnam() and delete it in a finally/shutdown handler
4. Add a cron job to clean stale restore files
