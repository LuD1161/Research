#!/usr/bin/env python3
"""
source_sink_mapper.py — AST-based source/sink identification for WordPress PHP security analysis.

Uses tree-sitter to parse PHP files and identify:
  - Sources: superglobals, tainted function calls
  - Sinks:   dangerous function/method calls
  - Sanitizers: escaping/validation calls
  - Direct source→sink flows within the same function scope
"""

from __future__ import annotations

import argparse
import json
import logging
import os
import sys
from datetime import datetime, timezone
from pathlib import Path
from typing import Any

import yaml

try:
    import tree_sitter as ts
    import tree_sitter_php as tsphp
except ImportError:
    sys.exit(
        "Missing dependencies. Install with:\n"
        "  pip install tree-sitter tree-sitter-php pyyaml rich"
    )


def _make_php_parser() -> ts.Parser:
    """
    Build a tree-sitter PHP parser, handling API differences across package versions.

    tree-sitter-php >=0.22 exposes language_php() (full PHP with tags/heredoc support).
    Older releases exposed language(). We try the modern API first.
    """
    # Prefer language_php (PHP with full tag support, available since ~0.22)
    if hasattr(tsphp, "language_php"):
        raw_lang = tsphp.language_php()
    elif hasattr(tsphp, "language"):
        raw_lang = tsphp.language()
    else:
        sys.exit(
            "ERROR: tree_sitter_php has neither language_php() nor language(). "
            "Please upgrade: pip install --upgrade tree-sitter-php"
        )
    return ts.Parser(ts.Language(raw_lang))

try:
    from rich.console import Console
    from rich.progress import (
        BarColumn,
        MofNCompleteColumn,
        Progress,
        SpinnerColumn,
        TaskProgressColumn,
        TextColumn,
        TimeElapsedColumn,
    )

    RICH_AVAILABLE = True
except ImportError:
    RICH_AVAILABLE = False

log = logging.getLogger(__name__)
logging.basicConfig(
    level=logging.WARNING,
    format="%(levelname)s  %(message)s",
)

# ---------------------------------------------------------------------------
# Helpers: parse wp_sources_sinks.yaml into flat lookup sets
# ---------------------------------------------------------------------------

def _strip_comment(value: str) -> str:
    """Remove inline YAML comment (everything after first '#')."""
    return value.split("#")[0].strip()


def _load_definitions(yaml_path: Path) -> dict[str, Any]:
    """
    Load wp_sources_sinks.yaml and return a dict with keys:
      superglobals  : set[str]   — bare names like '_GET'
      source_funcs  : set[str]   — plain function names
      source_methods: set[tuple] — (object_hint, method_name) or (class, method)
      sink_funcs    : set[str]
      sink_methods  : set[tuple]
      sanitizer_funcs : set[str]
      sanitizer_methods : set[tuple]
      source_categories  : dict[str, str]  — name → category label
      sink_categories    : dict[str, str]
      sanitizer_categories : dict[str, str]
    """
    with yaml_path.open() as fh:
        data = yaml.safe_load(fh)

    superglobals: set[str] = set()
    source_funcs: set[str] = set()
    source_methods: set[tuple[str, str]] = set()
    sink_funcs: set[str] = set()
    sink_methods: set[tuple[str, str]] = set()
    sanitizer_funcs: set[str] = set()
    sanitizer_methods: set[tuple[str, str]] = set()

    source_cats: dict[str, str] = {}
    sink_cats: dict[str, str] = {}
    san_cats: dict[str, str] = {}

    def _parse_entry(raw: str, category: str, funcs: set, methods: set, cats: dict):
        name = _strip_comment(raw)
        if not name or name.startswith("("):
            # skip PHP cast tokens like (int), (float)
            return
        if name.startswith("$"):
            # method call like $wpdb->query
            parts = name.split("->")
            if len(parts) == 2:
                obj = parts[0].lstrip("$")   # e.g. 'wpdb'
                meth = parts[1]
                methods.add((obj, meth))
                cats[f"{obj}->{meth}"] = category
                return
        if "::" in name:
            # static method like WP_REST_Request::get_param
            cls, meth = name.split("::", 1)
            methods.add((cls, meth))
            cats[f"{cls}::{meth}"] = category
            return
        # plain function or file_get_contents('php://input') — take function name only
        func = name.split("(")[0]
        funcs.add(func)
        cats[func] = category

    # ---- sources ----
    sources_block = data.get("sources", {})

    for sg in sources_block.get("superglobals", []):
        name = _strip_comment(sg).lstrip("$")   # _GET, _POST, etc.
        superglobals.add(name)
        source_cats[name] = "superglobal"

    for cat_name, entries in sources_block.items():
        if cat_name == "superglobals":
            continue
        for raw in entries or []:
            _parse_entry(str(raw), cat_name, source_funcs, source_methods, source_cats)

    # ---- sinks ----
    sinks_block = data.get("sinks", {})
    for cat_name, entries in sinks_block.items():
        for raw in entries or []:
            _parse_entry(str(raw), cat_name, sink_funcs, sink_methods, sink_cats)

    # ---- sanitizers ----
    san_block = data.get("sanitizers", {})
    for cat_name, entries in san_block.items():
        for raw in entries or []:
            _parse_entry(str(raw), cat_name, sanitizer_funcs, sanitizer_methods, san_cats)

    return {
        "superglobals": superglobals,
        "source_funcs": source_funcs,
        "source_methods": source_methods,
        "sink_funcs": sink_funcs,
        "sink_methods": sink_methods,
        "sanitizer_funcs": sanitizer_funcs,
        "sanitizer_methods": sanitizer_methods,
        "source_categories": source_cats,
        "sink_categories": sink_cats,
        "sanitizer_categories": san_cats,
    }


