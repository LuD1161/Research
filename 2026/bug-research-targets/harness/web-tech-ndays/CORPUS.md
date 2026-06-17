# Server-side npm vulnerability audit corpus (~150 packages)

Source: research pass, 2026-06-16. Request-reachable npm packages for ORIGINAL server-side bug hunting
in the Node / Express / Next / Nuxt / Fastify / NestJS ecosystem. Every package sits in the server-side
HTTP request path and processes user-controlled input (body / query / headers / path / cookies /
uploaded files / user URLs / templates); each listed bug class is triggerable by a crafted HTTP request.

Columns: **Package | ~Weekly DL | Source | Sink | Bug class | Recent CVE history (~3y) | Audit-saturation | Default vs Conditional**.
`[KNOWN]` = from the original Tier-A shortlist ([AUDIT-TARGETS.md](./AUDIT-TARGETS.md)). `(est)` = estimated download count.

> **Strategy reminder:** the most-downloaded packages are the most picked-over. Highest yield for
> *original* discovery = **under-audited relative to usage** (see "Best fresh-bug bets") and
> **patch-incomplete / recurring-class** (see that section). Validate every finding with a crafted curl
> against a local repro app before it counts. Legal/remote-validation rules: [REMOTE-VALIDATION.md](./REMOTE-VALIDATION.md).

## 1. Template / view engines (SSTI / XSS)
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| ejs [KNOWN] | ~34.3M | render options, template string | `new Function()` | SSTI→RCE via option injection | CVE-2022-29078; CVE-2023-29827(disputed) | Heavy | Conditional |
| handlebars [KNOWN] | ~40.5M | template, compile opts, partial names | `compile`→`Function`; `resolvePartial` | proto-poll→RCE/XSS; partial-name inj | CVE-2026-33916; CVE-2021-23383 | Heavy | Conditional |
| pug [KNOWN] | ~3.7M | `name` of compile fns, source | `pug-code-gen`→Function | code injection / RCE | CVE-2024-36361; CVE-2021-21353 | Moderate | Conditional |
| nunjucks [KNOWN] | ~3.1M | template source, `constructor` chain | compiled template runtime | SSTI / autoescape-bypass XSS | CVE-2023-2142 (stale since) | Under-audited | autoescape default; RCE cond |
| underscore `_.template` | ~25M | template str, `templateSettings` | `new Function()` | code injection / RCE | CVE-2021-23358 | Heavy | Conditional |
| lodash.template | ~4.87M | template, `options.imports` keys | `new Function()` | RCE (canonical SSTI sink) | CVE-2021-23337; CVE-2026-4800(9.8) | Heavy | Conditional |
| eta | ~4.7M | template, Express config merge | `new Function()` | RCE via compile/config override | CVE-2022-25967; GHSA XSS | Moderate | Conditional |
| liquidjs | ~1.7M | template, `ownPropertyOnly` flag | AST interpreter | proto-pollution / prop leak | CVE-2022-25948 | Moderate | Conditional |
| consolidate (@ladjs) | ~1.84M(est) | file path, partial/layout names | delegates to engine sink | path traversal / inherited SSTI | none known | Heavy | Conditional |
| hogan.js | ~1.0M | template, partials | string compile (no eval) | XSS only | none | Heavy (abandoned) | Conditional |
| twig.js | ~765K | template, include/layout paths | AST + JS expr eval | SSTI / path traversal | none 2023-26 | Under-audited | Conditional |
| velocityjs | ~709K | template, `#set` paths | AST; `#set` assign | proto-poll→DoS/RCE, SSTI | CVE-2026-44966(8.3,unpatched) | Under-audited | Default (`#set` core) |
| doT (dot) | ~644K(est) | template, `def` names, `it` locals | `new Function()` | SSTI→RCE / ReDoS | none confirmed | Moderate | Conditional |
| jade | ~457K(est) | template, extends/include names | `new Function()` | SSTI/RCE, proto-poll | none (frozen) | Lineage scrutinized | Conditional |
| blueimp-tmpl | ~129K | `tmpl(body,data)` | `new Function()` | RCE/SSTI; XSS | none (archived) | Moderate | Conditional |
| squirrelly | ~38K | template, helpers | `new Function()` | SSTI→RCE | CVE-2021-32819 | Moderate | Default |
| swig | ~38K(est) | template, extends/include paths | compiled JS fn | SSTI→RCE, path traversal | none (dead) | Under-audited | Conditional |
| art-template | ~32K | template, compile opts | `new Function()` (cached) | SSTI→RCE (tplmap gadget) | none assigned | Under-audited | Default |
| dustjs-linkedin | ~32K(est) | source, partial names | compiled JS via `vm` | proto-poll→RCE, SSTI | none new | Moderate | Conditional |
| marko | ~25.8K | dynamic tags, attrs | AOT compiler→JS | SSTI/RCE if raw template; XSS | none core | Heavy | Conditional |
| haml-coffee | ~19.7K | render opts (`customHtmlEscape`) | overridable escape→RCE | SSTI/RCE via option pollution | CVE-2021-32818 (never fixed) | Moderate | Default in spread-req pattern |
| ejs-locals | ~9.5K(est) | template, partial/layout paths | EJS `new Function` | inherited SSTI/RCE, path traversal | none direct | Under-audited | Conditional |
| vash | ~3.6K | Razor `@` template, layout refs | `Function` constructor | SSTI→RCE, ReDoS | none (abandoned) | Under-audited | Conditional |
| ect | ~3.2K | embedded Coffee template | compiled fn | SSTI/RCE, partial traversal | none (abandoned) | Under-audited | Conditional |
| teacup | ~990 | CoffeeScript DSL fns | executes JS/Coffee directly | RCE (template *is* code) | none (abandoned) | Under-audited | Conditional |
| whiskers | ~770 | template, partial paths | string concat (no eval) | XSS, partial traversal | none (dead) | Under-audited | XSS only |

