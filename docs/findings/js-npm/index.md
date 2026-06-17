# JS/npm Security Review — Findings Index

Automated security review of 14 npm packages using the JS/npm pipeline (`lens_router_js.py` → `review_pipeline_js.js`). Each package was statically classified, then reviewed by LLM agents through discovery → adversarial verification → reachability analysis.

## Summary

| Metric | Count |
|--------|-------|
| Packages reviewed | 14 |
| Files reviewed | 26 |
| Raw findings (pre-verify) | 84 |
| Confirmed findings | 33 |
| Breachable at default config (MED+) | 13 |
| Clean packages | 4 |

## Findings by Package

| Package | Weekly DL | Files | Raw | Confirmed | Breachable | Top Finding |
|---------|-----------|-------|-----|-----------|------------|-------------|
| [decompress](decompress.md) | 4.1M | 1 | 3 | 3 | **3 HIGH** | Path traversal + symlink + hardlink escape |
| [simple-get](simple-get.md) | 23.5M | 1 | 6 | 2 | **2 HIGH** | SSRF no URL validation + redirect SSRF |
| [xml-encryption](xml-encryption.md) | 1.27M | 5 | 16 | 7 | **3 HIGH** | XPath injection + XML injection |
| [node-rsa](node-rsa.md) | 2.9M | 5 | 20 | 11 | 1 HIGH | ReDoS in PEM autodetect; Bleichenbacher (downgraded) |
| [private-ip](private-ip.md) | 268K | 1 | 2 | 1 | **1 HIGH** | IPv6 SSRF filter bypass |
| [method-override](method-override.md) | 1.9M | 1 | 3 | 2 | 1 MED | HTTP method spoofing auth bypass |
| [multiparty](multiparty.md) | 446K | 1 | 4 | 3 | 1 MED | Unsanitized filename exposure |
| [saml2-js](saml2-js.md) | 122K | 2 | 13 | 1 | 1 MED | Open redirect via IdP-controlled SSO URL |
| [request-ip](request-ip.md) | 2.06M | 2 | 7 | 1 | 1 MED | IP spoofing via untrusted headers |
| [ssrf-req-filter](ssrf-req-filter.md) | 37K | 1 | 3 | 2 | 0 | Both downgraded (gate not breachable) |
| [url-join](url-join.md) | 18.5M | 2 | 3 | 0 | — | All rejected in adversarial verify |
| [ip](ip.md) | 9.4M | 1 | 0 | 0 | — | Clean |
| [convict](convict.md) | 1.1M | 1 | 0 | 0 | — | Clean |
| [st](st.md) | 290K | 2 | 1 | 0 | — | Clean |

## Highest-Priority Findings (Breachable HIGH)

These are confirmed, default-reachable, high-severity findings — the ones most worth manual triage and PoC development:

1. **decompress** — 3 path traversal variants (dir creation, symlink escape, hardlink escape) in an abandoned package with 4.1M downloads/week
2. **simple-get** — Full SSRF with zero URL validation + redirect-chain SSRF in a 23.5M DL/wk package with 0 CVEs
3. **xml-encryption** — XPath injection in `decryptKeyInfo` + XML injection in template interpolation (1.27M DL/wk)
4. **private-ip** — IPv6 bypass of the private-IP check function (268K DL/wk, known unpatched CVE-2025-8020)
5. **node-rsa** — ReDoS via nested quantifier in PEM autodetect regexes (2.9M DL/wk)

## Remaining Packages (Batch 5 — Next Session)

- fast-jwt (8 files) — recurring alg confusion
- file-type (8 files) — parser DoS
- needle (14 files) — SSRF/CRLF
- velocityjs (19 files) — unpatched PP
- nunjucks (25 files) — SSTI gap
- probe-image-size (26 files) — SSRF

## Pipeline Details

- **Static classifier:** `tools/lens_router_js.py` (9 signal classes, cross-file promotion)
- **LLM pipeline:** `workflows/review_pipeline_js.js` (discover → adversarial verify → reachability)
- **Wrapper:** `workflows/resilient_run_js.js` (auto-retry up to 5x on SSL/rate-limit failures)
- **Cost:** ~9.4M subagent tokens, 183 agents, ~51 minutes wall-clock
