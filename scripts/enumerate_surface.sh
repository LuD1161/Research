#!/usr/bin/env bash
set -uo pipefail

# ---------------------------------------------------------------------------
# enumerate_surface.sh  (FIXED + EXPANDED)
# Maps the complete attack surface per WordPress plugin.
#
# Fixes vs. original:
#   * `--include` is a grep flag that ripgrep REJECTS (exit 2). Every scan
#     silently errored and rendered as "None found" corpus-wide. Use `-g`.
#   * Errors are no longer swallowed into "None found": a tool failure now
#     prints a loud "SCAN ERROR" sentinel so an empty surface can never be
#     mistaken for a safe one.
#   * Expanded entry-point taxonomy (admin-post, public REST, blocks, widgets,
#     settings/meta-box save, activation hooks, xmlrpc/heartbeat/raw-input,
#     unguarded direct-access files, deserialization).
# ---------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

SRC_DIR="${REPO_ROOT}/plugins/src"
OUT_DIR="${REPO_ROOT}/analysis/phase1_surface"
PHP_GLOB="*.php"

mkdir -p "${OUT_DIR}"

log() { local level="$1"; shift; echo "$(date -u +"%Y-%m-%dT%H:%M:%SZ") [${level}] $*"; }

# ripgrep exit codes: 0 = match, 1 = no match, 2 = error. Distinguish them.
rg_lines() {
    local pattern="$1" dir="$2" results rc
    if results="$(rg -g "${PHP_GLOB}" -n --no-heading -e "${pattern}" "${dir}" 2>/dev/null)"; then rc=0; else rc=$?; fi
    if [[ "${rc}" -ge 2 ]]; then echo "⚠ SCAN ERROR (rg exit ${rc}) for: ${pattern}"; return; fi
    [[ -z "${results}" ]] && echo "None found" || echo "${results}"
}

rg_lines_limited() {
    local pattern="$1" dir="$2" limit="$3" results rc
    if results="$(rg -g "${PHP_GLOB}" -n --no-heading -e "${pattern}" "${dir}" 2>/dev/null)"; then rc=0; else rc=$?; fi
    if [[ "${rc}" -ge 2 ]]; then echo "⚠ SCAN ERROR (rg exit ${rc}) for: ${pattern}"; return; fi
    [[ -z "${results}" ]] && echo "None found" || echo "${results}" | head -n "${limit}"
}

