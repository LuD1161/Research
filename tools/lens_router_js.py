#!/usr/bin/env python3
"""lens_router_js.py — static, cheap (no-LLM) file classifier + lens-router for JS/TS/Node.

For each JS/TS file it emits:
  - lens_tags: which security lenses apply, from regex signals (AST-free, fast)
  - tier:      0 skip / 1 review / 2 review+lenses
  - a composed REVIEW BRIEF: the general pass + ONLY the matched lens fragments.

Design rules (from PIPELINE.md, do not relax):
  * ALWAYS include the general open-ended pass, so we never inherit lens/corpus bias.
  * The classifier is static (regex), never an LLM, to stay cheap.
  * Static output = HINTS, not a checklist. The brief says so explicitly.
  * Tier-0 files (no source, no sink, no handler, no tags) are skipped from review.

Supported extensions: .js .ts .mjs .cjs .jsx .tsx

CLI:
  lens_router_js.py <package_dir> --briefs <dir> --manifest <file.json>   # generate briefs
  lens_router_js.py <package_dir> --explain                               # print tags table
"""
import os, re, json, argparse, sys

# ---- static signals -> lens tags -------------------------------------------------

SIGNALS = {
    'rce': re.compile(
        r"child_process|\.exec\s*\(|\.execSync|\.spawn\s*\(|\.spawnSync"
        r"|eval\s*\(|new\s+Function\s*\(|vm\.run|vm\.createContext", re.I),
    'sqli': re.compile(
        r"\.query\s*\(|\.raw\s*\(|\.rawQuery|whereRaw|\.execute\s*\("
        r"|\$queryRaw|knex\.|sequelize\.|Prisma\.\$|\.prepare\s*\(", re.I),
    'xss': re.compile(
        r"\.innerHTML|dangerouslySetInnerHTML|\.html\s*\(|document\.write"
        r"|\.render\s*\(|res\.send\s*\(|res\.write\s*\(", re.I),
    'ssrf': re.compile(
        r"fetch\s*\(|axios\.|got\s*\(|http\.get\s*\(|https\.get\s*\("
        r"|http\.request|https\.request|request\s*\(|needle\s*\(|superagent", re.I),
    'path_traversal': re.compile(
        r"fs\.|path\.join|path\.resolve|readFile|writeFile|readdir"
        r"|mkdir|unlink|createReadStream|createWriteStream|\.pipe\s*\(", re.I),
    'proto_pollution': re.compile(
        r"__proto__|constructor\.prototype|Object\.assign|\.merge\s*\("
        r"|\.extend\s*\(|\.defaults\s*\(|\.defaultsDeep|deepmerge"
        r"|lodash\.merge|\.set\s*\(.*,.*,|unflatten", re.I),
    'deserialize': re.compile(
        r"JSON\.parse|unserialize|yaml\.load|\.parse\s*\(|YAML\.parse"
        r"|xml2js|parseXml|DOMParser|\.decode\s*\(", re.I),
    'auth_bypass': re.compile(
        r"jwt\.|jsonwebtoken|verify\s*\(|\.sign\s*\(|passport\.|session\."
        r"|cookie\.|bcrypt|pbkdf2|createHmac|crypto\.subtle", re.I),
    'redos': re.compile(
        r"new\s+RegExp\s*\(|RegExp\s*\(|\.test\s*\(|\.match\s*\("
        r"|\.replace\s*\(|\.exec\s*\(", re.I),
}

SOURCE = re.compile(
    r"req\.body|req\.query|req\.params|req\.headers|req\.cookies|req\.files"
    r"|req\.url|req\.path|req\.hostname|req\.ip"
    r"|process\.argv|process\.env"
    r"|event\.body|event\.queryStringParameters|event\.headers"
    r"|ctx\.request|ctx\.query|ctx\.params"
    r"|request\.body|request\.query|request\.params", re.I)

HANDLER = re.compile(
    r"app\.(get|post|put|delete|patch|use|all)\s*\("
    r"|router\.(get|post|put|delete|patch|use|all)\s*\("
    r"|fastify\.(get|post|put|delete|patch)\s*\("
    r"|\.route\s*\("
    r"|exports\.handler|module\.exports\s*="
    r"|export\s+(default\s+)?function"
    r"|export\s+(default\s+)?async\s+function"
    r"|export\s+const\s+\w+\s*=\s*(async\s+)?\(", re.I)

