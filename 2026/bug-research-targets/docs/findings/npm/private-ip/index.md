# private-ip — Security Review Findings

**Package:** [private-ip](https://www.npmjs.com/package/private-ip) | **Files reviewed:** 1

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| PI-01 | SSRF Filter Bypass via IPv6 | HIGH | Yes | `ipv6_check` (lines 40-54) / exported default function (line 61) |

---

## PI-01: SSRF Filter Bypass via IPv6

- **Vulnerability class:** SSRF Filter Bypass
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `ipv6_check` (lines 40-54) / exported default function (line 61)
- **CVE:** CVE-2025-8020 (unpatched)

### Reachability Analysis

Any caller passing a user-controlled IPv6 string to `private-ip` — including SSRF-protection middleware that relies on this package to determine whether an IP is private — will receive an incorrect result. The IPv6 check fails to identify certain private/loopback IPv6 representations, allowing an attacker to bypass SSRF protections by encoding internal addresses in IPv6 formats that the regex does not match.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| Insecure design — undefined return value (MEDIUM) | The function returns a falsy value (undefined) for unrecognized input, which callers may treat as "not private." This is a structural design issue but is not separately exploitable beyond what PI-01 already covers. |

---

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-private-ip/`

**Pinned version:** private-ip 3.0.2

### Steps

1. **Install the package:**
   ```bash
   npm install private-ip@3.0.2
   ```

2. **Run the IPv6 bypass test:**
   ```bash
   node -e "
   const p = require('private-ip');
   console.log('::ffff:7f00:1 =>', p('::ffff:7f00:1'));  // expected: true, got: false
   console.log('::2 =>', p('::2'));                        // expected: true, got: false
   "
   ```

3. **Verify** that private/loopback IPs are misclassified as public (SSRF bypass).

### Observed output (from `targets/labs/npm-private-ip/results.txt`)

```
private-ip PoC -- version: 3.0.2

ip                                      got     expected  verdict
------------------------------------------------------------------------
::ffff:7f00:1                           false   true      BYPASS
::2                                     false   true      BYPASS

=== RESULT: 2 bypass(es) -- private IP treated as public ===
```

### Verdict

**CONFIRMED.** Two IPv6 representations bypass the filter: `::ffff:7f00:1` (hex-form IPv4-mapped loopback) and `::2` (deprecated unicast). SSRF protections relying on this package can be bypassed.

---

**Pipeline:** 2 raw findings → 1 confirmed (1 HIGH breachable)