## 2. SSRF / HTTP clients & URL/IP parsers
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| axios [KNOWN] | ~122.7M | user URL/`baseURL`+path, redirect | `http(s).request` | absolute-URL SSRF, cred leak | CVE-2023-45857; -2024-28849; -2025-27152 | Heavy | Default |
| node-fetch [KNOWN] | ~156.5M | user URL, redirect | `http(s).request` | cookie/Auth leak cross-origin redirect | CVE-2022-0235 | Heavy | Default |
| undici [KNOWN] | ~129.2M | user URL, redirect, proxy | own HTTP stack / `fetch` | Auth/Proxy-Auth leak, CRLF, ReDoS | CVE-2024-24758/-30260/-30261; -2025-22150 | Heavy | Default/Cond |
| got [KNOWN] | ~37.5M | user URL, redirect | `http(s).request` | SSRF redirect to unix socket | CVE-2022-33987 | Moderate | Default |
| follow-redirects | ~106.5M | redirect Location, URL | `url.parse()` host decisions | SSRF parser confusion, cred leak | CVE-2023-26159; -2024-28849 | Heavy | Default |
| ipaddr.js | ~106.7M | IP string (`parse`/`range`) | `.range()` classification | parser confusion (consumer misuse) | none known | Heavy | Conditional |
| whatwg-url | ~183.8M | URL string | parsed origin/host decisions | parser-differential SSRF vs Node URL | none attributed | Heavy | Conditional |
| url-parse | ~39.4M | user URL → `new Url()` | `.hostname`/`.protocol` vs allowlist | parser-confusion SSRF/open-redirect | CVE-2022-0686/-0691/-0639 | Heavy | Default |
| normalize-url | ~44.5M | URL to canonicalize | normalized output | ReDoS (`data:`), host/scheme mutation | CVE-2021-33502 | Moderate | Conditional |
| netmask | ~26.9M | CIDR+IP (`.contains`) | allow/deny test | octal/zero-pad parse confusion | CVE-2021-28918/-29418 | Heavy | Default |
| superagent | ~21.3M | user URL, redirect, time strings | outbound request, regex | ReDoS, redirect handling | historical ReDoS | Moderate | Conditional |
| url-join | ~18.5M | user path segment + base | joined URL as request target | path/host injection→SSRF/open-redirect | none known | Under-audited | Conditional |
| request [KNOWN] | ~16.0M | redirect Location, user URL | outbound request | SSRF cross-protocol redirect | CVE-2023-28155(unpatched) | Abandoned | Default |
| needle | ~12.7M | user URL, redirect, cookie/header | outbound request | SSRF redirect / CRLF header inj | none known | Under-audited | Default |
| ip | ~9.4M | IP/hostname (`isPrivate`) | private/public boolean | octal & IPv4-mapped-IPv6 bypass | CVE-2023-42282; -2024-29415(incomplete) | Scrutinized/unmaint | Default |
| parse-url | ~6.2M | user/git URL (scp-style) | `.protocol`/`.host` gating | SSRF protocol mis-detection | CVE-2022-2900/-2216/-3224 | Moderate | Default |
| ky | ~6.6M | user URL, redirect | wraps fetch/undici | inherited redirect leak, `prefixUrl` | none specific | Under-audited | Conditional |
| simple-get | ~23.5M | user URL, redirect | thin redirect follower | SSRF redirect (no allowlist) | none known | Under-audited | Default |
| @hapi/wreck | ~2.19M | cross-origin redirect | outbound w/ retained creds | cred leak on port/scheme downgrade | CVE-2026-48022(18.1.2) | Moderate | Default |
| phin | ~2.18M | user URL, redirect | `http(s).request` minimal | SSRF redirect, header leak | none known | Under-audited | Conditional |
| is-ip | ~2.0M | IP string (resolved host) | allowlist short-circuit | regex acceptance quirks, ReDoS | none (stale) | Under-audited | Conditional |
| request-promise | ~1.24M | user URL, redirect | wraps deprecated request | inherits request issues | none new | Under-audited | Default |
| urllib | ~0.65M | user URL, redirect, proxy | `http(s).request` | SSRF redirect/proxy, header leak | none catalogued | Under-audited | Conditional |
| bent | ~0.66M | user URL, redirect | `http(s).request` minimal | SSRF redirect, header leak | none known | Under-audited | Default |
| ip-range-check | ~392K | IP + range(s) | in-range boolean | legacy ipaddr.js v4/v6 confusion | none direct (abandoned) | Under-audited | Default |
| private-ip | ~268K | IP/hostname (`is_private_ip`) | private/reserved allow/deny | missing reserved ranges, v4-in-v6 | CVE-2025-8020(unpatched); -2020-28360 | Moderate (buggy) | Default |
| ip-cidr | ~169K | CIDR (`.contains`) | membership test | ip-address+jsbn confusion, IPv6 | none known | Under-audited | Conditional |
| cidr-tools | ~88K | CIDR+IP (`contains`/`overlap`) | membership test | BigInt parse, IPv6 normalization | none known | Under-audited | Conditional |
| ssrf-req-filter | ~37K | URL/hostname at request time | blocks private IPs (ipaddr.js) | DNS-rebind TOCTOU, v4-in-v6 bypass | none known | Under-audited | Default |
| node-libcurl | ~27K | user URL, FOLLOWLOCATION | libcurl native request | SSRF redirect, native parser confusion | none recent | Under-audited(native) | Conditional |

## 3. Prototype pollution (merge / set / clone / config)
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| lodash.merge [KNOWN] | ~110M | JSON body deep-merged | `merge(dest,src)` recursive | PP via `__proto__`/`constructor.prototype` | none new (<4.6.2 fixed) | Heavy | Default(<4.6.2) |
| deepmerge [KNOWN] | ~81M | JSON body merged | `deepmerge`/`.all` | PP (drops `__proto__` by default) | none (forks have CVEs) | Heavy | Conditional |
| immer | ~53M | JSON-patch `path` in `applyPatches` | path walk + assign | PP/type-confusion via patch path | none new | Heavy | Conditional |
| dot-prop | ~42M | dotted path → set props | `dotProp.set()` | PP via `__proto__` path | none new | Heavy | Conditional |
| deep-extend | ~41M | JSON body deep-extended | `deepExtend(target,src)` | PP via `__proto__` source | none new (<0.5.1) | Heavy | Default(<0.5.1) |
| rc | ~38.5M | CLI/env/rc merged | deep merge config sources | PP via `__proto__` (theoretical) | none for PP | Under-audited(PP) | Conditional |
| @hapi/hoek | ~29M | options merge in hapi/joi | `merge`/`applyToDefaults`/`clone` | PP via `__proto__`/`constructor` | none (patched post-9.0.3) | Heavy | Conditional |
| defu | ~28.6M | unsanitized JSON body 1st arg | recursive defaults-merge | PP via `__proto__` setter | CVE-2026-35209(≤6.1.4) | Moderate | Conditional |
| flat | ~29.5M | `unflatten()` on flat body | dotted-key split+assign | PP via `__proto__` dotted key | none new | Heavy | Default |
| jsonpointer | ~19.6M | JSON Pointer from body | `jsonpointer.set()` | PP via `__proto__`; array confusion | none new | Heavy | Conditional |
| set-value | ~17M | path+value into object | `set(obj,path,value)` | PP via path segments | CVE-2021-23440 | Heavy | Conditional |
| ini | ~124M | INI text/uploaded config | `ini.parse()` nested build | PP via `[__proto__]` section/keys | none new | Heavy | Conditional |
| dset | ~10.5M | `dset(obj,req.body.path,val)` | recursive nested create | PP via path segment | CVE-2024-21529(8.2); -2022-25645 | Heavy | Default(<3.1.4) |
| mixin-deep | ~9.6M | JSON body mixed into opts | `mixinDeep(target,src)` | PP via `constructor`/`prototype` | none new | Moderate | Default(vuln) |
| hoek (legacy) | ~3.3M | options/JSON merge | `merge`/`applyToDefaults`/`clone` | PP via `__proto__` | none new | Heavy | Conditional |
| object-path | ~2.82M | path string from body | `.set()`/`.insert()`/`.push()` | PP via `__proto__`; array confusion | none new | Heavy | Conditional |
| merge-deep | ~1.94M | JSON body deep-merged | `mergeDeep(dest,src)` | PP via `__proto__`/`constructor` | CVE-2021-26707 | Moderate | Default(<3.0.3) |
| json-ptr | ~1.84M | JSON Pointer from body/query | `.set(obj,pointer,val,force)` | PP via `__proto__`; array confusion | none new | Moderate | Conditional |
| lodash.set | ~1.72M | path written into config | `set(obj,path,value)` | PP via `__proto__` path | none known | Heavy | Conditional |
| config (node-config) | ~1.7M | layered config / `NODE_CONFIG` | `util.extendDeep` | PP via `__proto__` source | none known | Moderate | Conditional |
| lodash.defaultsdeep | ~1.32M | JSON merged as defaults | `defaultsDeep()` recursive | PP via `__proto__` | none new | Heavy | Default(vuln) |
| convict | ~1.1M | `load(obj)`/`loadFile()` JSON | `overlay()` recursive merge | PP via `__proto__`/`String.prototype` | CVE-2022-21190; -2026-33863/-33864(~9.4) | Moderate | Default (load on user JSON) |
| nconf | ~1.1M | `.set(key,val)` user key | memory-store `.set()` walk | PP via `__proto__` key path | CVE-2022-21803 | Moderate | Conditional |
| properties-reader | ~4.87M | `.properties`/INI text | `.read()`/`.append()` parse | PP via `__proto__` dotted key | none new | Moderate | Conditional |
| properties (gagle) | ~718K | `.properties` text from body | `.parse()` nested build | PP via `__proto__` key/section | none ever | Under-audited | Conditional |
| nested-property | ~218K | path string → `set()` | dot-path nested write | path-based PP | advisory only (fixed 3.0.0) | Moderate | Conditional |
| assign-deep | ~75K | JSON body source | recursive deep merge | PP via `__proto__`/`constructor` | none new | Heavy | Default(≤0.4.x) |
| extend2 | ~54K | `extend(true,dest,src)` | unsafe recursive deep merge | PP (jQuery.extend class) | CVE-2021-23568(<1.0.1) | Moderate | Conditional |
| defaults-deep | ~33K | JSON merged as defaults | `defaultsDeep()` | PP via `__proto__` | none new | Under-audited | Default(vuln) |
| set-in | ~31(est) | attacker path array → `setIn()` | recursive set | path-array PP; `Array.prototype` bypass | CVE-2026-26021(crit); -2022-25354 | Moderate | Default(<2.0.5) |
| deep-set | ~62 | dot-path from input | deep-write by dot path | PP via `__proto__` segment | CVE-2020-28276 (no fix) | Under-audited | Default |

