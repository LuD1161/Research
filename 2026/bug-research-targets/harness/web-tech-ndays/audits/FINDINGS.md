# Web-Tech n-Day Audit Findings

Tracked findings from the `web-tech-ndays` audit pipeline. Each row links to the full finding document with PoC and oracle evidence.

## Confirmed Findings

| ID | Package | Version | Vuln Class | Severity | Guard Bypassed | Status | Finding |
|----|---------|---------|-----------|----------|----------------|--------|---------|
| 001 | next (image optimizer) | 15.3.3 | SSRF (redirect-based) | High | remotePatterns (redirect hop) | reproduced | [001-redirect-ssrf](nextjs-image-ssrf/findings/001-redirect-ssrf-no-hop-validation.md) |

## Summary

- **Total confirmed**: 1 finding (6 redirect variants proven with oracle logs)
- **Key insight**: `fetchExternalImage()` uses `fetch()` with default `redirect: 'follow'` — redirect targets never re-validated against `remotePatterns`. No private-IP guard exists in 15.3.3 or 15.5.10.
- **Impact**: Any Next.js app with a `remotePatterns` entry pointing to an attacker-controlled host (or host with open redirect) is vulnerable to blind/full-read SSRF to internal services and cloud metadata.

## Pipeline

Audit harness: `audits/nextjs-image-ssrf/lab/` (Docker Compose with 4 Next.js configs + oracle + attacker + DNS rebinding server)
Test matrix: 23 payloads across 10 technique classes → 8 SSRF_CONFIRMED, 3 SSRF_LIKELY, 12 BLOCKED
