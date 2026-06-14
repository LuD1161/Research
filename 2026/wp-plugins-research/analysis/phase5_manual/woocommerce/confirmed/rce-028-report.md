# RCE-028: Dynamic Method Dispatch in WC_AJAX::bulk_edit_variations()

## Finding ID
woocommerce-rce-028

## Status
**DOWNGRADED — Not Exploitable for RCE or Privilege Escalation**

## Executive Summary

The `bulk_edit_variations()` method in `WC_AJAX` uses dynamic method dispatch via `call_user_func()` with user-controlled input (`$_POST['bulk_action']`). However, the hardcoded prefix `variation_bulk_action_` constrains the callable surface to exactly 24 private static methods — all legitimate product-variation operations. There is no path to arbitrary code execution, file writes, SQL injection, or privilege escalation through this mechanism alone.

The finding represents a **CWE-470 (Use of Externally-Controlled Input to Select Classes or Code)** code quality concern but does not constitute a security vulnerability in the current codebase.

---

## Vulnerable Code

**File**: `plugins/src/woocommerce/woocommerce/includes/class-wc-ajax.php`
**Lines**: 3143-3180

```php
public static function bulk_edit_variations() {
    ob_start();
    check_ajax_referer( 'bulk-edit-variations', 'security' );

    if ( ! current_user_can( 'edit_products' ) || empty( $_POST['product_id'] ) || empty( $_POST['bulk_action'] ) ) {
        wp_die( -1 );
    }

    $product_id  = absint( $_POST['product_id'] );
    $bulk_action = wc_clean( wp_unslash( $_POST['bulk_action'] ) );
    $data        = ! empty( $_POST['data'] ) ? wc_clean( wp_unslash( $_POST['data'] ) ) : array();
    // ... get variations ...

    if ( method_exists( __CLASS__, "variation_bulk_action_$bulk_action" ) ) {
        call_user_func( array( __CLASS__, "variation_bulk_action_$bulk_action" ), $variations, $data );
    } else {
        do_action( 'woocommerce_bulk_edit_variations_default', $bulk_action, $data, $product_id, $variations );
    }
    // ...
    wp_die();
}
```

---

## Analysis

### 1. Callable Method Surface

The prefix `variation_bulk_action_` is hardcoded. All 24 matching methods are:

| Method | Visibility | Action |
|--------|-----------|--------|
| `toggle_enabled` | private static | Toggle variation publish/private status |
| `toggle_downloadable` | private static | Toggle downloadable flag |
| `toggle_virtual` | private static | Toggle virtual flag |
| `toggle_manage_stock` | private static | Toggle stock management |
| `variable_regular_price` | private static | Set regular price |
| `variable_sale_price` | private static | Set sale price |
| `variable_stock_status_instock` | private static | Set stock status: in stock |
| `variable_stock_status_outofstock` | private static | Set stock status: out of stock |
| `variable_stock_status_onbackorder` | private static | Set stock status: on backorder |
| `variable_stock` | private static | Set stock quantity |
| `variable_low_stock_amount` | private static | Set low stock threshold |
| `variable_weight` | private static | Set weight |
| `variable_length` | private static | Set length |
| `variable_width` | private static | Set width |
| `variable_height` | private static | Set height |
| `variable_download_limit` | private static | Set download limit |
| `variable_download_expiry` | private static | Set download expiry |
| `delete_all` | private static | Delete all variations (requires `data[allowed]=true`) |
| `variable_sale_schedule` | private static | Set sale start/end dates |
| `variable_regular_price_increase` | private static | Increase regular price by % or amount |
| `variable_regular_price_decrease` | private static | Decrease regular price by % or amount |
| `variable_sale_price_increase` | private static | Increase sale price by % or amount |
| `variable_sale_price_decrease` | private static | Decrease sale price by % or amount |
| `variable_unset_cogs_value` | private static | Unset cost-of-goods-sold value |

**All 24 methods are legitimate product-variation bulk operations.** None execute arbitrary code, write files, perform raw SQL, or modify user capabilities.