rg_count() {
    local pattern="$1" dir="$2" total=0 output rc
    if output="$(rg -g "${PHP_GLOB}" -c -e "${pattern}" "${dir}" 2>/dev/null)"; then rc=0; else rc=$?; fi
    if [[ "${rc}" -ge 2 ]]; then echo "ERR"; return; fi
    if [[ -n "${output}" ]]; then
        while IFS= read -r line; do total=$(( total + ${line##*:} )); done <<< "${output}"
    fi
    echo "${total}"
}

rg_files_missing_guard() {
    local dir="$1" out
    out="$(rg -g "${PHP_GLOB}" --files-without-match -e "defined\(\s*['\"](ABSPATH|WPINC)" "${dir}" 2>/dev/null || true)"
    [[ -z "${out}" ]] && echo "None (all PHP files guarded)" || echo "${out}"
}

if [[ ! -d "${SRC_DIR}" ]]; then
    log "ERROR" "Plugin source directory not found: ${SRC_DIR}"; exit 1
fi

# Optional single-plugin arg: bash enumerate_surface.sh woocommerce
TARGET="${1:-}"

plugin_count=0
for plugin_dir in "${SRC_DIR}"/*/; do
    [[ -d "${plugin_dir}" ]] || continue
    slug="$(basename "${plugin_dir}")"
    [[ -n "${TARGET}" && "${slug}" != "${TARGET}" ]] && continue
    out_file="${OUT_DIR}/${slug}_surface.md"
    plugin_count=$(( plugin_count + 1 ))
    log "INFO" "Processing plugin: ${slug}"
    timestamp="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

    {
        echo "# Attack Surface: ${slug}"; echo ""; echo "> Generated: ${timestamp}"; echo ""
        echo "## Section 1: Entry Points"; echo ""

        echo "### WordPress AJAX Handlers (authenticated)"; echo '```'
        rg_lines 'add_action.*wp_ajax_[^n]' "${plugin_dir}"; echo '```'; echo ""

        echo "### WordPress AJAX Handlers (unauthenticated)"; echo '```'
        rg_lines 'add_action.*wp_ajax_nopriv_' "${plugin_dir}"; echo '```'; echo ""

        echo "### admin-post Handlers (authenticated)"; echo '```'
        rg_lines "add_action.*['\"]admin_post_[^n]" "${plugin_dir}"; echo '```'; echo ""

        echo "### admin-post Handlers (UNAUTHENTICATED)"; echo '```'
        rg_lines "add_action.*['\"]admin_post_nopriv_" "${plugin_dir}"; echo '```'; echo ""

        echo "### REST API Routes"; echo '```'
        rg_lines 'register_rest_route' "${plugin_dir}"; echo '```'; echo ""

        echo "### REST permission_callback => __return_true (public REST)"; echo '```'
        rg_lines "permission_callback.*__return_true" "${plugin_dir}"; echo '```'; echo ""

        echo "### Admin Pages / Menu Items"; echo '```'
        rg_lines 'add_menu_page|add_submenu_page|add_options_page|add_management_page' "${plugin_dir}"; echo '```'; echo ""

        echo "### Shortcodes"; echo '```'
        rg_lines 'add_shortcode' "${plugin_dir}"; echo '```'; echo ""

        echo "### Cron Jobs"; echo '```'
        rg_lines 'wp_schedule_event|wp_schedule_single_event' "${plugin_dir}"; echo '```'; echo ""

        echo "### File Upload Handlers"; echo '```'
        rg_lines 'wp_handle_upload|wp_handle_sideload|media_handle_upload|media_handle_sideload|move_uploaded_file' "${plugin_dir}"; echo '```'; echo ""

        echo "### Block render_callback (server-rendered blocks)"; echo '```'
        rg_lines 'register_block_type|render_callback' "${plugin_dir}"; echo '```'; echo ""

        echo "### Settings API / Meta Box save handlers"; echo '```'
        rg_lines "register_setting|add_meta_box|add_action.*['\"]save_post" "${plugin_dir}"; echo '```'; echo ""

        echo "### Widgets"; echo '```'
        rg_lines 'register_widget|extends\s+WP_Widget' "${plugin_dir}"; echo '```'; echo ""

        echo "### Activation / Deactivation / Uninstall Hooks"; echo '```'
        rg_lines 'register_activation_hook|register_deactivation_hook|register_uninstall_hook' "${plugin_dir}"; echo '```'; echo ""

        echo "### XML-RPC / Heartbeat / Raw input (php://input)"; echo '```'
        rg_lines "xmlrpc_methods|heartbeat_received|php://input" "${plugin_dir}"; echo '```'; echo ""

        echo "### PHP files WITHOUT direct-access guard (defined(ABSPATH/WPINC))"; echo '```'
        rg_files_missing_guard "${plugin_dir}"; echo '```'; echo ""

        echo "## Section 2: Authentication & Authorization"; echo ""
        echo "### Capability Checks"
        echo "- \`current_user_can\` calls: **$(rg_count 'current_user_can' "${plugin_dir}")**"; echo ""
        echo "### Nonce Verifications"
        echo "- \`wp_verify_nonce\` / \`check_ajax_referer\` / \`check_admin_referer\` calls: **$(rg_count 'wp_verify_nonce|check_ajax_referer|check_admin_referer' "${plugin_dir}")**"; echo ""

        echo "## Section 3: Dangerous Operations"; echo ""
        echo "### Direct Database Queries"
        echo "- \`\$wpdb->(query|get_var|get_row|get_col|get_results)\` calls: **$(rg_count '\$wpdb->(query|get_var|get_row|get_col|get_results)' "${plugin_dir}")**"; echo ""
        echo "### Database Queries Using prepare()"
        echo "- \`\$wpdb->prepare\` calls: **$(rg_count '\$wpdb->prepare' "${plugin_dir}")**"; echo ""

        echo "### External HTTP Requests"; echo '```'
        rg_lines 'wp_remote_get|wp_remote_post|wp_safe_remote|curl_exec|file_get_contents.*http' "${plugin_dir}"; echo '```'; echo ""

        echo "### File System Operations (first 30 matches)"; echo '```'
        rg_lines_limited 'file_put_contents|fwrite|move_uploaded_file|unlink|rmdir|mkdir' "${plugin_dir}" 30; echo '```'; echo ""

        echo "### Deserialization (object injection surface)"; echo '```'
        rg_lines 'unserialize|maybe_unserialize' "${plugin_dir}"; echo '```'; echo ""
    } > "${out_file}"

    log "INFO" "  -> Written: ${out_file}"
done

log "INFO" "Surface enumeration complete. Processed ${plugin_count} plugin(s)."
