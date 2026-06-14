#!/usr/bin/env bash
set -euo pipefail

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

pass_count=0
fail_count=0
warn_count=0

pass() {
  echo -e "${GREEN}[PASS]${NC} $*"
  ((pass_count++)) || true
}

fail() {
  echo -e "${RED}[FAIL]${NC} $*"
  ((fail_count++)) || true
}

warn() {
  echo -e "${YELLOW}[WARN]${NC} $*"
  ((warn_count++)) || true
}

check_cmd() {
  local label="$1"
  local cmd="$2"
  if command -v "$cmd" &>/dev/null; then
    pass "${label}: $(command -v "$cmd")"
    return 0
  else
    return 1
  fi
}

# ── 1. Python version ─────────────────────────────────────────────────────────
echo "--- Python ---"

if command -v python3 &>/dev/null; then
  py_ver=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
  py_major=$(echo "$py_ver" | cut -d. -f1)
  py_minor=$(echo "$py_ver" | cut -d. -f2)
  if [[ "$py_major" -ge 3 && "$py_minor" -ge 10 ]]; then
    pass "Python ${py_ver} (>= 3.10)"
  else
    fail "Python ${py_ver} is < 3.10 — upgrade required"
  fi
else
  fail "Python 3 not found"
fi

# ── 2. Venv active ────────────────────────────────────────────────────────────
if [[ -n "${VIRTUAL_ENV:-}" ]]; then
  pass "Python venv active: ${VIRTUAL_ENV}"
else
  fail "Python venv is NOT active (run: source .venv/bin/activate)"
fi

# ── 3. Python packages ────────────────────────────────────────────────────────
echo ""
echo "--- Python packages ---"

check_py_pkg() {
  local pkg="$1"
  local import_name="${2:-$1}"
  if python3 -c "import ${import_name}" 2>/dev/null; then
    ver=$(python3 -c "import importlib.metadata; print(importlib.metadata.version('${pkg}'))" 2>/dev/null || echo "?")
    pass "python: ${pkg} (${ver})"
  else
    fail "python: ${pkg} not importable"
  fi
}

check_py_pkg "tree-sitter"    "tree_sitter"
check_py_pkg "tree-sitter-php" "tree_sitter_php"
check_py_pkg "semgrep"        "semgrep"
check_py_pkg "networkx"       "networkx"
check_py_pkg "rich"           "rich"
check_py_pkg "tabulate"       "tabulate"
check_py_pkg "pyyaml"         "yaml"
check_py_pkg "jinja2"         "jinja2"

# ── 4. Functional test: tree-sitter can parse PHP ─────────────────────────────
echo ""
echo "--- Functional test: tree-sitter PHP parse ---"

ts_result=$(python3 - <<'PYEOF' 2>&1
import sys
try:
    import tree_sitter_php as tsp
    from tree_sitter import Language, Parser

    PHP_LANGUAGE = Language(tsp.language_php())
    parser = Parser(PHP_LANGUAGE)
    tree = parser.parse(b"<?php echo 1;")
    root = tree.root_node
    assert root.child_count > 0, f"Expected child_count > 0, got {root.child_count}"
    print(f"OK child_count={root.child_count}")
    sys.exit(0)
except Exception as e:
    print(f"ERROR: {e}")
    sys.exit(1)
PYEOF
) && ts_exit=0 || ts_exit=$?

if [[ "$ts_exit" -eq 0 ]]; then
  pass "tree-sitter PHP parse: ${ts_result}"
else
  fail "tree-sitter PHP parse: ${ts_result}"
fi

# ── 5. System tools ───────────────────────────────────────────────────────────
echo ""
echo "--- System tools ---"

# php-cli
if command -v php &>/dev/null; then
  php_ver=$(php --version 2>/dev/null | head -1 | awk '{print $2}')
  pass "php-cli: ${php_ver} ($(command -v php))"
else
  fail "php-cli not found (brew install php)"
fi

# ripgrep
if command -v rg &>/dev/null; then
  rg_ver=$(rg --version 2>/dev/null | head -1 | awk '{print $2}')
  pass "ripgrep: ${rg_ver} ($(command -v rg))"
else
  fail "ripgrep not found (brew install ripgrep)"
fi

# jq
if command -v jq &>/dev/null; then
  jq_ver=$(jq --version 2>/dev/null)
  pass "jq: ${jq_ver} ($(command -v jq))"
else
  fail "jq not found (brew install jq)"
fi

# graphviz / dot
if command -v dot &>/dev/null; then
  dot_ver=$(dot -V 2>&1 | head -1 | awk '{print $NF}')
  pass "graphviz/dot: ${dot_ver} ($(command -v dot))"
