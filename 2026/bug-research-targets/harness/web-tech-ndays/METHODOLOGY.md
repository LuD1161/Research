# Ecosystem → request-reachable package → source→sink audit → remote curl validation

Primary methodology for the `web-tech-ndays` target. **Goal: ORIGINAL bug discovery** in widely-used
packages of a popular ecosystem, validated remotely with a crafted request — not just re-confirming
published n-days (that's the secondary/distribution mode, see PIPELINE research).

## The chain
1. **Pick a hot ecosystem** — Next.js / React / Node (also Nuxt, Remix, SvelteKit, Astro).
2. **Enumerate commonly-used packages** in it (by npm download count + "what real apps actually
   pull in": framework deps, popular middleware, the long tail every app copies).
3. **Filter to request-reachable, user-data-processing packages** (the key filter — see below).
4. **Audit for a NEW source→sink bug** — attacker-controlled HTTP input → dangerous sink with a
   missing/weak guard.
5. **Frame the PoC** — a minimal `curl`/HTTP request that triggers the sink, proven first on a local
   app that uses the package at a default config.
6. **Validate remotely** — fingerprint live sites using the package (in authorized bug-bounty scope
   only) and confirm the same crafted request triggers the behavior.

## THE critical filter: request-reachability
Only packages whose code runs **server-side on user-controlled HTTP input** are curl-testable.
- ✅ In scope: anything in the request path — body/multipart parsers, query/URL parsers, template
  engines (SSR/SSTI), image processors, markdown/HTML sanitizers, URL fetchers (SSRF), static-file
  servers (path traversal), XML/YAML parsers (XXE/proto-pollution/deserialization), JWT/auth libs,
  ORM/query builders (injection), GraphQL layers, Next.js middleware / server actions / API-route helpers.
- ❌ Out of scope for curl validation: pure client-side React UI component libraries (can't be hit by
  a request). Those need the *browser/extension*-style harness, not this one.

## Candidate package classes (Node/Next ecosystem) — where source→sink lives
| Class | Example packages | Source (user input) | Sink / bug class |
|-------|------------------|---------------------|------------------|
| Body/multipart parse | formidable, multer, busboy, body-parser | request body / filename | path traversal, DoS, proto-pollution |
| Template engines | ejs, pug, handlebars, nunjucks | rendered vars / template name | SSTI → RCE |
| Image processing | sharp, jimp, image-size (used by next/image) | uploaded/remote image, dimensions | SSRF, DoS, memory bugs |
| Markdown / HTML | marked, sanitize-html, dompurify (SSR) | post content | stored/reflected XSS bypass |
| URL fetchers | axios, node-fetch, got, request | user-supplied URL | SSRF, redirect-based bypass |
| Static file / send | serve-static, send | path param | path traversal / LFI |
| XML / YAML | xml2js, fast-xml-parser, js-yaml | uploaded doc / body | XXE, proto-pollution, deserialization |
| Merge / clone utils | lodash.merge, deepmerge, deep-extend | JSON body | prototype pollution → gadget chain |
| Auth / JWT | jsonwebtoken, next-auth | token / cookie | alg-confusion, auth bypass |
| Query / ORM | knex, sequelize, prisma raw, mongoose | filter params | SQL/NoSQL injection |
| Framework internals | Next.js middleware, server actions, image optimizer; Nuxt/Vite SSR | headers / path / query | auth bypass, SSRF, cache poisoning |

## Discovery method (per package)
- Map **sources**: exported functions / handlers that receive external input (req body, query, params,
  headers, uploaded files, user-supplied URLs/paths/templates).
- Map **sinks**: `child_process`, `fs`, `eval`/`Function`, template compile/render, network calls,
  query execution, deserialize, dynamic `require`.
- **Trace taint** source→sink; look for missing/weak validation, default-insecure config, an unsafe
  option that real apps leave on, or a parser quirk (encoding, type confusion, proto-pollution gadget).
- Prefer bugs that are **default-reachable** (trigger without exotic config) — those generalize across
  many live deployments and make remote validation realistic.

## Validation (local first, then remote)
- **Local**: scaffold a minimal app using the package at default/common config; reproduce the trigger
  with a single documented `curl`. This is the high-signal artifact and the disclosure PoC.
- **Remote**: use the fingerprint→probe engine (see ../../PIPELINE research from the n-day pass) to
  find in-scope live sites running the package/version and confirm the **same benign proof request**
  fires. Non-destructive proof only.

## Why this beats pure n-day
A fresh bug in a popular request-reachable package = **no duplicates, real bounty value, and the same
fingerprint engine becomes a private mass-validation/distribution channel.** The n-day research feeds
the *fingerprinting + remote-validation + scope-acquisition* half; this doc owns the *discovery* half.

## Legal guardrail
Remote probing only against **authorized bug-bounty/pentest scope**, benign proof requests only, never
destructive payloads. Local repro app needs no authorization and is where discovery happens.

Status: methodology defined; tooling not built. Pairs with [package-registries] and [ai-ml-tooling]
targets in INDEX.md.