DANGER_SINK = re.compile(
    r"child_process|\.exec\s*\(|\.execSync|\.spawn\s*\(|eval\s*\(|new\s+Function\s*\("
    r"|\.query\s*\(|\.raw\s*\(|whereRaw"
    r"|fs\.(readFile|writeFile|unlink|rename|createReadStream|createWriteStream)"
    r"|\.innerHTML|dangerouslySetInnerHTML"
    r"|fetch\s*\(|axios\.|http\.request"
    r"|__proto__|constructor\.prototype"
    r"|JSON\.parse|unserialize|yaml\.load", re.I)

# ---- lens fragments (the prompt lines the router injects) -------------------------

GENERAL = (
    "You are a senior application security reviewer. Read the single JS/TS file given and find "
    "EVERY concrete security vulnerability. Do NOT restrict yourself to the focus areas below — "
    "they are HINTS from a static pre-scan, not a checklist, and the pre-scan is blind to whole "
    "bug classes. For each finding report: vuln_class (snake_case), location (function and/or "
    "line), severity (low/medium/high/critical), who can reach it, and a one-sentence justification "
    "grounded in the code. If there are no real issues, return an empty findings array."
)

LENS = {
    'rce':
        "CODE EXECUTION: Trace request input into child_process.exec/spawn, eval(), new Function(), "
        "vm.runInContext. Flag unsanitized shell commands, template injection into eval, and dynamic "
        "require() with user paths.",
    'sqli':
        "SQL INJECTION: Trace request input into database queries. Flag string interpolation in SQL, "
        ".raw()/.rawQuery() with user data, and ORM methods receiving unsanitized objects ($where, "
        "$regex operators in MongoDB).",
    'xss':
        "XSS: Trace request input to HTML output. Flag res.send()/res.write() of unescaped user data, "
        "innerHTML assignment, dangerouslySetInnerHTML, and template engines with raw/unescaped output mode.",
    'ssrf':
        "SSRF: Trace request-controlled URLs into fetch/axios/got/http.request. Flag missing URL "
        "validation, missing private-IP checks, redirect following without re-validation, and CRLF "
        "injection in URLs.",
    'path_traversal':
        "PATH TRAVERSAL: Trace request-controlled paths into fs operations. Flag path.join/resolve "
        "with user input without realpath/prefix check, directory traversal (../), and zip extraction "
        "without entry name validation.",
    'proto_pollution':
        "PROTOTYPE POLLUTION: Trace request-controlled keys/paths into recursive merge/set/extend "
        "operations. Flag __proto__/constructor.prototype paths in lodash.merge, deepmerge, "
        "Object.assign from user JSON, and dot-notation set() with user keys.",
    'deserialize':
        "DESERIALIZATION: Flag JSON.parse on untrusted input flowing into prototype-sensitive "
        "operations, yaml.load without safe schema, XML parsing without entity restrictions (XXE), "
        "and any unserialize/decode of user-controlled buffers.",
    'auth_bypass':
        "AUTH/TOKEN: Scrutinize JWT verify (alg confusion, missing audience/issuer), HMAC comparison "
        "(timing-safe?), session/cookie validation, and password hashing. Flag algorithm parameter "
        "from user input, loose comparison, and missing signature verification.",
    'redos':
        "ReDoS: Flag RegExp constructed from user input (new RegExp(userInput)), and static regexes "
        "with catastrophic backtracking patterns (nested quantifiers, overlapping alternations). Check "
        ".test()/.match()/.replace() on user-controlled strings with vulnerable patterns.",
}

# ---- cross-file import/export tracing --------------------------------------------

# Matches: require('./foo'), require('../bar/baz'), require('some-module')
REQUIRE_RE = re.compile(
    r"""require\s*\(\s*['"]([^'"]+)['"]\s*\)""", re.I)

# Matches: import ... from './foo', import('./foo')
IMPORT_FROM_RE = re.compile(
    r"""import\s+(?:[^'"]+\s+from\s+)?['"]([^'"]+)['"]""", re.I)

# Matches: dynamic import('./foo') or import("./foo")
DYNAMIC_IMPORT_RE = re.compile(
    r"""import\s*\(\s*['"]([^'"]+)['"]\s*\)""", re.I)

# Matches export declarations (module.exports, exports.x, export function, export default, export const)
EXPORT_RE = re.compile(
    r"module\.exports\s*=|exports\.\w+\s*=|export\s+(default\s+)?(function|class|const|let|var|async\s+function)",
    re.I)

