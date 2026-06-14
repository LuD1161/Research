#!/usr/bin/env python3
"""
taint_tracer.py — Intraprocedural taint flow tracker for WordPress PHP security analysis.

Performs data flow analysis within functions using context-aware taint labels to find
XSS, SQLi, RCE, path traversal, and SSRF vulnerabilities.

Usage:
    python3 taint_tracer.py --input plugins/src/ --output results/ --sources-sinks wp_sources_sinks.yaml
    python3 taint_tracer.py --input plugins/src/ --output results/ --sources-sinks wp_sources_sinks.yaml --plugin woocommerce
"""

import argparse
import json
import os
import sys
import traceback
from collections import defaultdict
from copy import deepcopy
from pathlib import Path
from typing import Dict, List, Optional, Set, Tuple

import yaml

try:
    import tree_sitter_php as tsphp
    import tree_sitter as ts
except ImportError as e:
    print(f"[ERROR] Missing dependency: {e}")
    print("Install with: pip install tree-sitter>=0.24.0 tree-sitter-php>=0.24.0")
    sys.exit(1)

try:
    from rich.console import Console
    from rich.progress import Progress, SpinnerColumn, TextColumn, BarColumn, TaskProgressColumn
    from rich.table import Table
    from rich import print as rprint
    RICH_AVAILABLE = True
except ImportError:
    RICH_AVAILABLE = False

# ---------------------------------------------------------------------------
# Taint labels
# ---------------------------------------------------------------------------

class TaintLabel:
    XSS = "xss"
    SQL = "sql"
    CMD = "cmd"
    PATH = "path"
    URL = "url"
    ALL: Set[str] = {"xss", "sql", "cmd", "path", "url"}

    @staticmethod
    def all_set() -> Set[str]:
        return set(TaintLabel.ALL)

# ---------------------------------------------------------------------------
# Default source/sink knowledge base (overridden by YAML if provided)
# ---------------------------------------------------------------------------

DEFAULT_SOURCES = {
    # Superglobals
    "$_GET": TaintLabel.all_set(),
    "$_POST": TaintLabel.all_set(),
    "$_REQUEST": TaintLabel.all_set(),
    "$_COOKIE": TaintLabel.all_set(),
    "$_SERVER": TaintLabel.all_set(),
    "$_FILES": TaintLabel.all_set(),
    "$_ENV": TaintLabel.all_set(),
    # WP database reads (treated as tainted — could hold attacker-stored data)
    "get_option": TaintLabel.all_set(),
    "get_post_meta": TaintLabel.all_set(),
    "get_user_meta": TaintLabel.all_set(),
    "get_transient": TaintLabel.all_set(),
    "get_site_option": TaintLabel.all_set(),
    "get_site_transient": TaintLabel.all_set(),
    "get_comment_meta": TaintLabel.all_set(),
    "get_term_meta": TaintLabel.all_set(),
    "get_metadata": TaintLabel.all_set(),
    # wpdb direct query results
    "wpdb->get_var": TaintLabel.all_set(),
    "wpdb->get_row": TaintLabel.all_set(),
    "wpdb->get_results": TaintLabel.all_set(),
    "wpdb->get_col": TaintLabel.all_set(),
    # HTTP input helpers
    "filter_input": TaintLabel.all_set(),
    "filter_var": TaintLabel.all_set(),  # not a sanitizer — can passthrough
}

# Sanitizer: function_name -> set of taint labels REMOVED by this sanitizer
# If the set is ALL, the variable is fully clean after this call.
DEFAULT_SANITIZERS: Dict[str, Set[str]] = {
    # XSS sanitizers
    "esc_html": {TaintLabel.XSS},
    "esc_attr": {TaintLabel.XSS},
    "esc_js": {TaintLabel.XSS},
    "esc_textarea": {TaintLabel.XSS},
    "htmlspecialchars": {TaintLabel.XSS},
    "htmlentities": {TaintLabel.XSS},
    "wp_kses": {TaintLabel.XSS},
    "wp_kses_post": {TaintLabel.XSS},
    "wp_kses_data": {TaintLabel.XSS},
    "strip_tags": {TaintLabel.XSS},
    # SQL sanitizers
    "esc_sql": {TaintLabel.SQL},
    "wpdb->prepare": {TaintLabel.SQL},
    "mysql_real_escape_string": {TaintLabel.SQL},
    "mysqli_real_escape_string": {TaintLabel.SQL},
    "addslashes": {TaintLabel.SQL},
    # CMD sanitizers
    "escapeshellarg": {TaintLabel.CMD},
    "escapeshellcmd": {TaintLabel.CMD},
    # PATH sanitizers
    "realpath": {TaintLabel.PATH},
    "validate_file": {TaintLabel.PATH},
    "basename": {TaintLabel.PATH},
    # URL sanitizers
    "esc_url": {TaintLabel.URL},
    "esc_url_raw": {TaintLabel.URL},
    # Integer/type casts — remove ALL taint
    "absint": TaintLabel.all_set(),
    "intval": TaintLabel.all_set(),
    "floatval": TaintLabel.all_set(),
    "doubleval": TaintLabel.all_set(),
    "boolval": TaintLabel.all_set(),
    # WP sanitizers
    "sanitize_text_field": {TaintLabel.XSS},
    "sanitize_email": {TaintLabel.XSS},
    "sanitize_key": TaintLabel.all_set(),
    "sanitize_title": {TaintLabel.XSS},
    "sanitize_file_name": {TaintLabel.PATH},
    "sanitize_user": {TaintLabel.XSS},
    "sanitize_hex_color": TaintLabel.all_set(),
    "sanitize_url": {TaintLabel.URL},
    "sanitize_textarea_field": {TaintLabel.XSS},
    "wp_parse_url": {TaintLabel.URL},
}

