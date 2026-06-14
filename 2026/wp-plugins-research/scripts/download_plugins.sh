#!/usr/bin/env bash
set -euo pipefail

# ---------------------------------------------------------------------------
# download_plugins.sh
# Downloads public WordPress plugins listed in plugins/manifest.csv.
# Usage: bash scripts/download_plugins.sh
# ---------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

MANIFEST="${REPO_ROOT}/plugins/manifest.csv"
ZIPS_DIR="${REPO_ROOT}/plugins/zips"
LOG_FILE="${REPO_ROOT}/plugins/download.log"

USER_AGENT="wp-security-research/1.0 (academic; contact=ashrey@andrew.cmu.edu)"
MAX_RETRIES=3
SLEEP_BETWEEN=1  # seconds between successful downloads

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

# Download with up to MAX_RETRIES attempts and exponential backoff.
# Returns 0 on success, 1 on permanent failure.
download_with_retry() {
    local url="$1"
    local dest="$2"
    local slug="$3"

    local attempt=0
    local wait=2  # initial backoff in seconds

    while (( attempt < MAX_RETRIES )); do
        attempt=$(( attempt + 1 ))
        log "INFO" "[${slug}] attempt ${attempt}/${MAX_RETRIES}: ${url}"

        if curl --silent --show-error --fail --location \
                --max-time 120 \
                --retry 0 \
                --user-agent "${USER_AGENT}" \
                --output "${dest}.tmp" \
                "${url}"; then
            mv "${dest}.tmp" "${dest}"
            return 0
        fi

        rm -f "${dest}.tmp"
        if (( attempt < MAX_RETRIES )); then
            log "WARN" "[${slug}] download failed; retrying in ${wait}s"
            sleep "${wait}"
            wait=$(( wait * 2 ))
        fi
    done

    return 1
}

# ---------------------------------------------------------------------------
# preflight
# ---------------------------------------------------------------------------

[[ -f "${MANIFEST}" ]] || die "Manifest not found: ${MANIFEST}"
mkdir -p "${ZIPS_DIR}"

# Ensure log file exists (create or append)
touch "${LOG_FILE}"

log "INFO" "===== download_plugins.sh started ====="
log "INFO" "Manifest : ${MANIFEST}"
log "INFO" "Zips dir : ${ZIPS_DIR}"

# ---------------------------------------------------------------------------
# read manifest header to find column indices
# ---------------------------------------------------------------------------

header_line="$(head -n1 "${MANIFEST}")"
IFS=',' read -ra headers <<< "${header_line}"

col_slug=-1
col_source_type=-1
col_download_url=-1

for i in "${!headers[@]}"; do
    col_name="${headers[$i]// /}"   # trim spaces
    case "${col_name}" in
        slug)         col_slug=$i ;;
        source_type)  col_source_type=$i ;;
        download_url) col_download_url=$i ;;
    esac
done

[[ ${col_slug} -ge 0 ]]         || die "Column 'slug' not found in manifest header"
[[ ${col_source_type} -ge 0 ]]  || die "Column 'source_type' not found in manifest header"
[[ ${col_download_url} -ge 0 ]] || die "Column 'download_url' not found in manifest header"

log "INFO" "Column indices — slug:${col_slug} source_type:${col_source_type} download_url:${col_download_url}"

# ---------------------------------------------------------------------------
# main loop
# ---------------------------------------------------------------------------

count_downloaded=0
count_skipped=0
count_failed=0
count_total=0

# Skip header (line 1) with tail -n +2
while IFS=',' read -ra fields; do
    slug="${fields[$col_slug]// /}"
    source_type="${fields[$col_source_type]// /}"
    download_url="${fields[$col_download_url]// /}"

    [[ -z "${slug}" ]] && continue  # skip blank lines

    count_total=$(( count_total + 1 ))

    # Only handle public plugins
    if [[ "${source_type}" != "public" ]]; then
        log "INFO" "[${slug}] skipping (source_type=${source_type})"
        count_skipped=$(( count_skipped + 1 ))
        continue
    fi

    dest="${ZIPS_DIR}/${slug}.zip"

    # Idempotency: skip already-downloaded files
    if [[ -f "${dest}" ]]; then
        log "INFO" "[${slug}] already downloaded — skipping"
        count_skipped=$(( count_skipped + 1 ))
        continue
    fi

    # Build download URL if not provided in manifest
    if [[ -z "${download_url}" ]]; then
        download_url="https://downloads.wordpress.org/plugin/${slug}.latest-stable.zip"
    fi

    if download_with_retry "${download_url}" "${dest}" "${slug}"; then
        size_kb=$(( $(wc -c < "${dest}") / 1024 ))
        log "INFO" "[${slug}] downloaded OK (${size_kb} KB)"
        count_downloaded=$(( count_downloaded + 1 ))
        sleep "${SLEEP_BETWEEN}"
    else
        log "ERROR" "[${slug}] FAILED after ${MAX_RETRIES} attempts"
        count_failed=$(( count_failed + 1 ))
    fi

done < <(tail -n +2 "${MANIFEST}")

# ---------------------------------------------------------------------------
# summary
# ---------------------------------------------------------------------------

log "INFO" "===== download_plugins.sh finished ====="
log "INFO" "Total    : ${count_total}"
log "INFO" "Downloaded: ${count_downloaded}"
log "INFO" "Skipped  : ${count_skipped}"
log "INFO" "Failed   : ${count_failed}"

echo ""
echo "============================="
echo " Download Summary"
echo "============================="
echo " Total     : ${count_total}"
echo " Downloaded: ${count_downloaded}"
echo " Skipped   : ${count_skipped}"
echo " Failed    : ${count_failed}"
echo "============================="

if (( count_failed > 0 )); then
    echo "Some downloads failed. Check ${LOG_FILE} for details."
    exit 1
fi
