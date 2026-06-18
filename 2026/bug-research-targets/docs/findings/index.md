# All Confirmed Findings

Cross-ecosystem overview of all confirmed vulnerabilities.

---

## Summary

| Ecosystem | Count | Severity Range | Key Classes |
|-----------|-------|---------------|-------------|
| [WordPress Plugins](wordpress/index.md) | 49 | Critical–Low | File upload, object injection, stored XSS, authz bypass |
| [npm / Node.js](npm/index.md) | 33 | High–Low | SSRF, path traversal, XPath injection, XML injection, ReDoS, IP spoofing |

**Total: 82 confirmed findings** across 2 ecosystems (13 npm findings breachable in default config).

---

## Highest Severity

| # | Ecosystem | Target | Finding | Severity | Class |
|---|-----------|--------|---------|----------|-------|
| 1 | WordPress | [NextGEN Gallery](wordpress/nextgen-gallery-zip-slip-rce.md) | ZIP Slip RCE | **Critical (8.8)** | RCE |
| 2 | WordPress | [Forminator](wordpress/forminator-unauth-file-upload.md) | Unauth File Upload | **Critical (8.1)** | File Upload |
| 3 | npm | [Next.js](npm/nextjs-image-ssrf/001-redirect-ssrf.md) | Image Optimizer Redirect SSRF | **High (~7.5)** | SSRF |
| 4 | npm | [decompress](npm/decompress/) | Path Traversal + Symlink + Hardlink (x3) | **High** | Path Traversal |
| 5 | npm | [simple-get](npm/simple-get/) | SSRF — No URL Validation | **High** | SSRF |
| 6 | npm | [private-ip](npm/private-ip/) | IPv6 SSRF Filter Bypass | **High** | Filter Bypass |
| 7 | npm | [xml-encryption](npm/xml-encryption/) | XPath Injection + XML Injection (x3) | **High** | Injection |
| 8 | WordPress | [Ninja Forms](wordpress/ninja-forms-stored-xss.md) | Stored XSS (cache bypass) | **High (7.1)** | XSS |
| 9 | WordPress | [Ninja Forms](wordpress/ninja-forms-object-injection.md) | Object Injection | **High (6.8)** | Deserialization |
| 10 | npm | [node-rsa](npm/node-rsa/) | ReDoS in PEM Autodetect | **High** | DoS |

See per-ecosystem pages for complete listings:

- **[WordPress — 49 findings](wordpress/index.md)** with attack flow diagrams and exploitation chains
- **[npm / Node.js — 33 findings](npm/index.md)** across 14 packages (13 breachable in default config)
