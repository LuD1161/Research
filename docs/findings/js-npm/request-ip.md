# request-ip

**Files reviewed:** 2 | **Raw findings:** 7 | **Confirmed:** 1

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `ip_spoofing_untrusted_header` | **MEDIUM** | Yes | `getClientIp, lines 41-85` |

### Finding 1: ip_spoofing_untrusted_header

**Severity:** MEDIUM | **Location:** `getClientIp, lines 41-85`

**Justification:** Client-supplied headers are prioritised over TCP-level remoteAddress without any trusted-proxy allowlist, so any caller using this IP for access control can be bypassed by setting a spoofed header.

??? note "Adversarial Verification"
    Confirmed. getClientIp (lines 39-121 of lib/index.js) reads attacker-controlled HTTP headers (x-client-ip, x-forwarded-for, cf-connecting-ip, fastly-client-ip, true-client-ip, x-real-ip, x-cluster-client-ip, x-forwarded, forwarded-for, forwarded, x-appengine-user-ip, Cf-Pseudo-IPv4) in strict priority order before falling through to TCP-level sources (req.connection.remoteAddress, req.socket.remoteAddress). The only validation performed is a regex-based syntactic IP format check via is.ip() in lib/is.js — this confirms the header value is a valid-looking IP address but does nothing to verify the upstream proxy is trusted. There is no trusted-proxy allowlist anywhere in the codebase: the mw() function accepts only an attributeName option (line 130), and there is no isTrustedProxy, proxyList, or TRUSTED_PROXIES mechanism. The vulnerable path is the default code path — no non-default options or configuration are required to trigger it. No schema validation (zod/joi/ajv) is present. Any remote attacker who can send an HTTP request can set X-Client-IP: <spoofed-ip> (or any of the other checked headers) with a syntactically valid IP address and the library will return that spoofed value as the authoritative client IP. The README documents the library's use case as geolocation but does not warn against access-control use; the library is widely used in security-relevant contexts in practice. Severity is medium: the vulnerability is a real design gap (no trusted-proxy enforcement), but exploitation requires the caller to use the returned IP for access control, and many deployments sit behind a trusted reverse proxy that strips/overwrites these headers before they reach the app.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=medium

**Detection pattern:** `req\.headers\[['"](x-client-ip|x-forwarded-for|cf-connecting-ip|x-real-ip|true-client-ip)['"]\]`
**Anti-pattern:** `trusted.*proxy|isTrustedProxy|proxyList|TRUSTED_PROXIES`
