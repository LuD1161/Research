# request-ip — Security Review Findings

**Package:** [request-ip](https://www.npmjs.com/package/request-ip) | **Files reviewed:** 2

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| RIP-01 | IP Spoofing via Untrusted Headers | MEDIUM | Yes | `getClientIp`, lines 41-85 |

---

## RIP-01: IP Spoofing via Untrusted Headers

- **Vulnerability class:** IP Spoofing / Trust Boundary Violation
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** MEDIUM
- **Location:** `getClientIp`, lines 41-85

### Reachability Analysis

Any remote attacker can forge all non-connection-level IP headers (`x-client-ip`, `x-forwarded-for`, `cf-connecting-ip`, `fastly-client-ip`, `true-client-ip`, `x-real-ip`, `x-cluster-client-ip`, `x-forwarded`, `forwarded-for`, `forwarded`) to spoof their IP address. The library trusts these headers by default without requiring a trusted proxy configuration. This affects any application using `request-ip` for IP-based access control, rate limiting, or logging without an upstream reverse proxy that strips/overwrites these headers.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| MEDIUM — ReDoS on IPv6 Regex (variant 1) | IPv6 regex with backreferences has theoretical catastrophic backtracking, but V8's linear-time regex optimization on Node 16+ mitigates this in practice. |
| MEDIUM — ReDoS on IPv6 Regex (variant 2) | Same V8 linear-time mitigation applies to the second regex variant. |
| MEDIUM — Infinite Recursion DoS | Requires a synthetic circular `req` object (e.g., `req.info.remoteAddress` pointing back to `req`). Not reachable with real HTTP request objects. |
| LOW — Property Injection | No exploitable property injection path found during adversarial testing. |
| LOW — Null Guard Logic Bug | Edge case in null handling does not lead to exploitable behavior. |
| LOW — Type Coercion Logic Bug | Type coercion edge case has no security impact in practice. |

---

**Pipeline:** 7 raw findings → 1 confirmed (1 MEDIUM breachable)
