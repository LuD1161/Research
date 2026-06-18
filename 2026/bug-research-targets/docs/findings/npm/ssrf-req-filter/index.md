# ssrf-req-filter — Security Review Findings

**Package:** [ssrf-req-filter](https://www.npmjs.com/package/ssrf-req-filter) | **Files reviewed:** 1

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| SRF-01 | SSRF Filter Bypass via DNS Lookup Event Race | LOW | No | `requestFilterHandler` `socket.on('lookup')` callback, line 35 |
| SRF-02 | SSRF Filter Bypass via Unix Socket | INFORMATIONAL | No | `agent.createConnection` override, lines 29-31 |

---

## SRF-01: SSRF Filter Bypass via DNS Lookup Event Race

- **Vulnerability class:** SSRF Filter Bypass / Race Condition
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** LOW
- **Location:** `requestFilterHandler` `socket.on('lookup')` callback, line 35

### Reachability Analysis

The SSRF protection relies on the `'lookup'` event which covers normal TCP/hostname cases but has a race window between DNS resolution and the actual connection. In theory, DNS rebinding or TOCTOU attacks could exploit this window. However, full bypass requires non-standard socket usage patterns that are uncommon in practice.

### Gate Status

**Non-standard socket usage required** for full bypass. The race window exists but is difficult to exploit reliably.

**Breach:** False

---

## SRF-02: SSRF Filter Bypass via Unix Socket

- **Vulnerability class:** SSRF Filter Bypass
- **Raw severity:** LOW
- **Adjusted severity (after reachability):** INFORMATIONAL
- **Location:** `agent.createConnection` override, lines 29-31

### Reachability Analysis

Unix domain socket requests bypass the filter entirely because there is no hostname to check against. The `createConnection` override only instruments TCP connections. Exploitation requires the caller to use a `socketPath` option in the request configuration, which is a non-default and uncommon pattern.

### Gate Status

**Non-default option required** — caller must specify `socketPath` in request options, which is not standard HTTP usage.

**Breach:** False

---

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| Hostname Pre-Check Reliance on Lookup Event | Duplicate of SRF-01. Same underlying issue — the DNS lookup event race condition. |

---

**Pipeline:** 3 raw findings → 2 confirmed (0 breachable — both downgraded)
