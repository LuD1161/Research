#!/usr/bin/env python3
"""lens_router.py — static, cheap (no-LLM) file classifier + lens-router for WP/PHP.

For each PHP file it emits:
  - lens_tags: which security lenses apply, from regex signals (AST-free, fast)
  - tier:      0 skip / 1 review / 2 review+lenses+(validate)
  - a composed REVIEW BRIEF: the general pass + ONLY the matched lens fragments.

Design rules (from PIPELINE.md, do not relax):
  * ALWAYS include the general open-ended pass, so we never inherit lens/corpus bias.
  * The classifier is static (regex), never an LLM, to stay cheap.
  * Static output = HINTS, not a checklist. The brief says so explicitly.
  * Tier-0 files (no source, no sink, no handler) are skipped from review.

CLI:
  lens_router.py <plugin_dir> --briefs <dir> --manifest <file.json>   # generate briefs
  lens_router.py <plugin_dir> --explain                               # print tags table
"""
import os, re, json, argparse, sys

# ---- static signals -> lens tags -------------------------------------------------
SIGNALS = {
    'access_control': re.compile(
        r"wp_ajax_|wp_ajax_nopriv_|register_rest_route|admin_post_|admin_post_nopriv_"
        r"|check_ajax_referer|wp_verify_nonce|current_user_can|is_user_logged_in", re.I),
    'sqli': re.compile(
        r"\$wpdb\b|->get_results|->get_col|->get_var|->get_row|->query\s*\(|->prepare\s*\("
        r"|\bSELECT\s|\bINSERT\s|\bUPDATE\s|\bDELETE\s|\bmeta_query\b", re.I),
    'xss': re.compile(
        r"\becho\b|\bprint\b|printf|wp_send_json|->add_inline_script|esc_html|esc_attr|wp_kses", re.I),
    'fileio': re.compile(
        r"\$_FILES|move_uploaded_file|wp_handle_upload|\bfopen\b|file_get_contents|file_put_contents"
        r"|\bunlink\b|\bfwrite\b|\breadfile\b|\bcopy\s*\(|\brename\s*\(|DirectoryIterator|glob\s*\(", re.I),
    'deserialize': re.compile(r"\bunserialize\s*\(|maybe_unserialize\s*\(", re.I),
    'ssrf': re.compile(r"wp_remote_(get|post|request|head)|curl_exec|curl_init|fsockopen|wp_safe_remote", re.I),
    'auth_token': re.compile(r"wp_verify_nonce|hash_hmac|hash_equals|password_verify|\bjwt\b|->verify\s*\(|base64_decode\s*\(", re.I),
}
SOURCE = re.compile(r"\$_(GET|POST|REQUEST|FILES|SERVER|COOKIE)\b")
HANDLER = re.compile(r"wp_ajax_|wp_ajax_nopriv_|register_rest_route|admin_post_", re.I)
DANGER_SINK = re.compile(
    r"\$wpdb\b|->query\s*\(|->get_(results|col|var|row)|unserialize\s*\(|move_uploaded_file"
    r"|\beval\s*\(|\bsystem\s*\(|\bexec\s*\(|file_(get|put)_contents|wp_remote_|\binclude\b|\brequire\b", re.I)

# ---- lens fragments (the prompt lines the router injects) -------------------------
GENERAL = (
    "You are a senior application security reviewer. Read the single PHP file given and find "
    "EVERY concrete security vulnerability. Do NOT restrict yourself to the focus areas below — "
    "they are HINTS from a static pre-scan, not a checklist, and the pre-scan is blind to whole "
    "bug classes. For each finding report: vuln_class (snake_case), location (function and/or "
    "line), severity (low/medium/high/critical), who can reach it, and a one-sentence justification "
    "grounded in the code. If there are no real issues, return an empty findings array."
)
LENS = {
    'access_control':
        "ACCESS CONTROL: For every request-reachable handler (wp_ajax_/wp_ajax_nopriv_, REST, "
        "admin-post, form handler) determine who can reach it and whether it enforces an appropriate "
        "current_user_can(...) for the privileged/state-changing action it performs. A nonce / "
        "check_ajax_referer / wp_verify_nonce is CSRF protection, NOT authorization. A reachable "
        "handler doing privileged work with only a nonce and no capability check is broken_access_control. "
        "Also flag wp_ajax_nopriv_ handlers that mutate state or read others' data.",
    'sqli':
        "SQL INJECTION: Trace request input into $wpdb. Flag string-interpolated SQL, get_col/get_var/"
        "get_results/query() without $wpdb->prepare(), and esc_like()/sanitize_text_field() being mistaken "
        "for SQL quoting (they do NOT escape quotes). Note second-order: values read back from the DB/options "
        "then concatenated into SQL.",
    'xss':
        "XSS: Trace request input to output. Flag echo/print/printf/wp_send_json of attacker data without "
        "context-correct escaping (esc_html/esc_attr/esc_url/wp_kses). Distinguish stored vs reflected and "
        "the output context (HTML body / attribute / JS / URL). A value escaped for the wrong context is still XSS.",
    'fileio':
        "FILE / PATH: Trace request-controlled filenames/paths into file ops. Flag path traversal (../), "
        "missing realpath()/prefix checks, upload type/extension validation that can be bypassed (double "
        "extension, MIME spoof, null byte), and arbitrary include/require/readfile of attacker paths (LFI/RCE).",
    'deserialize':
        "OBJECT INJECTION: Flag unserialize()/maybe_unserialize() on any value that can originate from a "
        "request, cookie, or option set via a request. Note whether allowed_classes is used. Consider POP "
        "gadget chains available in the codebase/WP core.",
    'ssrf':
        "SSRF / OUTBOUND: Trace request-controlled URLs/hosts into wp_remote_*/curl/fsockopen. Flag missing "
        "host allowlists, internal-address reachability, and redirect/CRLF in the constructed URL.",
    'auth_token':
        "AUTH / TOKEN LOGIC: Scrutinize nonce/token/signature/password verification. Flag loose (==) or "
        "non-constant-time comparison, type juggling, predictable/guessable tokens, missing verification on "
        "a branch, and nonce actions reused across privilege boundaries.",
}