## 4. Validation / input parsing (ReDoS / bypass)
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| ajv | ~322M | JSON body vs schema; `$data` | compiled validator; `pattern`→RegExp | ReDoS via `$data` pattern | CVE-2025-69873 | Heavy | Conditional (`$data`) |
| joi | ~22.7M | body/query → `schema.validate()` | schema recursion; `pattern()`/`regex()` | ReDoS via app regex; deep-nest DoS | none on core | Heavy | Default; ReDoS cond |
| zod | ~25-30M(est) | body → `parse()`/`safeParse()` | `.email()`/`.url()`/`.regex()` | ReDoS via built-in regex | CVE-2023-4316(.email≤3.22.2) | Heavy | Conditional |
| validator | ~25.3M | strings → `isURL`/`isEmail`/`trim` | internal regexes | ReDoS; parser-diff bypass | CVE-2021-3765; -2025-56200; -2025-12758 | Heavy | Default |
| @sideway/address | ~13.7M | email/domain via Joi | regex email/domain/IP/TLD | ReDoS; domain bypass | none known | Heavy | Default (Joi email) |
| yup | ~12.4M | payload → `validate()`/`cast()` | tests; `matches()` regex | ReDoS via `matches()`; coercion bypass | none known | Moderate | Default; ReDoS cond |
| class-validator | ~8.6M(est) | DTOs from body (NestJS Pipe) | decorator regex validators | validation bypass→injection; ReDoS | CVE-2019-18413 | Moderate | Default on misconfig |
| @hapi/address | ~7.9M | email/domain via legacy Joi | regex email/domain | ReDoS; bypass | none (deprecated) | Moderate | Conditional |
| jsonschema (tdegrunt) | ~6.0M | JSON bodies vs schema | recursive walk; `pattern`/`format` | ReDoS; PP in default/ref | none known | Under-audited | Default |
| tv4 | ~2.95M | JSON bodies vs schema | interpreter; `pattern`/`$ref` | ReDoS; `$ref` bypass | none (unmaintained) | Under-audited | Default |
| express-validator | ~2.0M | body/query/params/headers | delegates to `validator` | inherited ReDoS/bypass | none on this pkg | Moderate | Default |
| superstruct | ~2M(est) | HTTP input → `assert()`/`create()` | coercion; `pattern()` | ReDoS; coercion bypass | none known | Under-audited | Conditional |
| async-validator | ~1.97M | body/form vs descriptor | `type:'url'`/pattern→RegExp | ReDoS; descriptor PP | CVE-2021-3887 (fix reverted in 4.0.7) | Under-audited | Conditional |
| fastest-validator | ~2-3M(est) | Moleculer params (HTTP-derived) | schema via `new Function`; `pattern` | PP in schema compile; ReDoS | none known | Under-audited | Conditional |
| is-my-json-valid | ~1.57M | JSON bodies vs schema | codegen; `format`/`pattern` | ReDoS (email+pattern) | CVE-2018-1107 (republished 2022) | Heavy | Default |
| validate.js | ~1.09M | body email/url/format | email-format regex | ReDoS (catastrophic backtrack) | CVE-2020-26308 (no fix) | Under-audited | Default |
| runtypes | ~318K | body → `.check()`/`.guard()` | `withConstraint`/`match` regex | ReDoS; structural bypass/PP | none known | Under-audited | Conditional |
| @vinejs/vine | ~278K | AdonisJS `validateUsing()` | compiled pipeline; email/url/regex | ReDoS; PP in object compile | none known | Under-audited | Default (Adonis 6) |
| validatorjs | ~72K | body via Laravel-style rules | built-in regexes; `regex:` rule | ReDoS; RegExp injection | none known | Under-audited | Conditional |

## 5. ReDoS-prone string / header / parse utilities
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| semver [KNOWN] | ~651M | version/range from body/header | `Range`/`satisfies` regex | ReDoS | CVE-2022-25883 | Heavy | Conditional |
| qs [KNOWN] | ~166.7M | query string (`req.query`) | recursive nested parser | PP + deep-nest DoS | CVE-2022-24999; -2025-15284; -2026-2391/-8723 | Heavy | Default (Express) |
| cookie [KNOWN] | ~165.5M | Cookie header / app values | name/value/path/domain serialize | cookie injection (OOB chars) | CVE-2024-47764 | Heavy | Conditional |
| minimatch | ~337M(est) | glob pattern from input | `makeRe`/`braceExpand` | ReDoS / catastrophic backtrack | CVE-2026-26996; -2022-3517 | Heavy | Conditional |
| glob | ~319M(est) | glob pattern → FS traversal | pattern→regex (minimatch) | ReDoS (via minimatch) | CVE-2025-64756 (CLI only) | Heavy | Conditional |
| ansi-regex | ~300M+(est) | attacker text through ANSI strip | `.test()`/`.replace()` | ReDoS | CVE-2021-3807 | Heavy | Conditional |
| path-to-regexp | ~181.6M | request URL path vs route | backtracking regex `.exec()` | ReDoS (adjacent params) | CVE-2024-45296; -2024-52798 | Heavy | Default (vuln route) |
| braces | ~160M(est) | brace expr (via micromatch) | `lib/parse.js` expansion | DoS (imbalanced braces) | CVE-2024-4068 | Heavy | Conditional |
| uri-js | ~131M(est) | URI via ajv `format:uri` | scheme/IRI regexes | ReDoS | none last 3y (unmaint) | Under-audited | Conditional |
| micromatch | ~102M(est) | glob pattern → `isMatch()` | braces/pattern regex | ReDoS | CVE-2024-4067; -2024-4068 | Heavy | Conditional |
| tough-cookie | ~99M | `Set-Cookie` into CookieJar | memstore keyed by domain | prototype pollution | CVE-2023-26136 | Heavy | Conditional |
| content-disposition | ~98M(est) | `Content-Disposition` → `parse()` | regex tokenizer | ReDoS | none known | Heavy | Conditional |
| vary | ~85.8M | `Vary` field-list | field-name parse | ReDoS | none known | Heavy | Conditional |
| nth-check | ~62-72M(est) | CSS nth-expr (cheerio SSR) | regex match | ReDoS | CVE-2021-3803 | Heavy | Conditional |
| negotiator [KNOWN] | ~68M | `Accept*` headers | header-tokenizing regexes | ReDoS | none last 3y | Moderate | Default (via accepts) |
| color-string | ~38M(est) | color string → `.get()` | regex parse `hwb()`/alpha | ReDoS | CVE-2021-29060 | Heavy | Conditional |
| set-cookie-parser | ~40.8M | upstream/proxied `Set-Cookie` | split/regex parse | ReDoS | none known | Moderate | Conditional |
| debug | ~47M | namespace/`%o` if user input flows | format/namespace regex | ReDoS | none request-reachable | Heavy | Conditional |
| ua-parser-js | ~18-23M | `User-Agent` header | large UA regex bank | ReDoS | CVE-2022-25927; -2021-27292 | Heavy | Default |
| ip-regex | ~7.6-9.7M(est) | IP from XFF/X-Real-IP | `.test()`/`.match()` | ReDoS (hardened, low prob) | none known | Heavy | Conditional |
| html-parse-stringify | ~3-6M(est) | HTML from body (SSR/i18n) | tag/attr regex tokenizer | ReDoS | CVE-2021-23346 | Under-audited | Conditional |
| semver-regex | ~2.5M(est) | version string header/body | `semverRegex().test()` | ReDoS | CVE-2021-43307 | Moderate | Conditional |
| request-ip | ~2.06M | ~14 client-IP headers (XFF,CF) | split/trim + regex IP validate | ReDoS + IP-spoof logic flaw | none known | Under-audited | Default |
| parse-link-header | ~1.8M | inbound `Link` header | regex parse | ReDoS | CVE-2021-23490 (>3y) | Moderate | Conditional |
| charset | ~1.5M | `Content-Type`/HTML meta | charset-extraction regex | ReDoS (plausible) | none known | Under-audited | Conditional |
| cidr-regex / is-cidr | ~1.02M | CIDR in allow/deny checks | `RegExp().test()` | ReDoS | none known | Under-audited | Conditional |
| parse-duration | ~329K | duration string body/query | regex parse | ReDoS + OOM | CVE-2025-25283 | Moderate | Conditional |
| trim-newlines | ~13-19M(est) | request-body string | `.end()` regex strip | ReDoS | CVE-2021-33623 | Heavy | Conditional |

