# Findings — All Streams

Security findings across all research streams: WordPress plugins (PHP), npm packages (JS/TS), and web framework n-day audits.

## At a Glance

| Stream | Packages | Confirmed | Breachable MED+ | Status |
|--------|----------|-----------|-----------------|--------|
| [JS/npm Pipeline](js-npm/index.md) | 14 reviewed | 33 | 13 (8H, 5M) | 6 more pending |
| [Web-Tech n-Days](web-tech-ndays/index.md) | 1 audited | 1 (8 variants) | 1 HIGH | Active |
| WordPress (PHP) | 4 reported | 4 | 3 | Batch pipeline running |

## Highest-Priority Findings

Confirmed, default-reachable, high-severity — worth manual triage and PoC:

| Package | Stream | Vuln Class | Severity | Downloads |
|---------|--------|-----------|----------|-----------|
| [decompress](js-npm/decompress.md) | npm | Path traversal (3 variants) | HIGH | 4.1M/wk |
| [simple-get](js-npm/simple-get.md) | npm | SSRF (no validation + redirect) | HIGH | 23.5M/wk |
| [xml-encryption](js-npm/xml-encryption.md) | npm | XPath injection + XML injection | HIGH | 1.27M/wk |
| [Next.js image optimizer](web-tech-ndays/index.md) | n-day | SSRF (redirect bypass) | HIGH | 34M/wk |
| [private-ip](js-npm/private-ip.md) | npm | IPv6 SSRF filter bypass | HIGH | 268K/wk |
| [node-rsa](js-npm/node-rsa.md) | npm | ReDoS in PEM autodetect | HIGH | 2.9M/wk |
| [method-override](js-npm/method-override.md) | npm | Auth bypass via method spoofing | MED | 1.9M/wk |
| [multiparty](js-npm/multiparty.md) | npm | Unsanitized filename exposure | MED | 446K/wk |
| [saml2-js](js-npm/saml2-js.md) | npm | Open redirect via IdP URL | MED | 122K/wk |
| [request-ip](js-npm/request-ip.md) | npm | IP spoofing via untrusted headers | MED | 2.06M/wk |