### 2. Guards and Sanitization

Three layers of defense exist:

1. **Nonce check**: `check_ajax_referer('bulk-edit-variations', 'security')` — requires a valid nonce from the product edit page
2. **Capability check**: `current_user_can('edit_products')` — requires `edit_products` capability
3. **Sanitization**: `wc_clean()` → `sanitize_text_field()` — strips HTML tags, removes `\n`, `\r`, `\t`, strips percent-encoded octets, trims whitespace. The result is a plain alphanumeric+underscore+hyphen string.
4. **Prefix constraint**: The hardcoded string `"variation_bulk_action_"` is prepended, making it impossible to call any method not starting with this exact prefix.
5. **method_exists() guard**: Prevents calls to non-existent methods (though it does check private/protected — this is fine because the call is from within `__CLASS__`).

### 3. Authentication Chain

| Requirement | Detail |
|-------------|--------|
| Must be logged in | AJAX handler registered on `wp_ajax_woocommerce_bulk_edit_variations` (not `wp_ajax_nopriv_`) |
| Valid nonce | `bulk-edit-variations` nonce, generated only on product edit pages |
| Capability | `edit_products` — granted to both **Administrator** and **Shop Manager** roles |

Shop Managers can reach this endpoint. However, Shop Managers already have full product management capabilities, including the ability to delete products. Calling `delete_all` variations is within their expected permissions.

### 4. wc_clean() Effectiveness

`wc_clean()` delegates to WordPress's `sanitize_text_field()`, which:
- Strips HTML/PHP tags
- Removes line breaks, tabs, extra whitespace
- Strips percent-encoded characters (`%xx`)
- Decodes HTML entities