JS_EXTENSIONS = ('.js', '.ts', '.mjs', '.cjs', '.jsx', '.tsx')

SKIP_DIRS = {
    'node_modules', 'dist', 'build', '.next', 'coverage',
    '__tests__', 'test', 'tests', '.git',
}


def walk_js(root):
    """Yield all JS/TS source files under root, skipping well-known non-source dirs."""
    for dp, dirs, fns in os.walk(root):
        # Prune skip dirs in-place so os.walk does not descend into them
        dirs[:] = [d for d in dirs if d not in SKIP_DIRS]
        for fn in fns:
            if fn.endswith(JS_EXTENSIONS):
                yield os.path.join(dp, fn)


def classify(text):
    """Return (tags, tier, signal_dict) for a single file's text content."""
    tags = [k for k, rx in SIGNALS.items() if rx.search(text)]
    has_source = bool(SOURCE.search(text))
    has_handler = bool(HANDLER.search(text))
    has_sink = bool(DANGER_SINK.search(text))

    if has_handler or (has_source and has_sink):
        tier = 2
    elif has_source or has_sink or tags:
        tier = 1
    else:
        tier = 0

    return tags, tier, {'source': has_source, 'handler': has_handler, 'sink': has_sink}


# ---- cross-file import tracing + promotion ---------------------------------------

def _resolve_import(import_path, from_file, root):
    """Resolve a JS import/require path to an absolute file path, or None."""
    if not import_path:
        return None
    # Skip bare package names (no leading ./ or ../ or /)
    if not import_path.startswith('.') and not import_path.startswith('/'):
        return None
    # Skip URL-like paths
    if import_path.startswith('http://') or import_path.startswith('https://'):
        return None

    base = os.path.dirname(from_file)
    joined = os.path.normpath(os.path.join(base, import_path))

    # Try exact path first
    if os.path.isfile(joined):
        return joined

    # Try appending each JS extension
    for ext in JS_EXTENSIONS:
        candidate = joined + ext
        if os.path.isfile(candidate):
            return candidate

    # Try as directory index
    for ext in JS_EXTENSIONS:
        candidate = os.path.join(joined, 'index' + ext)
        if os.path.isfile(candidate):
            return candidate

    return None


def build_import_map(rows, root):
    """Map each file path -> set of absolute paths it imports/requires."""
    import_map = {}
    for r in rows:
        imports = set()
        try:
            text = open(r['path'], encoding='utf-8', errors='ignore').read()
        except Exception:
            import_map[r['path']] = imports
            continue

        seen_paths = set()
        for pattern in (REQUIRE_RE, IMPORT_FROM_RE, DYNAMIC_IMPORT_RE):
            for m in pattern.finditer(text):
                raw = m.group(1)
                resolved = _resolve_import(raw, r['path'], root)
                if resolved and resolved not in seen_paths:
                    seen_paths.add(resolved)
                    imports.add(resolved)

        import_map[r['path']] = imports
    return import_map


def promote_cross_file(rows, root):
    """Promote tier-1 files to tier-2 based on cross-file relationships.

    1. Import tracing: if a tier-2 file imports a tier-1 file, promote it.
    2. Directory proximity: if a tier-1 file with a sink is in the same directory
       as a tier-2 file, promote it.
    3. Export proximity: if a tier-1 file with a sink exports symbols AND is in the
       same directory as a tier-2 file, it is likely a helper directly callable from
       a request handler.

    Returns the number of files promoted.
    """
    tier2_paths = {r['path'] for r in rows if r['tier'] == 2}
    tier2_dirs = {os.path.dirname(p) for p in tier2_paths}

    import_map = build_import_map(rows, root)

    # Build reverse map: file -> set of files that import IT (among tier-2 importers)
    imported_by_t2 = set()
    for src_path, targets in import_map.items():
        if src_path in tier2_paths:
            imported_by_t2.update(targets)

    promoted = 0
    for r in rows:
        if r['tier'] != 1:
            continue

        reason = None

        # Promotion 1: directly imported by a tier-2 file
        if r['path'] in imported_by_t2:
            reason = 'imported_by_t2'

        # Promotion 2: has a danger sink + lives in same directory as a tier-2 file
        elif r['sink'] and os.path.dirname(r['path']) in tier2_dirs:
            reason = 'proximity_sink'

        # Promotion 3: exports something + sink + same dir as tier-2
        # (already covered by proximity_sink above; keep explicit for clarity)
        elif r['sink']:
            try:
                text = open(r['path'], encoding='utf-8', errors='ignore').read()
                if EXPORT_RE.search(text) and os.path.dirname(r['path']) in tier2_dirs:
                    reason = 'export_proximity_sink'
            except Exception:
                pass

        if reason:
            r['tier'] = 2
            r['promoted'] = reason
            promoted += 1

    return promoted


