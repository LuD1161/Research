#!/usr/bin/env bash
set -euo pipefail

# ---------------------------------------------------------------------------
# enumerate_surface.sh
# Maps the complete attack surface per WordPress plugin.
# For each plugin directory in plugins/src/ it generates a markdown report
# at analysis/phase1_surface/{slug}_surface.md.
# Usage: bash scripts/enumerate_surface.sh
# ---------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

SRC_DIR="${REPO_ROOT}/plugins/src"
OUT_DIR="${REPO_ROOT}/analysis/phase1_surface"

mkdir -p "${OUT_DIR}"

# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

log() {
    local level="$1"; shift
    echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ") [${level}] $*"
}

# Run ripgrep across PHP files; return matching lines or "None found"
rg_lines() {
    local pattern="$1"
    local dir="$2"
    local results
    results="$(rg --include='*.php' -n --no-heading -e "${pattern}" "${dir}" 2>/dev/null || true)"
    if [[ -z "${results}" ]]; then
        echo "None found"
    else
        echo "${results}"
    fi
}

# Run ripgrep with --count (-c); return total match count or "0"
rg_count() {
    local pattern="$1"
    local dir="$2"
    local total=0
    local output
    output="$(rg --include='*.php' -c -e "${pattern}" "${dir}" 2>/dev/null || true)"
    if [[ -n "${output}" ]]; then
        while IFS= read -r line; do
            # Each line is "filepath:count"
            count="${line##*:}"
            total=$(( total + count ))
        done <<< "${output}"
    fi
    echo "${total}"
}

# Run ripgrep, limit output to N lines; return matches or "None found"
rg_lines_limited() {
    local pattern="$1"
    local dir="$2"
    local limit="$3"
    local results
    results="$(rg --include='*.php' -n --no-heading -e "${pattern}" "${dir}" 2>/dev/null | head -n "${limit}" || true)"
    if [[ -z "${results}" ]]; then
        echo "None found"
    else
        echo "${results}"
    fi
}

# ---------------------------------------------------------------------------
# main loop
# ---------------------------------------------------------------------------

if [[ ! -d "${SRC_DIR}" ]]; then
    log "ERROR" "Plugin source directory not found: ${SRC_DIR}"
    log "ERROR" "Run 'make download && make extract' first."
    exit 1
fi

plugin_count=0
for plugin_dir in "${SRC_DIR}"/*/; do
    [[ -d "${plugin_dir}" ]] || continue
    slug="$(basename "${plugin_dir}")"
    out_file="${OUT_DIR}/${slug}_surface.md"
    plugin_count=$(( plugin_count + 1 ))

    log "INFO" "Processing plugin: ${slug}"

    timestamp="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

    {
        echo "# Attack Surface: ${slug}"
        echo ""
        echo "> Generated: ${timestamp}"
        echo ""

        # ------------------------------------------------------------------
        # Section 1: Entry Points
        # ------------------------------------------------------------------
        echo "## Section 1: Entry Points"
        echo ""

        echo "### WordPress AJAX Handlers (authenticated)"
        echo '```'
        rg_lines 'add_action.*wp_ajax_[^n]' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### WordPress AJAX Handlers (unauthenticated)"
        echo '```'
        rg_lines 'add_action.*wp_ajax_nopriv_' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### REST API Routes"
        echo '```'
        rg_lines 'register_rest_route' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### Admin Pages / Menu Items"
        echo '```'
        rg_lines 'add_menu_page|add_submenu_page|add_options_page|add_management_page' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### Shortcodes"
        echo '```'
        rg_lines 'add_shortcode' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### Cron Jobs"
        echo '```'
        rg_lines 'wp_schedule_event|wp_schedule_single_event' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### File Upload Handlers"
        echo '```'
        rg_lines 'wp_handle_upload|move_uploaded_file|wp_upload_dir' "${plugin_dir}"
        echo '```'
        echo ""

        # ------------------------------------------------------------------
        # Section 2: Authentication & Authorization
        # ------------------------------------------------------------------
        echo "## Section 2: Authentication & Authorization"
        echo ""

        cap_count="$(rg_count 'current_user_can' "${plugin_dir}")"
        echo "### Capability Checks"
        echo "- \`current_user_can\` calls: **${cap_count}**"
        echo ""

        nonce_count="$(rg_count 'wp_verify_nonce|check_ajax_referer|check_admin_referer' "${plugin_dir}")"
        echo "### Nonce Verifications"
        echo "- \`wp_verify_nonce\` / \`check_ajax_referer\` / \`check_admin_referer\` calls: **${nonce_count}**"
        echo ""

        # ------------------------------------------------------------------
        # Section 3: Dangerous Operations
        # ------------------------------------------------------------------
        echo "## Section 3: Dangerous Operations"
        echo ""

        db_raw_count="$(rg_count '\$wpdb->(query|get_var|get_row|get_col|get_results)' "${plugin_dir}")"
        echo "### Direct Database Queries"
        echo "- \`\$wpdb->(query|get_var|get_row|get_col|get_results)\` calls: **${db_raw_count}**"
        echo ""

        db_prepare_count="$(rg_count '\$wpdb->prepare' "${plugin_dir}")"
        echo "### Database Queries Using prepare()"
        echo "- \`\$wpdb->prepare\` calls: **${db_prepare_count}**"
        echo ""

        echo "### External HTTP Requests"
        echo '```'
        rg_lines 'wp_remote_get|wp_remote_post|wp_safe_remote|curl_exec|file_get_contents.*http' "${plugin_dir}"
        echo '```'
        echo ""

        echo "### File System Operations (first 30 matches)"
        echo '```'
        rg_lines_limited 'file_put_contents|fwrite|move_uploaded_file|unlink|rmdir|mkdir' "${plugin_dir}" 30
        echo '```'
        echo ""

    } > "${out_file}"

    log "INFO" "  -> Written: ${out_file}"
done

if [[ "${plugin_count}" -eq 0 ]]; then
    log "WARN" "No plugin directories found in ${SRC_DIR}"
    log "WARN" "Run 'make download && make extract' to populate plugins/src/"
else
    log "INFO" "Surface enumeration complete. Processed ${plugin_count} plugin(s)."
    log "INFO" "Reports written to: ${OUT_DIR}"
fi
