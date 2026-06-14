#!/usr/bin/env bash
set -euo pipefail

# ---------------------------------------------------------------------------
# extract_plugins.sh
# Extracts downloaded plugin zips into plugins/src/{slug}/ and produces
# plugins/extraction_manifest.json with per-plugin metadata.
# Usage: bash scripts/extract_plugins.sh
# ---------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

ZIPS_DIR="${REPO_ROOT}/plugins/zips"
SRC_DIR="${REPO_ROOT}/plugins/src"
MANIFEST_OUT="${REPO_ROOT}/plugins/extraction_manifest.json"
LOG_FILE="${REPO_ROOT}/plugins/extract.log"

# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

log() {
    local level="$1"; shift
    local msg="$*"
    local ts
    ts="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
    echo "${ts} [${level}] ${msg}" | tee -a "${LOG_FILE}"
}

die() {
    log "ERROR" "$*"
    exit 1
}

# Emit a JSON string (basic escaping for paths/messages)
json_str() {
    local s="$1"
    # Escape backslashes, double-quotes, and control chars
    s="${s//\\/\\\\}"
    s="${s//\"/\\\"}"
    printf '"%s"' "${s}"
}

# ---------------------------------------------------------------------------
# preflight
# ---------------------------------------------------------------------------

mkdir -p "${SRC_DIR}"
touch "${LOG_FILE}"

log "INFO" "===== extract_plugins.sh started ====="
log "INFO" "Zips dir  : ${ZIPS_DIR}"
log "INFO" "Src dir   : ${SRC_DIR}"
log "INFO" "Manifest  : ${MANIFEST_OUT}"

