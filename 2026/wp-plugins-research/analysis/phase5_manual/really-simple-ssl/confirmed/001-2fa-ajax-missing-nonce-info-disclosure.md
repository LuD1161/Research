# CONFIRMED: 2FA AJAX Handler Missing Nonce + Token Hash Disclosure

## Finding ID
`really-simple-ssl-xss-002` (reclassified from XSS to Information Disclosure)

## Severity
Low-Medium (CVSS 4.3)

## Affected File
`security/wordpress/two-fa/class-rsssl-two-factor-profile-settings.php`

## Affected Version
Current (as of 2026-06-16)

## Vulnerability Class
Information Disclosure / Missing CSRF Protection on Authenticated AJAX

## Authentication Required
Subscriber (any authenticated WordPress user)

## Description

The `start_email_validation_callback()` method is registered as a WordPress AJAX handler via:

```php
// Line 124
add_action( 'wp_ajax_change_method_to_email', [$this, 'start_email_validation_callback'] );
```

The handler implementation at lines 167-177:

```php
public function start_email_validation_callback(): void
{
    if(!is_user_logged_in()) {
        wp_send_json_error( array( 'message' => __( 'User not logged in.', 'really-simple-ssl' ) ), 401 );
    }
    $user = get_user_by('id', get_current_user_id());
    // Sending the email with the code.
    Rsssl_Two_Factor_Email::get_instance()->generate_and_email_token($user, true);
    $token = get_user_meta( $user->ID, Rsssl_Two_Factor_Email::RSSSL_TOKEN_META_KEY, true );
    wp_send_json_success( array( 'message' => __('Verification code sent', 'really-simple-ssl'), 'token' => $token ), 200 );
}
```

### Issues

1. **Missing Nonce Verification**: The AJAX handler does not call `check_ajax_referer()` or `wp_verify_nonce()`. Any authenticated user can call this endpoint without CSRF protection. A malicious page could trigger this via a cross-origin POST request from a logged-in user's browser.

2. **Token Hash Disclosure**: The handler reads the stored `_rsssl_factor_email_token` user meta and returns it in the JSON response. While the stored value is `wp_hash($token)` (not the plaintext token), this hash is an internal value that should not be exposed to the client. The `generate_token()` method stores:
   ```php
   update_user_meta( $user_id, self::RSSSL_TOKEN_META_KEY, wp_hash( $token ) );
   ```

### Exploitation Limitations

- The wp_hash() uses HMAC-MD5 with NONCE_SALT, so knowing the hash does not directly reveal the plaintext token
- The `validate_token()` method re-computes `wp_hash()` on the user-supplied code and compares, so the leaked hash cannot be directly used as a bypass
- The attacker can only trigger token generation for their own account (uses `get_current_user_id()`)
- The main practical impact is: (a) CSRF-triggered email spam (repeated token emails), and (b) unnecessary exposure of internal cryptographic material

## PoC Sketch

```
POST /wp-admin/admin-ajax.php HTTP/1.1
Cookie: [any-authenticated-session-cookie]

action=change_method_to_email

Response:
{"success":true,"data":{"message":"Verification code sent","token":"<wp_hash_of_token>"}}
```

## Remediation

1. Add `check_ajax_referer('rsssl_two_fa_nonce', 'nonce')` at the start of the handler
2. Remove the `'token' => $token` from the JSON response - the client has no legitimate need for the stored hash
