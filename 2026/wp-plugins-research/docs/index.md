# WordPress Plugin Security Research

**Systematic security audit of the top 200 most-installed WordPress plugins**

*Researcher: Aseem Shrey (ashrey@andrew.cmu.edu) · CMU · Research Period: 2025–2026*

---

!!! info "Project Mission"
    This research applies a rigorous five-layer automated analysis pipeline — Semgrep pattern matching, intraprocedural taint analysis, Joern CPG interprocedural analysis, WordPress-aware hook resolution, and AI-driven expert review — to systematically identify exploitable vulnerabilities in the WordPress plugin ecosystem. The combined active install base of the plugins analyzed exceeds **one billion installations**.

---

## Key Statistics

| Metric | Value |
|--------|-------|
| Plugins in scope (top 200 by installs) | 200 |
| Plugins successfully downloaded & analyzed | **155** |
| Total lines of PHP analyzed | **12.8 million** |
| PHP files analyzed | 70,809 |
| Automated findings reviewed | 1,479 |
| **Confirmed vulnerabilities** | **49** |
| Critical / High severity | **11** |
| Medium severity | **14** |
| Working RCE PoCs achieved | **2** |
| False positive rate (post-pipeline) | ~67% |

---

## Top 5 Findings

!!! danger "1 — NextGEN Gallery: ZIP Slip RCE (CVSS 8.8) — SHELL ACHIEVED"
    **500,000+ active installs.** Two chained vulnerabilities — a variable name collision in the extension check loop that causes it to unconditionally return `true`, combined with unsanitized ZIP entry filenames passed directly to PclZip — allow any Author-level user to write a PHP webshell anywhere on the filesystem. **A working shell was confirmed during testing.**

    [View Full Report :material-arrow-right:](findings/nextgen-gallery-zip-slip-rce.md)

!!! danger "2 — Forminator: Unauthenticated File Upload / RCE on Nginx (CVSS 8.1)"
    **500,000+ active installs.** An unauthenticated AJAX endpoint freely vends valid WordPress nonces, nullifying all nonce-based protections on file upload handlers. On Nginx deployments without upload directory restrictions, unauthenticated attackers can write and execute PHP files.

    [View Full Report :material-arrow-right:](findings/forminator-unauth-file-upload.md)

!!! warning "3 — Ninja Forms: Stored XSS via Cache Poisoning Bypass (CVSS 7.1)"
    **800,000+ active installs.** A caching inconsistency causes `get_field_value()` to return raw unescaped data on its second call. Unauthenticated form submissions can poison the admin Submissions list view with JavaScript payloads, enabling admin session theft.

    [View Full Report :material-arrow-right:](findings/ninja-forms-stored-xss.md)

!!! warning "4 — WP Google Maps: Unauthenticated Class Instantiation (CVSS 7.5)"
    **400,000+ active installs.** The `/datatables` REST endpoint accepts a user-supplied `phpClass` parameter and instantiates it via `ReflectionClass` with no authentication. Full map data exfiltration (addresses, coordinates, custom links) confirmed unauthenticated.

    [View Full Report :material-arrow-right:](findings/wp-google-maps-unauth-class.md)

!!! warning "5 — Redirection: PHP Object Injection via unserialize() (CVSS 7.2)"
    **2,000,000+ active installs.** Bare `unserialize()` on URL match data that is written from user input and read back during request processing. Magic method gadget chains in WordPress core enable arbitrary file write or deletion with no authentication required.

    [View Full Report :material-arrow-right:](findings/redirection-object-injection.md)

---

## Quick Navigation

<div class="grid cards" markdown>

- :material-file-document: **[Executive Summary](reports/executive_summary.md)**

    Full research overview: methodology, statistics, disclosure plan, and all 155 plugins analyzed.

- :material-alert: **[Critical Findings Report](reports/critical_findings.md)**

    Detailed technical writeups for all 28 confirmed findings with CVSS scores, PoC code, and affected code references.

- :material-flask: **[Methodology](reports/methodology.md)**

    The five-layer analysis pipeline — from Semgrep rules through Joern CPG to AI agent-driven manual review.

- :material-table: **[Findings Overview](findings/index.md)**

    Summary table of all confirmed findings with severity, plugin, CVSS, and links to detail pages.

- :material-magnify: **[Surface Audits](audits/template-rendering.md)**

    Cross-cutting audit reports examining specific attack surfaces across multiple plugins.

- :material-book: **[Anti-Patterns Reference](reference/anti-patterns.md)**

    The 12 recurring code patterns that defeat static analysis and indicate real vulnerabilities.

</div>

---

## Vulnerability Class Breakdown

| Class | Confirmed | % |
|-------|-----------|---|
| Missing Authorization / Capability Bypass | 12 | 24.5% |
| Stored Cross-Site Scripting (XSS) | 11 | 22.4% |
| CSRF Protection Bypass | 5 | 10.2% |
| Information Disclosure | 6 | 12.2% |
| PHP Object Injection / Unsafe Deserialization | 3 | 6.1% |
| Unauthenticated File Upload | 3 | 6.1% |
| Weak Authentication / Predictable Tokens | 3 | 6.1% |
| Path Traversal / ZIP Slip | 2 | 4.1% |
| Code Injection (var_export, dynamic dispatch) | 2 | 4.1% |
| Email Injection / Analytics Abuse | 2 | 4.1% |

!!! note "The Dominant Pattern"
    Missing Authorization (24.5%) reflects the WordPress plugin ecosystem's core security challenge: the hook and REST API systems make it trivially easy to register endpoints, but safe defaults (requiring authentication or capability checks) must be **explicitly opted into** by every developer. The second-largest class — Stored XSS (22.4%) — reflects the prevalence of user-generated content paths that reach admin-facing output without correct context-sensitive escaping.

---

## Responsible Disclosure

All confirmed vulnerabilities with CVSS ≥ 4.0 are being reported to plugin maintainers via WordPress.org security contacts and/or maintainer security disclosure channels. The standard **90-day disclosure timeline** applies from the date of first contact.

**Priority:**
1. CVSS ≥ 7.0 with working PoC (NextGEN, Forminator, Ninja Forms, Redirection, WP Google Maps, Kirki, Shortcodes Ultimate, Metform) — contacted within 7 days
2. CVSS 4.0–6.9 — contacted within 30 days
3. Code quality / informational — bundled advisory to maintainers