shopt -s nullglob
zip_files=( "${ZIPS_DIR}"/*.zip )
shopt -u nullglob

if (( ${#zip_files[@]} == 0 )); then
    log "WARN" "No .zip files found in ${ZIPS_DIR}. Nothing to extract."
    echo "{}" > "${MANIFEST_OUT}"
    exit 0
fi

# ---------------------------------------------------------------------------
# extraction loop
# ---------------------------------------------------------------------------

# We will collect JSON entries and assemble them at the end.
declare -A json_entries   # slug -> JSON object string

count_ok=0
count_skipped=0
count_error=0

for zip_path in "${zip_files[@]}"; do
    zip_name="$(basename "${zip_path}")"
    slug="${zip_name%.zip}"
    dest_dir="${SRC_DIR}/${slug}"
    extracted_at="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"

    # ------------------------------------------------------------------
    # Idempotency: skip already-extracted plugins that have PHP files
    # ------------------------------------------------------------------
    if [[ -d "${dest_dir}" ]]; then
        existing_php_count=$(find "${dest_dir}" -name "*.php" | wc -l | tr -d ' ')
        if (( existing_php_count > 0 )); then
            log "INFO" "[${slug}] already extracted (${existing_php_count} PHP files) — skipping"
            count_skipped=$(( count_skipped + 1 ))

            # Still include it in the manifest with existing data
            total_lines=$(find "${dest_dir}" -name "*.php" -exec wc -l {} + 2>/dev/null \
                          | awk '/total$/{print $1}' | tail -n1)
            total_lines="${total_lines:-0}"

            # Build top_level_files list
            top_level_json="["
            first=1
            while IFS= read -r f; do
                [[ ${first} -eq 0 ]] && top_level_json+=","
                top_level_json+="$(json_str "$(basename "${f}")")"
                first=0
            done < <(find "${dest_dir}" -maxdepth 1 -mindepth 1 | sort)
            top_level_json+="]"

            json_entries["${slug}"]="$(printf \
                '{"status":"ok","php_files":%d,"total_lines":%d,"extracted_at":%s,"top_level_files":%s}' \
                "${existing_php_count}" "${total_lines}" \
                "$(json_str "${extracted_at}")" "${top_level_json}")"
            continue
        else
            # Directory exists but no PHP files — re-extract
            log "WARN" "[${slug}] destination exists but has no PHP files; re-extracting"
            rm -rf "${dest_dir}"
        fi
    fi

    log "INFO" "[${slug}] extracting ${zip_path}"

    # ------------------------------------------------------------------
    # Extract to a temporary staging directory so we can inspect layout
    # ------------------------------------------------------------------
    tmp_dir="${SRC_DIR}/.tmp_${slug}_$$"
    rm -rf "${tmp_dir}"
    mkdir -p "${tmp_dir}"

    if ! unzip -q "${zip_path}" -d "${tmp_dir}" 2>>"${LOG_FILE}"; then
        log "ERROR" "[${slug}] unzip failed"
        rm -rf "${tmp_dir}"
        count_error=$(( count_error + 1 ))
        json_entries["${slug}"]="$(printf \
            '{"status":"error","php_files":0,"total_lines":0,"extracted_at":%s,"top_level_files":[]}' \
            "$(json_str "${extracted_at}")")"
        continue
    fi

    # ------------------------------------------------------------------
    # WordPress plugin zips commonly extract to a single top-level folder
    # named after the plugin (e.g., zip contains woocommerce/...).
    # Detect this and flatten so dest_dir is the plugin root.
    # ------------------------------------------------------------------
    shopt -s nullglob
    top_level_items=( "${tmp_dir}"/* )
    shopt -u nullglob

    if (( ${#top_level_items[@]} == 1 )) && [[ -d "${top_level_items[0]}" ]]; then
        # Single subdirectory — use it as the plugin root
        mv "${top_level_items[0]}" "${dest_dir}"
    else
        # Files extracted directly at top level (or multiple items)
        mv "${tmp_dir}" "${dest_dir}"
        tmp_dir=""  # already moved, nothing to clean up
    fi
    [[ -n "${tmp_dir:-}" ]] && rm -rf "${tmp_dir}"

    # ------------------------------------------------------------------
    # Verify at least one PHP file exists
    # ------------------------------------------------------------------
    php_count=$(find "${dest_dir}" -name "*.php" | wc -l | tr -d ' ')

    if (( php_count == 0 )); then
        log "ERROR" "[${slug}] extracted OK but contains no .php files"
        count_error=$(( count_error + 1 ))
        json_entries["${slug}"]="$(printf \
            '{"status":"error","php_files":0,"total_lines":0,"extracted_at":%s,"top_level_files":[]}' \
            "$(json_str "${extracted_at}")")"
        continue
    fi

    # ------------------------------------------------------------------
    # Gather metadata
    # ------------------------------------------------------------------

    # Total lines across all PHP files
    total_lines=0
    while IFS= read -r php_file; do
        lines=$(wc -l < "${php_file}" | tr -d ' ')
        total_lines=$(( total_lines + lines ))
    done < <(find "${dest_dir}" -name "*.php")

    # Build top_level_files JSON array
    top_level_json="["
    first=1
    while IFS= read -r item; do
        [[ ${first} -eq 0 ]] && top_level_json+=","
        top_level_json+="$(json_str "$(basename "${item}")")"
        first=0
    done < <(find "${dest_dir}" -maxdepth 1 -mindepth 1 | sort)
    top_level_json+="]"

    log "INFO" "[${slug}] OK — php_files=${php_count} total_lines=${total_lines}"
    count_ok=$(( count_ok + 1 ))

    json_entries["${slug}"]="$(printf \
        '{"status":"ok","php_files":%d,"total_lines":%d,"extracted_at":%s,"top_level_files":%s}' \
        "${php_count}" "${total_lines}" \
        "$(json_str "${extracted_at}")" "${top_level_json}")"
done

# ---------------------------------------------------------------------------
# Write extraction_manifest.json
# ---------------------------------------------------------------------------

{
    printf '{\n'
    first_entry=1
    for slug in $(printf '%s\n' "${!json_entries[@]}" | sort); do
        [[ ${first_entry} -eq 0 ]] && printf ',\n'
        printf '  %s: %s' "$(json_str "${slug}")" "${json_entries[${slug}]}"
        first_entry=0
    done
    printf '\n}\n'
} > "${MANIFEST_OUT}"

log "INFO" "Wrote extraction manifest: ${MANIFEST_OUT}"

# ---------------------------------------------------------------------------
# Summary
# ---------------------------------------------------------------------------

total_processed=$(( count_ok + count_skipped + count_error ))

log "INFO" "===== extract_plugins.sh finished ====="
log "INFO" "Processed : ${total_processed}"
log "INFO" "OK        : ${count_ok}"
log "INFO" "Skipped   : ${count_skipped}"
log "INFO" "Errors    : ${count_error}"

echo ""
echo "============================="
echo " Extraction Summary"
echo "============================="
echo " Processed : ${total_processed}"
echo " OK        : ${count_ok}"
echo " Skipped   : ${count_skipped}"
echo " Errors    : ${count_error}"
echo "============================="
echo " Manifest  : ${MANIFEST_OUT}"
echo "============================="

if (( count_error > 0 )); then
    echo "Some extractions failed. Check ${LOG_FILE} for details."
    exit 1
fi
