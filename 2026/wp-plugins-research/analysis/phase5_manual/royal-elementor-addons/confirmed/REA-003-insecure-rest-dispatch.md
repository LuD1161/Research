# REA-003: Unauthenticated Arbitrary Method Call via REST API Dispatch

## Severity
LOW (CVSS ~3.7) -- defense-in-depth issue, not directly exploitable today

## Vulnerability Type
Insecure Dispatch Pattern / Potential Denial of Service

## Affected Component
- **File:** `includes/controls/wpr-ajax-select2/wpr-control-ajax-select2-api.php`
- **Class:** `Wpr_Control_Ajax_Select2_Api`
- **Method:** `callback()` (line 24)
- **Endpoint:** `GET /wp-json/wpraddons/v1/ajaxselect2/{action}/`

## Authentication Required
None. The REST route uses `permission_callback => '__return_true'`.

## Root Cause

The REST route at line 12-21 captures any `\w+` value as the `action` parameter:

```php
register_rest_route(
    'wpraddons/v1/ajaxselect2',
    '/(?P<action>\w+)/',
    [
        'methods' => 'GET',
        'callback' =>  [$this, 'callback'],
        'permission_callback' => '__return_true'
    ]
);
```

The `callback()` method at line 24-25 dispatches to the requested method:

```php
public function callback( $request ) {
    return $this->{$request['action']}( $request );
}
```

This allows calling ANY public method name on the `Wpr_Control_Ajax_Select2_Api` class, including inherited PHP methods.

## Current Mitigations

All defined handler methods in the class check `current_user_can('edit_posts')` at the top:
- `get_elementor_templates()` -- line 29
- `get_posts_by_post_type()` -- line 69
- `get_taxonomies()` -- line 113
- `get_users()` -- line 153
- `get_post_type_taxonomies()` -- line 189
- `get_custom_meta_keys()` -- line 233
- `get_custom_meta_keys_product()` -- line 307
- `get_custom_meta_keys_data()` -- line 407

## Remaining Risk

1. **Fatal Error DoS:** Calling a non-existent method (e.g., `/wp-json/wpraddons/v1/ajaxselect2/nonexistent/`) triggers a PHP fatal error. Depending on server configuration, this could:
   - Expose debug information if WP_DEBUG is enabled
   - Cause 500 errors that could be amplified

2. **Constructor/Init calls:** Calling `init` re-registers the REST route (harmless). Calling `callback` with a crafted nested request could cause recursion.

3. **Future regression risk:** Any new method added to the class without a capability check becomes instantly accessible to unauthenticated users. This is the primary concern.

## Proof of Concept

```bash
# Trigger fatal error by calling non-existent method
curl -s https://target.com/wp-json/wpraddons/v1/ajaxselect2/doesnotexist/

# Call existing method (returns empty due to capability check)
curl -s https://target.com/wp-json/wpraddons/v1/ajaxselect2/get_users/

# Call init method (re-registers route, causes 500 on double registration)
curl -s https://target.com/wp-json/wpraddons/v1/ajaxselect2/init/
```

## Remediation

Add a whitelist of allowed actions in the `callback()` method:

```php
public function callback( $request ) {
    $allowed = [
        'get_elementor_templates',
        'get_posts_by_post_type',
        'get_taxonomies',
        'get_users',
        'get_post_type_taxonomies',
        'get_custom_meta_keys',
        'get_custom_meta_keys_product',
        'get_custom_meta_keys_data',
    ];
    
    if ( ! in_array( $request['action'], $allowed, true ) ) {
        return new \WP_REST_Response( 'Invalid action.', 400 );
    }
    
    return $this->{$request['action']}( $request );
}
```

Additionally, move the `permission_callback` to `current_user_can('edit_posts')` since all methods require this capability anyway.
