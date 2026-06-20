# saml2-js — Security Review Findings

**Package:** [saml2-js](https://www.npmjs.com/package/saml2-js) | **Files reviewed:** 2

## Summary

| ID | Vulnerability Class | Severity | Breachable | Location |
|----|---------------------|----------|------------|----------|
| SAML-01 | Open Redirect via IdP-Controlled SSO URL | MEDIUM | Yes | `create_logout_request_url` / `create_logout_response_url`, lines 862, 903 |

---

## SAML-01: Open Redirect via IdP-Controlled SSO URL

- **Vulnerability class:** Open Redirect
- **Raw severity:** MEDIUM
- **Adjusted severity (after reachability):** MEDIUM
- **Location:** `create_logout_request_url` / `create_logout_response_url`, lines 862, 903

### Reachability Analysis

The IdP's `sso_logout_url` is used as a redirect target without validation. In deployments where IdP metadata is fetched dynamically or from an untrusted source, an attacker can control the redirect destination. This is reachable in any deployment that does not pin its IdP metadata statically.

### Gate Status

**No gate** — exploitable in default configuration when IdP metadata is not hardcoded.

**Breach:** True

---

---

## Real-World Exploitation

### Where this library is used
saml2-js has 100K+ weekly downloads and implements SAML 2.0 Service Provider functionality for Node.js applications that use enterprise SSO (Single Sign-On).

### How an attacker would exploit it
1. **Identify the target**: find an application using saml2-js for SSO. The application's SAML metadata endpoint (usually `/.well-known/saml-metadata` or `/saml/metadata`) will reference saml2-js in its entity descriptor.
2. **Compromise or impersonate the IdP metadata source**: if the application fetches IdP metadata from a URL (rather than hardcoding it), the attacker needs to control that URL. This could be via:
   - DNS hijacking
   - Compromising the metadata hosting server
   - Man-in-the-middle on unencrypted metadata fetch
   - Social engineering the admin to point to a malicious IdP
3. **Set `sso_logout_url` to attacker domain**: the malicious IdP metadata sets `sso_logout_url` to `https://attacker.example/phish`. saml2-js uses this URL without validation.
4. **Wait for logout**: when any user clicks "Logout" in the application, they are redirected to the attacker's phishing page, which can mimic the real login page and steal credentials.

### Impact
- **Phishing**: redirect users to a credential-harvesting page on logout
- **Session hijacking**: if the attacker's page captures the SAMLResponse, they can replay it
- **Trust exploitation**: users trust the logout flow because it started from the legitimate application

## Clean / Rejected

| Finding | Reason for Rejection |
|---------|---------------------|
| CRITICAL — SAML Signature Bypass | Requires `ignore_signature=true`, a dev-only flag. Not exploitable in production configurations. |
| HIGH — SAML Signature Wrapping | Adversarial verification found xml-crypto handles canonicalization correctly; wrapping attack not viable against current parser. |
| MEDIUM — Prototype Pollution via XML Attribute Keys | XML parser does not allow attribute keys to overwrite prototype properties in practice. |
| MEDIUM — XXE via XML Parsing | Mitigated by xml-crypto's underlying parser which disables external entity resolution. |
| MEDIUM — Audience Restriction Regex Bypass | Regex anchoring is correct; no bypass found during adversarial testing. |
| HIGH — SAML Assertion Confusion | Requires `allow_unencrypted_assertion=true`, a non-default option. Not exploitable in default config. |
| CRITICAL — Auth Bypass via Empty Certificate List | Requires caller to pass an empty cert array, which is a misconfiguration, not an exploitable default. |
| HIGH — Auth Bypass via Missing InResponseTo | InResponseTo validation is optional per SAML spec; library behavior is spec-compliant. |
| HIGH — Prototype Pollution via User-Controlled Object Key | Object key injection path not reachable through normal SAML response parsing. |
| HIGH — Auth Bypass via Missing Conditions Element | Conditions element absence is handled by downstream validation in typical deployments. |
| MEDIUM — Auth Bypass via Audience Restriction Skipped | Audience restriction is correctly enforced when configured. |

---

---

## Reproduction (validated 2026-06-19)

**Lab reference:** `targets/labs/npm-saml2-js/`

**Pinned version:** saml2-js 4.0.4

### Steps

1. **Install the package:**
   ```bash
   npm install saml2-js@4.0.4
   ```

2. **Create a PoC** that configures an IdP with an attacker-controlled `sso_logout_url`:
   ```javascript
   const saml2 = require('saml2-js');
   const sp = new saml2.ServiceProvider({ entity_id: 'https://sp.example', assert_endpoint: 'https://sp.example/assert' });
   const idp = new saml2.IdentityProvider({
     sso_login_url: 'https://legit-idp.example/sso',
     sso_logout_url: 'https://attacker.example/phish',  // attacker-controlled
     certificates: ['MIID...']
   });
   sp.create_logout_request_url(idp, {}, (err, logout_url) => {
     console.log('generated logout URL:', logout_url);
   });
   ```

3. **Verify** the logout URL points to the attacker's domain.

### Observed output (from `targets/labs/npm-saml2-js/results.txt`)

```
saml2-js PoC -- version: 4.0.4

  generated logout URL:
   https://attacker.example/phish?SAMLRequest=fZBBa4QwEIX%2FiuS%2BGqNu...

  >>> SAML-01 CONFIRMED: attacker-controlled IdP URL was used as redirect target <<<
```

### Verdict

**CONFIRMED.** The `sso_logout_url` from IdP metadata is used as a redirect target without validation. Deployments that fetch IdP metadata dynamically are vulnerable to open redirect/phishing.

---

---

## Download PoC Files

- [poc.js](poc/poc.js) — Creates SP/IdP with attacker-controlled logout URL and generates redirect
- [Dockerfile](poc/Dockerfile) — Isolated Docker environment with pinned saml2-js@4.0.4

**Pipeline:** 13 raw findings → 1 confirmed (1 MEDIUM breachable)
