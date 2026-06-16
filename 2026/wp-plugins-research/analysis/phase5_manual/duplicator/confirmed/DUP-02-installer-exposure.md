# DUP-02: Installer Script Exposure - Standalone PHP with Weak Protection

## Severity: Medium (CVSS ~5.9)
## Type: Broken Access Control
## Unauthenticated: Yes (conditional - requires leftover installer files)

## Summary

The Duplicator installer (`installer.php` / `dup-installer/main.installer.php`) is a standalone PHP application that operates completely outside WordPress. When left on the server after a migration (a well-known and common misconfiguration), it provides unauthenticated access to powerful site modification capabilities. The installer's own security mechanisms (CSRF tokens stored in files, optional password protection, archive-name-as-password fallback) have several weaknesses.

## Architecture

The installer consists of:
1. A bootloader (`installer.php`) extracted to the web root
2. A full application in `dup-installer/` with its own CSRF system, AJAX handlers, and multi-step wizard
3. File-based CSRF token storage at `dup-installer/dup-installer-csrf__{packageHash}.txt`

## Security Mechanisms and Their Weaknesses

### 1. CSRF Token System (class.csrf.php)

**Token Generation (line 113-118):**
```php
protected static function token()
{
    $microtime = (int) (microtime(true) * 10000);
    mt_srand($microtime);
    $charid = strtoupper(md5(uniqid(rand(), true)));
    return substr($charid, 0, 8) . substr($charid, 8, 4) . ...;
}
```

Problems:
- Seeds `mt_rand` with microtime, making the PRNG state predictable if server time is approximately known
- Uses `md5(uniqid(rand(), true))` which has known entropy weaknesses
- Tokens are stored in a plaintext JSON file in the `dup-installer` directory

**Fingerprint (line 126-129):**
```php
protected static function fingerprint()
{
    return strtoupper(md5(implode('|', array($_SERVER['REMOTE_ADDR'], $_SERVER['HTTP_USER_AGENT']))));
}
```

The "fingerprint" is just MD5 of IP + User-Agent, both of which an attacker controls/knows.

### 2. Security Type Selection (class.security.php, lines 289-310)

```php
public function getSecurityType()
{
    if (PrmMng::getInstance()->getValue(PrmMng::PARAM_SECURE_OK) == true) {
        return self::SECURITY_NONE;  // Already authenticated
    }
    if ($archiveConfig->secure_on) {
        return self::SECURITY_PASSWORD;  // Password set by admin
    }
    if (DUPX_InstallerState::isOverwrite() &&
        basename($this->bootFilePath) == 'installer.php' &&
        !in_array($_SERVER['REMOTE_ADDR'], self::getSecurityAddrWhitelist())) {
        return self::SECURITY_ARCHIVE;  // Must provide archive filename
    }
    return self::SECURITY_NONE;  // NO SECURITY
}
```

Critical observations:
- If the admin did NOT set a password (`secure_on` is false) and the installer is NOT in overwrite mode, security type is `SECURITY_NONE` - no authentication at all
- `SECURITY_ARCHIVE` only requires knowing the archive filename (which may be discoverable)
- The localhost whitelist (`127.0.0.1`, `::1`) skips even archive-name verification

### 3. CSRF File Accessibility

**File:** `class.csrf.php`, line 168-169
```php
$fileName = 'dup-installer-csrf__' . $packageHash . '.txt';
$filePath = $dupInstallerfolderPath . '/' . $fileName;
```

The CSRF token file is stored in the `dup-installer` directory. While `.php` files are blocked by the parent `.htaccess`, `.txt` files are not explicitly blocked. If the web server serves `.txt` files from this directory, an attacker could read all CSRF tokens directly.

## Attack Scenario

### Prerequisites
- Installer files left on server after migration (common)
- No installer password was set (the default)
- Not an overwrite scenario OR attacker knows archive filename

### Steps
1. Navigate to `https://target.com/installer.php` or `https://target.com/dup-installer/main.installer.php`
2. If no password protection: installer loads with SECURITY_NONE
3. Attempt to read CSRF token file: `https://target.com/dup-installer/dup-installer-csrf__{hash}.txt`
4. Use installer to:
   - Connect to database with provided/discovered credentials
   - Replace entire database
   - Modify wp-config.php
   - Create admin user
   - Extract attacker-controlled archive

## Impact

Complete site takeover:
- Database replacement with attacker-controlled data
- File system modification via archive extraction
- wp-config.php modification (database credentials, auth keys)
- Admin user creation
- Arbitrary PHP code execution via extracted files

## Existing Mitigations

1. Plugin displays persistent admin notices urging cleanup of installer files
2. `performHardenProcesses()` renames installer PHP files to `.bak` extension
3. The main installer checks directory path and exits if accessed from within the plugin directory structure
4. A cleanup step is offered at the end of the installation wizard

## Why This Is Still Relevant

1. Users commonly ignore cleanup warnings
2. Failed or interrupted migrations leave installer files behind
3. Hosting migration tools may preserve files
4. The `.bak` renaming only applies to files in the backup directory, not the web root
5. Server caching may serve old files even after cleanup

## Remediation

1. Auto-delete installer files after successful migration via a cron job or login hook
2. Add time-based expiry to installer files (e.g., self-delete after 24 hours)
3. Require password protection by default (make it mandatory, not optional)
4. Use cryptographically secure token generation (random_bytes) instead of mt_rand/uniqid
5. Store CSRF tokens with a non-web-accessible extension or in a PHP file that dies on direct access
6. Add IP-based rate limiting for the installer's password check endpoint

## Classification Notes

Rated as Medium because:
- Requires a specific misconfiguration (leftover installer files) that is external to the plugin's normal operation
- The plugin actively warns users to clean up installer files
- Modern Duplicator versions include several mitigations
- However, the high prevalence of this misconfiguration in the wild and the catastrophic impact when exploited justify tracking this as a confirmed finding