# ---------------------------------------------------------------------------
# AST walker
# ---------------------------------------------------------------------------

class PHPFileAnalyzer:
    """
    Walks a tree-sitter AST for a single PHP file and collects
    sources, sinks, sanitizers, and the enclosing scope at each site.
    """

    def __init__(self, defs: dict[str, Any], source_bytes: bytes, file_path: str):
        self.defs = defs
        self.source_bytes = source_bytes
        self.file_path = file_path

        # results
        self.sources: list[dict] = []
        self.sinks: list[dict] = []
        self.sanitizers: list[dict] = []

    # ------------------------------------------------------------------
    # public entry point
    # ------------------------------------------------------------------

    def analyze(self, root_node: ts.Node) -> None:
        """Recursively walk the full AST."""
        self._walk(root_node, class_name=None, func_name=None)

    # ------------------------------------------------------------------
    # helpers
    # ------------------------------------------------------------------

    def _text(self, node: ts.Node) -> str:
        return self.source_bytes[node.start_byte:node.end_byte].decode("utf-8", errors="replace")

    def _line(self, node: ts.Node) -> int:
        return node.start_point[0] + 1   # 1-indexed

    def _make_finding(
        self,
        node: ts.Node,
        kind: str,
        category: str,
        class_name: str | None,
        func_name: str | None,
    ) -> dict:
        return {
            "file": self.file_path,
            "line": self._line(node),
            "class": class_name,
            "function": func_name,
            "kind": kind,
            "category": category,
            "expression": self._text(node),
        }

    # ------------------------------------------------------------------
    # node-type dispatchers
    # ------------------------------------------------------------------

    def _walk(self, node: ts.Node, class_name: str | None, func_name: str | None) -> None:
        """Depth-first walk; updates scope at class/function boundaries."""

        node_type = node.type

        # ---- scope tracking ----
        new_class = class_name
        new_func = func_name

        if node_type == "class_declaration":
            # grab the class name from child named_type or name node
            for child in node.children:
                if child.type == "name":
                    new_class = self._text(child)
                    break
            new_func = None  # reset func scope at class boundary

        elif node_type in ("function_definition", "method_declaration", "arrow_function"):
            for child in node.children:
                if child.type == "name":
                    new_func = self._text(child)
                    break
            else:
                new_func = "<anonymous>"

        # ---- node-type inspection ----
        self._inspect_node(node, node_type, new_class, new_func)

        # recurse
        for child in node.children:
            self._walk(child, new_class, new_func)

    def _inspect_node(
        self,
        node: ts.Node,
        node_type: str,
        class_name: str | None,
        func_name: str | None,
    ) -> None:
        defs = self.defs

        # ------------------------------------------------------------------
        # 1. Variable access — superglobals like $_GET, $_POST
        # ------------------------------------------------------------------
        if node_type == "variable_name":
            var_text = self._text(node).lstrip("$")
            if var_text in defs["superglobals"]:
                category = defs["source_categories"].get(var_text, "superglobal")
                self.sources.append(
                    self._make_finding(node, var_text, category, class_name, func_name)
                )
            return

        # subscript_expression: $_GET['key'] — the outer node wraps variable_name
        # handled by catching variable_name above; no extra action needed here.

        # ------------------------------------------------------------------
        # 2. Plain function calls — function_call_expression
        # ------------------------------------------------------------------
        if node_type == "function_call_expression":
            func_node = node.child_by_field_name("function")
            if func_node is not None:
                func_name_text = self._text(func_node)
                self._check_function(node, func_name_text, class_name, func_name)
            return

        # ------------------------------------------------------------------
        # 3. Method calls — member_call_expression: $obj->method(args)
        # ------------------------------------------------------------------
        if node_type == "member_call_expression":
            obj_node = node.child_by_field_name("object")
            name_node = node.child_by_field_name("name")
            if obj_node is not None and name_node is not None:
                obj_text = self._text(obj_node).lstrip("$")
                meth_text = self._text(name_node)
                self._check_method(node, obj_text, meth_text, class_name, func_name)
            return

        # ------------------------------------------------------------------
        # 4. Static calls — scoped_call_expression: ClassName::method(args)
        # ------------------------------------------------------------------
        if node_type == "scoped_call_expression":
            scope_node = node.child_by_field_name("scope")
            name_node = node.child_by_field_name("name")
            if scope_node is not None and name_node is not None:
                scope_text = self._text(scope_node)
                meth_text = self._text(name_node)
                self._check_method(node, scope_text, meth_text, class_name, func_name)
            return

    # ------------------------------------------------------------------
    # matching helpers
    # ------------------------------------------------------------------

    def _check_function(
        self,
        node: ts.Node,
        func_name_text: str,
        class_name: str | None,
        func_name: str | None,
    ) -> None:
        defs = self.defs

        if func_name_text in defs["source_funcs"]:
            cat = defs["source_categories"].get(func_name_text, "function_source")
            self.sources.append(
                self._make_finding(node, func_name_text, cat, class_name, func_name)
            )
        if func_name_text in defs["sink_funcs"]:
            cat = defs["sink_categories"].get(func_name_text, "sink")
            self.sinks.append(
                self._make_finding(node, func_name_text, cat, class_name, func_name)
            )
        if func_name_text in defs["sanitizer_funcs"]:
            cat = defs["sanitizer_categories"].get(func_name_text, "sanitizer")
            self.sanitizers.append(
                self._make_finding(node, func_name_text, cat, class_name, func_name)
            )

    def _check_method(
        self,
        node: ts.Node,
        obj_or_class: str,
        meth_text: str,
        class_name: str | None,
        func_name: str | None,
    ) -> None:
        defs = self.defs

        # Check sources
        for (obj_hint, meth) in defs["source_methods"]:
            if meth == meth_text and (
                obj_hint.lower() == obj_or_class.lower()
                or obj_hint.lower() in obj_or_class.lower()
            ):
                key = f"{obj_hint}->{meth}" if "->" in str(defs["source_categories"]) else f"{obj_hint}::{meth}"
                cat_key1 = f"{obj_hint}->{meth}"
                cat_key2 = f"{obj_hint}::{meth}"
                cat = defs["source_categories"].get(cat_key1) or defs["source_categories"].get(cat_key2, "method_source")
                self.sources.append(
                    self._make_finding(node, f"{obj_or_class}->{meth_text}", cat, class_name, func_name)
                )
                break

        # Check sinks
        for (obj_hint, meth) in defs["sink_methods"]:
            if meth == meth_text and (
                obj_hint.lower() == obj_or_class.lower()
                or obj_hint.lower() in obj_or_class.lower()
            ):
                cat_key1 = f"{obj_hint}->{meth}"
                cat_key2 = f"{obj_hint}::{meth}"
                cat = defs["sink_categories"].get(cat_key1) or defs["sink_categories"].get(cat_key2, "method_sink")
                self.sinks.append(
                    self._make_finding(node, f"{obj_or_class}->{meth_text}", cat, class_name, func_name)
                )
                break

        # Check sanitizers
        for (obj_hint, meth) in defs["sanitizer_methods"]:
            if meth == meth_text and (
                obj_hint.lower() == obj_or_class.lower()
                or obj_hint.lower() in obj_or_class.lower()
            ):
                cat_key1 = f"{obj_hint}->{meth}"
                cat_key2 = f"{obj_hint}::{meth}"
                cat = defs["sanitizer_categories"].get(cat_key1) or defs["sanitizer_categories"].get(cat_key2, "sanitizer")
                self.sanitizers.append(
                    self._make_finding(node, f"{obj_or_class}->{meth_text}", cat, class_name, func_name)
                )
                break