## 6. File upload / archive / path (traversal, zip-slip, DoS)
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| tar (node-tar) [KNOWN] | ~75-97M | tar/tgz upload → `x()`; entry/linkpaths | fs symlink/hardlink/mkdir/write | path traversal, link escape, header diff | CVE-2024-28863; -2026-23745/-24842/-23950/-31802/-53655 | Heavy | Default |
| send [KNOWN] | ~116.4M | request path; `redirect()` value | file resolve; redirect HTML | path traversal; redirect XSS | CVE-2024-43799 | Heavy | Conditional |
| serve-static [KNOWN] | ~112.1M | request path; redirect target | file resolve via send; redirect | path traversal; redirect XSS | CVE-2024-43800 | Heavy | Conditional |
| raw-body [KNOWN] | ~72-117M | body stream, Content-Length, charset | in-mem buffering; iconv decode | DoS unbounded buffering | none known | Heavy | Conditional (caller limit) |
| finalhandler | ~120.4M | error/URL; req.url in 404 | error response body + redirect | XSS via unescaped URL; info leak | none recent | Moderate | Default |
| file-type | ~49.9M | uploaded head bytes | magic-byte / OOXML-zip parse | DoS infinite loop, zip-bomb | CVE-2022-36313; -2026-32630 | Under-audited | Default |
| archiver | ~31.1M | filenames/paths into archive | ZIP/TAR stream gen | weak fit — creates archives | none known | Heavy | Conditional |
| zip-stream | ~31.4M | filenames/content streamed | ZIP stream gen | weak fit — creates archives | none known | Heavy | Conditional |
| yauzl | ~27M(est) | untrusted ZIP bytes via `open()` | NTFS extra-field parser | OOB read→uncaught exception→DoS | CVE-2026-31988 (v3.2.0) | Heavy | Conditional |
| busboy [KNOWN] | ~27.3M | multipart + urlencoded body | mem/stream buffering; boundary parse | DoS malformed multipart | none for 1.x | Moderate | Default |
| extract-zip | ~19-27M(est) | ZIP → `extractZip()` (yauzl) | per-entry write vs target dir | zip-slip (guarded by default) | none known | Heavy | Conditional |
| multer [KNOWN] | ~17.7M | multipart upload | busboy + fs writes; FD alloc | DoS leaks/uncaught exceptions | CVE-2025-47935/-47944/-48997/-7338 | Moderate | Default |
| serve-index | ~17.4M | file/dir names in listing HTML | unescaped HTML output | stored/reflected XSS | CVE-2015-8856 (older) | Heavy | Conditional |
| adm-zip [KNOWN] | ~17.6M | ZIP via `extractAllTo()` | fs write from entry name | zip-slip / path traversal | CVE-2018-1002204 + regressions | Moderate | Default |
| unzipper [KNOWN] | ~14.2M | ZIP via `.Extract()` | fs write outside target | zip-slip path traversal | sibling unzip-stream CVE-2024-42471 | Under-audited | Conditional |
| node-stream-zip | ~4.6M | uploaded ZIP entries | fs write / entry path | zip-slip (potential), DoS | none known | Under-audited | Conditional |
| decompress | ~4.1M(est) | zip/tar → `decompress(buf,dir)` | fs writes (path + symlink) | zip-slip (symlink-assisted) | CVE-2020-12265 (abandoned) | Under-audited | Default(<4.2.1) |
| formidable [KNOWN] | ~22.7M | multipart/form-data | fs writes w/ generated names | predictable filename; disk exhaust | CVE-2025-46653 | Moderate | Conditional |
| yazl | ~2.4M(est) | ZIP writer (if user names) | entry name/content write | weak fit — writer | none known | Moderate | N/A |
| cross-zip | ~1.0M | paths to `unzipSync()` | OS zip/unzip spawn + fs write | directory traversal / zip-slip | CVE-2025-11569(8.7) | Under-audited | Conditional |
| unzip-stream | ~680K | streamed ZIP via `Extract()` | fs write from `entry.path` | zip-slip → arbitrary write | CVE-2024-42471 (<0.3.2) | Moderate | Default |
| multiparty | ~446K(est) | multipart filename/field names | filename regex, decodeURI, proto keys | ReDoS / PP DoS / decodeURI crash | CVE-2026-8159/-8161/-8162 | Moderate | Default |
| st | ~290K | request URL path | fs read of resolved path | directory traversal → file read | none in window | Under-audited | Default |
| decompress-zip | ~101K(est) | ZIP → `.extract()` | per-entry write join | zip-slip (symlink escape) | historical (no CVE ID) | Under-audited | Default(vuln) |
| connect-multiparty | ~66K(est) | multipart via middleware | temp-file writes; transitive multiparty | unrestricted upload + transitive DoS | CVE-2022-29623(disputed) + inherits 2026 | Under-audited(deprecated) | Conditional/Default |

