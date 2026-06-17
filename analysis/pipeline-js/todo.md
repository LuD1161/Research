# JS/npm Security Review Pipeline — Package Tracker

Updated: 2026-06-17

## Status Legend
- `[ ]` = pending (not started or failed — needs run/re-run)
- `[~]` = in progress (workflow running)
- `[x]` = complete (all phases: discover → verify → reachability done)

---

## Batch 1–3: Small packages (1–2 files each, ~$32 total)

- [~] method-override (1 file, tier-2) — retry, partial checkpoints from batch 1
- [~] simple-get (1 file, tier-2) — retry, discovery done, verify failed
- [~] ssrf-req-filter (1 file, tier-2) — retry, partial checkpoints from batch 1
- [~] ip (1 file, tier-1) — new run
- [~] private-ip (1 file, tier-1) — new run
- [~] convict (1 file, tier-2) — new run
- [~] decompress (1 file, tier-2) — new run
- [~] multiparty (1 file, tier-2) — new run

## Batch 4: Medium packages (2–5 files each)

- [ ] url-join (2 files, tier-1+2)
- [ ] saml2-js (2 files, tier-2) — 965-line main file, 6 security tags
- [ ] request-ip (2 files, tier-2)
- [ ] st (2 files, tier-1+2) — path traversal target
- [ ] xml-encryption (5 files, tier-2) — padding oracle target
- [ ] node-rsa (5 files, tier-1) — dist-only, pointed at dist/

## Batch 5: Large packages (8+ files each)

- [ ] fast-jwt (8 files, tier-2) — recurring alg confusion
- [ ] file-type (8 files, tier-2) — parser DoS target
- [ ] needle (14 files, tier-1+2) — SSRF/CRLF, 0 CVEs
- [ ] velocityjs (19 files, tier-1+2) — dist-only, unpatched PP
- [ ] nunjucks (25 files, tier-2) — SSTI gap
- [ ] probe-image-size (26 files, tier-2) — SSRF target

---

## Results Summary

| Package | Files | Raw | Confirmed | Reachable | Notes |
|---------|-------|-----|-----------|-----------|-------|
| method-override | 1 | — | — | — | in progress |
| simple-get | 1 | 6 | — | — | verify failed, retrying |
| ssrf-req-filter | 1 | — | — | — | in progress |
| ip | 1 | — | — | — | in progress |
| private-ip | 1 | — | — | — | in progress |
| convict | 1 | — | — | — | in progress |
| decompress | 1 | — | — | — | in progress |
| multiparty | 1 | — | — | — | in progress |

## Cost Tracking

| Batch | Packages | Est. Cost | Actual Cost |
|-------|----------|-----------|-------------|
| 1-3 (small) | 8 | ~$32 | — |
| 4 (medium) | 6 | ~$61 | — |
| 5 (large) | 6 | ~$350 | — |
| **Total** | **20** | **~$441** | — |
