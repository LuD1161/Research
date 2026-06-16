# PL-009: Variable Injection via extract() on Transient Data

## Severity: Low (CVSS 2.0)
## Vulnerability Class: Variable Injection / Insecure Deserialization Pattern
## Unauthenticated: No (requires DB write access)

## Location

- **File**: `app/controllers/PrliUpdateController.php`
- **Line**: 519
- **Flow ID**: `pretty-link-vari-001`

## Description

The `queue_update()` method uses `extract()` on data retrieved from a site transient.

```php
public function queue_update($transient, $force=false) {
    // ...
    if($force || (false === ($update_info = get_site_transient('prli_update_info')))) {
        // ... fetch update info, then:
        set_site_transient(
            'prli_update_info',
            compact('curr_version', 'download_url'),
            (12*HOUR_IN_SECONDS)
        );
    }
    else {
        extract( $update_info );  // Line 519 - VULNERABLE
    }

    // $curr_version and $download_url are used below:
    if(/* ... */ version_compare($curr_version, PRLI_VERSION, '>')) {
        $transient->response[PRLI_PLUGIN_SLUG] = (object)array(
            // ...
            'new_version' => $curr_version,
            'package'     => $download_url   // Used as update download URL
        );
    }
}
```

## Technical Analysis

### Normal operation
The transient `prli_update_info` is set by the plugin itself with `compact('curr_version', 'download_url')`, creating an array with exactly two keys. `extract()` then creates `$curr_version` and `$download_url` variables.

### Attack scenario
If an attacker can write to the `wp_options` table (transients are stored as options), they could:
1. Set `prli_update_info` transient to an array containing a malicious `download_url`
2. On the next admin page load, WordPress checks for updates, calling `queue_update()`
3. The `extract()` sets `$download_url` to the attacker's value
4. WordPress would offer a plugin update pointing to the attacker-controlled URL
5. If an admin clicks "Update", they install the attacker's malicious plugin

### Prerequisites
- Direct write access to `wp_options` table (requires admin access or separate SQLi)
- Admin must trigger the update check
- Admin must click "Update" on the poisoned update notice

## Impact

- Supply-chain attack: malicious plugin update URL could lead to arbitrary code execution
- Requires chaining with a separate DB write vulnerability
- The `extract()` could also inject other variables into the function scope, potentially affecting control flow

## Remediation

```php
// Fix: Use direct array access instead of extract()
else {
    $curr_version = isset($update_info['curr_version']) ? $update_info['curr_version'] : '';
    $download_url = isset($update_info['download_url']) ? $update_info['download_url'] : '';
}
```
