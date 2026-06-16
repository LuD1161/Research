# MC-002: Unauthenticated Open Proxy with Arbitrary GET Parameter Injection

## Severity: Medium (CVSS 5.3 — unauthenticated, HMAC credentials abused)
## Vulnerability Class: Unauthenticated Server-Side Proxy / Parameter Injection
## Unauthenticated: Yes

## Location

- **File**: `includes/brandagent-endpoint.php`
- **Lines**: 23-41 (handle_request), 47-146 (handle_config_read), 152-254 (handle_init)
- **Entry Point**: WordPress rewrite rule `/a/msba/(.*)` (registered in `clarity.php` line 514)
- **Flow ID**: `microsoft-clarity-unauthproxy-001`

## Description

The plugin registers two unauthenticated proxy endpoints that forward all incoming `$_GET` parameters — including attacker-controlled ones — in HMAC-signed requests to Microsoft's BrandAgent backend:

```php
// clarity.php lines 514-518
add_rewrite_rule(
    '^a/msba/(.*)',
    'index.php?brandagent_api=1&brandagent_path=$matches[1]',
    'top'
);

// clarity.php lines 535-540 — NO authentication check
function brandagent_handle_custom_endpoint() {
    if ( intval( get_query_var( 'brandagent_api' ) ) === 1 ) {
        require_once plugin_dir_path( __FILE__ ) . 'includes/brandagent-endpoint.php';
        exit;
    }
}
```

Inside `handle_config_read()` and `handle_init()`:

```php
// brandagent-endpoint.php line 71 (config/read), line 176 (init)
$config_query = $_GET;   // ALL GET parameters from the request

// Line 96-97
if ( ! empty( $config_query ) ) {
    $config_url_with_params .= '?' . http_build_query( $config_query );
}
```

These parameters are then passed to `wp_remote_get()` with a valid HMAC signature (`X-WooCommerce-Signature`) attached — meaning any unauthenticated visitor can cause the WordPress server to make authenticated calls to the backend with arbitrary query parameters.

## Affected Endpoints

| URL Path | PHP Handler |
|---|---|
| `/a/msba/api/config/read` | `BrandAgent_Endpoint::handle_config_read()` |
| `/a/msba/api/v1/init` | `BrandAgent_Endpoint::handle_init()` |

The other two registered sub-paths are NOT affected:
- `api/config/update` — verifies an incoming HMAC from the backend (inbound, not proxy)
- `api/config/status` — read-only, returns local wp_options values only

## Attack Scenarios

### Scenario 1: Arbitrary Parameter Injection into Authenticated Backend Calls

Any unauthenticated user can inject arbitrary query parameters into HMAC-signed requests to the BrandAgent backend:

```http
GET /a/msba/api/config/read?clientId=legit&forceAction=delete&target=all HTTP/1.1
Host: victim.wordpress-site.com
```

The server proxies this as:
```http
GET <backend_base_url>/api/config/read?clientId=legit&forceAction=delete&target=all HTTP/1.1
X-WooCommerce-Signature: <valid_hmac>
X-WooCommerce-Client-Id: <store_client_id>
X-WooCommerce-Store-Url: https://victim.wordpress-site.com
```

The backend receives a legitimately HMAC-signed request with attacker-controlled parameters.

### Scenario 2: Information Disclosure via Response Proxying

The response body from the backend is returned directly to the caller:
```php
// Line 139-140
header( 'Content-Type: application/json' );
echo $config_body;
exit;
```

An unauthenticated attacker can read any data returned by the backend for valid parameter combinations.

### Scenario 3: HMAC Secret Abuse / Credential Leakage

The HMAC signature attached to every proxy request proves the store's identity. If the backend has any endpoints that reveal sensitive store data based on a valid HMAC signature, an unauthenticated attacker proxying through this endpoint can access that data.

## Impact

- Unauthenticated abuse of store HMAC credentials to make arbitrary authenticated calls to Microsoft's BrandAgent backend.
- Potential information disclosure of backend configuration or analytics data.
- If the backend has any destructive or state-modifying API endpoints under the proxied paths, they could be triggered without authentication.

## Remediation

Add a WordPress authentication check at the top of `handle_config_read()` and `handle_init()`:

```php
private static function handle_config_read() {
    // Require login to use the proxy
    if ( ! is_user_logged_in() ) {
        wp_send_json_error( array( 'message' => 'Authentication required' ), 401 );
    }
    // Optionally require a capability:
    // if ( ! current_user_can( 'manage_woocommerce' ) ) { ... }
    
    // ... rest of handler
}
```

Alternatively, filter `$_GET` to a strict allowlist of expected parameters before building the proxy URL:

```php
$allowed_params = array( 'clientId', 'clientInformation' );
$config_query = array_intersect_key( $_GET, array_flip( $allowed_params ) );
```