# ---- brief composition -----------------------------------------------------------

def compose_brief(rel, tags):
    parts = [GENERAL, "", f"FILE: {rel}", ""]
    if tags:
        parts.append("Static pre-scan suggests these focus areas (HINTS, not a checklist):")
        for t in tags:
            if t in LENS:
                parts.append("- " + LENS[t])
    else:
        parts.append("Static pre-scan found no specific signal — do a thorough general review.")
    return "\n".join(parts)


# ---- main ------------------------------------------------------------------------

def main():
    ap = argparse.ArgumentParser(
        description="Static lens-router for JS/TS security review pipeline.")
    ap.add_argument('package_dir',
                    help="Root directory of the npm package to analyse.")
    ap.add_argument('--briefs', metavar='DIR',
                    help="Directory to write per-file review briefs (.txt).")
    ap.add_argument('--manifest', metavar='FILE',
                    help="Path to write the JSON manifest.")
    ap.add_argument('--explain', action='store_true',
                    help="Print a human-readable tier/tag table and exit.")
    args = ap.parse_args()

    root = os.path.abspath(args.package_dir)
    if not os.path.isdir(root):
        print(f"ERROR: {root!r} is not a directory.", file=sys.stderr)
        sys.exit(1)

    rows = []
    for path in sorted(walk_js(root)):
        try:
            text = open(path, encoding='utf-8', errors='ignore').read()
        except Exception:
            continue
        tags, tier, sig = classify(text)
        rel = os.path.relpath(path, root)
        rows.append({
            'path': path,
            'rel': rel,
            'tags': tags,
            'tier': tier,
            'lines': text.count('\n') + 1,
            **sig,
        })

    # Cross-file promotion pass
    promoted = promote_cross_file(rows, root)

    if args.explain:
        from collections import Counter
        tc = Counter(r['tier'] for r in rows)
        total = len(rows)
        print(
            f"{total} js/ts files | "
            f"tier0={tc[0]} tier1={tc[1]} tier2={tc[2]} "
            f"(promoted={promoted})"
        )
        for r in rows:
            if r['tier'] > 0:
                promo = f" PROMOTED:{r['promoted']}" if r.get('promoted') else ''
                print(
                    f"  T{r['tier']} {r['rel']}  "
                    f"[{','.join(r['tags']) or '-'}]{promo}"
                )
        return

    briefs_dir = os.path.abspath(args.briefs) if args.briefs else None
    if briefs_dir:
        os.makedirs(briefs_dir, exist_ok=True)

    manifest = []
    bid = 0
    for r in rows:
        if r['tier'] == 0:
            continue
        bid += 1
        fid = f"f{bid:03d}"
        entry = {
            'id': fid,
            'file': r['path'],
            'rel': r['rel'],
            'tags': r['tags'],
            'tier': r['tier'],
            'lines': r['lines'],
        }
        if briefs_dir:
            bp = os.path.join(briefs_dir, f"{fid}.txt")
            open(bp, 'w', encoding='utf-8').write(compose_brief(r['rel'], r['tags']))
            entry['brief'] = bp
        manifest.append(entry)

    out = {'package_dir': root, 'files': manifest}
    if args.manifest:
        with open(args.manifest, 'w', encoding='utf-8') as fh:
            json.dump(out, fh, indent=1)

    ext_counts: dict[str, int] = {}
    for r in rows:
        ext = os.path.splitext(r['path'])[1]
        ext_counts[ext] = ext_counts.get(ext, 0) + 1
    ext_summary = ' '.join(f"{k}:{v}" for k, v in sorted(ext_counts.items()))

    print(
        f"manifest: {len(manifest)} review files (tier>=1) of {len(rows)} js/ts files "
        f"(promoted={promoted})"
        + (f" | briefs -> {briefs_dir}" if briefs_dir else "")
        + (f" | {ext_summary}" if ext_summary else "")
    )


if __name__ == '__main__':
    main()
