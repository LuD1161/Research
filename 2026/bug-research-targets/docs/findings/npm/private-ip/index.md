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

**Pipeline:** 2 raw findings → 1 confirmed (1 HIGH breachable)
