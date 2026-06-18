# npm / Node.js — Security Review Findings

**14 packages reviewed** across 4 batches. 26 files analyzed by 183 agents in ~51 minutes.

---

## Results Summary

| Package | Weekly DL | Files | Raw | Confirmed | Breachable MED+ | Top Finding |
|---------|-----------|-------|-----|-----------|-----------------|-------------|
| [decompress](decompress/) | 4.1M | 1 | 3 | 3 | 3 HIGH | Path traversal + symlink + hardlink escape |
| [simple-get](simple-get/) | 23.5M | 1 | 6 | 2 | 2 HIGH | SSRF — no URL validation + redirect chain |
| [private-ip](private-ip/) | — | 1 | 2 | 1 | 1 HIGH | IPv6 SSRF filter bypass (CVE-2025-8020) |
| [xml-encryption](xml-encryption/) | — | 5 | 16 | 7 | 3 HIGH | XPath injection + XML injection templates |
| [node-rsa](node-rsa/) | 2.9M | 5 | 20 | 11 | 1 HIGH | ReDoS in PEM autodetect (5 findings downgraded) |
| [method-override](method-override/) | — | 1 | 3 | 2 | 1 MED | HTTP method spoofing auth bypass |
| [multiparty](multiparty/) | — | 1 | 4 | 3 | 1 MED | Unsanitized filename exposure |
| [saml2-js](saml2-js/) | — | 2 | 13 | 1 | 1 MED | Open redirect via IdP-controlled SSO URL |
| [request-ip](request-ip/) | — | 2 | 7 | 1 | 1 MED | IP spoofing via untrusted headers |
| [ssrf-req-filter](ssrf-req-filter/) | — | 1 | 3 | 2 | 0 | Both downgraded (gate not breachable) |
| ip | — | 1 | 0 | 0 | — | Clean |
| convict | — | 1 | 0 | 0 | — | Clean |
| url-join | — | 2 | 3 | 0 | — | All rejected in adversarial verify |
| st | — | 2 | 1 | 0 | — | Clean |

## Totals

- **Packages reviewed:** 14 / 20
- **Files reviewed:** 26
- **Raw findings:** 84
- **Confirmed findings:** 33
- **Breachable (default-reachable) MED+:** 13 (8 HIGH, 5 MED)
- **Clean packages:** 4 (ip, convict, url-join, st)

---

## Highest Priority (Breachable HIGH)

| Package | Finding | Why It Matters |
|---------|---------|---------------|
| [decompress](decompress/) | 3 path traversal variants | Abandoned package, 4.1M DL/wk, no maintainer to patch |
| [simple-get](simple-get/) | SSRF — no URL validation | 23.5M DL/wk, zero CVEs, default config exploitable |
| [private-ip](private-ip/) | IPv6 SSRF filter bypass | CVE-2025-8020, unpatched |
| [xml-encryption](xml-encryption/) | XPath + XML injection | SAML/XML encryption library, attacker-controlled XML input |
| [node-rsa](node-rsa/) | ReDoS in PEM autodetect | 2.9M DL/wk, importKey() without format triggers it |

---

## Also In This Track

| Finding | Package | Details |
|---------|---------|---------|
| [Next.js Image Optimizer SSRF](nextjs-image-ssrf/) | next | Redirect-based SSRF in `/_next/image`, reproduced with full lab |

---

## Pipeline

- **Static classifier:** `lens_router_js.py` — routes files to appropriate discovery lenses
- **LLM pipeline:** `review_pipeline_js.js` — multi-agent discovery → adversarial verify → reachability gate
- **Cost:** 9.4M tokens, 183 agents, ~51 min across batches 1-4

## Batch 5 (Not Started)

6 larger packages (100 files total) queued for next session: fast-jwt, file-type, needle, velocityjs, nunjucks, probe-image-size.
