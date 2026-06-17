# JS/npm Security Review Pipeline — Package Tracker

Updated: 2026-06-17 01:10 PDT

## Status Legend
- `[ ]` = pending (not started)
- `[~]` = in progress (workflow running)
- `[x]` = complete (all phases: discover → verify → reachability done)
- `[!]` = failed (needs re-run)

---

## Batch 1–3: Small packages (1–2 files each) — DONE

- [x] method-override (1 file) — 3 raw → 2 confirmed (1 MED breach, 1 LOW)
- [x] simple-get (1 file) — 6 raw → 2 confirmed (2 HIGH breach: SSRF + redirect SSRF)
- [x] ssrf-req-filter (1 file) — 3 raw → 2 confirmed (both downgraded, gate not breachable)
- [x] ip (1 file) — 0 findings (clean)
- [x] private-ip (1 file) — 2 raw → 1 confirmed (1 HIGH breach: IPv6 bypass)
- [x] convict (1 file) — 0 findings (clean)
- [x] decompress (1 file) — 3 raw → 3 confirmed (3 HIGH breach: path traversal + symlink + hardlink)
- [x] multiparty (1 file) — 4 raw → 3 confirmed (1 MED breach: filename, 2 LOW)

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

| Package | Files | Raw | Confirmed | Breachable | Top Finding |
|---------|-------|-----|-----------|------------|-------------|
| method-override | 1 | 3 | 2 | 1 MED | HTTP method spoofing auth bypass |
| simple-get | 1 | 6 | 2 | 2 HIGH | SSRF no URL validation + redirect SSRF |
| ssrf-req-filter | 1 | 3 | 2 | 0 | both downgraded (gate not breachable) |
| ip | 1 | 0 | 0 | — | clean |
| private-ip | 1 | 2 | 1 | 1 HIGH | IPv6 SSRF filter bypass |
| convict | 1 | 0 | 0 | — | clean |
| decompress | 1 | 3 | 3 | 3 HIGH | path traversal + symlink + hardlink escape |
| multiparty | 1 | 4 | 3 | 1 MED | unsanitized filename exposure |

## Totals So Far

- **Packages reviewed:** 8 / 20
- **Files reviewed:** 8
- **Raw findings:** 21
- **Confirmed findings:** 13
- **Breachable (default-reachable):** 8 (4 HIGH, 2 MED)
- **Workflow tokens:** 3.3M subagent tokens, 64 agents, ~14.5 min

## Cost Tracking

| Batch | Packages | Est. Cost | Actual Tokens | Est. Actual Cost |
|-------|----------|-----------|---------------|------------------|
| 1-3 (small) | 8 | ~$32 | 3.3M | ~$25 |
| 4 (medium) | 6 | ~$61 | — | — |
| 5 (large) | 6 | ~$350 | — | — |
| **Total** | **20** | **~$441** | — | — |
