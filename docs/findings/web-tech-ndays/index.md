# Web-Tech n-Day Audit Findings

Manual security audits of high-value web framework components using Docker-based lab harnesses with oracle-verified proofs.

## Confirmed Findings

| ID | Package | Version | Vuln Class | Severity | Guard Bypassed | Status |
|----|---------|---------|-----------|----------|----------------|--------|
| 001 | next (image optimizer) | 15.3.3 | SSRF (redirect-based) | High | remotePatterns (redirect hop) | reproduced |

## Next.js Image Optimizer SSRF (001)

**Package:** `next` v15.3.3 (~34M weekly downloads)
**Endpoint:** `/_next/image?url=<attacker>&w=64&q=75`
**Root cause:** `fetchExternalImage()` uses `fetch()` with default `redirect: 'follow'` — redirect targets are never re-validated against `remotePatterns`. No private-IP DNS check exists in 15.3.3 or 15.5.10.

### Variants Confirmed (8 total)

| Technique | Status | Config | Proof |
|-----------|--------|--------|-------|
| 302 redirect → oracle | SSRF_CONFIRMED | baseline | Oracle log |
| 307 redirect → oracle | SSRF_CONFIRMED | baseline | Oracle log |
| 308 redirect → oracle | SSRF_CONFIRMED | baseline | Oracle log |
| Redirect chain (2 hops) | SSRF_CONFIRMED | baseline | Oracle log |
| 302 redirect (wildcard) | SSRF_CONFIRMED | wildcard | Oracle log |
| 307 redirect (wildcard) | SSRF_CONFIRMED | wildcard | Oracle log |
| 308 redirect (wildcard) | SSRF_CONFIRMED | wildcard | Oracle log |
| 302 redirect (subdomain) | SSRF_CONFIRMED | subdomain | Oracle log |

### Impact

Any Next.js app with a `remotePatterns` entry pointing to an attacker-controlled host (or a host with an open redirect) is vulnerable to blind/full-read SSRF to internal services and cloud metadata (169.254.169.254).

### Lab Harness

Docker Compose with 7 services on `10.99.0.0/24`:

- 4 Next.js configs (baseline, wildcard, subdomain, rebind)
- Attacker server with redirect/chain/image endpoints
- Oracle server (4x4 PNG with magenta corners, request logging)
- DNS rebinding server (TTL=0, query counter)

Test matrix: 23 payloads across 10 technique classes.

### Key Source Analysis

- `fetchExternalImage()` at `packages/next/src/server/image-optimizer.ts:647` — `fetch(href)` with default `redirect: 'follow'`
- `matchRemotePattern()` only validates the initial URL, not redirect targets
- No `isPrivateIP()` or DNS resolution check exists in the image optimizer path

Full analysis: `harness/web-tech-ndays/audits/nextjs-image-ssrf/analysis/code-paths.md`
Full finding: `harness/web-tech-ndays/audits/nextjs-image-ssrf/findings/001-redirect-ssrf-no-hop-validation.md`