# ---------------------------------------------------------------------------
# Flow detector
# ---------------------------------------------------------------------------

def _detect_flows(
    sources: list[dict],
    sinks: list[dict],
    sanitizers: list[dict],
) -> list[dict]:
    """
    Identify direct source→sink flows within the same function scope where no
    sanitizer appears between the source line and the sink line.

    Strategy:
      For each (source, sink) pair in the same (file, class, function) scope
      where source.line <= sink.line, check whether any sanitizer exists in the
      same scope with source.line <= san.line <= sink.line.  If none, record a flow.
    """
    flows: list[dict] = []

    # Group sanitizers by scope key → sorted list of lines
    san_index: dict[tuple, list[int]] = {}
    for san in sanitizers:
        key = (san["file"], san.get("class"), san.get("function"))
        san_index.setdefault(key, []).append(san["line"])

    # Sort sanitizer lines per scope
    for k in san_index:
        san_index[k].sort()

    def _has_sanitizer_between(scope_key: tuple, lo: int, hi: int) -> bool:
        lines = san_index.get(scope_key, [])
        for ln in lines:
            if lo <= ln <= hi:
                return True
        return False

    for src in sources:
        src_scope = (src["file"], src.get("class"), src.get("function"))
        for sink in sinks:
            sink_scope = (sink["file"], sink.get("class"), sink.get("function"))
            if src_scope != sink_scope:
                continue
            lo = min(src["line"], sink["line"])
            hi = max(src["line"], sink["line"])
            if _has_sanitizer_between(src_scope, lo, hi):
                continue
            flows.append(
                {
                    "source": {
                        "file": src["file"],
                        "line": src["line"],
                        "kind": src["kind"],
                        "category": src["category"],
                        "expression": src["expression"],
                    },
                    "sink": {
                        "file": sink["file"],
                        "line": sink["line"],
                        "kind": sink["kind"],
                        "category": sink["category"],
                        "expression": sink["expression"],
                    },
                    "function": src.get("function"),
                    "class": src.get("class"),
                }
            )

    return flows