## 7. XML / YAML / CSV / serialization parsers
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| js-yaml [KNOWN] | ~251.5M | YAML body/upload/header | `load()` (legacy FULL_SCHEMA) | code exec `!!js/function`; DoS | none in window | Heavy | Conditional (safe since v4) |
| yaml (eemeli) | ~165.4M | YAML body/config/query | `parse()`/`parseDocument()` | PP (merge keys) / anchor DoS | none known | Heavy | Conditional |
| flatted | ~130.1M | circular-ref JSON in body | `parse()` | PP / DoS (low, structured) | none known | Under-audited | Conditional |
| htmlparser2 | ~92M(est) | HTML/XML body | pure-JS parse | ReDoS / DoS; parser confusion | none known | Heavy | Conditional |
| fast-xml-parser [KNOWN] | ~88.2M | XML body | attr/tag parse + currency regex | PP + ReDoS | CVE-2023-26920; -2024-41818 | Heavy | Default (ReDoS); PP cond |
| protobufjs | ~71.6M | protobuf msg / `.proto` text | `parse()`, `util.setProperty` | prototype pollution | CVE-2022-25878; -2023-36665(crit) | Heavy | Default(pre-fix) |
| sax | ~69M(est) | XML body → `parser.write()` | pure-JS streaming SAX | ReDoS / DoS; parser confusion | none known | Heavy | Conditional |
| serialize-javascript | ~50M | app data + reflected input | output in `<script>` | XSS / code injection | CVE-2024-11831 | Heavy | Conditional |
| @xmldom/xmldom | ~12-35.8M | XML body via `parseFromString()` | pure-JS parse & serialize | PP; parser confusion; serialization inj | CVE-2022-39353; -2026-34601/-41673/-41674 | Heavy | Default (no true XXE) |
| csv-parse | ~15.4M | uploaded CSV / body | `parse()` with `cast` (regex) | ReDoS | CVE-2019-17592 (>window) | Heavy | Conditional (`cast`) |
| bson | ~14.3M | BSON body / Mongo path | `deserialize()` | DoS / OOB read malformed binary | none in window | Heavy | Conditional |
| papaparse | ~11.8M | uploaded CSV / body | number-detect regex | ReDoS | CVE-2020-36649 (>window) | Heavy | Default(<5.2.0) |
| fast-csv | ~10.9M | uploaded CSV / body | `parse()` with `ignoreEmpty` | ReDoS | CVE-2020-26256 (>window) | Moderate | Conditional |
| xpath | ~9.4M(est) | XPath expr / XML vs user data | XPath eval engine | XPath injection (if expr from input) | none known | Moderate (unmaint) | Conditional |
| plist | ~8.9M(est) | plist (XML) body/`.plist` upload | parse via @xmldom + xmlbuilder | ReDoS; inherited xmldom PP/inj | historic ReDoS + transitive | Moderate | Default (affected vers) |
| xml2js [KNOWN] | ~16M(est) | XML body | parse to object | PP; entity DoS | CVE-2023-0842 | Heavy | Conditional |
| node-serialize | ~5.5K | serialized object in body/cookie | `unserialize()` eval of IIFE | deserialization → RCE | CVE-2017-5941 (unpatched) | Moderate (PoC, dead) | Default |
| csv-parser | ~2.9M | uploaded CSV / body | `csv()` stream transform | DoS / resource exhaustion | none known | Under-audited | Conditional |
| cbor | ~1.6M | binary CBOR (WebAuthn/COSE/IoT) | `decode()` / `decodeFirst()` | DoS / algorithmic complexity | none in window | Moderate | Conditional |
| cbor-extract | ~1.07M | binary CBOR (WebAuthn attestation) | `extractStrings()` native addon | heap over-read → native crash/DoS | GHSA heap over-read ≤2.2.0 | Under-audited | Default |
| libxmljs2 | ~543K(est) | XML body via `parseXml`; `.namespaces()` | native libxml2 bindings | type confusion→RCE/DoS; XXE | CVE-2024-34394(8.1,no fix) | Moderate(native) | Conditional/Default(entity) |
| fast-plist | ~143K | plist (XML) body/`.plist` | pure-JS plist/XML parse | DoS; parser confusion | none known | Under-audited | Conditional |
| node-expat | ~120K(est) | XML body → `parse()` | libexpat native SAX | billion-laughs/entity DoS; XXE | inherits libexpat CVEs | Under-audited | Default(entity)/Cond(XXE) |
| libxmljs | ~34K(est) | XML body via `parseXml` | native libxml2 bindings | type confusion→RCE; XXE; entity DoS | CVE-2024-34392(8.1,no fix) | Moderate(native) | Conditional/Default(entity) |
| ltx | ~30K(est) | XML/XMPP stanza | pure-JS XML parse | DoS; parser confusion | none known | Under-audited | Conditional |
| cryo | ~1.1K | serialized object body/cookie | `Cryo.parse()` prototype hijack | deserialization → RCE | CVE-2018-3784 (unpatched) | Under-audited | Default |

