# WPVIVID-003: SQL Injection in Export Post Type Query (Admin-Only)

## Severity: LOW (CVSS ~3.8)

## Summary

The `export_post_step2` AJAX handler constructs a SQL query by directly interpolating a user-supplied `post_type` value without using `$wpdb->prepare()`. While `sanitize_text_field()` is applied, this function does not prevent SQL injection. However, the handler requires `manage_options` capability and a valid nonce, limiting exploitability to authenticated administrators who already have full database access.

## Vulnerable Code

**File:** `includes/class-wpvivid-export-import.php`

### Auth Check (lines 612-618)

```php
public function export_post_step2()
{
    check_ajax_referer( 'wpvivid_ajax', 'nonce' );
    $check = current_user_can('manage_options');
    $check = apply_filters('wpvivid_ajax_check_security', $check);
    if(!$check) { die(); }
```

### SQL Injection (lines 622, 679)

```php
$post_type = sanitize_text_field($_POST['post_type']);
// ... ~57 lines of HTML output ...
$authors = $wpdb->get_col(
    "SELECT DISTINCT post_author FROM {$wpdb->posts} WHERE post_type = '$post_type'"
);
```

## Why sanitize_text_field Does Not Prevent SQLi

`sanitize_text_field()` performs:
- Removes tags
- Removes extra whitespace
- Strips octets
- Converts `<` and `>` to entities

It does NOT:
- Escape single quotes (`'`)
- Escape backslashes
- Prevent SQL metacharacters

A payload like `' OR 1=1 UNION SELECT user_pass FROM wp_users--` would pass through `sanitize_text_field()` intact.

## Exploitability Assessment

**Not practically exploitable** because:
1. Requires `manage_options` capability (WordPress administrator)
2. Requires a valid `wpvivid_ajax` nonce (only available on admin pages)
3. Administrators already have full database access via phpMyAdmin, WP-CLI, or other means
4. The `apply_filters('wpvivid_ajax_check_security', $check)` pattern could theoretically allow bypass by another plugin, but this requires a separate vulnerability

## Impact

This is primarily a **code quality issue**. The correct fix is to use `$wpdb->prepare()`:

```php
$authors = $wpdb->get_col(
    $wpdb->prepare(
        "SELECT DISTINCT post_author FROM {$wpdb->posts} WHERE post_type = %s",
        $post_type
    )
);
```

## Note

The companion function `get_list()` at line ~968 correctly uses `$wpdb->prepare()` for the same type of query, showing inconsistent security practices within the same file.
