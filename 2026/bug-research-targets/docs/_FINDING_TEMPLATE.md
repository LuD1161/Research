# <FINDING-ID> — <short title>

- **Status:** draft | reproduced | reported | CVE-assigned | fixed | rejected
- **Severity:** <CVSS / qualitative>
- **Affected component & version:** <plugin/module @ version>
- **Vuln class:** <SQLi / XSS / SSRF / authz bypass / RCE / path traversal / ...>

## Root cause (source level)
<file:line, tainted source → sink, why sanitization is missing>

## Reproduction (against running instance) — REQUIRED before "reproduced"
Lab: <ref to ../lab>, version <x>, auth context <role>.

1. <step>
2. <step>

PoC:
```
<request / curl / script>
```

## Observed impact
<what actually happened on the live instance — proof, not theory>

## Disclosure
- Reported: <date / channel>
- CVE / advisory: <id>
