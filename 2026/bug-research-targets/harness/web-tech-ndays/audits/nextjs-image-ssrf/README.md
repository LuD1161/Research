# Audit: Next.js Image Optimizer SSRF

Target: `/_next/image?url=` endpoint — the image optimizer's external URL fetch path.

## Key finding from source analysis

**Next.js 15.3.3 has no private-IP check and follows redirects blindly.** The only SSRF defense is `matchRemotePattern` (hostname glob matching against the initial URL). Redirect targets are never re-validated.

See `analysis/code-paths.md` for full annotated source trace.

## Quick start

```bash
cd lab/
docker compose build
docker compose up -d

# Verify harness
curl 'http://localhost:3001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fimage.jpg&w=64&q=75' -o /dev/null -w '%{http_code}\n'
# Should return 200

# Run test matrix
cd ..
node scripts/run-tests.mjs

# Analyze results
node scripts/analyze-results.mjs
```

## Services

| Service | Host Port | Docker IP | Purpose |
|---------|-----------|-----------|---------|
| app-baseline | 3001 | auto | Allowlist: 10.99.0.10 only |
| app-wildcard | 3002 | auto | Allowlist: ** (all hosts) |
| app-subdomain | 3003 | auto | Allowlist: *.attacker.local |
| app-rebind | 3004 | auto | Allowlist: rebind.attacker.local |
| attacker | 4444 | 10.99.0.10 | Redirect server |
| oracle | 4010 | 10.99.0.100 | Internal SSRF target |
| dns-server | 5353 | 10.99.0.2 | DNS + rebind control |

## Version matrix

| Version | Purpose |
|---------|---------|
| 15.3.3 | Primary — no IP check, no redirect validation, memory DoS |
| 15.5.10 | Post memory-DoS fix — still no IP check or redirect validation |

## Test matrix

23 payloads across 10 technique classes. See `payloads/ssrf-matrix.json`.

Highest-confidence: redirect-based SSRF (tests 1-8) — redirect targets bypass `remotePatterns` allowlist.
