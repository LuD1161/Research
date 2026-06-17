# method-override

**Files reviewed:** 1 | **Raw findings:** 3 | **Confirmed:** 2

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `http_method_spoofing_authorization_bypass` | **MEDIUM** | Yes | `methodOverride (inner middleware), lines 68-79` |
| 2 | `csrf_protection_bypass_via_null_methods_config` | **LOW** | — | `methodOverride (factory), line 53; inner middleware line 64` |

### Finding 1: http_method_spoofing_authorization_bypass

**Severity:** MEDIUM | **Location:** `methodOverride (inner middleware), lines 68-79`

**Justification:** Line 75 sets `req.method = method.toUpperCase()` to an attacker-supplied value (from query string or header) after only a whitelist check against known HTTP method names; if authorization middleware runs downstream and makes decisions based on `req.method`, an attacker can escalate a POST (allowed) to DELETE/PUT/PATCH to bypass route-level access controls.

??? note "Adversarial Verification"
    The finding is confirmed. In /DATA/openclaw/Repos/Research/packages/method-override/node_modules/method-override/index.js, lines 68-79, the sink `req.method = method.toUpperCase()` (line 75) is reachable with attacker-controlled input via the HTTP header (default: X-HTTP-Method-Override) or query string (non-default getter, e.g. '_method'). The only guard is `supports(method)` (lines 140-144), which checks that the supplied value is a known HTTP verb name (from Node.js http.METHODS, lowercased). This whitelist prevents arbitrary string injection but does NOT prevent privilege escalation — an attacker can legitimately supply 'DELETE', 'PUT', or 'PATCH' as the override value, and these pass the whitelist. No schema validator (zod/joi/ajv), no authorization check, and no rate limiting exists within this middleware. The attack path requires only that the consuming application: (1) uses method-override middleware (default configuration works), and (2) places authorization/routing middleware downstream of method-override. This is a well-known misuse pattern for this library, documented in its README, but the code itself enables the bypass. Reachability claim is accurate: any HTTP client can send a POST with X-HTTP-Method-Override: DELETE header and the middleware will set req.method = 'DELETE' before downstream handlers see the request. No non-default options are required for the header-based path. The query string path requires a non-default getter string but is equally exploitable once configured. The 'medium' severity is appropriate: the bypass is real but requires a specific (and unfortunately common) deployment anti-pattern where auth middleware runs after method-override.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=medium

**Detection pattern:** `req\.method\s*=\s*.*[Uu]pper[Cc]ase`
**Anti-pattern:** `req\.method\s*=\s*.*[Uu]pper[Cc]ase.*//.*validated|authorize.*before.*methodOverride`

### Finding 2: csrf_protection_bypass_via_null_methods_config

**Severity:** LOW | **Location:** `methodOverride (factory), line 53; inner middleware line 64`

**Justification:** Line 53 assigns `opts.methods` directly when it is not `undefined`, so passing `null` sets `methods = null`; line 64's guard `if (methods && methods.indexOf(...) === -1)` short-circuits on `null` (falsy), skipping the allowed-method check entirely and letting ANY HTTP verb (GET, HEAD) trigger an override — removing the POST-only CSRF barrier.

??? note "Adversarial Verification"
    The code path is accurately described. Line 53 uses strict `=== undefined` so passing `opts.methods = null` assigns `methods = null`. Line 64's guard `if (methods && methods.indexOf(...) === -1)` short-circuits to false when `methods` is null (falsy), skipping the allowed-method check entirely and permitting any HTTP verb (GET, HEAD, etc.) to trigger method override. This is technically a real CSRF-protection bypass when `methods: null` is configured. However, two important qualifications reduce severity: (1) This behavior is EXPLICITLY DOCUMENTED in the README — 'null can be specified to allow all methods' — with an accompanying security warning, making it a documented intentional feature rather than a hidden defect. (2) Reachability requires a developer to deliberately pass `{ methods: null }` as server-side configuration; no attacker-controlled input can reach this code path. There is no schema validation (no zod/joi/ajv) on the options object. The CSRF concern is real if a developer deliberately disables the POST-only guard, but labeling it a vulnerability is borderline since the library explicitly documents and warns about this behavior. Severity 'low' is appropriate given the explicit developer opt-in and documented risk warning.

**Detection pattern:** `opts\.methods\s*===\s*undefined\s*\?`
**Anti-pattern:** `opts\.methods\s*==\s*null|Array\.isArray\(methods\)`