# ---------------------------------------------------------------------------
# Plugin scanner
# ---------------------------------------------------------------------------

def _collect_php_files(plugin_dir: Path) -> list[Path]:
    return sorted(plugin_dir.rglob("*.php"))


def _analyze_plugin(
    plugin_slug: str,
    plugin_dir: Path,
    defs: dict[str, Any],
    parser: ts.Parser,
) -> dict:
    """Analyze all PHP files in plugin_dir and return a result dict."""
    php_files = _collect_php_files(plugin_dir)

    all_sources: list[dict] = []
    all_sinks: list[dict] = []
    all_sanitizers: list[dict] = []
    errors: list[str] = []

    for php_file in php_files:
        rel_path = str(php_file.relative_to(plugin_dir))
        try:
            source_bytes = php_file.read_bytes()
            tree = parser.parse(source_bytes)
            analyzer = PHPFileAnalyzer(defs, source_bytes, rel_path)
            analyzer.analyze(tree.root_node)
            all_sources.extend(analyzer.sources)
            all_sinks.extend(analyzer.sinks)
            all_sanitizers.extend(analyzer.sanitizers)
        except Exception as exc:
            msg = f"{rel_path}: {exc}"
            log.warning("Parse error — %s", msg)
            errors.append(msg)

    # Flows
    flows = _detect_flows(all_sources, all_sinks, all_sanitizers)

    # Summary counters
    funcs_with_sources = len({(s["file"], s.get("class"), s.get("function")) for s in all_sources})
    funcs_with_sinks = len({(s["file"], s.get("class"), s.get("function")) for s in all_sinks})

    return {
        "plugin": plugin_slug,
        "scan_time": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "summary": {
            "total_sources": len(all_sources),
            "total_sinks": len(all_sinks),
            "total_sanitizers": len(all_sanitizers),
            "direct_flows": len(flows),
            "functions_with_sources": funcs_with_sources,
            "functions_with_sinks": funcs_with_sinks,
            "files_analyzed": len(php_files),
            "parse_errors": len(errors),
        },
        "sources": all_sources,
        "sinks": all_sinks,
        "sanitizers": all_sanitizers,
        "flows": flows,
        "errors": errors,
    }


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def _build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        prog="source_sink_mapper.py",
        description=(
            "AST-based source/sink identification for WordPress PHP security analysis.\n"
            "Parses PHP files using tree-sitter and identifies sources, sinks, sanitizers,\n"
            "and direct source→sink flows within each plugin."
        ),
        formatter_class=argparse.RawDescriptionHelpFormatter,
    )
    p.add_argument(
        "--input",
        metavar="DIR",
        required=True,
        help="Path to plugins source directory (e.g. plugins/src/). "
             "Each subdirectory is treated as a plugin slug.",
    )
    p.add_argument(
        "--output",
        metavar="DIR",
        required=True,
        help="Path to output directory. One <slug>.json file is written per plugin.",
    )
    p.add_argument(
        "--plugin",
        metavar="SLUG",
        default=None,
        help="Analyze a single plugin by slug (subdirectory name). "
             "Omit to analyze all plugins in --input.",
    )
    p.add_argument(
        "--definitions",
        metavar="YAML",
        default=None,
        help="Path to wp_sources_sinks.yaml (default: tools/wp_sources_sinks.yaml "
             "relative to this script).",
    )
    p.add_argument(
        "--verbose",
        action="store_true",
        help="Enable verbose/debug logging.",
    )
    return p


