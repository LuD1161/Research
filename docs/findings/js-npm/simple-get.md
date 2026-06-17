# simple-get

**Files reviewed:** 1 | **Raw findings:** 6 | **Confirmed:** 2

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `ssrf_no_url_validation` | **HIGH** | Yes | `simpleGet(), lines 18-22` |
| 2 | `ssrf_open_redirect_chain` | **HIGH** | Yes | `simpleGet(), lines 50-68 (redirect handler)` |

### Finding 1: ssrf_no_url_validation

**Severity:** HIGH | **Location:** `simpleGet(), lines 18-22`

**Justification:** opts.url is passed directly into url.parse() and the resulting hostname/port/path are forwarded to http.request()/https.request() without any validation against private IP ranges, loopback addresses, or cloud metadata endpoints (e.g. 169.254.169.254), enabling full SSRF.

??? note "Adversarial Verification"
    Confirmed. In simpleGet() (index.js lines 18-22), opts.url is passed directly to url.parse() and the resulting hostname/port/protocol/auth/path fields are forwarded verbatim to http.request() or https.request() (line 49) with no validation whatsoever. There is no allowlist check, no private-IP/loopback/link-local filter (no isPrivateIP, blockPrivate, SSRF guard, or schema validation present anywhere in the codebase). The code also follows 3xx redirects recursively (lines 50-68), and the redirect target URL is again fed back into url.parse() then into a recursive simpleGet() call without any re-validation — enabling SSRF via open redirect even from an initially-safe host. The API surface is intentionally generic: simpleGet(url, cb) and simpleGet.concat(url, cb) accept a raw string URL as their first argument, the package README documents this as the primary usage pattern, and no options flag enables any guard. There is no schema validator (zod/joi/ajv) wrapping the input. The finding is reachable by any direct caller that passes a user-controlled URL string or opts.url — this is the normal, documented use case of the library. The severity is correctly rated high: full SSRF to any reachable host including loopback, RFC1918, and cloud metadata endpoints (169.254.169.254) is possible with no bypass required.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `http\.request\(|https\.request\(|url\.parse\(`
**Anti-pattern:** `isPrivateIP|isInternal|privateIp|SSRF|blockPrivate|allowedHosts`

### Finding 2: ssrf_open_redirect_chain

**Severity:** HIGH | **Location:** `simpleGet(), lines 50-68 (redirect handler)`

**Justification:** On 3xx responses, res.headers.location is assigned to opts.url and the recursive simpleGet() call is made without re-validating the new URL against private IP ranges, so a redirect from a public server to http://127.0.0.1/ or http://169.254.169.254/ succeeds.

??? note "Adversarial Verification"
    The redirect handler at lines 50-68 of index.js follows 3xx redirects by assigning res.headers.location to opts.url and calling simpleGet() recursively. There is no validation of the redirect target URL against private IP ranges or any allowlist. The only guard is maxRedirects (default 10), which prevents infinite loops but not SSRF. Header stripping (cookie/authorization dropped on host change, lines 57-60) is a partial credential-leakage mitigation but does NOT block the request to internal addresses. No schema validation (zod/joi/ajv) is present. The vulnerable path requires no non-default options: any 3xx redirect is followed by default. Any caller that requests a URL from a server whose Location header can be controlled by an attacker (e.g., a server that issues 302 to http://127.0.0.1/ or http://169.254.169.254/) will have its request follow that redirect to the internal address. The reachability claim is correct: the attacker controls the redirect Location header on the intermediate server, and simple-get will follow it without re-validation.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=high

**Detection pattern:** `res\.headers\.location|statusCode.*30[12378]`
**Anti-pattern:** `isPrivateIP|blockPrivate|redirectUrl.*validate|allowedRedirect`
