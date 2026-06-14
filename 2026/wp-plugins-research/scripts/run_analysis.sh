#!/usr/bin/env bash
set -euo pipefail

# ---------------------------------------------------------------------------
# run_analysis.sh
# Runs the full analysis pipeline in order:
#   1. enumerate_surface.sh   - Phase 1: attack surface mapping
#   2. source_sink_mapper.py  - Phase 2: source/sink identification
#   3. taint_tracer.py        - Phase 3: taint flow analysis
#   4. semgrep scans          - Phase 4: static analysis (custom + builtin rules)
# Usage: bash scripts/run_analysis.sh
# ---------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

VENV="${REPO_ROOT}/.venv"
SRC_DIR="${REPO_ROOT}/plugins/src"
TOOLS_DIR="${REPO_ROOT}/tools"
ANALYSIS_DIR="${REPO_ROOT}/analysis"

# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

log() {
    local level="$1"; shift
    echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ") [${level}] $*"
}

die() {
    log "ERROR" "$*"
    exit 1
}

step() {
    local num="$1"; shift
    echo ""
    echo "======================================================================"
    echo "  STEP ${num}: $*"
    echo "======================================================================"
    echo ""
}

require_venv() {
    if [[ ! -f "${VENV}/bin/activate" ]]; then
        die "Python venv not found at ${VENV}. Run 'make setup' first."
    fi
    # shellcheck source=/dev/null
    source "${VENV}/bin/activate"
    log "INFO" "Activated venv: ${VENV}"
}

require_plugins() {
    if [[ ! -d "${SRC_DIR}" ]] || [[ -z "$(ls -A "${SRC_DIR}" 2>/dev/null)" ]]; then
        die "No plugins found in ${SRC_DIR}. Run 'make download && make extract' first."
    fi
}

# ---------------------------------------------------------------------------
# preflight
# ---------------------------------------------------------------------------

log "INFO" "Starting full analysis pipeline"
log "INFO" "Repository root: ${REPO_ROOT}"

require_plugins

plugin_count="$(find "${SRC_DIR}" -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')"
log "INFO" "Found ${plugin_count} plugin(s) in ${SRC_DIR}"

# Create output directories
mkdir -p \
    "${ANALYSIS_DIR}/phase1_surface" \
    "${ANALYSIS_DIR}/phase2_sources_sinks" \
    "${ANALYSIS_DIR}/phase3_taint_flows" \
    "${ANALYSIS_DIR}/phase4_semgrep"

# ---------------------------------------------------------------------------
# Step 1: Attack surface enumeration
# ---------------------------------------------------------------------------

step 1 "Attack Surface Enumeration (enumerate_surface.sh)"

bash "${SCRIPT_DIR}/enumerate_surface.sh" \
    || die "enumerate_surface.sh failed (exit $?)"

log "INFO" "Step 1 complete."

# ---------------------------------------------------------------------------
# Step 2: Source/sink mapping
# ---------------------------------------------------------------------------

step 2 "Source/Sink Mapping (source_sink_mapper.py)"

require_venv

if [[ ! -f "${TOOLS_DIR}/source_sink_mapper.py" ]]; then
    die "source_sink_mapper.py not found at ${TOOLS_DIR}/source_sink_mapper.py"
fi

python3 "${TOOLS_DIR}/source_sink_mapper.py" \
    --input "${SRC_DIR}/" \
    --output "${ANALYSIS_DIR}/phase2_sources_sinks/" \
    || die "source_sink_mapper.py failed (exit $?)"

log "INFO" "Step 2 complete."

# ---------------------------------------------------------------------------
# Step 3: Taint flow analysis
# ---------------------------------------------------------------------------

step 3 "Taint Flow Analysis (taint_tracer.py)"

if [[ ! -f "${TOOLS_DIR}/taint_tracer.py" ]]; then
    die "taint_tracer.py not found at ${TOOLS_DIR}/taint_tracer.py"
fi

SOURCES_SINKS="${TOOLS_DIR}/wp_sources_sinks.yaml"
if [[ ! -f "${SOURCES_SINKS}" ]]; then
    die "Sources/sinks config not found at ${SOURCES_SINKS}"
fi

python3 "${TOOLS_DIR}/taint_tracer.py" \
    --input "${SRC_DIR}/" \
    --sources-sinks "${SOURCES_SINKS}" \
    --output "${ANALYSIS_DIR}/phase3_taint_flows/" \
    || die "taint_tracer.py failed (exit $?)"

log "INFO" "Step 3 complete."

# ---------------------------------------------------------------------------
# Step 4a: Semgrep — custom rules
# ---------------------------------------------------------------------------

step 4 "Semgrep Static Analysis — Custom Rules"

if ! command -v semgrep &>/dev/null; then
    die "semgrep not found in PATH. Run 'make setup' first."
fi

if [[ ! -d "${TOOLS_DIR}/wp_audit_rules" ]]; then
    die "Custom semgrep rules not found at ${TOOLS_DIR}/wp_audit_rules/"
fi

semgrep \
    --config "${TOOLS_DIR}/wp_audit_rules/" \
    "${SRC_DIR}" \
    --json \
    --output "${ANALYSIS_DIR}/phase4_semgrep/results.json" \
    --exclude='*/vendor/*' \
    --exclude='*/node_modules/*' \
    --exclude='*/tests/*' \
    --exclude='*/test/*' \
    --timeout 300 \
    || die "semgrep (custom rules) failed (exit $?)"

log "INFO" "Custom semgrep scan complete. Output: ${ANALYSIS_DIR}/phase4_semgrep/results.json"

# ---------------------------------------------------------------------------
# Step 4b: Semgrep — builtin php-security-audit ruleset
# ---------------------------------------------------------------------------

step "4b" "Semgrep Static Analysis — Builtin php-security-audit Ruleset"

semgrep \
    --config "p/php-security-audit" \
    "${SRC_DIR}" \
    --json \
    --output "${ANALYSIS_DIR}/phase4_semgrep/builtin_results.json" \
    --exclude='*/vendor/*' \
    --exclude='*/node_modules/*' \
    --exclude='*/tests/*' \
    --exclude='*/test/*' \
    --timeout 300 \
    || die "semgrep (builtin rules) failed (exit $?)"

log "INFO" "Builtin semgrep scan complete. Output: ${ANALYSIS_DIR}/phase4_semgrep/builtin_results.json"

# ---------------------------------------------------------------------------
# done
# ---------------------------------------------------------------------------

echo ""
echo "======================================================================"
log "INFO" "Full analysis pipeline complete."
log "INFO" "Results:"
log "INFO" "  Phase 1 (surface):       ${ANALYSIS_DIR}/phase1_surface/"
log "INFO" "  Phase 2 (sources/sinks): ${ANALYSIS_DIR}/phase2_sources_sinks/"
log "INFO" "  Phase 3 (taint flows):   ${ANALYSIS_DIR}/phase3_taint_flows/"
log "INFO" "  Phase 4 (semgrep):       ${ANALYSIS_DIR}/phase4_semgrep/"
echo "======================================================================"