# Sink: (object_prefix or None, function_name) -> taint label that triggers finding
# taint_label = the label that must be present in the tainted var to trigger
DEFAULT_SINKS: List[Dict] = [
    # SQLi sinks
    {"func": "wpdb->query",       "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->get_results", "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->get_row",     "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->get_var",     "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->get_col",     "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->replace",     "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->delete",      "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->update",      "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    {"func": "wpdb->insert",      "label": TaintLabel.SQL, "vuln": "sql_injection",       "severity_base": "critical"},
    # XSS sinks
    {"func": "echo",              "label": TaintLabel.XSS, "vuln": "xss",                 "severity_base": "high"},
    {"func": "print",             "label": TaintLabel.XSS, "vuln": "xss",                 "severity_base": "high"},
    {"func": "printf",            "label": TaintLabel.XSS, "vuln": "xss",                 "severity_base": "high"},
    {"func": "vprintf",           "label": TaintLabel.XSS, "vuln": "xss",                 "severity_base": "high"},
    {"func": "wp_die",            "label": TaintLabel.XSS, "vuln": "xss",                 "severity_base": "medium"},
    # CMD / RCE sinks
    {"func": "exec",              "label": TaintLabel.CMD, "vuln": "rce",                 "severity_base": "critical"},
    {"func": "system",            "label": TaintLabel.CMD, "vuln": "rce",                 "severity_base": "critical"},
    {"func": "passthru",          "label": TaintLabel.CMD, "vuln": "rce",                 "severity_base": "critical"},
    {"func": "shell_exec",        "label": TaintLabel.CMD, "vuln": "rce",                 "severity_base": "critical"},
    {"func": "popen",             "label": TaintLabel.CMD, "vuln": "rce",                 "severity_base": "critical"},
    {"func": "proc_open",         "label": TaintLabel.CMD, "vuln": "rce",                 "severity_base": "critical"},
    {"func": "eval",              "label": TaintLabel.CMD, "vuln": "code_injection",      "severity_base": "critical"},
    # PATH / LFI sinks
    {"func": "include",           "label": TaintLabel.PATH, "vuln": "local_file_inclusion","severity_base": "critical"},
    {"func": "include_once",      "label": TaintLabel.PATH, "vuln": "local_file_inclusion","severity_base": "critical"},
    {"func": "require",           "label": TaintLabel.PATH, "vuln": "local_file_inclusion","severity_base": "critical"},
    {"func": "require_once",      "label": TaintLabel.PATH, "vuln": "local_file_inclusion","severity_base": "critical"},
    {"func": "file_get_contents", "label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "high"},
    {"func": "file_put_contents", "label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "critical"},
    {"func": "fopen",             "label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "high"},
    {"func": "unlink",            "label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "critical"},
    {"func": "rename",            "label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "high"},
    {"func": "copy",              "label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "high"},
    {"func": "move_uploaded_file","label": TaintLabel.PATH, "vuln": "path_traversal",     "severity_base": "critical"},
    # URL / SSRF sinks
    {"func": "wp_remote_get",     "label": TaintLabel.URL, "vuln": "ssrf",               "severity_base": "high"},
    {"func": "wp_remote_post",    "label": TaintLabel.URL, "vuln": "ssrf",               "severity_base": "high"},
    {"func": "wp_remote_request", "label": TaintLabel.URL, "vuln": "ssrf",               "severity_base": "high"},
    {"func": "wp_safe_remote_get","label": TaintLabel.URL, "vuln": "ssrf",               "severity_base": "medium"},
    {"func": "curl_setopt",       "label": TaintLabel.URL, "vuln": "ssrf",               "severity_base": "high"},
]

# Abbreviations for flow_id generation
VULN_ABBREV = {
    "sql_injection":        "sqli",
    "xss":                  "xss",
    "rce":                  "rce",
    "code_injection":       "rce",
    "local_file_inclusion": "lfi",
    "path_traversal":       "path",
    "ssrf":                 "ssrf",
}

# ---------------------------------------------------------------------------
# PHP parser singleton
# ---------------------------------------------------------------------------

_PARSER = None
_LANG = None

def get_parser() -> ts.Parser:
    global _PARSER, _LANG
    if _PARSER is None:
        _LANG = ts.Language(tsphp.language_php())
        _PARSER = ts.Parser(_LANG)
    return _PARSER


# ---------------------------------------------------------------------------
# Node helpers
# ---------------------------------------------------------------------------

def node_text(node) -> str:
    """Return the text of a node decoded as UTF-8."""
    if node is None:
        return ""
    raw = node.text
    if raw is None:
        return ""
    return raw.decode("utf-8", errors="replace")


def node_line(node) -> int:
    """Return 1-indexed line number of a node."""
    return node.start_point[0] + 1


def get_child_by_type(node, type_name: str):
    for child in node.children:
        if child.type == type_name:
            return child
    return None


def get_named_child_by_field(node, field_name: str):
    return node.child_by_field_name(field_name)


def collect_nodes_of_type(root, *types) -> List:
    """DFS collection of all nodes matching any of the given types."""
    results = []
    stack = [root]
    while stack:
        n = stack.pop()
        if n.type in types:
            results.append(n)
        stack.extend(reversed(n.children))
    return results


# ---------------------------------------------------------------------------
# Taint analysis
# ---------------------------------------------------------------------------

TaintState = Dict[str, Set[str]]  # variable_name -> set of active taint labels


def var_name_from_node(node) -> Optional[str]:
    """Extract a canonical variable name string like '$x' from a variable_name node."""
    if node is None:
        return None
    if node.type == "variable_name":
        return node_text(node)
    # Sometimes variables appear as bare name nodes inside variable_name
    if node.type == "name":
        text = node_text(node)
        return f"${text}"
    return None


def get_function_name_from_call(node) -> Tuple[Optional[str], Optional[str]]:
    """
    Given a function_call_expression or member_call_expression, return
    (object_prefix_or_None, function_name).

    E.g.:
      esc_html($x)          -> (None, "esc_html")
      $wpdb->query($x)      -> ("wpdb", "query")   -> composite key "wpdb->query"
      $this->method($x)     -> ("this", "method")
    """
    if node.type == "function_call_expression":
        func_node = node.child_by_field_name("function")
        if func_node is None:
            func_node = node.named_children[0] if node.named_children else None
        if func_node is not None:
            return (None, node_text(func_node))
        return (None, None)

    if node.type == "member_call_expression":
        obj_node = node.child_by_field_name("object")
        name_node = node.child_by_field_name("name")
        if obj_node is None or name_node is None:
            # fallback to positional
            named = node.named_children
            if len(named) >= 2:
                obj_node = named[0]
                name_node = named[1]
        obj_text = node_text(obj_node).lstrip("$") if obj_node else None
        func_text = node_text(name_node) if name_node else None
        return (obj_text, func_text)

    return (None, None)


def taint_labels_from_expr(node, state: TaintState, sources: Dict, sanitizers: Dict) -> Set[str]:
    """
    Compute the taint labels that should flow from an expression node.
    Returns a (possibly empty) set of TaintLabel values.
    """
    if node is None:
        return set()

    ntype = node.type

    # ----- Variable reference -----
    if ntype == "variable_name":
        vname = node_text(node)
        # Superglobal direct reference ($_ GET, $_POST, etc.)
        base = vname.split("[")[0]  # handle $var['key'] if appears as text
        if base in sources:
            return set(sources[base])
        return set(state.get(vname, set()))

    # ----- Subscript access: $_GET['key'] -----
    if ntype == "subscript_expression":
        # The object being subscripted
        obj = node.child_by_field_name("object")
        if obj is None and node.named_children:
            obj = node.named_children[0]
        obj_text = node_text(obj) if obj else ""
        if obj_text in sources:
            return set(sources[obj_text])
        return taint_labels_from_expr(obj, state, sources, sanitizers)

    # ----- String interpolation: "foo $var bar" -----
    if ntype == "encapsed_string":
        combined: Set[str] = set()
        for child in node.named_children:
            combined |= taint_labels_from_expr(child, state, sources, sanitizers)
        return combined

    # ----- Binary/concat expression: $a . $b -----
    if ntype == "binary_expression":
        left = node.child_by_field_name("left")
        right = node.child_by_field_name("right")
        if left is None or right is None:
            named = node.named_children
            left = named[0] if len(named) > 0 else None
            right = named[2] if len(named) > 2 else (named[1] if len(named) > 1 else None)
        return (taint_labels_from_expr(left, state, sources, sanitizers) |
                taint_labels_from_expr(right, state, sources, sanitizers))

    # ----- Function call / member call -----
    if ntype in ("function_call_expression", "member_call_expression"):
        obj_prefix, func_name = get_function_name_from_call(node)
        if func_name is None:
            return set()

        # Build composite key for member calls (e.g. "wpdb->query")
        composite = f"{obj_prefix}->{func_name}" if obj_prefix else func_name

        # Check if this is a known source (e.g. get_option())
        if composite in sources:
            return set(sources[composite])
        if func_name in sources:
            return set(sources[func_name])

        # Check if this is a sanitizer
        removed_labels = sanitizers.get(composite) or sanitizers.get(func_name)
        if removed_labels is not None:
            # Get taint from first argument
            args_node = node.child_by_field_name("arguments")
            if args_node is None:
                for ch in node.named_children:
                    if ch.type == "arguments":
                        args_node = ch
                        break
            if args_node and args_node.named_children:
                arg = args_node.named_children[0]
                if arg.type == "argument":
                    arg = arg.named_children[0] if arg.named_children else arg
                incoming = taint_labels_from_expr(arg, state, sources, sanitizers)
                return incoming - set(removed_labels)
            return set()

        # Unknown function call — propagate taint from arguments conservatively
        args_node = node.child_by_field_name("arguments")
        if args_node is None:
            for ch in node.named_children:
                if ch.type == "arguments":
                    args_node = ch
                    break
        if args_node:
            combined: Set[str] = set()
            for arg in args_node.named_children:
                if arg.type == "argument":
                    for achild in arg.named_children:
                        combined |= taint_labels_from_expr(achild, state, sources, sanitizers)
                else:
                    combined |= taint_labels_from_expr(arg, state, sources, sanitizers)
            return combined
        return set()

    # ----- Parenthesized expression -----
    if ntype == "parenthesized_expression":
        if node.named_children:
            return taint_labels_from_expr(node.named_children[0], state, sources, sanitizers)
        return set()

    # ----- Cast expressions -----
    if ntype in ("cast_expression", "type_cast_expression"):
        # (int) $x, (string) $x, etc.
        # integer casts remove all taint
        cast_type_node = node.child_by_field_name("type")
        if cast_type_node is None:
            cast_type_node = get_child_by_type(node, "cast_type")
        cast_text = node_text(cast_type_node).lower() if cast_type_node else ""
        if any(t in cast_text for t in ("int", "float", "double", "bool")):
            return set()  # safe cast
        # string casts propagate
        expr = node.child_by_field_name("value")
        if expr is None and node.named_children:
            expr = node.named_children[-1]
        return taint_labels_from_expr(expr, state, sources, sanitizers)

    # ----- Array creation — propagate from values -----
    if ntype == "array_creation_expression":
        combined: Set[str] = set()
        for child in node.named_children:
            if child.type == "array_element_initializer":
                for achild in child.named_children:
                    combined |= taint_labels_from_expr(achild, state, sources, sanitizers)
        return combined

    # ----- Ternary / null coalescing -----
    if ntype in ("conditional_expression", "null_safe_member_expression"):
        combined: Set[str] = set()
        for child in node.named_children:
            combined |= taint_labels_from_expr(child, state, sources, sanitizers)
        return combined

    # ----- Literals: safe -----
    if ntype in ("integer", "float", "boolean", "null", "string", "heredoc"):
        return set()

    # ----- Fallthrough: recurse into named children -----
    combined: Set[str] = set()
    for child in node.named_children:
        combined |= taint_labels_from_expr(child, state, sources, sanitizers)
    return combined


# ---------------------------------------------------------------------------
# Taint chain tracking
# ---------------------------------------------------------------------------

class TaintChainEntry:
    def __init__(self, step: int, line: int, expression: str, action: str, labels: Set[str]):
        self.step = step
        self.line = line
        self.expression = expression
        self.action = action  # taint_source | taint_propagation | sanitizer_applied | sink_reached
        self.labels = labels

    def to_dict(self) -> dict:
        return {
            "step": self.step,
            "line": self.line,
            "expression": self.expression,
            "action": self.action,
            "active_labels": sorted(self.labels),
        }


class TaintFlow:
    """A complete taint flow from source to sink."""
    def __init__(self, plugin: str, vuln_class: str, source_expr: str, source_file: str,
                 source_line: int, sink_expr: str, sink_file: str, sink_line: int,
                 chain: List[TaintChainEntry], missing_sanitizer: str,
                 auth_required: bool, nonce_verified: bool, severity: str,
                 confidence: str, flow_id: str):
        self.plugin = plugin
        self.vuln_class = vuln_class
        self.source_expr = source_expr
        self.source_file = source_file
        self.source_line = source_line
        self.sink_expr = sink_expr
        self.sink_file = sink_file
        self.sink_line = sink_line
        self.chain = chain
        self.missing_sanitizer = missing_sanitizer
        self.auth_required = auth_required
        self.nonce_verified = nonce_verified
        self.severity = severity
        self.confidence = confidence
        self.flow_id = flow_id

    def to_dict(self) -> dict:
        return {
            "flow_id": self.flow_id,
            "severity": self.severity,
            "confidence": self.confidence,
            "plugin": self.plugin,
            "vulnerability_class": self.vuln_class,
            "source": {
                "expression": self.source_expr,
                "file": self.source_file,
                "line": self.source_line,
            },
            "chain": [e.to_dict() for e in self.chain],
            "sink": {
                "expression": self.sink_expr,
                "file": self.sink_file,
                "line": self.sink_line,
            },
            "missing_sanitizer": self.missing_sanitizer,
            "auth_required": self.auth_required,
            "nonce_verified": self.nonce_verified,
        }


# ---------------------------------------------------------------------------
# Function/method context analyzer
# ---------------------------------------------------------------------------

class FunctionContext:
    """Holds everything we know about the enclosing function/method."""
    def __init__(self, name: str, class_name: Optional[str], file_path: str, node,
                 hook_type: Optional[str] = None):
        self.name = name
        self.class_name = class_name
        self.file_path = file_path
        self.node = node
        self.hook_type = hook_type  # 'nopriv', 'priv', or None
        self.has_auth_check = False
        self.has_nonce_check = False

    @property
    def auth_required(self) -> bool:
        if self.hook_type == "nopriv":
            return False
        return self.has_auth_check

    @property
    def nonce_verified(self) -> bool:
        return self.has_nonce_check

    def scan_for_auth_nonce(self, body_node):
        """Walk the function body looking for auth/nonce checks."""
        for node in collect_nodes_of_type(body_node, "function_call_expression",
                                          "member_call_expression"):
            _, fname = get_function_name_from_call(node)
            if fname in ("current_user_can", "is_super_admin", "is_admin",
                         "user_can", "author_can"):
                self.has_auth_check = True
            elif fname in ("wp_verify_nonce", "check_ajax_referer",
                           "check_admin_referer", "verify_nonce"):
                self.has_nonce_check = True


# ---------------------------------------------------------------------------
# Sink detection helper
# ---------------------------------------------------------------------------

def get_sink_args(node) -> List:
    """Return the argument nodes for a potential sink node."""
    args_node = node.child_by_field_name("arguments")
    if args_node is None:
        for ch in node.named_children:
            if ch.type == "arguments":
                args_node = ch
                break
    if args_node is None:
        return []
    result = []
    for arg in args_node.named_children:
        if arg.type == "argument":
            result.extend(arg.named_children)
        else:
            result.append(arg)
    return result


def check_echo_statement(node, state: TaintState, sources: Dict, sanitizers: Dict) -> Optional[Set[str]]:
    """Special handling for echo/print language constructs (not function calls)."""
    # echo_statement has variable_name / expression children
    combined: Set[str] = set()
    for child in node.named_children:
        combined |= taint_labels_from_expr(child, state, sources, sanitizers)
    return combined if combined else None


# ---------------------------------------------------------------------------
# Per-file / per-function analysis
# ---------------------------------------------------------------------------

class IntraprocTaintAnalyzer:
    """Analyzes a single PHP file for taint flows within each function/method."""

    def __init__(self, sources: Dict, sanitizers: Dict, sinks: List[Dict],
                 plugin_slug: str, file_path: str):
        self.sources = sources
        self.sanitizers = sanitizers
        self.sinks = sinks
        self.plugin_slug = plugin_slug
        self.file_path = file_path
        self._sink_index: Dict[str, Dict] = {}
        self._build_sink_index()

        # Per-file counters for flow IDs
        self._flow_counters: Dict[str, int] = defaultdict(int)

    def _build_sink_index(self):
        """Build lookup: composite_func_key -> sink spec."""
        for sink in self.sinks:
            self._sink_index[sink["func"]] = sink

    def _next_flow_id(self, vuln_class: str) -> str:
        abbrev = VULN_ABBREV.get(vuln_class, vuln_class[:4])
        key = f"{self.plugin_slug}-{abbrev}"
        self._flow_counters[key] += 1
        return f"{key}-{self._flow_counters[key]:03d}"

    def _classify_severity(self, sink_severity_base: str, ctx: FunctionContext) -> Tuple[str, str]:
        """Returns (severity, confidence)."""
        auth = ctx.auth_required
        nonce = ctx.nonce_verified

        if sink_severity_base == "critical":
            if not auth and not nonce:
                return "critical", "high"
            elif not nonce:
                return "high", "high"
            else:
                return "medium", "medium"
        elif sink_severity_base == "high":
            if not auth and not nonce:
                return "high", "high"
            else:
                return "medium", "medium"
        else:
            return "low", "medium"

    def _missing_sanitizer_hint(self, vuln_class: str) -> str:
        hints = {
            "sql_injection": "$wpdb->prepare() not used",
            "xss": "esc_html() / esc_attr() not applied before output",
            "rce": "escapeshellarg() not used",
            "local_file_inclusion": "validate_file() / realpath() not used",
            "path_traversal": "validate_file() / realpath() not used",
            "ssrf": "esc_url() / wp_http_validate_url() not used",
            "code_injection": "eval() with user input — no safe alternative",
        }
        return hints.get(vuln_class, "no sanitizer applied")

    def analyze_file(self) -> List[TaintFlow]:
        """Parse file and analyze all functions/methods. Returns list of flows."""
        try:
            with open(self.file_path, "rb") as f:
                content = f.read()
        except (OSError, PermissionError) as e:
            return []

        try:
            parser = get_parser()
            tree = parser.parse(content)
        except Exception:
            return []

        if tree.root_node.has_error:
            # Partial parse — still try to analyze what we can
            pass

        flows: List[TaintFlow] = []

        # Collect hook registrations for nopriv detection
        nopriv_callbacks = self._collect_nopriv_hooks(tree.root_node)

        # Analyze top-level (file-scope) statements — many WP plugins run code outside
        # of any function definition (e.g. direct echo, include, add_action callbacks
        # that trigger inline). We create a synthetic "file-scope" context.
        file_scope_ctx = FunctionContext(
            name="<file_scope>",
            class_name=None,
            file_path=self.file_path,
            node=tree.root_node,
            hook_type=None,
        )
        file_scope_ctx.scan_for_auth_nonce(tree.root_node)

        # Only walk direct children of root that are NOT function/class definitions
        file_scope_body = self._build_synthetic_body(tree.root_node)
        if file_scope_body:
            file_flows = self._analyze_function_body(file_scope_body, file_scope_ctx)
            flows.extend(file_flows)

        # Find all function/method definitions
        func_nodes = collect_nodes_of_type(tree.root_node,
                                           "function_definition",
                                           "method_declaration")
        for func_node in func_nodes:
            ctx = self._build_function_context(func_node, tree.root_node, nopriv_callbacks)
            func_flows = self._analyze_function(func_node, ctx, content)
            flows.extend(func_flows)

        return flows

    def _build_synthetic_body(self, root) -> List:
        """Collect top-level non-function, non-class statements from the program root."""
        statements = []
        skip_types = {"function_definition", "class_declaration", "php_tag",
                      "text_interpolation", "comment"}
        for child in root.children:
            if child.type not in skip_types:
                statements.append(child)
        return statements

    def _analyze_function_body(self, statements: List, ctx: FunctionContext) -> List[TaintFlow]:
        """Analyze a list of statements (used for file-scope analysis)."""
        state: TaintState = {}
        flows: List[TaintFlow] = []
        chains: Dict[str, List[TaintChainEntry]] = {}

        def taint_var(var_name: str, labels: Set[str], line: int, expr: str, action: str,
                      source_chain=None):
            if not labels:
                return
            existing = state.get(var_name, set())
            new_labels = existing | labels
            state[var_name] = new_labels
            step_num = 1
            if source_chain:
                step_num = len(source_chain) + 1
                chains[var_name] = source_chain + [
                    TaintChainEntry(step_num, line, expr, action, set(new_labels))
                ]
            else:
                chains[var_name] = [
                    TaintChainEntry(1, line, expr, action, set(new_labels))
                ]

        for stmt in statements:
            self._process_statement(stmt, state, chains, flows, ctx, taint_var)

        return flows

    def _collect_nopriv_hooks(self, root) -> Set[str]:
        """Find all callbacks registered via wp_ajax_nopriv_ hooks."""
        nopriv: Set[str] = set()
        for call_node in collect_nodes_of_type(root, "function_call_expression"):
            _, fname = get_function_name_from_call(call_node)
            if fname != "add_action":
                continue
            args_node = call_node.child_by_field_name("arguments")
            if args_node is None:
                continue
            args = [a for a in args_node.named_children if a.type == "argument"]
            if len(args) < 2:
                continue
            hook_node = args[0].named_children[0] if args[0].named_children else args[0]
            hook_text = node_text(hook_node).strip("\"'")
            if "wp_ajax_nopriv_" in hook_text:
                cb_node = args[1].named_children[0] if args[1].named_children else args[1]
                cb_text = node_text(cb_node).strip("\"'")
                # Could be "array($this, 'method')" — just extract text names
                nopriv.add(cb_text)
        return nopriv

    def _build_function_context(self, func_node, root, nopriv_callbacks: Set[str]) -> FunctionContext:
        name_node = func_node.child_by_field_name("name")
        func_name = node_text(name_node) if name_node else "<anonymous>"

        # Find enclosing class
        class_name: Optional[str] = None
        parent = func_node.parent
        while parent is not None:
            if parent.type == "class_declaration":
                cn = parent.child_by_field_name("name")
                if cn:
                    class_name = node_text(cn)
                break
            parent = parent.parent

        hook_type = None
        if func_name in nopriv_callbacks:
            hook_type = "nopriv"

        ctx = FunctionContext(func_name, class_name, self.file_path, func_node, hook_type)

        # Scan for auth/nonce in body
        body_node = func_node.child_by_field_name("body")
        if body_node is None:
            # method_declaration uses "body" too, but let's fallback
            for ch in func_node.named_children:
                if ch.type == "compound_statement":
                    body_node = ch
                    break
        if body_node is not None:
            ctx.scan_for_auth_nonce(body_node)

        return ctx

    def _analyze_function(self, func_node, ctx: FunctionContext, content: bytes) -> List[TaintFlow]:
        """Run taint analysis on a single function body. Returns found flows."""
        body_node = func_node.child_by_field_name("body")
        if body_node is None:
            for ch in func_node.named_children:
                if ch.type == "compound_statement":
                    body_node = ch
                    break
        if body_node is None:
            return []

        state: TaintState = {}
        flows: List[TaintFlow] = []

        # Track the chain for each tainted variable:
        #   chains[var_name] = list of TaintChainEntry
        chains: Dict[str, List[TaintChainEntry]] = {}

        def taint_var(var_name: str, labels: Set[str], line: int, expr: str, action: str,
                      source_chain: Optional[List[TaintChainEntry]] = None):
            """Mark a variable as tainted and record the chain entry."""
            if not labels:
                return
            existing = state.get(var_name, set())
            new_labels = existing | labels
            state[var_name] = new_labels

            # Build chain: if derived from another tainted var, inherit that chain
            step_num = 1
            if source_chain:
                step_num = len(source_chain) + 1
                chains[var_name] = source_chain + [
                    TaintChainEntry(step_num, line, expr, action, set(new_labels))
                ]
            else:
                chains[var_name] = [
                    TaintChainEntry(1, line, expr, action, set(new_labels))
                ]

        def check_sink_for_node(sink_node, arg_node, line: int, sink_expr: str) -> Optional[TaintFlow]:
            """Check if arg_node is tainted in a way that triggers a sink."""
            # Determine which labels flow into this argument
            label_set = taint_labels_from_expr(arg_node, state, self.sources, self.sanitizers)
            if not label_set:
                return None

            # What sink is this?
            obj_prefix, func_name = get_function_name_from_call(sink_node)
            composite = f"{obj_prefix}->{func_name}" if obj_prefix else func_name

            sink_spec = self._sink_index.get(composite) or self._sink_index.get(func_name or "")
            if sink_spec is None:
                return None

            required_label = sink_spec["label"]
            if required_label not in label_set:
                return None

            # Find best chain for this argument
            best_chain: Optional[List[TaintChainEntry]] = None
            best_source_line = 999999
            source_expr = node_text(arg_node)

            # Try to trace through variable names in the argument
            for var_name, var_labels in state.items():
                if required_label in var_labels and var_name in node_text(arg_node):
                    candidate_chain = chains.get(var_name, [])
                    if candidate_chain:
                        first_line = candidate_chain[0].line
                        if first_line < best_source_line:
                            best_source_line = first_line
                            best_chain = candidate_chain
                            source_expr = candidate_chain[0].expression

            if best_chain is None:
                # Couldn't trace chain — still report with minimal chain
                best_chain = []

            # Add sink as final chain step
            sink_step = TaintChainEntry(
                step=len(best_chain) + 1,
                line=line,
                expression=sink_expr,
                action="sink_reached",
                labels=label_set,
            )
            full_chain = best_chain + [sink_step]

            vuln_class = sink_spec["vuln"]
            severity, confidence = self._classify_severity(sink_spec["severity_base"], ctx)

            flow = TaintFlow(
                plugin=self.plugin_slug,
                vuln_class=vuln_class,
                source_expr=source_expr,
                source_file=self.file_path,
                source_line=best_source_line if best_chain else line,
                sink_expr=sink_expr,
                sink_file=self.file_path,
                sink_line=line,
                chain=full_chain,
                missing_sanitizer=self._missing_sanitizer_hint(vuln_class),
                auth_required=ctx.auth_required,
                nonce_verified=ctx.nonce_verified,
                severity=severity,
                confidence=confidence,
                flow_id=self._next_flow_id(vuln_class),
            )
            return flow

        # Walk the function body in statement order
        self._walk_statements(body_node, state, chains, flows, ctx, taint_var)
        return flows

    def _walk_statements(self, node, state: TaintState, chains: Dict,
                         flows: List[TaintFlow], ctx: FunctionContext, taint_var_fn):
        """Recursively walk statement nodes, maintaining taint state."""
        children = node.children
        for child in children:
            self._process_statement(child, state, chains, flows, ctx, taint_var_fn)

    def _process_statement(self, node, state: TaintState, chains: Dict,
                            flows: List[TaintFlow], ctx: FunctionContext, taint_var_fn):
        """Process a single statement or expression."""
        ntype = node.type

        # ----- Assignment: $x = <expr> -----
        if ntype == "assignment_expression":
            lhs = node.child_by_field_name("left")
            rhs = node.child_by_field_name("right")
            if lhs is None or rhs is None:
                named = node.named_children
                if len(named) >= 2:
                    lhs = named[0]
                    rhs = named[-1]
            if lhs is not None and rhs is not None:
                self._handle_assignment(lhs, rhs, node, state, chains, flows, ctx, taint_var_fn)
            return

        # ----- expression_statement wraps a single expression -----
        if ntype == "expression_statement":
            for child in node.named_children:
                self._process_statement(child, state, chains, flows, ctx, taint_var_fn)
            return

        # ----- Echo statement: echo $var -----
        if ntype == "echo_statement":
            line = node_line(node)
            expr_text = node_text(node)
            # Check each echoed value
            for child in node.named_children:
                if child.type in (";",):
                    continue
                labels = taint_labels_from_expr(child, state, self.sources, self.sanitizers)
                if TaintLabel.XSS in labels:
                    # Find chain
                    best_chain = self._best_chain_for_labels(child, state, chains, {TaintLabel.XSS})
                    sink_entry = TaintChainEntry(
                        step=len(best_chain) + 1,
                        line=line,
                        expression=expr_text.strip(),
                        action="sink_reached",
                        labels=labels,
                    )
                    full_chain = best_chain + [sink_entry]
                    source_expr, source_line = self._chain_source(best_chain, expr_text, line)

                    severity, confidence = self._classify_severity("high", ctx)
                    flow = TaintFlow(
                        plugin=self.plugin_slug,
                        vuln_class="xss",
                        source_expr=source_expr,
                        source_file=self.file_path,
                        source_line=source_line,
                        sink_expr=expr_text.strip(),
                        sink_file=self.file_path,
                        sink_line=line,
                        chain=full_chain,
                        missing_sanitizer=self._missing_sanitizer_hint("xss"),
                        auth_required=ctx.auth_required,
                        nonce_verified=ctx.nonce_verified,
                        severity=severity,
                        confidence=confidence,
                        flow_id=self._next_flow_id("xss"),
                    )
                    flows.append(flow)
            return

        # ----- Function/member call (standalone, not assignment) -----
        if ntype in ("function_call_expression", "member_call_expression"):
            line = node_line(node)
            expr_text = node_text(node)
            obj_prefix, func_name = get_function_name_from_call(node)
            composite = f"{obj_prefix}->{func_name}" if obj_prefix else func_name

            sink_spec = self._sink_index.get(composite) or self._sink_index.get(func_name or "")

            if sink_spec is not None:
                # Check arguments for taint
                args = get_sink_args(node)
                for arg_node in args:
                    labels = taint_labels_from_expr(arg_node, state, self.sources, self.sanitizers)
                    required = sink_spec["label"]
                    if required in labels:
                        best_chain = self._best_chain_for_labels(arg_node, state, chains, {required})
                        sink_entry = TaintChainEntry(
                            step=len(best_chain) + 1,
                            line=line,
                            expression=expr_text,
                            action="sink_reached",
                            labels=labels,
                        )
                        full_chain = best_chain + [sink_entry]
                        source_expr, source_line = self._chain_source(best_chain, node_text(arg_node), line)

                        severity, confidence = self._classify_severity(sink_spec["severity_base"], ctx)
                        flow = TaintFlow(
                            plugin=self.plugin_slug,
                            vuln_class=sink_spec["vuln"],
                            source_expr=source_expr,
                            source_file=self.file_path,
                            source_line=source_line,
                            sink_expr=expr_text,
                            sink_file=self.file_path,
                            sink_line=line,
                            chain=full_chain,
                            missing_sanitizer=self._missing_sanitizer_hint(sink_spec["vuln"]),
                            auth_required=ctx.auth_required,
                            nonce_verified=ctx.nonce_verified,
                            severity=severity,
                            confidence=confidence,
                            flow_id=self._next_flow_id(sink_spec["vuln"]),
                        )
                        flows.append(flow)
                        break  # one finding per sink call
            return

        # ----- include/require: PATH sink -----
        if ntype in ("include_expression", "require_expression",
                     "include_once_expression", "require_once_expression"):
            line = node_line(node)
            expr_text = node_text(node)
            # The included expression
            inc_expr = node.named_children[0] if node.named_children else None
            if inc_expr:
                labels = taint_labels_from_expr(inc_expr, state, self.sources, self.sanitizers)
                if TaintLabel.PATH in labels:
                    best_chain = self._best_chain_for_labels(inc_expr, state, chains, {TaintLabel.PATH})
                    sink_entry = TaintChainEntry(
                        step=len(best_chain) + 1,
                        line=line,
                        expression=expr_text,
                        action="sink_reached",
                        labels=labels,
                    )
                    full_chain = best_chain + [sink_entry]
                    source_expr, source_line = self._chain_source(best_chain, node_text(inc_expr), line)
                    severity, confidence = self._classify_severity("critical", ctx)
                    flow = TaintFlow(
                        plugin=self.plugin_slug,
                        vuln_class="local_file_inclusion",
                        source_expr=source_expr,
                        source_file=self.file_path,
                        source_line=source_line,
                        sink_expr=expr_text,
                        sink_file=self.file_path,
                        sink_line=line,
                        chain=full_chain,
                        missing_sanitizer=self._missing_sanitizer_hint("local_file_inclusion"),
                        auth_required=ctx.auth_required,
                        nonce_verified=ctx.nonce_verified,
                        severity=severity,
                        confidence=confidence,
                        flow_id=self._next_flow_id("local_file_inclusion"),
                    )
                    flows.append(flow)
            return

        # ----- Control flow: if/while/for/foreach — walk children -----
        if ntype in ("if_statement", "while_statement", "for_statement",
                     "foreach_statement", "do_statement", "switch_statement",
                     "try_statement", "catch_clause", "finally_clause",
                     "compound_statement", "block"):
            for child in node.children:
                self._process_statement(child, state, chains, flows, ctx, taint_var_fn)
            return

        # ----- else/elseif branches -----
        if ntype in ("else_clause", "else_if_clause"):
            for child in node.children:
                self._process_statement(child, state, chains, flows, ctx, taint_var_fn)
            return

        # ----- Default: recurse named children -----
        for child in node.named_children:
            self._process_statement(child, state, chains, flows, ctx, taint_var_fn)

    def _handle_assignment(self, lhs, rhs, node, state: TaintState, chains: Dict,
                            flows: List[TaintFlow], ctx: FunctionContext, taint_var_fn):
        """Handle an assignment: compute RHS taint, propagate to LHS."""
        line = node_line(node)
        expr_text = node_text(node)

        labels = taint_labels_from_expr(rhs, state, self.sources, self.sanitizers)

        # Find the variable being assigned (LHS may be complex: $arr['key'] etc.)
        lhs_var = self._extract_lhs_var(lhs)

        if lhs_var:
            if labels:
                # Determine the chain source
                source_chain = self._best_chain_for_labels(rhs, state, chains, labels)
                action = "taint_source" if not source_chain else "taint_propagation"
                taint_var_fn(lhs_var, labels, line, expr_text, action, source_chain)
            else:
                # Clean assignment — remove taint from LHS
                state.pop(lhs_var, None)
                chains.pop(lhs_var, None)

        # Even on assignment, the RHS might be a direct sink call that was assigned:
        # $result = $wpdb->query($tainted)
        if rhs.type in ("function_call_expression", "member_call_expression"):
            obj_prefix, func_name = get_function_name_from_call(rhs)
            composite = f"{obj_prefix}->{func_name}" if obj_prefix else func_name
            sink_spec = self._sink_index.get(composite) or self._sink_index.get(func_name or "")
            if sink_spec is not None:
                args = get_sink_args(rhs)
                for arg_node in args:
                    arg_labels = taint_labels_from_expr(arg_node, state, self.sources, self.sanitizers)
                    required = sink_spec["label"]
                    if required in arg_labels:
                        best_chain = self._best_chain_for_labels(arg_node, state, chains, {required})
                        sink_entry = TaintChainEntry(
                            step=len(best_chain) + 1,
                            line=line,
                            expression=expr_text,
                            action="sink_reached",
                            labels=arg_labels,
                        )
                        full_chain = best_chain + [sink_entry]
                        source_expr, source_line = self._chain_source(best_chain, node_text(arg_node), line)
                        severity, confidence = self._classify_severity(sink_spec["severity_base"], ctx)
                        flow = TaintFlow(
                            plugin=self.plugin_slug,
                            vuln_class=sink_spec["vuln"],
                            source_expr=source_expr,
                            source_file=self.file_path,
                            source_line=source_line,
                            sink_expr=expr_text,
                            sink_file=self.file_path,
                            sink_line=line,
                            chain=full_chain,
                            missing_sanitizer=self._missing_sanitizer_hint(sink_spec["vuln"]),
                            auth_required=ctx.auth_required,
                            nonce_verified=ctx.nonce_verified,
                            severity=severity,
                            confidence=confidence,
                            flow_id=self._next_flow_id(sink_spec["vuln"]),
                        )
                        flows.append(flow)
                        break

    def _extract_lhs_var(self, lhs_node) -> Optional[str]:
        """Extract canonical variable name from LHS of assignment."""
        if lhs_node is None:
            return None
        if lhs_node.type == "variable_name":
            return node_text(lhs_node)
        # $arr['key'] = ... — taint the base array
        if lhs_node.type == "subscript_expression":
            obj = lhs_node.child_by_field_name("object")
            if obj is None and lhs_node.named_children:
                obj = lhs_node.named_children[0]
            return self._extract_lhs_var(obj)
        # $obj->prop = ...
        if lhs_node.type in ("member_access_expression", "nullsafe_member_access_expression"):
            obj = lhs_node.child_by_field_name("object")
            name = lhs_node.child_by_field_name("name")
            if obj and name:
                return f"{node_text(obj)}->{node_text(name)}"
        return node_text(lhs_node) or None

    def _best_chain_for_labels(self, expr_node, state: TaintState, chains: Dict,
                                required: Set[str]) -> List[TaintChainEntry]:
        """Find the best existing chain for the tainted expression."""
        expr_text = node_text(expr_node)
        # Try direct variable lookup
        for var_name, var_labels in state.items():
            if required & var_labels and var_name in expr_text:
                candidate = chains.get(var_name, [])
                if candidate:
                    return list(candidate)
        return []

    def _chain_source(self, chain: List[TaintChainEntry], fallback_expr: str,
                      fallback_line: int) -> Tuple[str, int]:
        if chain:
            return chain[0].expression, chain[0].line
        return fallback_expr, fallback_line


# ---------------------------------------------------------------------------
# Plugin-level orchestration
# ---------------------------------------------------------------------------

def load_sources_sinks(yaml_path: Optional[str]) -> Tuple[Dict, Dict, List[Dict]]:
    """Load sources/sinks from YAML, falling back to defaults."""
    if yaml_path is None or not os.path.exists(yaml_path):
        return dict(DEFAULT_SOURCES), dict(DEFAULT_SANITIZERS), list(DEFAULT_SINKS)

    try:
        with open(yaml_path, "r") as f:
            data = yaml.safe_load(f)
    except Exception as e:
        print(f"[WARN] Could not load {yaml_path}: {e}. Using defaults.")
        return dict(DEFAULT_SOURCES), dict(DEFAULT_SANITIZERS), list(DEFAULT_SINKS)

    sources = dict(DEFAULT_SOURCES)
    sanitizers = dict(DEFAULT_SANITIZERS)
    sinks = list(DEFAULT_SINKS)

    if isinstance(data, dict):
        # The YAML has nested categories: sources.superglobals: [list],
        # sources.wordpress_input_functions: [list], etc.
        if "sources" in data and isinstance(data["sources"], dict):
            for category, items in data["sources"].items():
                if isinstance(items, list):
                    for item in items:
                        name = item.split("#")[0].strip() if isinstance(item, str) else str(item)
                        if name and name not in sources:
                            sources[name] = TaintLabel.all_set()
        if "sanitizers" in data and isinstance(data["sanitizers"], dict):
            label_map = {
                "sql": {TaintLabel.SQL}, "xss": {TaintLabel.XSS},
                "command": {TaintLabel.CMD}, "file_path": {TaintLabel.PATH},
                "auth_checks": set(),
            }
            for category, items in data["sanitizers"].items():
                removes = label_map.get(category, set())
                if isinstance(items, list):
                    for item in items:
                        name = item.split("#")[0].strip() if isinstance(item, str) else str(item)
                        if name and name not in sanitizers:
                            sanitizers[name] = removes
        if "sinks" in data and isinstance(data["sinks"], dict):
            vuln_map = {
                "sql_injection": (TaintLabel.SQL, "sql_injection", "critical"),
                "code_execution": (TaintLabel.CMD, "rce", "critical"),
                "command_injection": (TaintLabel.CMD, "command_injection", "critical"),
                "file_operations": (TaintLabel.PATH, "file_inclusion", "high"),
                "xss_output": (TaintLabel.XSS, "xss", "high"),
                "deserialization": (TaintLabel.CMD, "object_injection", "critical"),
                "ssrf": (TaintLabel.URL, "ssrf", "high"),
                "redirect": (TaintLabel.URL, "open_redirect", "medium"),
                "variable_injection": (TaintLabel.CMD, "variable_injection", "high"),
            }
            for category, items in data["sinks"].items():
                label, vuln, sev = vuln_map.get(category, (TaintLabel.SQL, "unknown", "high"))
                if isinstance(items, list):
                    for item in items:
                        name = item.split("#")[0].strip() if isinstance(item, str) else str(item)
                        if name:
                            sinks.append({"func": name, "label": label, "vuln": vuln, "severity_base": sev})

    return sources, sanitizers, sinks


def collect_php_files(plugin_dir: str) -> List[str]:
    """Recursively collect all PHP files under plugin_dir."""
    php_files = []
    for root, dirs, files in os.walk(plugin_dir):
        # Skip common non-source directories
        dirs[:] = [d for d in dirs if d not in (".git", "node_modules", "vendor",
                                                   ".svn", "tests", "test", "spec",
                                                   "languages", "assets", "css", "js",
                                                   "images", "fonts", "scss")]
        for fname in files:
            if fname.endswith(".php"):
                php_files.append(os.path.join(root, fname))
    return php_files


def deduplicate_flows(flows: List[TaintFlow]) -> List[TaintFlow]:
    """Remove duplicate flows (same file+line for source and sink)."""
    seen = set()
    unique = []
    for flow in flows:
        key = (flow.vuln_class, flow.source_file, flow.source_line,
               flow.sink_file, flow.sink_line)
        if key not in seen:
            seen.add(key)
            unique.append(flow)
    return unique


def analyze_plugin(plugin_slug: str, plugin_dir: str, sources: Dict, sanitizers: Dict,
                   sinks: List[Dict], console=None) -> Tuple[List[TaintFlow], Dict]:
    """Analyze a single plugin directory. Returns (flows, summary)."""
    php_files = collect_php_files(plugin_dir)
    all_flows: List[TaintFlow] = []
    error_count = 0
    file_count = len(php_files)

    if console:
        console.print(f"  [dim]Analyzing {file_count} PHP files in [cyan]{plugin_slug}[/cyan]...[/dim]")

    for php_file in php_files:
        try:
            analyzer = IntraprocTaintAnalyzer(
                sources=sources,
                sanitizers=sanitizers,
                sinks=sinks,
                plugin_slug=plugin_slug,
                file_path=php_file,
            )
            file_flows = analyzer.analyze_file()
            all_flows.extend(file_flows)
        except Exception as e:
            error_count += 1
            if console:
                rel = os.path.relpath(php_file, plugin_dir)
                console.print(f"  [red]Error in {rel}: {e}[/red]")

    all_flows = deduplicate_flows(all_flows)

    # Renumber flow IDs to be sequential across plugin
    vuln_counters: Dict[str, int] = defaultdict(int)
    for flow in all_flows:
        abbrev = VULN_ABBREV.get(flow.vuln_class, flow.vuln_class[:4])
        key = f"{plugin_slug}-{abbrev}"
        vuln_counters[key] += 1
        flow.flow_id = f"{key}-{vuln_counters[key]:03d}"

    severity_counts: Dict[str, int] = defaultdict(int)
    vuln_type_counts: Dict[str, int] = defaultdict(int)
    for flow in all_flows:
        severity_counts[flow.severity] += 1
        vuln_type_counts[flow.vuln_class] += 1

    summary = {
        "plugin": plugin_slug,
        "php_files_analyzed": file_count,
        "parse_errors": error_count,
        "total_flows": len(all_flows),
        "by_severity": dict(severity_counts),
        "by_vulnerability_class": dict(vuln_type_counts),
        "flows": [f.to_dict() for f in all_flows],
    }

    return all_flows, summary


# ---------------------------------------------------------------------------
# CLI entry point
# ---------------------------------------------------------------------------

def parse_args():
    parser = argparse.ArgumentParser(
        description="Intraprocedural taint flow tracker for WordPress PHP security analysis.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Analyze all plugins in a directory
  python3 taint_tracer.py --input plugins/src/ --output results/ --sources-sinks wp_sources_sinks.yaml

  # Analyze a single plugin
  python3 taint_tracer.py --input plugins/src/ --output results/ --sources-sinks wp_sources_sinks.yaml --plugin woocommerce

  # Analyze without custom sources/sinks (uses defaults)
  python3 taint_tracer.py --input plugins/src/ --output results/
        """,
    )
    parser.add_argument("--input", required=True,
                        help="Path to plugins source directory (e.g., plugins/src/)")
    parser.add_argument("--output", required=True,
                        help="Path to output directory for JSON results")
    parser.add_argument("--sources-sinks", dest="sources_sinks", default=None,
                        help="Path to wp_sources_sinks.yaml (optional, uses built-in defaults if omitted)")
    parser.add_argument("--plugin", default=None,
                        help="Analyze only this plugin slug (optional, default: all plugins)")
    return parser.parse_args()


def main():
    args = parse_args()

    input_dir = Path(args.input).resolve()
    output_dir = Path(args.output).resolve()
    output_dir.mkdir(parents=True, exist_ok=True)

    if not input_dir.exists():
        print(f"[ERROR] Input directory does not exist: {input_dir}", file=sys.stderr)
        sys.exit(1)

    # Load sources/sinks
    sources, sanitizers, sinks = load_sources_sinks(args.sources_sinks)

    # Set up console
    console = Console() if RICH_AVAILABLE else None

    if console:
        console.print("[bold blue]WordPress PHP Taint Flow Analyzer[/bold blue]")
        console.print(f"  Input:  [green]{input_dir}[/green]")
        console.print(f"  Output: [green]{output_dir}[/green]")
        console.print(f"  Sources: {len(sources)}, Sanitizers: {len(sanitizers)}, Sinks: {len(sinks)}")
        console.print()
    else:
        print(f"WordPress PHP Taint Flow Analyzer")
        print(f"  Input:  {input_dir}")
        print(f"  Output: {output_dir}")

    # Determine plugins to analyze
    if args.plugin:
        plugin_dir = input_dir / args.plugin
        if not plugin_dir.exists():
            print(f"[ERROR] Plugin directory not found: {plugin_dir}", file=sys.stderr)
            sys.exit(1)
        plugins = [(args.plugin, str(plugin_dir))]
    else:
        # Each subdirectory of input_dir is a plugin
        plugins = []
        try:
            for entry in sorted(os.scandir(input_dir), key=lambda e: e.name):
                if entry.is_dir():
                    plugins.append((entry.name, entry.path))
        except PermissionError as e:
            print(f"[ERROR] Cannot scan input directory: {e}", file=sys.stderr)
            sys.exit(1)

        if not plugins:
            # Treat input_dir itself as the plugin
            plugin_slug = input_dir.name
            plugins = [(plugin_slug, str(input_dir))]

    if console:
        console.print(f"[bold]Analyzing {len(plugins)} plugin(s)...[/bold]\n")
    else:
        print(f"Analyzing {len(plugins)} plugin(s)...")

    # Run analysis
    all_high_confidence_flows: List[TaintFlow] = []
    all_summaries = []
    total_flows = 0

    if RICH_AVAILABLE and console:
        with Progress(
            SpinnerColumn(),
            TextColumn("[progress.description]{task.description}"),
            BarColumn(),
            TaskProgressColumn(),
            console=console,
        ) as progress:
            task = progress.add_task("Analyzing plugins...", total=len(plugins))
            for plugin_slug, plugin_dir in plugins:
                progress.update(task, description=f"[cyan]{plugin_slug}[/cyan]")
                try:
                    flows, summary = analyze_plugin(
                        plugin_slug, plugin_dir, sources, sanitizers, sinks, console=None
                    )
                    all_high_confidence_flows.extend(
                        f for f in flows
                        if f.confidence in ("high",) and f.severity in ("critical", "high")
                    )
                    all_summaries.append(summary)
                    total_flows += len(flows)

                    # Write per-plugin output
                    out_file = output_dir / f"{plugin_slug}_taint_flows.json"
                    with open(out_file, "w") as f:
                        json.dump(summary, f, indent=2)
                except Exception as e:
                    console.print(f"[red]FAILED {plugin_slug}: {e}[/red]")
                    traceback.print_exc()
                finally:
                    progress.advance(task)
    else:
        for i, (plugin_slug, plugin_dir) in enumerate(plugins, 1):
            print(f"[{i}/{len(plugins)}] Analyzing {plugin_slug}...")
            try:
                flows, summary = analyze_plugin(
                    plugin_slug, plugin_dir, sources, sanitizers, sinks, console=None
                )
                all_high_confidence_flows.extend(
                    f for f in flows
                    if f.confidence in ("high",) and f.severity in ("critical", "high")
                )
                all_summaries.append(summary)
                total_flows += len(flows)

                out_file = output_dir / f"{plugin_slug}_taint_flows.json"
                with open(out_file, "w") as f:
                    json.dump(summary, f, indent=2)
                print(f"  -> {len(flows)} flows found")
            except Exception as e:
                print(f"FAILED {plugin_slug}: {e}")
                traceback.print_exc()

    # Write combined high-confidence flows
    all_flows_path = output_dir / "all_flows.json"
    combined = {
        "total_plugins": len(plugins),
        "total_flows_all": total_flows,
        "total_high_confidence": len(all_high_confidence_flows),
        "high_confidence_flows": [f.to_dict() for f in all_high_confidence_flows],
        "per_plugin_summaries": [
            {
                "plugin": s["plugin"],
                "total_flows": s["total_flows"],
                "by_severity": s["by_severity"],
                "by_vulnerability_class": s["by_vulnerability_class"],
            }
            for s in all_summaries
        ],
    }
    with open(all_flows_path, "w") as f:
        json.dump(combined, f, indent=2)

    # Print summary table
    if RICH_AVAILABLE and console:
        console.print()
        console.print("[bold green]Analysis Complete[/bold green]")

        table = Table(title="Plugin Analysis Summary")
        table.add_column("Plugin", style="cyan", no_wrap=True)
        table.add_column("Files", justify="right")
        table.add_column("Flows", justify="right")
        table.add_column("Critical", justify="right", style="red")
        table.add_column("High", justify="right", style="yellow")
        table.add_column("Medium", justify="right", style="blue")
        table.add_column("Low", justify="right", style="dim")

        for s in all_summaries:
            bysev = s.get("by_severity", {})
            table.add_row(
                s["plugin"],
                str(s["php_files_analyzed"]),
                str(s["total_flows"]),
                str(bysev.get("critical", 0)),
                str(bysev.get("high", 0)),
                str(bysev.get("medium", 0)),
                str(bysev.get("low", 0)),
            )

        console.print(table)
        console.print(f"\n[bold]Total flows:[/bold] {total_flows}")
        console.print(f"[bold]High-confidence critical/high flows:[/bold] {len(all_high_confidence_flows)}")
        console.print(f"\nResults written to: [green]{output_dir}[/green]")
        console.print(f"Combined flows: [green]{all_flows_path}[/green]")
    else:
        print(f"\nAnalysis Complete")
        print(f"Total flows: {total_flows}")
        print(f"High-confidence critical/high flows: {len(all_high_confidence_flows)}")
        print(f"Results written to: {output_dir}")
        print(f"Combined flows: {all_flows_path}")


if __name__ == "__main__":
    main()
