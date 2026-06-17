# private-ip

**Files reviewed:** 1 | **Raw findings:** 2 | **Confirmed:** 1

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `ssrf_filter_bypass` | **HIGH** | Yes | `ipv6_check (lines 40-54) / exported default function line 61` |

### Finding 1: ssrf_filter_bypass

**Severity:** HIGH | **Location:** `ipv6_check (lines 40-54) / exported default function line 61`

**Justification:** Line 61 calls ipv6_check(ip) with the raw, un-normalized input string; the regexes on lines 43-50 are case-sensitive (no /i flag), so inputs such as ::FFFF:127.0.0.1, 2001:DB8::1, or 64:FF9B::127.0.0.1 are validated as legitimate IPv6 by ipaddr.js but pass through ipv6_check undetected, causing the function to return false/undefined instead of true.

??? note "Adversarial Verification"
    Confirmed real. The exported default function (line 61) passes the raw, un-normalized IPv6 string directly to ipv6_check(ip) rather than passing ip.toNormalizedString() or ip.toLowerCase(). ipaddr.js (is_valid / parse) fully accepts mixed-case IPv6 strings such as ::FFFF:127.0.0.1, 2001:DB8::1, and 64:FF9B::127.0.0.1 as valid IPv6 (confirmed by live testing: is_valid returns true, kind() returns 'ipv6', and toNormalizedString() correctly normalizes them to all-lowercase). However, the regexes on lines 43 (/^::f{4}:.../ -- no /i flag), 45 (/^64:ff9b::.../ -- no /i flag), and 49 (/^2001:db8:.../ -- no /i flag, hardcodes lowercase literal 'db8') are case-sensitive and only match lowercase representations. As a result, inputs like ::FFFF:127.0.0.1 pass is_valid(), enter the parsed.kind()==='ipv6' branch, call ipv6_check with the raw uppercase string, and all 13 regexes return false -- so the function returns false (not private) instead of true. Identical addresses in lowercase are correctly blocked. The bypass is unconditional: no non-default options are required, no schema validation guards the input, and the library is documented and positioned for user-controlled IP filtering/SSRF protection. The regexes on lines 51-53 (fc00::/7, fe80::/10, ff00::/8) do carry /i flags but lines 43-50 do not, introducing an inconsistent and exploitable gap for IPv4-mapped (::ffff:), NAT64 (64:ff9b::), and documentation-prefix (2001:db8::) ranges with any uppercase hex.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `ipv6_check\(ip\)|isPrivate.*ipv6.*\(ip\b`
**Anti-pattern:** `ipv6_check\(.*toNormalizedString|toLowerCase`
