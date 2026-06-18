# multiparty — Security Review Findings

**Package:** [multiparty](https://www.npmjs.com/package/multiparty) | **Files reviewed:** 1

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| MP-01 | Unsanitized Filename Exposure | MEDIUM | Yes | `handleFile` (lines 697-744), `uploadPath` (lines 831-835), `onParseHeadersEnd` (lines 507-547) |
| MP-02 | Unbounded Resource Consumption | LOW | No | `Form` constructor (line 64), `handleFile` (lines 697-744) |
| MP-03 | Missing Input Length Validation | LOW | No | `Form.prototype.parse` (line 91), `setUpParser` (lines 808-829) |

---

## MP-01: Unsanitized Filename Exposure

- **Vulnerability class:** Unsanitized Input / Filename Injection
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** MEDIUM
- **Location:** `handleFile` (lines 697-744), `uploadPath` (lines 831-835), `onParseHeadersEnd` (lines 507-547)

### Reachability Analysis

Any HTTP client sending `multipart/form-data` with a crafted `Content-Disposition` filename can inject path separators or special characters into the filename. The filename value from the header is exposed to the application without sanitization — if the application uses it to construct file paths, write to disk, or reflect it in responses, it enables path traversal, XSS, or other injection attacks depending on context.

### Gate Status

**No gate** — exploitable in default configuration with no additional conditions required.

**Breach:** True

---

## MP-02: Unbounded Resource Consumption

- **Vulnerability class:** Denial of Service — Resource Exhaustion
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `Form` constructor (line 64), `handleFile` (lines 697-744)

### Reachability Analysis

There is no default `maxFilesSize` limit. An attacker can upload arbitrarily large files, consuming disk space and potentially exhausting server storage. Requires the application to not set its own size limits.

### Gate Status

Not reachability-tested (LOW severity).

---

## MP-03: Missing Input Length Validation

- **Vulnerability class:** Denial of Service — Input Validation
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** LOW
- **Location:** `Form.prototype.parse` (line 91), `setUpParser` (lines 808-829)

### Reachability Analysis

The `boundary` value extracted from the `Content-Type` header is not length-validated. An arbitrarily long boundary string can cause excessive memory allocation or slow parsing in the multipart parser.

### Gate Status

Not reachability-tested (LOW severity).

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| Mutable shared regex state | Only relevant under Worker Threads sharing the same module instance. In standard single-threaded Node.js usage, regex `lastIndex` state is not shared across requests. Effectively not exploitable. |

---

**Pipeline:** 4 raw findings → 3 confirmed (1 MEDIUM breachable, 2 LOW)
