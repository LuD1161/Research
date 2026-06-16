# CS-001: Missing Nonce and Capability Check in seedprod_lite_template_subscribe

## Severity: Low | CVSS ~4.3 | Auth Required: Subscriber+

## Summary

The `seedprod_lite_template_subscribe` AJAX handler is registered as `wp_ajax_seedprod_lite_template_subscribe` but contains zero security checks -- no nonce verification and no capability check. Any authenticated WordPress user, including subscribers, can invoke it.

## Affected Code

**File:** `app/lpage.php:905-908`

```php
function seedprod_lite_template_subscribe() {
    update_option( 'seedprod_free_templates_subscribed', true );
    exit();
}
```

**Registration in `app/routes.php:68`:**
```php
add_action( 'wp_ajax_seedprod_lite_template_subscribe', 'seedprod_lite_template_subscribe' );
```

## Reproduction

1. Log in as any WordPress user (subscriber role is sufficient)
2. Send a POST request:
   ```
   POST /wp-admin/admin-ajax.php
   Content-Type: application/x-www-form-urlencoded

   action=seedprod_lite_template_subscribe
   ```
3. The `seedprod_free_templates_subscribed` option is set to `true`

## Impact

**Minimal.** The only effect is setting a single boolean option that enables free template access in the SeedProd admin UI. This does not:
- Expose sensitive data
- Enable privilege escalation
- Modify site content or configuration
- Affect non-admin users or frontend visitors

The practical risk is negligible, but it violates WordPress security best practices for AJAX handlers.

## Root Cause

The function was likely intended to be called from the admin settings page but was registered without the standard security wrapper pattern:

```php
// Expected pattern (missing from this handler):
if ( check_ajax_referer( 'seedprod_nonce' ) ) {
    if ( ! current_user_can( 'manage_options' ) ) {
        wp_send_json_error();
    }
    // ... actual logic
}
```

## Remediation

```php
function seedprod_lite_template_subscribe() {
    check_ajax_referer( 'seedprod_nonce' );
    if ( ! current_user_can( apply_filters( 'seedprod_save_settings_capability', 'edit_others_posts' ) ) ) {
        wp_send_json_error( null, 403 );
    }
    update_option( 'seedprod_free_templates_subscribed', true );
    exit();
}
```
