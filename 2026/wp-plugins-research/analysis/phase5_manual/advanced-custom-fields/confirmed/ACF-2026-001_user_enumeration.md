# ACF-2026-001: Unauthenticated User Enumeration via nopriv AJAX with Leaked Field Nonce

## Severity: Medium (CVSS ~5.3)

## Affected Component
- **Plugin**: Advanced Custom Fields (ACF) 6.8.x
- **File**: `includes/fields/class-acf-field-user.php`, line 44-45
- **Endpoint**: `wp_ajax_nopriv_acf/fields/user/query`

## Vulnerability Type
Information Disclosure / User Enumeration (CWE-200)

## Precondition
The target WordPress site must render an ACF User field on a **public-facing page**. This is common on sites using `acf_form()` for frontend user selection (e.g., "assign to user" forms, membership sites, directory listings).

## Root Cause

The ACF User field type **unconditionally** registers a `wp_ajax_nopriv_` handler:

```php
// includes/fields/class-acf-field-user.php, line 44-45
add_action( 'wp_ajax_acf/fields/user/query', array( $this, 'ajax_query' ) );
add_action( 'wp_ajax_nopriv_acf/fields/user/query', array( $this, 'ajax_query' ) );
```

There is no conditional check (e.g., whether ACF frontend forms are active). The handler is accessible on **every** ACF installation.

The handler requires a field-specific nonce (`acf_field_user_{field_key}`), which is embedded in the HTML of any page that renders the User field. On public-facing pages, this nonce is visible to any unauthenticated visitor.

## Authentication Bypass Chain

1. **Nonce extraction**: The nonce is embedded in the rendered ACF field HTML on public pages. WordPress nonces for unauthenticated users (user ID 0) are valid for 24 hours.

2. **No capability check**: The `ajax_query()` method (line 375) delegates to `ACF_Ajax_Query_Users->request()`. The `verify_request()` method (class-acf-ajax-query-users.php, line 31) only checks the nonce -- there is no `is_user_logged_in()` or `current_user_can()` check.

3. **Data returned**: `acf_get_user_result()` returns user ID, `user_login`, first name, last name, and display name for all matching users, paginated at 20 per page.

## Attack Steps

1. Browse to a public page containing an ACF User field
2. View page source, extract `data-nonce` attribute and `field_key` from the ACF field markup
3. Send POST request:
   ```
   POST /wp-admin/admin-ajax.php
   Content-Type: application/x-www-form-urlencoded

   action=acf/fields/user/query&nonce=EXTRACTED_NONCE&field_key=field_XXXXX&s=&paged=1
   ```
4. Response contains JSON array of users with their usernames and display names
5. Increment `paged` parameter to enumerate all users on the site

## Impact

- **Username enumeration**: All WordPress usernames are exposed, enabling targeted brute-force attacks
- **PII disclosure**: First names, last names, and display names of all users are leaked
- **No rate limiting**: The endpoint has no rate limiting, allowing rapid full enumeration
- **Scope limitation**: Search columns for unauthenticated users are restricted to `user_login`, `user_nicename`, `display_name` (email is excluded unless `edit_users` capability is present)

## Mitigating Factors

- Requires a public-facing page with an ACF User field (not all ACF installs have this)
- Nonce has a 24-hour validity window
- The field's role configuration limits which user roles are returned (if configured)

## Recommended Fix

1. **Conditional registration**: Only register `wp_ajax_nopriv_` handlers when ACF frontend forms are actually active
2. **Authentication check**: Add `is_user_logged_in()` check in the user query handler
3. **Rate limiting**: Add rate limiting to prevent bulk enumeration
4. **Minimum capability**: Require at least `read` capability for user queries

## Related Findings

All seven field-type AJAX handlers (relationship, select, post_object, page_link, user, taxonomy, oembed) share the same unconditional nopriv registration pattern. The User field is the most sensitive because it exposes PII. The post_object/relationship/page_link handlers could expose titles of private/draft posts if the field configuration includes non-public post statuses.
