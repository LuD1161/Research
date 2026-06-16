# MWPC-2026-002: Unauthenticated Information Disclosure via stats No-Auth Endpoint

## Severity: LOW (CVSS ~3.7)

## Summary

The `stats` function is explicitly listed in `$callableFunctionsNoAuth` and can be called by any unauthenticated HTTP client. On unpaired sites, it returns the MainWP Child version, WordPress version, WP Engine detection status, and hostname. This aids reconnaissance for MWPC-2026-001.

## Affected Code

**File:** `class/class-mainwp-child-callable.php` lines 117-119  
**Handler:** `class/class-mainwp-child-stats.php` `get_site_stats_no_auth()` lines 106-117

## Technical Details

### No-Auth Callable Registration

```php
// class-mainwp-child-callable.php line 117
$callableFunctionsNoAuth = array(
    'stats' => 'get_site_stats_no_auth',
);
```

### Dispatcher Bypass

In `init_call_functions()` (line 183), when `$auth` is false but the function is in the no-auth list:
```php
} elseif ( isset( $_POST['function'] ) && $callable_no_auth ) {
    $this->call_function_no_auth( $call_func );
```

### Guard on Paired Sites

`get_site_stats_no_auth()` checks if `mainwp_child_pubkey` is set. If the site is already paired, it returns an error instead of stats. This limits the disclosure window to unpaired sites.

### Disclosed Information

- MainWP Child plugin version
- WordPress version
- WP Engine hosting detection
- Server hostname

## Proof of Concept

```bash
curl -X POST https://target.com/ -d "function=stats"
```

## Impact

Low severity on its own, but serves as a reliable oracle to identify unpaired MainWP Child installations vulnerable to MWPC-2026-001. An attacker can scan large IP ranges to find targets.

## Remediation

Consider removing version information from the no-auth stats response, or adding rate limiting.