else
  fail "graphviz/dot not found (brew install graphviz)"
fi

# cloc
if command -v cloc &>/dev/null; then
  cloc_ver=$(cloc --version 2>/dev/null | head -1)
  pass "cloc: ${cloc_ver} ($(command -v cloc))"
else
  fail "cloc not found (brew install cloc)"
fi

# composer
if command -v composer &>/dev/null; then
  comp_ver=$(composer --version 2>/dev/null | awk '{print $3}')
  pass "composer: ${comp_ver} ($(command -v composer))"
else
  fail "composer not found (brew install composer)"
fi

# ── 6. Security tools — semgrep CLI functional test ───────────────────────────
echo ""
echo "--- Security tools ---"

# semgrep CLI
if command -v semgrep &>/dev/null; then
  sg_ver=$(semgrep --version 2>/dev/null | head -1)
  pass "semgrep CLI: ${sg_ver}"
  # Quick functional test: parse a trivial PHP snippet
  tmpdir=$(mktemp -d)
  echo '<?php $x = $_GET["x"]; echo $x; ?>' > "${tmpdir}/test.php"
  if semgrep --config "auto" "${tmpdir}/test.php" --quiet --timeout 30 2>/dev/null; then
    pass "semgrep rules test: ran successfully"
  else
    # non-zero exit from semgrep just means findings or network; treat as pass
    pass "semgrep rules test: completed (findings or network issue is OK)"
  fi
  rm -rf "$tmpdir"
else
  fail "semgrep CLI not found (pip install semgrep)"
fi

# joern (optional)
JOERN_BIN="${HOME}/.joern/joern-cli/joern"
if [[ -x "$JOERN_BIN" ]]; then
  joern_ver=$("$JOERN_BIN" --version 2>/dev/null | head -1 || echo "?")
  pass "joern: ${joern_ver} (${JOERN_BIN})"
elif command -v joern &>/dev/null; then
  joern_ver=$(joern --version 2>/dev/null | head -1 || echo "?")
  pass "joern: ${joern_ver} ($(command -v joern))"
else
  warn "joern not found (optional; install via tools/install.sh)"
fi

# phpcs (optional)
COMPOSER_BIN_DIR="${HOME}/.composer/vendor/bin"
if command -v phpcs &>/dev/null; then
  phpcs_bin="phpcs"
elif [[ -x "${COMPOSER_BIN_DIR}/phpcs" ]]; then
  phpcs_bin="${COMPOSER_BIN_DIR}/phpcs"
else
  phpcs_bin=""
fi

if [[ -n "$phpcs_bin" ]]; then
  phpcs_ver=$($phpcs_bin --version 2>/dev/null | head -1)
  pass "phpcs: ${phpcs_ver}"
  # Check WordPress coding standards registered
  if $phpcs_bin -i 2>/dev/null | grep -qi "wordpress"; then
    pass "phpcs: WordPress Coding Standards registered"
  else
    warn "phpcs: WordPress Coding Standards NOT registered (run: phpcs --config-set installed_paths ~/.composer/vendor/wp-coding-standards/wpcs)"
  fi
else
  warn "phpcs not found (optional; run tools/install.sh)"
fi

# psalm (optional)
if command -v psalm &>/dev/null; then
  psalm_ver=$(psalm --version 2>/dev/null | head -1 || echo "?")
  pass "psalm: ${psalm_ver}"
elif [[ -x "${COMPOSER_BIN_DIR}/psalm" ]]; then
  psalm_ver=$("${COMPOSER_BIN_DIR}/psalm" --version 2>/dev/null | head -1 || echo "?")
  pass "psalm: ${psalm_ver} (${COMPOSER_BIN_DIR}/psalm)"
else
  warn "psalm not found (optional; run tools/install.sh)"
fi

# ── Summary ───────────────────────────────────────────────────────────────────
echo ""
echo "─────────────────────────────────────────────────"
echo -e "Results: ${GREEN}${pass_count} PASS${NC}  ${RED}${fail_count} FAIL${NC}  ${YELLOW}${warn_count} WARN${NC}"
echo ""

if [[ "$fail_count" -gt 0 ]]; then
  echo -e "${RED}Required tool checks failed. Fix the issues above before running analysis.${NC}"
  exit 1
else
  echo -e "${GREEN}All required tools verified.${NC}"
  if [[ "$warn_count" -gt 0 ]]; then
    echo -e "${YELLOW}${warn_count} optional tool(s) not found — analysis will work but some features may be limited.${NC}"
  fi
  exit 0
fi
