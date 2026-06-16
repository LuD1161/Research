# PL-001: Stored XSS via Unescaped Stripe Account Name

## Severity: Low (CVSS 4.8)
## Vulnerability Class: Stored Cross-Site Scripting (XSS)
## Unauthenticated: No (requires prior DB write access)

## Location

- **File**: `app/views/admin/payments/options.php`
- **Line**: 70
- **Flow ID**: `pretty-link-xss-010`

## Description

The Stripe service account name retrieved from `get_option('prli_stripe_service_account_name')` is rendered in an admin page without HTML escaping.

```php
// Line 15
$service_account_name = get_option( 'prli_stripe_service_account_name' );

// Line 70
printf( __( 'Connected to: %1$s %2$s %3$s', 'pretty-link' ), '<strong>', $service_account_name, '</strong>' );
```

The `$service_account_name` is inserted directly into HTML output via `printf()`. If this option contains HTML or JavaScript, it will be rendered in the browser.

## Attack Prerequisites

1. The attacker must be able to write to the `wp_options` table (specifically the `prli_stripe_service_account_name` row).
2. This requires either:
   - Direct database access
   - A separate SQL injection vulnerability
   - A compromised Stripe Connect callback that sets this value (the value comes from the Stripe service API response in `PrliStripeConnectController`)

## Exploit Scenario

1. Attacker compromises the Stripe Connect callback or finds a way to write `<script>alert(document.cookie)</script>` into `prli_stripe_service_account_name`
2. Any administrator visits Pretty Link > Settings > Payments tab
3. The JavaScript executes in the admin's browser context
4. Attacker can steal session cookies, create new admin accounts, or modify site content

## Impact

- Admin session hijacking
- Privilege escalation if chained with a write primitive
- Limited by requiring prior write access to wp_options

## Remediation

```php
// Fix: Apply esc_html() to the variable
printf( __( 'Connected to: %1$s %2$s %3$s', 'pretty-link' ), '<strong>', esc_html( $service_account_name ), '</strong>' );
```

## Verification

The option value is set in `PrliStripeConnectController::process_update_creds()` from the Stripe service API response body. The response value is stored without sanitization:

```php
// PrliStripeConnectController.php - the value comes from external API
update_option('prli_stripe_service_account_name', $creds['account_name']);
```

This confirms the value could contain attacker-controlled content if the Stripe service response is manipulated.
