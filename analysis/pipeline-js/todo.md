# JS/npm Security Review Pipeline — Package Tracker

Updated: 2026-06-17 01:50 PDT

## Status Legend
- `[ ]` = pending (not started)
- `[~]` = in progress (workflow running)
- `[x]` = complete (all phases: discover → verify → reachability done)
- `[!]` = failed (needs re-run)

---

## Batch 1–3: Small packages — DONE

- [x] method-override (1 file) — 3 raw → 2 confirmed (1 MED breach, 1 LOW)
- [x] simple-get (1 file) — 6 raw → 2 confirmed (2 HIGH breach: SSRF + redirect SSRF)
- [x] ssrf-req-filter (1 file) — 3 raw → 2 confirmed (both downgraded, gate not breachable)
- [x] ip (1 file) — 0 findings (clean)
- [x] private-ip (1 file) — 2 raw → 1 confirmed (1 HIGH breach: IPv6 bypass)
- [x] convict (1 file) — 0 findings (clean)
- [x] decompress (1 file) — 3 raw → 3 confirmed (3 HIGH breach: path traversal + symlink + hardlink)
- [x] multiparty (1 file) — 4 raw → 3 confirmed (1 MED breach: filename, 2 LOW)

## Batch 4: Medium packages — DONE

- [x] url-join (2 files) — 3 raw → 0 confirmed (all rejected in verify)
- [x] saml2-js (2 files) — 13 raw → 1 confirmed (1 MED breach: open redirect via IdP URL)
- [x] request-ip (2 files) — 7 raw → 1 confirmed (1 MED breach: IP spoofing via untrusted header)
- [x] st (2 files) — 1 raw → 0 confirmed (clean)
- [x] xml-encryption (5 files) — 16 raw → 7 confirmed (3 HIGH breach: XPath inj + XML inj, 4 LOW)
- [x] node-rsa (5 files) — 20 raw → 11 confirmed (1 HIGH breach: ReDoS, 5 downgraded, 5 LOW)

## Batch 5: Large packages — NOT STARTED (next session)

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
| url-join | 2 | 3 | 0 | — | all rejected in adversarial verify |
| saml2-js | 2 | 13 | 1 | 1 MED | open redirect via IdP-controlled SSO URL |
| request-ip | 2 | 7 | 1 | 1 MED | IP spoofing via untrusted headers |
| st | 2 | 1 | 0 | — | clean |
| xml-encryption | 5 | 16 | 7 | 3 HIGH | XPath injection in decryptKeyInfo + XML injection |
| node-rsa | 5 | 20 | 11 | 1 HIGH | ReDoS in PEM autodetect; Bleichenbacher oracle (downgraded) |

## Totals

- **Packages reviewed:** 14 / 20
- **Files reviewed:** 26
- **Raw findings:** 84
- **Confirmed findings:** 33
- **Breachable (default-reachable) MED+:** 13 (8 HIGH, 5 MED)
- **Clean packages:** 4 (ip, convict, url-join, st)

## Cost Tracking

| Batch | Packages | Files | Agents | Tokens | Duration |
|-------|----------|-------|--------|--------|----------|
| 1-3 (small) | 8 | 8 | 64 | 3.3M | ~14 min |
| 4 (medium) | 6 | 18 | 119 | 6.1M | ~37 min |
| 5 (large) | 6 | 100 | — | — | — |
| **Total** | **14** | **26** | **183** | **9.4M** | **~51 min** |
