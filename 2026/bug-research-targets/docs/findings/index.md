# All Confirmed Findings

Cross-ecosystem overview of all confirmed vulnerabilities.

---

## Summary

| Ecosystem | Count | Severity Range | Key Classes |
|-----------|-------|---------------|-------------|
| [WordPress Plugins](wordpress/index.md) | 49 | Critical–Low | File upload, object injection, stored XSS, authz bypass |
| [npm / Node.js](npm/index.md) | 1 | High | SSRF |

**Total: 50 confirmed findings** across 2 ecosystems.

---

## Highest Severity

| # | Ecosystem | Target | Finding | CVSS | Class |
|---|-----------|--------|---------|------|-------|
| 1 | WordPress | [NextGEN Gallery](wordpress/nextgen-gallery-zip-slip-rce.md) | ZIP Slip RCE | **8.8** | RCE |
| 2 | WordPress | [Forminator](wordpress/forminator-unauth-file-upload.md) | Unauth File Upload | **8.1** | File Upload |
| 3 | npm | [Next.js](npm/nextjs-image-ssrf/001-redirect-ssrf.md) | Image Optimizer Redirect SSRF | **~7.5** | SSRF |
| 4 | WordPress | [Ninja Forms](wordpress/ninja-forms-stored-xss.md) | Stored XSS (cache bypass) | **7.1** | XSS |
| 5 | WordPress | [Ninja Forms](wordpress/ninja-forms-object-injection.md) | Object Injection | **6.8** | Deserialization |

See per-ecosystem pages for complete listings:

- **[WordPress — 49 findings](wordpress/index.md)** with attack flow diagrams and exploitation chains
- **[npm / Node.js — 1 finding](npm/index.md)** (Next.js image optimizer SSRF)