# Cross-file registration: handlers are registered in one file (add_action('wp_ajax_x',
# array($this,'method'))) but DEFINED in another. A per-file regex misses the access-control
# angle on the file that actually contains the handler. So we build a plugin-wide map of
# registered callback names first, then tag any file DEFINING such a callback.
REG_CALLBACK = re.compile(
    r"add_action\(\s*['\"](?:wp_ajax_(?:nopriv_)?|admin_post_(?:nopriv_)?)[^'\"]+['\"]\s*,\s*"
    r"(?:array\(\s*[^,]+,\s*)?['\"]([A-Za-z0-9_]+)['\"]", re.I)
REST_CALLBACK = re.compile(r"['\"]callback['\"]\s*=>\s*(?:array\(\s*[^,]+,\s*)?['\"]([A-Za-z0-9_]+)['\"]", re.I)

def build_callback_map(root):
    cbs = set()
    for path in walk_php(root):
        try:
            t = open(path, encoding='utf-8', errors='ignore').read()
        except Exception:
            continue
        cbs.update(REG_CALLBACK.findall(t))
        cbs.update(REST_CALLBACK.findall(t))
    return cbs

def classify(text, callbacks=frozenset()):
    tags = [k for k, rx in SIGNALS.items() if rx.search(text)]
    has_source = bool(SOURCE.search(text))
    has_handler = bool(HANDLER.search(text))
    has_sink = bool(DANGER_SINK.search(text))
    # registration-aware: file defines a globally-registered AJAX/REST/admin-post callback
    if callbacks:
        for cb in callbacks:
            if re.search(r"function\s+" + re.escape(cb) + r"\s*\(", text):
                has_handler = True
                if 'access_control' not in tags:
                    tags.append('access_control')
                break
    if has_handler or (has_source and has_sink):
        tier = 2
    elif has_source or has_sink or tags:
        tier = 1
    else:
        tier = 0
    return tags, tier, {'source': has_source, 'handler': has_handler, 'sink': has_sink}

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

def walk_php(root):
    skip = ('/vendor/', '/node_modules/', '/tests/', '/test/', '/languages/', '/assets/')
    for dp, _, fns in os.walk(root):
        if any(s in (dp + '/') for s in skip):
            continue
        for fn in fns:
            if fn.endswith('.php'):
                yield os.path.join(dp, fn)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('plugin_dir')
    ap.add_argument('--briefs')
    ap.add_argument('--manifest')
    ap.add_argument('--explain', action='store_true')
    ap.add_argument('--max-tier0-skip', action='store_true', help='exclude tier-0 from manifest')
    args = ap.parse_args()

    root = os.path.abspath(args.plugin_dir)
    callbacks = build_callback_map(root)  # plugin-wide registration map (cross-file)
    rows = []
    for path in sorted(walk_php(root)):
        try:
            text = open(path, encoding='utf-8', errors='ignore').read()
        except Exception:
            continue
        tags, tier, sig = classify(text, callbacks)
        rel = os.path.relpath(path, root)
        rows.append({'path': path, 'rel': rel, 'tags': tags, 'tier': tier,
                     'lines': text.count('\n') + 1, **sig})

    if args.explain:
        from collections import Counter
        tc = Counter(r['tier'] for r in rows)
        print(f"{len(rows)} php files | tier0={tc[0]} tier1={tc[1]} tier2={tc[2]}")
        for r in rows:
            if r['tier'] > 0:
                print(f"  T{r['tier']} {r['rel']}  [{','.join(r['tags']) or '-'}]")
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
        entry = {'id': fid, 'file': r['path'], 'rel': r['rel'], 'tags': r['tags'],
                 'tier': r['tier'], 'lines': r['lines']}
        if briefs_dir:
            bp = os.path.join(briefs_dir, f"{fid}.txt")
            open(bp, 'w').write(compose_brief(r['rel'], r['tags']))
            entry['brief'] = bp
        manifest.append(entry)

    if args.manifest:
        json.dump({'plugin_dir': root, 'files': manifest}, open(args.manifest, 'w'), indent=1)
    print(f"manifest: {len(manifest)} review files (tier>=1) of {len(rows)} php files"
          + (f" | briefs -> {briefs_dir}" if briefs_dir else ""))

if __name__ == '__main__':
    main()
