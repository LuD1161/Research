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

**Pipeline:** 6 raw findings → 2 confirmed (2 HIGH breachable)
