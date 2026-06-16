# WPFM-2026-001: Backup Download REST Endpoint Uses Weak Static Secret Instead of Capability Check

## Severity: Medium (CVSS ~4.3)

## Affected Version
WP File Manager <= 8.0.4

## Vulnerability Type
Broken Access Control / Insecure Direct Object Reference

## Location
- `file_folder_manager.php` lines 53-66 (route registration)
- `file_folder_manager.php` lines 1372-1441 (`fm_download_backup` callback)
- `file_folder_manager.php` lines 1447-1530 (`fm_download_backup_all` callback)

## Description

The plugin registers two REST API endpoints for downloading backup files:

- `GET /wp-json/v1/fm/backup/{backup_id}/{type}/{key}`
- `GET /wp-json/v1/fm/backupall/{backup_id}/{type}/{key}/{all}`

Both endpoints use `'permission_callback' => '__return_true'`, meaning WordPress performs no capability check on the requesting user. Instead, authorization relies on a static secret: the URL parameter `key` must equal `base64_encode(site_url() . $fm_key)` where `$fm_key` is a 25-character random alphanumeric string stored in `wp_options`.

### Mitigating Factor: Conditional Route Registration

The routes are registered inside a `rest_api_init` callback that checks `current_user_can('manage_options')`:

```php
add_action('rest_api_init', function () {
    if(current_user_can('manage_options') || (is_multisite() && current_user_can('manage_network'))){
        register_rest_route('v1', '/fm/backup/...', array(
            'methods' => 'GET',
            'callback' => array($this, 'fm_download_backup'),
            'permission_callback' => '__return_true',
        ));
    }
});
```

This means the REST routes only exist during requests where the current user is an admin. For unauthenticated requests, the routes are never registered and return 404. This is an unconventional but somewhat effective gate.

### Why This Is Still a Weakness

1. **Security-by-obscurity**: The authorization secret (`fm_key`) is a static value that never rotates. It is exposed in the admin-only backup page HTML source as part of download link data attributes (line 230 of `inc/backup.php`).

2. **Secret leakage vectors**: The key could leak via:
   - Browser history or proxy logs containing the full download URL
   - Cached HTML pages (CDN, reverse proxy, browser cache)
   - Referrer headers if the download redirects
   - A separate information disclosure vulnerability

3. **Anti-pattern**: WordPress best practice is to use `permission_callback` with a proper capability check, not `__return_true` with a custom secret. The conditional registration pattern is fragile and non-obvious.

4. **Backup sensitivity**: Backup files contain database dumps (`-db.sql.gz`) which include all WordPress users, password hashes, secret keys, and potentially plugin configuration with API keys.

## Proof of Concept

If an attacker obtains the `fm_key` value and knows the `site_url()`, they can construct a download URL:

```
GET /wp-json/v1/fm/backup/{base64(id)}/{base64(type)}/{base64(site_url + fm_key)}
```

However, the route must be registered by an admin making a concurrent request, making real-world exploitation difficult without additional vulnerabilities.

## Remediation

1. Replace `'permission_callback' => '__return_true'` with a proper capability check:
   ```php
   'permission_callback' => function() {
       return current_user_can('manage_options');
   }
   ```
2. Remove the conditional route registration (it becomes redundant with a proper permission_callback).
3. Add nonce verification for the download endpoints.
4. Rotate the `fm_key` periodically or use WordPress nonces instead.

## Impact

**Without additional vulnerabilities**: Minimal direct impact due to conditional route registration preventing unauthenticated access.

**With fm_key leakage**: An attacker could download full site backups including database dumps with user credentials, potentially leading to complete site compromise.
