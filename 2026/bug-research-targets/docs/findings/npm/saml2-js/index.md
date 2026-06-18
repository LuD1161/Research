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

**Pipeline:** 13 raw findings → 1 confirmed (1 MEDIUM breachable)