## 8. Markdown / HTML / sanitizers / SVG
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| parse5 | ~135.5M | untrusted HTML → `parse()` | tree-construction state machine | DoS via deep nesting | none known | Heavy | Default |
| marked [KNOWN] | ~28-49M | user markdown body | regex block/inline lexer | ReDoS | CVE-2022-21680/-21681 | Heavy | Default |
| dompurify [KNOWN] | ~46M | untrusted HTML rich-text | `sanitize()` output rendered | mXSS bypass; PP-assisted bypass | CVE-2024-45801/-47875; -2025-26791/-15599 | Heavy(cure53) | Server-reachable w/ jsdom |
| svgo | ~34M | uploaded SVG → `optimize()` | XML DOCTYPE/ENTITY expansion | entity-expansion DoS (billion laughs) | CVE-2026-29074 | Moderate | Default |
| cheerio | ~37.5M | untrusted HTML; user CSS selectors | parse5/htmlparser2 + css-select | ReDoS via malicious selectors | transitive (patched) | Heavy | Conditional |
| jsdom | ~77.6M | `new JSDOM(html)` attacker content | DOM + VM, resource fetcher, cookies | SSRF/LFI; XSS→RCE; PP | transitive tough-cookie CVE-2023-26136 | Moderate | Conditional (`resources`/`runScripts`) |
| markdown-it | ~24.9M | user markdown body | `md.render()` → HTML | ReDoS (linkify/smartquotes); XSS if `html:true` | CVE-2026-2327; -2026-48988 | Heavy | Default(ReDoS) |
| html-to-text | ~11M | inbound email/webhook HTML | parse+format pipeline | algorithmic DoS (deep nesting) | none known | Moderate | Default |
| sanitize-html [KNOWN] | ~9.6M | untrusted HTML fields | parse+reserialize | ReDoS; filter bypass | CVE-2024-21501 | Heavy | Default(parse) |
| linkifyjs | ~12.1M | user text/HTML → `linkify*()` | generated `<a>` attrs | PP + attribute-injection XSS | CVE-2025-8101(8.8) | Moderate | Default |
| turndown | ~5.7M | user HTML (paste/import) | regex rules (HTML→MD) | ReDoS (catastrophic backtrack) | CVE-2025-9670(≤7.2.1) | Under-audited | Default |
| xss (js-xss) | ~5M | `req.body/query` HTML | `FilterXSS.process()` regex | ReDoS; sanitizer bypass | none in window | Heavy (low-maint) | Default |
| remark | ~4.54M | user markdown body | unified pipeline (AST) | depends on serializer/plugins | none core | Heavy | Conditional |
| html-minifier-terser | ~18.97M(est) | user HTML → `minify()` | regex family (limit 200) | ReDoS (largely mitigated) | none known | Moderate | Conditional |
| markdown-it-anchor | ~2.98M | heading text in markdown | anchor `id`/slug attr | low risk; no default sink | none known | Heavy | Default |
| html-minifier (kangax) | ~3.49M(est) | user HTML → `minify()` | custom-ignore/srcset regex | ReDoS | CVE-2022-37620 (unpatched) | Under-audited(abandoned) | Default |
| showdown | ~1.36M | user markdown body | `makeHtml()` → HTML | XSS by design (no sanitizer) | none known | Moderate | Default |
| domino | ~1.43M | `createDocument(html)` (Angular SSR) | server DOM + serializer | serializer round-trip XSS-bypass; DoS | none known | Under-audited | Default (SSR) |
| autolinker | ~1.6M | user text/HTML → `link()` | generated `<a>`/`<img>` | legacy ReDoS (<3.0); 4.x O(n) | none known | Heavy | Conditional |
| striptags | ~1.1M | `req.query/body` | `striptags()` → string in HTML | XSS bypass when misused | none in window | Moderate(unmaint) | Conditional |
| commonmark (JS) | ~775K | user markdown body | `HtmlRenderer.render()` | XSS if `safe:false`; quadratic DoS | none known | Moderate | Conditional |
| remark-html | ~577K | user markdown → remark-html | `use(remarkHtml)` → HTML | XSS (historically raw HTML) | CVE-2021-39199(CVSS 10) | Moderate | Conditional |
| snarkdown | ~124K | user markdown body | `snarkdown(md)` → HTML | XSS (no sanitization) | none (issue #70 unfixed) | Under-audited | Default |
| anchorme | ~107K | untrusted text → `anchorme()` | regex URL scanner → anchor HTML | ReDoS; `javascript:` XSS-bypass | none in window | Under-audited | Default |
| insane | ~94K | untrusted HTML (comment/bio) | regex tokenizer | ReDoS; possible mXSS | CVE-2020-26303 (no patch) | Under-audited(abandoned) | Default |
| markdown-it-katex | ~35K | markdown math expressions | unescaped KaTeX error → HTML | XSS via unescaped error | unpatched (SNYK, no CVE) | Under-audited | Default |
| markdown-it-texmath | ~36K | markdown `$...$` math | KaTeX/MathJax HTML output | XSS via crafted math | fixed 0.9.0 (SNYK, no CVE) | Under-audited | Default |
| css-what | ~74.2M | CSS selector (cheerio) | attribute-selector parse loop | ReDoS / algorithmic DoS | CVE-2021-33587 | Heavy | Conditional |

## 9. Auth / crypto / session / SAML / JWT
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| jose [KNOWN] | ~86.3M | JWE/JWS token in header/body | token validation / key decrypt | JWE decompression zip-bomb; alg confusion | CVE-2024-28176 | Heavy | Default if JWE `zip` |
| jws | ~67.5M | JWS compact / JWT sig segment | `jws.verify` (alg from header) | alg:none / sig bypass if caller unpinned | none in window | Heavy | Conditional |
| jwa | ~66.8M | alg name + key from header | sign/verify dispatch | alg confusion primitive | none in window | Heavy | Conditional |
| jsonwebtoken [KNOWN] | ~37.5M | `Authorization: Bearer` | `jwt.verify()` | key-type confusion RSA→HMAC | CVE-2022-23539/-23540/-23541 | Heavy | Conditional |
| cookie-signature | ~108.8M | signed cookie + signature | `unsign()` HMAC compare | timing-unsafe compare | none in window | Heavy | Default |
| jwks-rsa | ~12M(est) | JWKS response / JWT `kid` | key feeding `jwt.verify` | JWKS key confusion; pubkey as HMAC | none known | Moderate | Conditional |
| bcryptjs | ~10.6M | password field | hash compare | 72-byte truncation; pure-JS long-pw DoS | none for pkg itself | Under-audited | Default |
| openid-client | ~10.2M | OAuth redirect + id_token | token validation | OIDC state/nonce CSRF, alg confusion | none known (clean) | Heavy(panva) | Conditional |
| passport [KNOWN] | ~7.65M | session cookie / login body | session store write | session fixation (no ID regen) | CVE-2022-25896 | Heavy | Conditional(<0.6.0) |
| keygrip | ~6.74M | signed cookie + digest | HMAC verify (`.verify`/`.index`) | timing-unsafe (mitigated tsscmp) | none known | Heavy | Default |
| oauth (ciaranj) | ~5.4M | OAuth callback params | token handling | OAuth1/2 sig & redirect handling | none known | Under-audited(legacy) | Conditional |
| bcrypt | ~5.4M | password field | `bcrypt.compare` | 72-byte truncation; long-pw CPU DoS | none in window | Heavy | Default |
| next-auth [KNOWN] | ~4.7M | OAuth redirect / `callbackUrl` | token validation / redirect | OIDC state/nonce CSRF; open redirect | CVE-2023-27490; -2023-48309 | Moderate | Conditional |
| express-session | ~4.17M | `Cookie` → connect.sid | session store lookup + sig | session fixation; unrotated id | none known (clean) | Heavy | Default |
| xml-crypto | ~3.22M | signed XML (`SAMLResponse`) | `checkSignature()` result | XSW; comment-truncation; KeyInfo cert-inj | CVE-2024-32962(10.0); -2025-29774/-29775(9.3) | Heavy | Default |
| passport-jwt | ~3.08M | `Authorization: Bearer` | `jsonwebtoken.verify` | alg confusion; missing aud/iss | none known | Moderate | Conditional |
| node-rsa | ~2.9M | RSA-encrypted blob / sig | key decrypt / verify | PKCS#1 v1.5 padding oracle; non-CT JS | none known | Under-audited | Conditional |
| iron-session | ~1.64M | `Cookie` → sealed AEAD token | Iron seal/unseal | forgery on weak pw / downgrade; replay | none known (clean) | Moderate | Default |
| xml-encryption | ~1.27M | encrypted XML `<EncryptedData>` | `decrypt()` plaintext | CBC padding-oracle / cipher confusion | none in window | Under-audited | Conditional |
| node-jose (cisco) | ~842K | JWE/JWS token | token validation / decrypt | invalid-curve/ECDH; ECC DoS | CVE-2023-25653 | Moderate(slow) | Conditional |
| node-saml (@node-saml) | ~748K | `SAMLResponse` body | `validatePostResponse` identity | XSW — verified node ≠ consumed node | CVE-2025-54419(10.0) | Moderate | Default |
| samlify | ~693K | `SAMLResponse` POST/redirect | identity returned to SP | XSW — sig verified, identity from injected | CVE-2025-47949(9.9) | Moderate | Default |
| express-jwt | ~640K | `Authorization: Bearer` | `jwt.verify` middleware | auth bypass via unenforced `algorithms` | CVE-2020-15084 | Heavy | Conditional |
| @fastify/jwt | ~627K | `Authorization: Bearer` (Fastify) | `request.jwtVerify` (fast-jwt) | alg confusion / missing aud/iss | none direct | Moderate | Conditional |
| fast-jwt | ~1.04M | `Authorization: Bearer` | sig verify (`publicKeyPemMatcher`) | alg confusion (recurring); iss-array bypass | CVE-2023-48223; -2025-30144; -2026-34950(incomplete) | Moderate(recurring) | Default |
| @node-saml/passport-saml | ~464K | `SAMLResponse` via Passport | `verify` callback profile | inherits node-saml XSW; multi-root bypass | CVE-2025-54419 | Moderate | Default |
| csurf | ~423K | `_csrf` cookie/header/param | CSRF token validation | CSRF bypass (cookie-tossing, empty-token) | none assigned (Fortbridge research) | Moderate(deprecated) | Conditional |
| cookie-session | ~593K | `Cookie` → serialized payload | parse + Keygrip + JSON deser | sig bypass on key misconfig; tampering | none known | Moderate | Default |
| passport-saml (legacy) | ~153K | `SAMLResponse` (legacy fork) | Passport `verify` profile | XSW; sig bypass; transform-DoS | CVE-2025-54419 (no patch); -2021-39171 | Moderate | Default & unpatched |
| saml2-js | ~122K | `SAMLResponse` POST → `post_assert` | `extract_response` profile/attrs | XSW via DOM-traversal/canonicalization | SAMLStorm-class (1.12.4/2.0.2) | Under-audited | Default |
| express-openid-connect | ~120K | OAuth redirect / `returnTo` | token validation / redirect | open redirect; session fixation | none new | Moderate(Auth0) | Conditional |
| passport-azure-ad | ~195K | OAuth redirect + id_token | token validation (`validateIssuer`) | token validation bypass | none new (deprecated) | Under-audited | Conditional |
| oauth2-server (oauthjs) | ~185K | authz/token endpoint params | token validation / redirect | open redirect; code injection | none new (deprecated) | Moderate | Conditional |
| @node-oauth/oauth2-server | ~151K | token endpoint `code_verifier` | token validation (PKCE) | PKCE bypass → code brute-force | CVE-2026-41213 | Moderate | Conditional |
| passport-local | ~2.02M | login form body | app `verify` callback | auth bypass / timing leak in app code | none known | Moderate | Conditional |

## 10. DB / query builders / injection / GraphQL
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| graphql (graphql-js) | ~41.5M | POST body query string | parser, validation, executor | DoS via complex queries; introspection | CVE-2023-26144; -2024-50312 | Heavy | Default |
| ioredis | ~22.3M | variadic command args; eval keys | argument injection; Lua eval | argument injection (zadd/eval smuggling) | none known | Moderate | Conditional |
| pg | ~21M(est) | input → query text/identifiers | raw `client.query(sql)` | SQLi via concat; identifier injection | none in window | Heavy | Default |
| mongodb (driver) | ~13.8M(est) | body/query JSON → filter | `$where`/`$expr`/`$function`; pipeline | NoSQL operator injection; server JS exec | none (driver-level) | Heavy | Conditional |
| dataloader | ~12.4M(est) | GraphQL arg/ID → `load(key)` | cache map keyed by attacker key | cache poisoning; unbounded batch DoS | none known | Under-audited | Conditional |
| prisma/@prisma/client [KNOWN] | ~11M(est) | `$queryRawUnsafe`/`Prisma.raw` | unsafe raw helpers | SQLi via concat into Unsafe | none in window | Heavy | Conditional |
| redis (node-redis) | ~11.3M(est) | input concat into key/args | RESP command execution | argument/command injection; ReDoS | none in window | Moderate | Conditional |
| mysql2 | ~9.3M | query, field/table names, timezone | raw `query()`/`execute()`; cache key | SQLi; proto poisoning; code injection | CVE-2024-21507/-21509/-21511/-21512 | Heavy | Default(raw) |
| drizzle-orm | ~7-8.7M(est) | untrusted table/column/alias names | `sql.raw`, `identifier()`/`.as()` | identifier injection; SQLi via raw | CVE-2026-39356(7.5) | Moderate | Conditional pre-fix |
| better-sqlite3 | ~6.6M(est) | input concat into SQL | `prepare(sql)`/`exec(sql)` | SQLi via concat; identifier interp | none known | Heavy | Conditional |
| mongoose [KNOWN] | ~5.9M(est) | `find(req.query)`, `populate({match})` | `$where` JS exec; schema cast | search/operator injection; PP | CVE-2024-53900; -2025-23061(9.0); -2023-3696 | Heavy | Default(vuln) |
| typeorm | ~4.5M(est) | order/sort params; nested JSON | QueryBuilder where/orderBy; save | SQLi via identifier/order/nested-obj | CVE-2025-60542 | Moderate-Heavy | Conditional |
| knex [KNOWN] | ~3.7M(est) | orderBy/column/table; raw fragments | `raw`/`whereRaw`/`orderByRaw` | SQLi via raw; identifier inj; WHERE bypass | CVE-2019-10757 (older) | Moderate | Conditional |
| @apollo/server | ~2.8M | body query/variables; batched arrays | request pipeline; batching | batching DoS/amplification; cache confusion | GHSA-8r69-3cvp-wxc3; transitive | Heavy | Conditional |
| sequelize [KNOWN] | ~2.3M(est) | replacements/where/attributes/order | `query()` w/ replacements | SQLi via replacements/raw; operator inj | CVE-2023-25813(10.0); -22578/-22579 | Heavy | Conditional |
| @elastic/elasticsearch | ~2.0M(est) | params → query DSL; `q`; script src | query DSL; Painless script | DSL injection; Painless script injection | none (client-level) | Moderate | Conditional |
| sqlite3 | ~1.7M(est) | params concat into SQL | `run`/`all`/`exec`/`prepare` | SQLi via concat; multi-statement | none known | Heavy | Conditional |
| graphql-yoga | ~1.6M | body/query+variables; uploads; SSE | request pipeline; envelop chain | query DoS w/o plugins; GET CSRF | none known | Moderate | Conditional |
| mssql | ~2M(est) | query text/identifiers/typed | raw `request.query(sql)` | SQLi via concat; type coercion | none known | Moderate | Default(raw) |
| mysql | ~930K(est) | params/body → query text | raw `query(sql)` | SQLi via concat; identifier inj | none known | Moderate | Default |
| type-graphql | ~738K | decorator-bound resolver args | arg binding; validation; dispatch | validation bypass; type coercion; no depth limit | none known | Under-audited | Conditional |
| express-graphql | ~344K | GET/POST query+variables; GraphiQL | request handler; GraphiQL renderer | query DoS; GET CSRF mutations; GraphiQL XSS | none w/ CVE (archived) | Under-audited | Default |
| objection | ~300K(est) | where/orderBy; raw template args | `whereRaw`/`raw` w/ concat | SQLi via concat; identifier inj | none known | Moderate | Conditional |
| pg-promise | ~285K(est) | query formatting; negative numerics | formatting/escaping engine | SQLi via inline-comment; identifier inj | CVE-2025-29744 (bypasses prepared stmts) | Moderate | Conditional |
| @mikro-orm/core | ~235K(est) | crafted objects; identifier/JSON-path keys | duck-typed obj→raw-SQL emitters | SQLi via object-as-fragment; key inj; PP | CVE-2026-34220(crit); -44680; -34221 | Moderate | -34220 default pre-fix |
| nano (couchdb) | ~77K(est) | input → Mango selector/find | selector operators (`$regex`/`$or`) | CouchDB operator injection; `$regex` ReDoS | none known | Under-audited | Conditional |

## 11. Middleware / framework glue / proxy
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| express [KNOWN] | ~110M | path, query, headers, body, cookies | redirect; path-to-regexp; qs/body-parser | open redirect, ReDoS, redirect XSS, PP | CVE-2024-29041; -2024-43796 | Heavy | Default |
| body-parser [KNOWN] | ~115M | body (JSON/urlencoded/raw/text) | JSON.parse; qs key expansion; inflate | DoS; historic PP | CVE-2024-45590; -2025-13466 | Heavy | Default |
| qs [KNOWN] | ~166.7M | query strings + urlencoded | recursive object/array materialize | PP + deep-nesting DoS | CVE-2022-24999; -2025-15284; -2026-2391/-8723 | Heavy | Default |
| proxy-addr | ~65.8M | X-Forwarded-For chain | computes trusted client IP | IP spoofing / trust-boundary confusion | none core | Heavy | Conditional |
| cors | ~60.7M | Origin header | ACAO reflection | origin reflection / over-permissive CORS | none core | Heavy | Conditional |
| express-rate-limit | ~45.6M | req.ip from XFF/socket; IPv6 form | counter keying / 429 decision | rate-limit bypass via XFF; v4-in-v6 collapse | CVE-2026-30827 | Moderate | Conditional |
| on-headers | ~43.7M | header data to writeHead() (array) | mutates outgoing headers | response header manipulation | CVE-2025-7339 (LOW) | Moderate | Conditional |
| compression | ~36.9M | response body + Accept-Encoding | gzip/deflate of response | BREACH/CRIME oracle; resource exhaustion | none core | Moderate | Default |
| http-proxy-middleware | ~26.7M | path (micromatch glob), body, headers | path match + proxy; body rewrite | DoS (unhandled rejection); path confusion | CVE-2024-21536; -2025-32997 | Moderate-Heavy | -21536 default |
| http-proxy | ~25.1M | request path/target, headers, body | outbound socket to upstream | SSRF; host/hop-by-hop forwarding; DoS | none new | Moderate | Conditional |
| connect | ~16.4M | path, headers, body via mounted mw | dispatch chain; error handler | open redirect/XSS in error resp; path confusion | none core | Under-audited | Conditional |
| helmet | ~12.4M | response config | security headers | header-policy misconfig / weak CSP | none core | Heavy | Default |
| @nestjs/core | ~11.4M | delegates to express/fastify adapter | adapter sinks; devtools inspector | inherits adapter classes; devtools CSRF→RCE | CVE-2025-54782(dev); -2025-69211 | Moderate | Conditional |
| fastify | ~8.6M | Content-Type, path params, body | find-my-way router; content-type parser | ReDoS; content-type validation bypass | CVE-2024-45813; -2025-32442 | Moderate-Heavy | Conditional |
| koa | ~8.1M | Referer, query | `ctx.redirect('back')` → Location | open redirect (chained bypasses) | CVE-2025-8129; -2025-62595 | Moderate | Conditional |
| method-override | ~1.9M | X-HTTP-Method-Override / `_method` | rewrites req.method → routing/auth | auth/ACL bypass via method spoofing | none known | Under-audited | Conditional |
| serve-handler | ~5.5M | request path/URL | FS read + redirect + dir listing | path confusion/traversal; open redirect; ReDoS | none (inherits path-to-regexp) | Under-audited | Default |
| @hapi/hapi | ~1.6M | Content-Type, Content-Disposition, body | @hapi/content regex parser; payload | ReDoS; malformed-header DoS | CVE-2026-35213 (@hapi/content) | Moderate | Default for @hapi/content |
| response-time | ~623K | none (timer) | X-Response-Time header | timing side-channel info leak | none known | Under-audited | Default |

## 12. Image / media / PDF / office / notification
| Package | ~Wk DL | Source | Sink | Bug class | CVE history (~3y) | Saturation | Reach |
|---|---|---|---|---|---|---|---|
| sharp [KNOWN] | ~63M | uploaded image → `sharp(input)` | libvips native decoders | native memory bug → segfault/heap overflow | CVE-2023-40032; 8.16.1 heifsave overflow | Heavy | Conditional |
| image-size [KNOWN] | ~32.6M | uploaded bytes → `imageSize()` | header parsers (JPEG/ICO) | DoS via crafted header | CVE-2025-71330 | Moderate | Default |
| file-type [KNOWN] | ~49.9M | uploaded head bytes | magic-byte container parse | ReDoS / parser DoS | CVE-2026-32630 | Under-audited | Default |
| nodemailer | ~17.1M | to/from/subject/List-* from body | SMTP header assembly | CRLF/header injection; addressparser DoS | CVE-2024-23327; -2025-14874; -2021-23400 | Heavy | Conditional |
| xlsx (SheetJS) | ~11.3M | uploaded xlsx/csv → `XLSX.read()` | workbook XML parse; cell formulas | PP; ReDoS; CSV/formula injection | CVE-2023-30533; -2024-22363 (npm stuck 0.18.5) | Heavy | Default (npm ver vuln) |
| puppeteer | ~11.4M | user URL → `page.goto()` | headless Chromium nav incl. `file://` | SSRF; file:// LFI; PP | CVE-2024-36527; -2024-3817 | Moderate | Default (no scheme allowlist) |
| exceljs | ~9.7M | uploaded xlsx → `xlsx.load()` | sax XML parse OOXML; zip entries | XXE; zip-slip in parts; formula injection | none direct (dep advisories) | Under-audited | Conditional |
| canvas (node-canvas) | ~7.1M | user image → `loadImage()` / SVG | Cairo/Pango/GdkPixbuf decoders | native memory corruption; DoS | none first-party recent | Under-audited | Conditional |
| pdf-parse | ~5.7M | uploaded PDF → `pdf(buffer)` | bundled pdf.js engine | arbitrary JS exec via old pdfjs | inherits CVE-2024-4367 (font eval RCE) | Under-audited | Conditional (pinned-old) |
| jimp [KNOWN] | ~3.0M | uploaded image → `Jimp.read()` | jpeg-js/bmp decoders | pixel-flood decompression bomb → DoS | jpeg-js pixel-flood (H1 #842462) | Under-audited | Default |
| probe-image-size | ~1.6M | user URL → `probe(url)` | HTTP fetch + header parse | SSRF + pixel-flood DoS | none first-party | Under-audited | Conditional (URL=SSRF) |
| gm | ~1.5M(est) | filename/options → `gm(file)` | shell-out to ImageMagick→GhostScript | command injection; GhostScript RCE | CVE-2024-29510(ITW); -2025-54418 | Moderate | Default |
| pdf2json | ~0.57M | uploaded PDF → parser | native/JS PDF stream parse | buffer overflow / memory corruption; DoS | historical buffer overflow | Under-audited | Default |
| imagemagick (wrapper) | ~0.2M(est) | filename/options → convert | shell-out to ImageMagick | command injection; GhostScript RCE | rides IM CVEs | Moderate | Default |

---

## Best fresh-bug bets (~15 popular + under-audited = sweet spot)
1. **method-override** (~1.9M) — rewrites `req.method` from an attacker header, upstream of method-gated authz; zero CVEs, unfuzzed auth-bypass primitive.
2. **needle** (~12.7M) — millions of DLs, zero CVEs, rich surface (cookies/proxy/redirects); under-looked SSRF/CRLF.
3. **url-join** (~18.5M) — huge base, no CVE ever; naive joins where `//`/absolute segments escape base = open-redirect/SSRF.
4. **simple-get** (~23.5M) — enormous transitive usage, tiny stale redirect follower, no allowlist hooks.
5. **fast-jwt** (~1.04M) — *recurring* alg-confusion regressions (CVE-2026-34950 incomplete fix of -2023-48223); primed for another PEM-matcher bug.
6. **saml2-js** (~122K) — lowest-scrutiny SAML SP lib; own `extract_response` DOM-walk/canonicalization barely reviewed.
7. **xml-encryption** (~1.27M) — high base, near-empty CVE record; encrypted-assertion→`decrypt()`→re-parse = CBC padding-oracle / cipher-substitution territory.
8. **node-rsa** (~2.9M) — hand-rolled PKCS#1 v1.5 in pure JS, no constant-time guarantees; padding-oracle surface never formally probed.
9. **exceljs** (~9.7M) — OOXML/sax XML-parse + embedded-zip less scrutinized than SheetJS; XXE / zip-slip-in-parts.
10. **probe-image-size** (~1.6M) — URL mode makes server fetch attacker URLs (textbook SSRF), no first-party CVEs.
11. **file-type** (~50M) — used as an upload security gate; broad lightly-audited magic-byte parser surface (fresh CVE-2026-32630).
12. **convict** (~1.1M) — two fresh 2026 PP CVEs incl. a `String.prototype` bypass of the prior fix; `load()` ingests user JSON directly.
13. **velocityjs** (~709K) — fresh CVE-2026-44966 (proto-poll via core `#set`) *unpatched*, gets almost no JS-security attention.
14. **nunjucks** (~3.1M) — largest template reach-to-scrutiny gap; no release since 2023 autoescape fix; runtime `constructor` access + second-order SSTI unexplored.
15. **decompress** (~4.1M) — abandoned at 4.2.1 (2020); symlink/traversal variants beyond the one historic zip-slip CVE likely.

Honorable mentions: dataloader (cache poisoning), request-ip (~2M, 14 spoofable IP headers, never CVE'd), turndown (ReDoS), @mikro-orm/core (2026 critical cluster), pg-promise (formatter bypasses prepared statements), uri-js (unmaintained, via ajv `format:uri`), bcryptjs.

## Patch-incomplete / recurring-class (highest probability more bugs remain)
- **SAML XML-signature-wrapping (whole ecosystem)** — verified-node ≠ consumed-node recurred across xml-crypto (-2024-32962, -2025-29774/-29775), samlify (-2025-47949), node-saml + both passport-saml (-2025-54419), saml2-js; nearly all 9.3–10.0, default-reachable via `SAMLResponse`. xml-crypto is hardened now → **consumers/wrappers** (saml2-js DOM walk, xml-encryption decrypt-then-reparse) are the soft targets.
- **fast-jwt alg confusion** — CVE-2026-34950 is an *incomplete fix* of -2023-48223 (+ -2025-30144); `publicKeyPemMatcher` regressed twice.
- **convict prototype pollution** — CVE-2026-33864 bypasses prior fix via `String.prototype`.
- **set-in** — repeated denylist bypasses, newest via `Array.prototype` (CVE-2026-26021).
- **ip / private-ip / netmask family** — ip's -2024-29415 is itself an incomplete fix; private-ip's -2025-8020 unpatched; CGNAT/`0.0.0.0/8`/NAT64 ranges likely still missing; parser-confusion recurs.
- **@xmldom/xmldom** — recurring PP/parser-confusion/serialization-injection cluster (2022 + 2026).
- **multer** — four DoS CVEs in 2025, all tracing to busboy error-handling → **busboy** has unmapped malformed-input crash surface.
- **path-to-regexp** — two ReDoS CVEs within months; backtracking-regex route compilation yields variants.
- **qs** — recurring PP + deep-nest DoS across 2022 → 2026 comma/array CVEs.
- **async-validator** — its one ReDoS fix (-2021-3887) was *reverted* in 4.0.7; default line still vulnerable.
- **node-tar** — fresh 2026 cluster on top of 2021 traversal trio; header parsing keeps producing escape variants.

## Accuracy / confidence notes
- Most download counts exact from npm API (week ending 2026-06-15); `(est)` from Snyk Advisor / npmtrends (npmjs.com returned 403/1015 to fetcher).
- 2026 CVE IDs corroborated via GHSA / GitLab / Snyk / OSV — **final NVD cross-check before publication** (some IDs still propagating).
- Name-collision traps: `jsonschema`(tdegrunt)≠`json-schema`(Kriszyp, -2021-3918); `@sideway/address`≠legacy `@hapi/address`; `cidr-regex` -2023-0842 actually belongs to xml2js; `commonmark`(JS)≠C `cmark`(-2023-28626).
- Withdrawn/misattributed: jsonwebtoken CVE-2022-23529 (RCE) **withdrawn**; CVE-2025-29927 is **Next.js** middleware (bypasses next-auth routes → conflation), not a next-auth CVE; 2021 ua-parser-js / Sept-2025 debug/chalk / Mar-2026 axios incidents are **supply-chain/malware**, not crafted-request bugs.
- Weak fits: archiver/zip-stream/yazl create archives (not parse untrusted input); response-time only leaks timing; logic-less template engines (mustache/hogan.js/whiskers) are XSS-only.

Full source URL list in the 2026-06-16 research transcript.