def main(argv: list[str] | None = None) -> int:
    parser = _build_parser()
    args = parser.parse_args(argv)

    if args.verbose:
        logging.getLogger().setLevel(logging.DEBUG)

    # Resolve definitions file
    if args.definitions:
        definitions_path = Path(args.definitions).expanduser().resolve()
    else:
        # default: sibling file in the same tools/ directory
        definitions_path = (Path(__file__).parent / "wp_sources_sinks.yaml").resolve()

    if not definitions_path.exists():
        sys.exit(f"ERROR: definitions file not found: {definitions_path}")

    log.debug("Loading definitions from %s", definitions_path)
    defs = _load_definitions(definitions_path)

    # Resolve input/output dirs
    input_dir = Path(args.input).expanduser().resolve()
    output_dir = Path(args.output).expanduser().resolve()

    if not input_dir.is_dir():
        sys.exit(f"ERROR: --input directory not found: {input_dir}")

    output_dir.mkdir(parents=True, exist_ok=True)

    # Build tree-sitter parser (PHP)
    php_parser = _make_php_parser()

    # Collect plugin directories
    if args.plugin:
        plugin_dir = input_dir / args.plugin
        if not plugin_dir.is_dir():
            sys.exit(f"ERROR: plugin directory not found: {plugin_dir}")
        plugin_slugs = [args.plugin]
    else:
        plugin_slugs = sorted(
            p.name for p in input_dir.iterdir() if p.is_dir() and not p.name.startswith(".")
        )
        if not plugin_slugs:
            sys.exit(f"ERROR: no plugin subdirectories found in {input_dir}")

    log.debug("Plugins to analyze: %s", plugin_slugs)

    # Run analysis
    if RICH_AVAILABLE:
        console = Console(stderr=True)
        progress = Progress(
            SpinnerColumn(),
            TextColumn("[bold blue]{task.description}"),
            BarColumn(),
            MofNCompleteColumn(),
            TaskProgressColumn(),
            TimeElapsedColumn(),
            console=console,
            transient=False,
        )
        with progress:
            task = progress.add_task("Scanning plugins...", total=len(plugin_slugs))
            for slug in plugin_slugs:
                progress.update(task, description=f"[bold blue]Scanning {slug}...")
                plugin_dir = input_dir / slug
                result = _analyze_plugin(slug, plugin_dir, defs, php_parser)
                out_file = output_dir / f"{slug}.json"
                out_file.write_text(json.dumps(result, indent=2, ensure_ascii=False))
                summary = result["summary"]
                progress.console.print(
                    f"  [green]{slug}[/green] — "
                    f"sources={summary['total_sources']} "
                    f"sinks={summary['total_sinks']} "
                    f"sanitizers={summary['total_sanitizers']} "
                    f"flows={summary['direct_flows']} "
                    f"files={summary['files_analyzed']}"
                )
                progress.advance(task)
    else:
        for slug in plugin_slugs:
            print(f"Scanning {slug}...", file=sys.stderr)
            plugin_dir = input_dir / slug
            result = _analyze_plugin(slug, plugin_dir, defs, php_parser)
            out_file = output_dir / f"{slug}.json"
            out_file.write_text(json.dumps(result, indent=2, ensure_ascii=False))
            summary = result["summary"]
            print(
                f"  {slug}: sources={summary['total_sources']} "
                f"sinks={summary['total_sinks']} "
                f"sanitizers={summary['total_sanitizers']} "
                f"flows={summary['direct_flows']} "
                f"files={summary['files_analyzed']}",
                file=sys.stderr,
            )

    return 0


if __name__ == "__main__":
    sys.exit(main())
