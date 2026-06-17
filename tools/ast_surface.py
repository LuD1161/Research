#!/usr/bin/env python3
"""
AST-based attack-surface extractor (generic, not an allowlist of strings).

Instead of grepping for known function names, we parse every PHP file with
tree-sitter and walk *every call expression*. For registration-style calls
(add_action, add_filter, register_rest_route, add_shortcode, register_block_type,
admin menu funcs, etc.) we extract the FIRST argument and classify it:

  - literal hook string   -> recorded verbatim (e.g. 'wp_ajax_nopriv_foo')
  - DYNAMIC (variable / concat / function call) -> flagged separately

The dynamic cases are exactly what a grep-for-known-names misses: hooks whose
name is built at runtime, registered in loops, or assembled by concatenation.
Those are frequently where interesting bugs hide.

Usage: ast_surface.py <plugin_src_dir> [--json out.json]
"""
import sys, json, argparse
from pathlib import Path
import tree_sitter_php as tsphp
import tree_sitter as ts

PARSER = ts.Parser(ts.Language(tsphp.language_php()))

REGISTRARS = {
    "add_action", "add_filter", "register_rest_route", "add_shortcode",
    "register_block_type", "add_menu_page", "add_submenu_page",
    "add_options_page", "add_management_page", "register_setting",
    "add_meta_box", "register_widget", "register_activation_hook",
    "register_deactivation_hook", "register_uninstall_hook",
    "wp_schedule_event", "wp_schedule_single_event", "do_action", "apply_filters",
}

def txt(node, src): return src[node.start_byte:node.end_byte].decode("utf-8", "replace")

def first_arg(call_node, src):
    """Return (kind, value) for the first argument of a call node."""
    args = call_node.child_by_field_name("arguments")
    if args is None:
        return None
    for a in args.named_children:
        # a is an 'argument' node; its child is the expression
        expr = a.named_children[0] if a.named_children else a
        if expr.type in ("string", "encapsed_string"):
            raw = txt(expr, src).strip("'\"")
            # encapsed (double-quoted with interpolation) is partially dynamic
            kind = "literal" if expr.type == "string" and "$" not in raw else \
                   ("dynamic" if "{" in raw or "$" in raw else "literal")
            return (kind, raw)
        else:
            return ("dynamic", txt(expr, src))
    return None

def walk(node, src, fn_name, out):
    if node.type == "function_call_expression":
        name_node = node.child_by_field_name("function")
        if name_node is not None:
            name = txt(name_node, src)
            if name in REGISTRARS:
                fa = first_arg(node, src)
                if fa:
                    out.append({
                        "registrar": name,
                        "arg_kind": fa[0],
                        "hook": fa[1][:160],
                        "line": node.start_point[0] + 1,
                    })
    for c in node.children:
        walk(c, src, fn_name, out)

def classify(hook):
    if hook.startswith("wp_ajax_nopriv_"): return "ajax_unauth"
    if hook.startswith("wp_ajax_"):        return "ajax_auth"
    if hook.startswith("admin_post_nopriv_"): return "adminpost_unauth"
    if hook.startswith("admin_post_"):     return "adminpost_auth"
    if hook in ("rest_api_init",):         return "rest_init"
    if hook in ("init","wp_loaded","template_redirect","parse_request","admin_init"): return "request_handler"
    return "other"

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("src")
    ap.add_argument("--json")
    args = ap.parse_args()

    rows, parse_errors = [], 0
    for p in Path(args.src).rglob("*.php"):
        if any(seg in p.parts for seg in ("vendor", "node_modules")): continue
        try:
            src = p.read_bytes()
            tree = PARSER.parse(src)
            if tree.root_node.has_error: parse_errors += 1
            local = []
            walk(tree.root_node, src, None, local)
            for r in local:
                r["file"] = str(p.relative_to(args.src))
                r["category"] = classify(r["hook"])
                rows.append(r)
        except Exception:
            parse_errors += 1

    # Summaries
    from collections import Counter
    by_cat = Counter(r["category"] for r in rows if r["registrar"] in ("add_action","do_action"))
    dynamic = [r for r in rows if r["arg_kind"] == "dynamic"]
    rest_routes = [r for r in rows if r["registrar"] == "register_rest_route"]
    shortcodes = [r for r in rows if r["registrar"] == "add_shortcode"]
    blocks = [r for r in rows if r["registrar"] == "register_block_type"]

    summary = {
        "total_registrations": len(rows),
        "parse_errors": parse_errors,
        "action_hook_categories": dict(by_cat),
        "dynamic_hook_registrations": len(dynamic),
        "rest_routes": len(rest_routes),
        "shortcodes": len(shortcodes),
        "blocks": len(blocks),
    }
    result = {"summary": summary,
              "dynamic_samples": dynamic[:25],
              "rest_routes": rest_routes,
              "all": rows}
    if args.json:
        Path(args.json).write_text(json.dumps(result, indent=2))
    print(json.dumps(summary, indent=2))
    print("\n-- dynamic hook samples (grep-invisible) --")
    for d in dynamic[:12]:
        print(f"  {d['file']}:{d['line']}  {d['registrar']}({d['hook']})")

if __name__ == "__main__":
    main()
