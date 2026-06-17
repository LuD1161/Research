# ssrf-req-filter

**Files reviewed:** 1 | **Raw findings:** 3 | **Confirmed:** 2

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `ssrf_filter_bypass_hostname_pre_check_reliance_on_lookup_event` | **LOW** | No | `requestFilterHandler > agent.createConnection override, lines 28-41` |
| 2 | `ssrf_filter_bypass_unix_socket_no_host` | **INFORMATIONAL** | No | `requestFilterHandler > agent.createConnection override, line 29-31` |

### Finding 1: ssrf_filter_bypass_hostname_pre_check_reliance_on_lookup_event

**Severity:** LOW | **Location:** `requestFilterHandler > agent.createConnection override, lines 28-41`

**Justification:** The pre-connection check at line 30 calls `checkIp(options.host)`. For any non-IP string (hostnames like 'internal.corp'), `ipaddr.isValid()` returns false, so `checkIp` returns `true` (ALLOW) and the pre-check is silently bypassed. Protection relies entirely on the 'lookup' event firing after DNS resolution. In environments using custom net.Socket implementations, mocked sockets, or certain Unix-domain-socket usages where `options.host` is undefined/absent, the lookup event may not fire, leaving the filter ineffective with no fallback.

??? note "Adversarial Verification"
    The code behavior is confirmed exactly as described. At line 30, `checkIp(options.host)` calls `ipaddr.isValid()` on the host value. For any non-IP string (hostname like 'internal.corp', 'localhost', or `undefined`), `ipaddr.isValid()` returns `false`, so `checkIp` returns `true` (ALLOW), and the pre-connection check is silently bypassed without any block. This is verified by running ipaddr.js directly: `ipaddr.isValid('internal.corp')` returns `false`, `ipaddr.isValid('localhost')` returns `false`, `ipaddr.isValid(undefined)` returns `false`. For these cases, the ENTIRE SSRF protection depends on the `lookup` event firing after DNS resolution (lines 34-39). In the standard/documented use case (axios or node-fetch making TCP connections), the `lookup` event IS emitted by Node.js net.Socket for hostname-based connections, so in practice the protection works: e.g. 'localhost' passes the pre-check but the lookup event fires with '127.0.0.1', which `checkIp` correctly blocks. The finding is real as an architectural weakness: (1) the pre-check design is incomplete for hostnames — it provides zero protection at that layer; (2) if the lookup event is not emitted (Unix domain sockets where `options.host` is `undefined`/absent and `options.path` is used instead, or custom/mocked socket implementations), there is no fallback and the filter provides no protection. The severity is appropriately rated 'low' because: the documented usage (HTTP over TCP with axios/node-fetch) is protected via the lookup event; the gap only opens in non-standard socket usage that is outside the library's intended scope; there is no schema validation (zod/joi/ajv) involved, and no non-default config is required — but the attack requires the caller to use a custom socket implementation or Unix domain socket context that the library does not defend against. The reachability claim is confirmed: any hostname-based request bypasses the pre-check, and if lookup does not fire, the filter is entirely ineffective. The finding is valid but edge-case in practice.

**Reachability:** gate=`non-standard socket usage required for full bypass — lookup event covers normal TCP/hostname cases` | breachable=False | adjusted_severity=low

**Detection pattern:** `createConnection.*options.*host.*checkIp|isValid.*host.*return true`
**Anti-pattern:** `if\s*\(!options\.host\).*socket\.destroy|throw.*blocked.*unix`

### Finding 2: ssrf_filter_bypass_unix_socket_no_host

**Severity:** INFORMATIONAL | **Location:** `requestFilterHandler > agent.createConnection override, line 29-31`

**Justification:** At line 29, `const {host: address} = options` destructures `host` from the connection options. For Unix socket connections (where `options.path` is set but `options.host` is undefined), `address` is `undefined`. `ipaddr.isValid(undefined)` returns `false`, so `checkIp(undefined)` returns `true` (ALLOW). No lookup event fires for Unix sockets. The request proceeds to a local Unix socket (e.g., `/var/run/docker.sock`) without any SSRF check, silently bypassing the filter.

??? note "Adversarial Verification"
    The vulnerability is real but the finding's claimed mechanism is slightly inaccurate. The finding claims options.host is undefined for Unix socket connections, but Node.js http.Agent always populates options.host with 'localhost' (the default) when socketPath is used in request options. However, the bypass still works because checkIp('localhost') also returns true (ALLOW): ipaddr.isValid('localhost') returns false, so checkIp short-circuits and returns true (line 6-8 of index.js). Additionally, Unix socket connections bypass DNS entirely, so the 'lookup' event handler (lines 34-39) never fires. Net result: a request with socketPath set (e.g., '/var/run/docker.sock') passes through the patched agent.createConnection unchecked. Verified end-to-end with Node.js v22: net.createConnection is called with socketPath='/var/run/docker.sock' and host='localhost', and the filter does not block it. The bypass requires the caller to (a) use the patched agent and (b) make an HTTP request with socketPath in the request options — an unusual but possible configuration. The finding's severity=low is appropriate: socketPath in request options is not a typical user-controlled input surface, and accessing Unix sockets already implies local system access. The core vulnerability class (Unix socket bypass) is confirmed despite the minor mechanism inaccuracy (undefined vs 'localhost').

**Reachability:** gate=`non-default usage pattern required (socketPath must be set in HTTP request options)` | breachable=False | adjusted_severity=informational

**Detection pattern:** `options\.host.*checkIp|const.*host.*=.*options`
**Anti-pattern:** `options\.path.*destroy|socketPath.*blocked|!options\.host.*throw`
