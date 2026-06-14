#!/bin/bash
set -euo pipefail

PASS=0
FAIL=0

check() {
  local label="$1"
  local result="$2"
  if [ "$result" = "ok" ]; then
    echo "  [PASS] $label"
    PASS=$((PASS + 1))
  else
    echo "  [FAIL] $label — $result"
    FAIL=$((FAIL + 1))
  fi
}

echo "========================================="
echo "  WORDPRESS STACK HEALTHCHECK"
echo "========================================="

# Check 1: WordPress container is running
WP_RUNNING=$(docker compose ps --status running --services 2>/dev/null | grep -c '^wordpress$' || true)
if [ "$WP_RUNNING" -ge 1 ]; then
  check "WordPress container is running" "ok"
else
  check "WordPress container is running" "container not in running state"
fi

# Check 2: HTTP response from localhost:8080 is 200 or 302
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" --max-time 10 http://localhost:8080 2>/dev/null || echo "000")
if [ "$HTTP_CODE" = "200" ] || [ "$HTTP_CODE" = "302" ]; then
  check "HTTP response from localhost:8080 ($HTTP_CODE)" "ok"
else
  check "HTTP response from localhost:8080" "got HTTP $HTTP_CODE (expected 200 or 302)"
fi

# Check 3: WP-CLI is accessible
WP_CLI_OUTPUT=$(docker compose exec -T wpcli wp --allow-root --path=/var/www/html core version 2>/dev/null || echo "")
if [ -n "$WP_CLI_OUTPUT" ]; then
  check "WP-CLI accessible (WordPress $WP_CLI_OUTPUT)" "ok"
else
  check "WP-CLI accessible" "wp-cli command failed or returned empty"
fi

# Check 4: Get plugin count via WP-CLI
PLUGIN_COUNT=$(docker compose exec -T wpcli wp --allow-root --path=/var/www/html plugin list --status=active --format=count 2>/dev/null || echo "0")
if echo "$PLUGIN_COUNT" | grep -qE '^[0-9]+$'; then
  check "WP-CLI plugin list returned count ($PLUGIN_COUNT active)" "ok"
else
  check "WP-CLI plugin list" "could not retrieve plugin count"
  PLUGIN_COUNT=0
fi

# Check 5: At least 30 plugins active
if [ "$PLUGIN_COUNT" -ge 30 ] 2>/dev/null; then
  check "At least 30 plugins active ($PLUGIN_COUNT found)" "ok"
else
  check "At least 30 plugins active" "only $PLUGIN_COUNT active (need >= 30)"
fi

echo ""
echo "========================================="
echo "  RESULT: $PASS passed, $FAIL failed"
echo "========================================="

if [ "$FAIL" -gt 0 ]; then
  exit 1
fi
