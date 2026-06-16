# ACF-2026-002: Open Redirect via acf_form() Frontend Submission (Degraded Crypto Path)

## Severity: Low (CVSS ~3.7)

## Affected Component
- **Plugin**: Advanced Custom Fields (ACF) 6.8.x
- **File**: `includes/forms/form-front.php`, line 435
- **Function**: `submit_form()` -> `wp_redirect($return)`

## Vulnerability Type
Open Redirect (CWE-601)

## Precondition
The target site must:
1. Use `acf_form()` to render a frontend form, AND
2. Meet one of these degraded conditions:
   - Server lacks the OpenSSL PHP extension (base64 fallback), OR
   - WordPress secret keys (AUTH_KEY/AUTH_SALT) have been leaked (e.g., via LFI, exposed wp-config.php backup), OR
   - A developer passes user-controlled input to the `return` parameter of `acf_form()`

## Root Cause

The ACF frontend form stores form configuration (including the return/redirect URL) in an encrypted POST parameter `_acf_form`. On form submission:

```php
// form-front.php, line 360
$form = json_decode( acf_decrypt( sanitize_text_field( $_POST['_acf_form'] ) ), true );

// form-front.php, line 435
wp_redirect( $return ); // phpcs:ignore ... unsafe redirects allowed
exit;
```

The redirect uses `wp_redirect()` instead of `wp_safe_redirect()`, explicitly allowing redirects to any external domain. The only protection is the encryption of the form data.

## Encryption Analysis

The `acf_encrypt()`/`acf_decrypt()` functions (api-helpers.php, lines 3797-3847) use:

- **Primary**: AES-256-CBC via `openssl_encrypt()` with key derived from `wp_hash('acf_encrypt')`, which is `hash_hmac('md5', 'acf_encrypt', AUTH_KEY . AUTH_SALT)`
- **Fallback**: If `openssl_encrypt` is unavailable, falls back to **plain base64** encoding/decoding

The nonce is checked BEFORE decryption (line 346: `acf_verify_nonce('acf_form')`), but WordPress nonces are CSRF tokens, not authentication gates. Unauthenticated users (user ID 0) receive valid nonces when visiting the form page.

## Attack Scenarios

### Scenario A: No OpenSSL (base64 fallback)
1. Attacker crafts JSON: `{"return":"https://evil.com","post_id":"new_post","fields":[],...}`
2. Base64-encodes it
3. Obtains a valid `_acf_nonce` by visiting the public form page
4. Submits form with forged `_acf_form` parameter
5. Victim is redirected to `https://evil.com`

### Scenario B: Leaked wp-config.php keys
1. Attacker obtains AUTH_KEY + AUTH_SALT (e.g., from exposed backup file)
2. Computes encryption key: `hash_hmac('md5', 'acf_encrypt', AUTH_KEY . AUTH_SALT)`
3. Encrypts arbitrary JSON with the derived AES key
4. Submits form with forged payload -> open redirect

### Scenario C: Developer misuse
If a developer passes user input to `acf_form(['return' => $_GET['redirect']])`, the redirect URL is attacker-controlled inside a validly encrypted blob.

## Impact

- Phishing: Redirect users from a trusted domain to an attacker-controlled lookalike
- OAuth token theft: If combined with OAuth flows
- Trust exploitation: The redirect originates from the legitimate WordPress domain

## Mitigating Factors

- OpenSSL is available on the vast majority of PHP installations (Scenario A is rare)
- wp-config.php key exposure requires a separate vulnerability (Scenario B)
- The nonce provides CSRF protection (attacker cannot force a victim to submit the form cross-origin)
- Developer misuse (Scenario C) is the developer's responsibility

## Recommended Fix

1. Replace `wp_redirect($return)` with `wp_safe_redirect($return)` or validate against `allowed_redirect_hosts`
2. Remove the base64 fallback in `acf_decrypt()` -- if OpenSSL is unavailable, refuse to process encrypted form data
3. Validate the `return` URL scheme (must be http/https) and optionally restrict to same-origin
