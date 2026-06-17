# saml2-js

**Files reviewed:** 2 | **Raw findings:** 13 | **Confirmed:** 1

## Confirmed Findings

| # | Vuln Class | Severity | Breachable | Location |
|---|-----------|----------|------------|----------|
| 1 | `open_redirect_via_idp_controlled_sso_url` | **MEDIUM** | Yes | `create_logout_request_url lines 862-881; create_logout_response_url li` |

### Finding 1: open_redirect_via_idp_controlled_sso_url

**Severity:** MEDIUM | **Location:** `create_logout_request_url lines 862-881; create_logout_response_url lines 903-918`

**Justification:** `url.parse(identity_provider.sso_logout_url, true)` at line 862 parses an IdP-supplied URL with no allowlist validation, then builds a redirect destination via `url.format(uri)` and returns it as the redirect target; an attacker controlling IdP configuration can redirect users to an arbitrary URL.

??? note "Adversarial Verification"
    Confirmed. In both `create_logout_request_url` (line 862) and `create_logout_response_url` (line 903), `identity_provider.sso_logout_url` is passed directly to `url.parse()` with no scheme check, no allowlist, and no validation. The `IdentityProvider` constructor (line 935) stores `options.sso_logout_url` verbatim — there is no joi/zod/ajv schema, no regex guard, and no allowlist anywhere in the file. Both functions return `url.format(uri)` via `cb(null, url.format(uri), ...)` as the redirect destination for the caller to send the browser to. The attacker-controlled input path is: tenant supplies IdP metadata with a crafted `sso_logout_url` (e.g. `https://evil.com`) -> stored in DB -> `IdentityProvider` instantiated with it -> `create_logout_request_url` or `create_logout_response_url` called -> `url.format(uri)` returned -> application redirects user browser to attacker domain. No sanitizer or guard was missed. The reachability qualifier (multi-tenant deployments where tenants control IdP config) is accurate and makes this a real but deployment-context-dependent finding. In single-tenant deployments with static admin-controlled config the risk is negligible; in multi-tenant SaaS SSO scenarios it is a genuine open redirect. Severity medium is appropriate.

**Reachability:** gate=`no gate — default config` | breachable=True | adjusted_severity=medium

**Detection pattern:** `url\.parse.*sso_logout_url|url\.format.*sso_login_url`
**Anti-pattern:** `allowlist.*sso_url|validate.*sso_logout_url`