This effectively prevents injection of special characters (`:`, `\`, `/`, `(`, `)`, etc.) into the method name. The resulting string is safe for use in a method name context.

### 5. Third-Party Extension Risk (Theoretical)

The `else` branch on line 3173 fires `do_action('woocommerce_bulk_edit_variations_default', ...)`, which allows third-party plugins to handle unknown bulk actions. Additionally, line 3176 fires `do_action('woocommerce_bulk_edit_variations', ...)` for ALL actions.

If a third-party plugin or WooCommerce extension adds a method like `variation_bulk_action_evil_thing()` to `WC_AJAX` (not possible via standard hooks, would require modifying the class file), or hooks into the action with unsafe handling of `$bulk_action`, that could be exploitable. However, this is a third-party code issue, not a WooCommerce core vulnerability.

Currently, only `woocommerce-payments` (via `subscriptions-core`) hooks into the action, and it does so safely.

### 6. Chaining Assessment

- **No privilege escalation**: All callable methods operate on product variations only
- **No file write**: None of the methods write to the filesystem
- **No SQL injection**: All methods use WooCommerce's data abstraction layer (`WC_Product` setters)
- **No SSRF**: No network requests initiated
- **Data destruction**: `delete_all` can delete all variations, but this is an intended feature for authorized users
- **Price manipulation**: An attacker with `edit_products` could manipulate prices, but they already have this capability through the normal UI

---

## Proof of Concept

```bash
# 1. Login as admin (or shop_manager)
COOKIES=$(mktemp)
curl -s -c "$COOKIES" -b "$COOKIES" -L \
  -d "log=admin&pwd=admin&wp-submit=Log+In&redirect_to=%2Fwp-admin%2F&testcookie=1" \
  -H "Cookie: wordpress_test_cookie=WP+Cookie+check" \
  "http://localhost:8880/wp-login.php" -o /dev/null

# 2. Get nonce from product edit page
NONCE=$(curl -s -b "$COOKIES" \
  "http://localhost:8880/wp-admin/post.php?post=25&action=edit" \
  | grep -o 'bulk_edit_variations_nonce.*"[a-f0-9]*"' \
  | head -1 | grep -o '"[a-f0-9]*"' | tr -d '"')

# 3. Call delete_all — deletes all variations for product 25
curl -s -b "$COOKIES" \
  -d "action=woocommerce_bulk_edit_variations&security=$NONCE&product_id=25&bulk_action=delete_all&data[allowed]=true" \
  "http://localhost:8880/wp-admin/admin-ajax.php"

# 4. Attempting an invalid method — silently ignored (falls through to do_action)
curl -s -b "$COOKIES" \
  -d "action=woocommerce_bulk_edit_variations&security=$NONCE&product_id=25&bulk_action=DOES_NOT_EXIST" \
  "http://localhost:8880/wp-admin/admin-ajax.php"
```

**Result**: The delete_all action works as expected — it deletes variations. But this is the intended behavior for users with `edit_products` capability. The "invalid method" call is silently ignored.

---

## CVSS 3.1 Assessment

### Revised Score: 0.0 (None) — Not a Vulnerability

The dynamic dispatch pattern uses:
- A fixed, hardcoded prefix that constrains the callable surface
- All callable methods are intended operations
- The auth requirements (nonce + capability) match the operations performed
- The operations are within the expected permissions of the required role

While `call_user_func` with user input is a code smell (CWE-470), the specific implementation here is safe because the callable surface is fully constrained and all targets are benign.

If we were to score the code quality concern:
- **AV:N** — Network accessible via AJAX
- **AC:L** — Low complexity
- **PR:L** — Requires authenticated user with edit_products (Shop Manager+)
- **UI:N** — No user interaction required
- **S:U** — Scope unchanged
- **C:N** — No confidentiality impact
- **I:N** — No integrity impact beyond intended functionality
- **A:N** — No availability impact beyond intended functionality (delete_all is a feature)

**CVSS 3.1 Vector**: `CVSS:3.1/AV:N/AC:L/PR:L/UI:N/S:U/C:N/I:N/A:N` = **0.0**

### Why Initial 3.8 Was Too High

The initial assessment likely assumed the dynamic dispatch could reach arbitrary methods or that the callable surface included dangerous operations. In reality:
1. The `variation_bulk_action_` prefix is hardcoded and cannot be bypassed
2. All 24 callable methods are standard product management operations
3. `sanitize_text_field()` prevents any special character injection in the method name
4. The required permissions (`edit_products`) already grant the same capabilities through the UI

---

## CWE Classification

| CWE | Name | Applicability |
|-----|------|--------------|
| CWE-470 | Use of Externally-Controlled Input to Select Classes or Code | **Applicable (code quality)** — User input selects the method to call |
| CWE-749 | Exposed Dangerous Method or Function | **Not applicable** — No dangerous methods are exposed |
| CWE-94 | Improper Control of Generation of Code | **Not applicable** — No code generation occurs |

---

## Remediation (Code Quality Improvement)

While not a security vulnerability, the pattern could be hardened to prevent future issues if new methods are added:

```php
// Replace dynamic dispatch with an explicit allowlist
$allowed_actions = array(
    'toggle_enabled',
    'toggle_downloadable',
    'toggle_virtual',
    'toggle_manage_stock',
    'variable_regular_price',
    'variable_sale_price',
    // ... all other allowed actions
    'delete_all',
);

if ( in_array( $bulk_action, $allowed_actions, true ) ) {
    call_user_func( array( __CLASS__, "variation_bulk_action_$bulk_action" ), $variations, $data );
} else {
    do_action( 'woocommerce_bulk_edit_variations_default', $bulk_action, $data, $product_id, $variations );
}
```

This prevents future methods added to the class (with the `variation_bulk_action_` prefix) from being automatically callable without explicit allowlisting.

---

## Conclusion

**This is NOT a security vulnerability.** It is a code quality pattern (CWE-470) with adequate mitigations that prevent exploitation. The dynamic dispatch is constrained to a fixed set of 24 benign methods, all performing expected product-management operations within the authenticated user's existing permissions. The finding should be closed as a false positive or reclassified as a low-priority code quality improvement.
