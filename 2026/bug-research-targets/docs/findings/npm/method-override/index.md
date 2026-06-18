# method-override — Security Review Findings

**Package:** [method-override](https://www.npmjs.com/package/method-override) | **Files reviewed:** 1

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| MO-01 | HTTP Method Spoofing Authorization Bypass | MEDIUM | Yes | `methodOverride` inner middleware, lines 68-79 |
| MO-02 | Cross-Site Tracing (XST) via Method Whitelist | LOW | No | `supports()`, line 143 |

---

## MO-01: HTTP Method Spoofing Authorization Bypass

- **Vulnerability class:** HTTP Method Spoofing / Authorization Bypass
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** MEDIUM
- **Location:** `methodOverride` inner middleware, lines 68-79

### Reachability Analysis

Any unauthenticated HTTP client can send a POST request with `_method` query parameter or `X-HTTP-Method-Override` header to override the HTTP method to an arbitrary verb (e.g., DELETE, PUT). This allows bypassing authorization middleware that checks `req.method` after method-override runs.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## MO-02: Cross-Site Tracing (XST) via Method Whitelist

- **Vulnerability class:** Cross-Site Tracing (XST)
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `supports()`, line 143

### Reachability Analysis

A POST request with `_method=TRACE` can be used to override the method to TRACE on a server that reflects request headers in the response body. Requires the target server to actually handle TRACE and reflect headers — a narrow but real attack surface.

### Gate Status

Not reachability-tested (LOW severity).

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| CSRF protection bypass via null methods config | Requires developer misconfiguration (`opts.methods = null`). Not exploitable in default or reasonable configurations. |

---

**Pipeline:** 3 raw findings → 2 confirmed (1 MEDIUM breachable, 1 LOW)
