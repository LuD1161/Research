# Next.js Image Optimizer Source Analysis

## Version: next@15.3.3 (primary target)

### Entry point

`/_next/image` → `ImageOptimizerCache.validateParams()` at `dist/server/image-optimizer.js:341`

### URL parsing

1. `url` query param extracted from request
2. Length check: `url.length > 3072` → reject
3. Protocol-relative `//` URLs → rejected
4. If starts with `/` → local image (checked against `localPatterns`, not relevant to SSRF)
5. Otherwise: **`new URL(url)`** (WHATWG parser) → `hrefParsed`
6. `href = hrefParsed.toString()` — **URL is re-serialized after parsing** (normalization happens here)

### Protocol check

```js
if (!['http:', 'https:'].includes(hrefParsed.protocol)) {
    return { errorMessage: '"url" parameter is invalid' };
}
```
**Solid.** Blocks `file:`, `gopher:`, `data:`, etc.

### Allowlist check

```js
if (!hasRemoteMatch(domains, remotePatterns, hrefParsed)) {
    return { errorMessage: '"url" parameter is not allowed' };
}
```

`hasRemoteMatch()` calls `matchRemotePattern(pattern, url)` which checks:
- `pattern.protocol` vs `url.protocol` (exact match minus trailing colon)
- `pattern.port` vs `url.port` (exact match)
- `pattern.hostname` vs `url.hostname` (**picomatch glob**, e.g. `*.example.com`)
- `pattern.search` vs `url.search` (exact match)
- `pattern.pathname` vs `url.pathname` (**picomatch glob**, default `**`)

**Key observation:** The check runs against the **WHATWG-parsed URL object** — `url.hostname` is already normalized by the WHATWG parser. This means:
- Userinfo (`user@host`) is stripped by WHATWG — `url.hostname` won't contain `@`
- Backslash normalized to forward slash
- IP addresses normalized (hex/octal → decimal by WHATWG)
- Punycode normalized

**Parser differential attacks are largely neutralized** because both the check and the fetch use the same WHATWG-parsed `href` (via `.toString()`).

### Private-IP DNS check

**DOES NOT EXIST in 15.3.3.** No `dangerouslyAllowLocalIP` config for image optimization. No DNS resolution. No IP range blocking. No `net.BlockList`. Grep for `dangerouslyAllowLocalIP`, `isLocalIP`, `private`, `blockList`, `dns.`, `resolve`, `lookup` — zero hits in image-optimizer.js.

### Fetch

```js
async function fetchExternalImage(href) {
    const res = await fetch(href, {
        signal: AbortSignal.timeout(7000)
    }).catch((err) => err);
    // ... error handling ...
    const buffer = Buffer.from(await res.arrayBuffer());
    // ...
}
```

**Critical findings:**
1. **`redirect: 'follow'`** (default) — native fetch follows redirects automatically
2. **No redirect count limit** beyond fetch default (20 in Node.js/undici)
3. **No per-hop validation** — redirect targets are NOT checked against `remotePatterns`
4. **No per-hop IP check** — redirect to `127.0.0.1` or `169.254.169.254` is followed silently
5. **Entire response buffered** with `res.arrayBuffer()` — no size limit (CVE-2025-59471)

### Response pipeline

`imageOptimizer()` receives the buffer and:
1. Detects content type via magic bytes
2. SVG blocked unless `dangerouslyAllowSVG: true`
3. Animated images (WebP, PNG, GIF) → **returned as-is** (no re-encoding)
4. Bypass types (SVG, ICO, ICNS, BMP) → **returned as-is**
5. Other images → re-encoded via `sharp` (resize + format conversion)

**In-band proof feasibility:** Raw content from SSRF target won't appear in response because sharp will reject non-image data. Proof must be via:
- Oracle request log (primary)
- Pixel marker in a valid image served by oracle (secondary)
- Error message / timing difference (weak, triage only)

---

## Version: next@15.5.10 (post CVE-2025-59471 fix)

### Changes from 15.3.3

1. **Streaming size limit added** to `fetchExternalImage(href, maximumResponseBody)`:
   - Reads response body in chunks
   - Aborts if `totalSize > maximumResponseBody`
   - Throws 413 error
2. **Headers stripped from internal requests** (`mocked.req` no longer copies all headers)

### Unchanged

- **Still no private-IP check**
- **Still `redirect: 'follow'` by default**
- **Still no per-hop validation of redirect targets**
- `matchRemotePattern` logic unchanged

---

## SSRF attack surface summary

| Defense | 15.3.3 | 15.5.10 | Notes |
|---------|--------|---------|-------|
| Protocol check (http/https only) | ✅ | ✅ | Solid |
| `matchRemotePattern` hostname glob | ✅ | ✅ | Only checks initial URL |
| Redirect target validation | ❌ | ❌ | Follows redirects blindly |
| Private-IP DNS check | ❌ | ❌ | Does not exist |
| Response size limit | ❌ | ✅ | Streaming check added |
| Per-hop IP validation | ❌ | ❌ | No check on redirect hops |

### Viable attack vectors

1. **Redirect-based SSRF (HIGH confidence):** Attacker controls a whitelisted host → 302 to `http://169.254.169.254/...` or any internal IP → Next.js follows redirect, fetches internal resource. Only requirement: one entry in `remotePatterns` points to attacker-controlled host (or host with open redirect).

2. **Direct internal IP via `remotePatterns` wildcard:** If config uses `hostname: '**'`, any IP including internal ones is fetchable directly. No private-IP guard to block it.

3. **Memory DoS (15.3.3 only):** Whitelisted host serves multi-GB response → OOM crash.

### Non-viable (parser differential neutralized)

- Userinfo `@` tricks: WHATWG strips userinfo before hostname extraction
- Backslash tricks: WHATWG normalizes `\` → `/`
- IP encoding (hex/octal/decimal): WHATWG normalizes to canonical form
- Null bytes: WHATWG URL constructor throws on null bytes

### Redirect-based SSRF is the primary target

Since there's no private-IP guard and no redirect validation, the simplest and most realistic attack is:
1. App has `remotePatterns` allowing `images.example.com`
2. `images.example.com` has an open redirect (or attacker controls it)
3. `curl '/_next/image?url=https://images.example.com/redirect?to=http://169.254.169.254/latest/meta-data/&w=64&q=75'`
4. Next.js validates initial URL → passes `matchRemotePattern`
5. Fetches → gets 302 → follows to metadata endpoint
6. Fetch fails because response isn't a valid image → BUT the request was made (blind SSRF confirmed via oracle)
