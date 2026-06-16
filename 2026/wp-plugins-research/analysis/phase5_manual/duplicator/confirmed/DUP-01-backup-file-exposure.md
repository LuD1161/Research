# DUP-01: Backup Archives Directly Accessible via Web Server

## Severity: Medium (CVSS ~5.3)
## Type: Information Disclosure / Broken Access Control
## Unauthenticated: Yes (conditional)

## Summary

Duplicator stores backup archives (`.zip` and `.daf` files) in a web-accessible directory (`wp-content/backups-dup-lite/`). The `.htaccess` protection is insufficient: it only blocks `.php` files and does not deny access to `.zip` archive files. On servers not using Apache (e.g., Nginx), the `.htaccess` provides zero protection.

## Vulnerable Code

**File:** `classes/utilities/class.u.php`, lines 628-657

The `.htaccess` file created in the backup directory:

```
Options -Indexes
<Files *.php>
    deny from all
</Files>
<IfModule mod_headers.c>
    <FilesMatch "\.(daf)$">
        ForceType application/octet-stream
        Header set Content-Disposition attachment
    </FilesMatch>
</IfModule>
```

Key observations:
1. Only `.php` files are denied - `.zip` archives are freely accessible
2. The `.daf` rule sets download headers but does NOT deny access
3. `Options -Indexes` prevents directory listing but not direct file access
4. No equivalent protection exists for Nginx, IIS, or other web servers
5. The `storage_htaccess_off` setting allows admins to disable even this protection

**File:** `classes/class.settings.php`, lines 347-368

Backup directory paths:
- New: `wp-content/backups-dup-lite/`
- Legacy: `{ABSPATH}/wp-snapshots/`

Both are under the web root.

## Archive Filename Format

**File:** `classes/package/class.pack.php`, lines 460, 1622-1633

```php
$this->Archive->File = "{$this->NameHash}_archive.{$extension}";
// where NameHash = "{$name}_{$hash}"
// and hash = bin2hex(random_bytes(8)) . mt_rand(1000,9999) . '_' . date("YmdHis")
```

Example filename: `MySite_a1b2c3d4e5f6g7h81234_20260616120000_archive.zip`

The hash contains 16 hex chars + 4-digit random + underscore + 14-char timestamp. While the random component makes blind brute-force infeasible, several factors reduce the effective entropy:

1. The default package name is the site title (publicly visible)
2. The timestamp is deterministic if creation time is known
3. On legacy installs, the path `wp-snapshots/` is even more predictable

## Attack Scenarios

### Scenario 1: Nginx Server (No .htaccess support)
All backup files are directly accessible at their URLs. If `autoindex` is enabled on the directory, complete file listing is available.

### Scenario 2: Apache with Directory Listing Misconfiguration
If `Options -Indexes` is overridden by a higher-level config, directory listing exposes all filenames.

### Scenario 3: Filename Disclosure via Information Leaks
- Build log files (`{nameHash}.log`) in the backup directory may reveal filenames
- The scan JSON file (`{nameHash}_scan.json`) is stored alongside backups
- Error messages or debug output may leak the filename
- Search engine crawling (robots.txt present but not enforceable)

### Scenario 4: Admin Disables .htaccess
The `storage_htaccess_off` setting (accessible at Settings > Storage) removes the `.htaccess` entirely, making all files accessible.

## Impact

A downloaded backup archive contains:
- Complete database dump with all user password hashes
- `wp-config.php` with database credentials, auth keys, and salts
- All plugin/theme source code (potentially premium/licensed)
- Uploaded media files
- Any other files in the WordPress installation

This enables:
- Direct database access using disclosed credentials
- Admin account takeover via password hash cracking or auth key forging
- Source code review for additional vulnerabilities

## Proof of Concept

```bash
# If filename is known (e.g., from log leak or directory listing):
curl -o backup.zip https://target.com/wp-content/backups-dup-lite/MySite_abc123def456_20260615120000_archive.zip

# On Nginx with autoindex:
curl https://target.com/wp-content/backups-dup-lite/
```

## Remediation

1. Add `.zip` and `.daf` to the deny rules in `.htaccess`:
   ```
   <FilesMatch "\.(zip|daf|sql|log|json)$">
       deny from all
   </FilesMatch>
   ```
2. Ship an `nginx.conf` snippet or documentation for Nginx protection
3. Consider using `wp-admin/admin-ajax.php` as the only download path (already exists for installer downloads)
4. Add an `.htaccess` that denies ALL files by default and only allows specific file types if needed
5. Consider storing backups outside the web root

## Classification Notes

Rated as Medium rather than High because:
- The random hash makes blind brute-force of filenames effectively impossible
- Requires either Nginx (no .htaccess), a secondary info leak, or admin misconfiguration
- The plugin does make reasonable effort with .htaccess, but the gap for .zip files is a design oversight
