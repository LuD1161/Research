# CS-002: Unauthenticated Coming Soon/Maintenance Mode Toggle via API Key

## Severity: Low | CVSS ~3.7 | Auth Required: None (but requires API key knowledge)

## Summary

The `csp_mm_api()` method allows unauthenticated users to toggle Coming Soon Mode and Maintenance Mode by passing the `seedprod_token` and `seedprod_mode` parameters in any HTTP request. Authentication is based solely on matching a static API key stored in the database, with no nonce protection and no rate limiting.

## Affected Code

**File:** `app/render-csp-mm.php:118-160`

```php
public function csp_mm_api() {
    $seedprod_api_key = '';
    if ( defined( 'SEEDPROD_API_KEY' ) ) {
        $seedprod_api_key = SEEDPROD_API_KEY;
    }
    if ( empty( $seedprod_api_key ) ) {
        $seedprod_api_key = get_option( 'seedprod_api_key' );
    }
    if ( ! empty( $seedprod_api_key ) ) {
        if ( isset( $_REQUEST['seedprod_token'] ) && $_REQUEST['seedprod_token'] == $seedprod_api_key ) {
            if ( isset( $_REQUEST['seedprod_mode'] ) ) {
                $mode = absint( $_REQUEST['seedprod_mode'] );
                // ... updates seedprod_settings option to toggle modes
                update_option( 'seedprod_settings', wp_json_encode( $seedprod_settings ) );
                exit();
            }
        }
    }
}
```

**Hooked at:** `add_action( 'init', array( &$this, 'csp_mm_api' ) );` (line 85)

## Reproduction

If you know (or can guess) the API key:

```bash
# Enable maintenance mode (mode=2)
curl 'https://target.com/?seedprod_token=THE_API_KEY&seedprod_mode=2'

# Enable coming soon mode (mode=1)
curl 'https://target.com/?seedprod_token=THE_API_KEY&seedprod_mode=1'

# Disable both modes (mode=0)
curl 'https://target.com/?seedprod_token=THE_API_KEY&seedprod_mode=0'
```

## Security Issues

1. **Loose comparison (`==`):** Line 127 uses `==` instead of `===` for comparing the token, which could theoretically allow type juggling in edge cases (though both values are strings here).

2. **No rate limiting:** An attacker can brute-force the API key without any throttling mechanism.

3. **No nonce verification:** The endpoint relies entirely on the API key for authentication.

4. **`$_REQUEST` superglobal:** Accepts the token from GET, POST, or COOKIE parameters, expanding the attack surface.

5. **Fires on every `init`:** This code runs on every single WordPress request, parsing `$_REQUEST` for the token parameter.

## Impact

**Low in practice.** The API key is typically a long random string (UUID-style), making brute force impractical. However:

- If the API key is leaked (e.g., in server logs, backup files, or config dumps), an attacker could:
  - Enable maintenance mode, effectively taking the site offline for all visitors (DoS)
  - Disable coming soon mode, prematurely exposing a site under development
  - Toggle modes to cause intermittent availability issues

## Mitigating Factors

- The API key must be explicitly set by the admin (via constant or saved via the settings page)
- If `seedprod_api_key` is empty (default for many installations), this endpoint is completely disabled
- UUID-style keys are not feasibly brute-forced

## Remediation

1. Use strict comparison (`===`) for token matching
2. Add rate limiting (e.g., transient-based throttle on failed attempts)
3. Consider requiring HTTP POST method only
4. Log access attempts for audit purposes
