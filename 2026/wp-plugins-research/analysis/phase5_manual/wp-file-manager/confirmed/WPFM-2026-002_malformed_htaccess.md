# WPFM-2026-002: Malformed .htaccess Protection for Backup Directory

## Severity: Low (CVSS ~2.0)

## Affected Version
WP File Manager <= 8.0.4

## Vulnerability Type
Defense-in-Depth Failure / Information Disclosure (conditional)

## Location
- `file_folder_manager.php` lines 115-127 (`create_auto_directory` method)

## Description

The plugin creates an `.htaccess` file in the backup directory (`wp-content/uploads/wp-file-manager-pro/fm_backup/`) to prevent direct access to backup files. However, the generated `.htaccess` has a mismatched directive tag:

```php
$txt = '<FilesMatch "\.(zip|gz)$">';
$txt .= "\nOrder allow,deny\n";
$txt .= "Deny from all\n";
$txt .= "</Files>";  // BUG: Should be </FilesMatch>
```

The resulting `.htaccess` file contains:
```apache
<FilesMatch "\.(zip|gz)$">
Order allow,deny
Deny from all
</Files>
```

The opening tag is `<FilesMatch>` but the closing tag is `</Files>`. These are different Apache directives. Depending on the Apache version and configuration:

- **Apache 2.4+**: May silently ignore the malformed block or throw a 500 error
- **Apache 2.2**: May partially parse it or ignore it
- **Nginx**: `.htaccess` files have no effect whatsoever

### Impact Analysis

If the `.htaccess` is ineffective, backup files become directly accessible via URL if the attacker can guess the filename. Backup filenames follow the pattern: `{timestamp-based-name}-{type}.{ext}` (e.g., `1718534400-db.sql.gz`, `1718534400-plugins.zip`).

Backup files contain:
- **Database dumps** (`-db.sql.gz`): Full WordPress database including user tables, options (with secret keys), and plugin settings
- **Plugin archives** (`-plugins.zip`): All installed plugins including potentially paid/premium plugins
- **Theme archives** (`-themes.zip`): All themes
- **Upload archives** (`-uploads.zip`): All media files
- **Others** (`-others.zip`): Remaining wp-content directories

## Proof of Concept

On a Nginx server (or Apache with malformed htaccess silently ignored):

```
GET /wp-content/uploads/wp-file-manager-pro/fm_backup/{backup_name}-db.sql.gz
```

The backup name is typically generated from a combination of timestamp and random elements. The attacker would need to enumerate or guess the backup name, but there is also an `index.html` (empty) in the directory, so directory listing may be possible if Apache's `Options +Indexes` is enabled.

## Remediation

1. Fix the closing tag to match the opening tag:
   ```php
   $txt = '<FilesMatch "\.(zip|gz)$">';
   $txt .= "\nOrder allow,deny\n";
   $txt .= "Deny from all\n";
   $txt .= "</FilesMatch>";
   ```

2. Add Nginx-compatible protection by generating an empty `index.php` (not just `index.html`) with a die statement.

3. Store backups outside the webroot, or use a randomized directory name.

4. Add a catch-all deny in the `.htaccess`:
   ```apache
   deny from all
   ```

## Risk Assessment

This is primarily a defense-in-depth issue. Exploitation requires:
1. The server to be Nginx (no .htaccess support) or Apache with the malformed directive being ignored
2. The attacker to discover or guess the backup filename
3. A backup to actually exist

The combination makes real-world exploitation unlikely but not impossible, especially on Nginx servers where the only protection is filename obscurity.
