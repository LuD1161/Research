# Remote fingerprinting, validation & disclosure (the shared "distribution" half)

Source: exploratory research pass, 2026-06-16. This is the engine both modes share — it turns
"a bug exists in package X" into "proven present & reachable on this live, in-scope host." The
*discovery* half is [METHODOLOGY.md](./METHODOLOGY.md).

## Strategic pivot (most important finding — confirms the original-discovery focus)
**Mass-reporting known n-days across many programs is structurally penalized and is the
criminal/ransomware monetization model, not a bounty one.** Bug-bounty platforms are *engineered* to
suppress it: HackerOne Signal craters on N/A/dup closures (throttles your submission rate), Intigriti
rejects raw scanner output, the "AI slop / beg-bounty" backlash is intensifying, and **no clean
precedent exists** of someone earning real money mass-reporting a single published n-day. Confluence
n-day sweeps (CVE-2022-26134, -2023-22518) = attacker mass-exploitation, not income.

→ **Weight toward Track B (original research then sweep)** — the Birsan dependency-confusion (>$130k
across 35+ authorized orgs) / Arteau prototype-pollution / Google Big Sleep model: one *novel*
bug-class → precise remote oracle → sweep authorized scope. Track A (n-day validate) is for building
tooling + Signal, reported per-program with a hand-crafted PoC only — never bulk.

## Fingerprinting: getting an EXACT version (the hard part)
Wappalyzer/BuiltWith/WhatRuns give "uses React," not "React 18.2.0" — version only when the app emits
a string. Exact version for modern SPA bundles comes from:
1. **Exposed source maps (`.js.map`)** — *the* best oracle (CWE-540). `sources[]`/`sourcesContent[]`
   leak the dependency tree + un-minified code. Tools: `unwebpack-sourcemap --detect`, `sourcemapper`.
   Exact version comes from a bundled `package.json`/banner inside `sourcesContent` (the bare
   `node_modules/<pkg>/file.js` path alone has no version). Killed by `GENERATE_SOURCEMAP=false`.
2. **Framework runtime-chunk version strings** — Next.js `/_next/static/chunks/framework-*.js`
   contains exact Next + React versions (NetBird #4745). `buildId` identifies a *build*, not the version.
3. **retire.js file-hashing** — SHA1→version map for standalone vendored library files (the
   "hash artifact, compare to npm release" technique, at file granularity).
4. **AST/structural match vs npm tarballs** — research-grade; needed because whole-bundle hashing
   matches nothing (minify + tree-shake + concat).

Framework signals: Next.js `__NEXT_DATA__` / `window.next` / `/_next/static/` / `/_next/image?url=`
/ `x-nextjs-cache`; Nuxt `_nuxt/` + `window.__NUXT__`; webpack `__webpack_require__` + `sourceMappingURL`.
Favicon mmh3 hash (base64-encode bytes FIRST, then mmh3) = infra correlation, not version.

## CVEs confirmable with ONE benign request (prefer in-band proof)
**Best — in-band (the response itself proves it):**
- **Next.js CVE-2025-29927** middleware auth bypass (CVSS 9.1; `<12.3.5/<13.5.9/<14.2.25/<15.2.3`):
  send `x-middleware-subrequest` (value version-dependent, e.g. `middleware:middleware:...` ×5) → a
  protected route returns **200** instead of 307/401. No auth, non-destructive.
- **Vite dev-server file read** (CVE-2025-30208/-31125/-31486/-32395; needs `--host` exposed):
  `/@fs/<path>?import&raw??` → **200 + file contents** in body.
- **Static-file path traversal** (send/serve-static, node-static, Node CVE-2025-27210): `%2e%2e%2f` →
  file bytes in 200 body.
- **Next.js cache poisoning CVE-2024-46982**: anomalous `Cache-Control: s-maxage=1,...` header
  (benign fingerprint; weaponizing is not benign — stop at the header).

**OOB-only (benign trigger, off-channel proof via Interactsh DNS):** Next.js image SSRF
(CVE-2024-34351, -2025-55173, OpenNext CVE-2025-6087).

**Skip for an automated validator:** prototype-pollution (app-code-dependent), RCE/deserialization,
auth-gated, or anything whose confirmation is destructive.

## Tooling stack (ProjectDiscovery, free, chainable)
`subfinder → dnsx → naabu → httpx (-td tech detect, favicon, -cdn) → katana (headless) → nuclei`.
`uncover` wraps Shodan/Censys/FOFA/ZoomEye to seed hosts by tech (`http.html:"/_next/static"`,
`__NEXT_DATA__`, favicon hash). Map (version→CVE) via **OSV.dev `/v1/querybatch`** (+ GHSA aliases,
affected ranges) ∩ **CISA KEV** (prioritize in-the-wild).

**Precise non-destructive Nuclei templates:** `matchers-condition: and` combining a *version/product*
matcher with a *vuln-proof* matcher — never let a bare 200 be the signal. For blind classes use
`{{interactsh-url}}` + `part: interactsh_protocol` `words:["dns"]` (DNS callback = proof of reach
without a damaging payload). OWASP ZAP baseline scan (passive/spider only) = safe first pass.

## Target acquisition — authorized scope ONLY
- **`arkadiyt/bounty-targets-data`** (per-platform JSON + `domains.txt`/`wildcards.txt`, **30-min
  refresh** — freshest). **`bbscope`** (H1/Bugcrowd/Intigriti/YesWeHack/Immunefi, `--oos`).
  **chaos.projectdiscovery.io** (restricted to public bounty/VDP targets — legally important).
- Pipeline: scope → resolve wildcards → httpx → fingerprint → filter to vulnerable version.
  **Wildcard-in-scope ≠ every subdomain** — re-check per-program exclusions before probing.

## Legal guardrails (load-bearing)
- **Scope = authorization (CFAA).** Out-of-scope active probing is a federal-crime risk. *Van Buren*
  narrowed but didn't legalize it. **DOJ's 2022 good-faith carve-out is charging policy, NOT law** —
  doesn't bind civil suits or states.
- Check **`/.well-known/security.txt` (RFC 9116)** first; the RFC warns against mass-scan-then-auto-report.
- **No destructive confirmation.** In-band delta or DNS callback only.
- **"Beg bounty"** (unsolicited demands, no program) ≈ extortion — legal + reputational exposure.

## Verifier architecture (maps to LLM-finder + adversarial-verifier)
corpus(scope) → discovery → fingerprint+version → OSV/KEV match (keep in-band-confirmable only) →
**LLM finder** proposes the benign probe → **containerized Validation Agent** runs it, requires
CONCRETE evidence (status delta / leaked bytes / anomalous header / Interactsh DNS), 2-of-3 vote for
noisy classes, early-stop on resource blowup → SimHash dedup (expect ~20% dups) → **mandatory human
gate** → per-program disclosure with hand-crafted PoC.
Prior art: XBOW (#1 H1 US leaderboard, ~1,060 reports, validators + human review + ~20% dups),
MAPTA (arXiv 2508.20816, Validation Agent returns pass/fail+evidence, 76.9% on XBOW bench),
Google Big Sleep (CVE-2025-6965 + 20 OSS bugs — proof the original-research track is where AI pays).

## Flagged uncertainties
- CVE-2025-29927 bounty $ amount **unconfirmed** — don't cite a figure.
- Commercial ASM pricing (Censys ~$60k, Detectify ~$3.7k, Assetnote under F5) from secondary sources.
- Some recent CVE IDs (-2025-27210, -55173, -6087) are fresh — re-verify on NVD/OSV before formal use.

Full URL source list retained in the 2026-06-16 research transcript.
