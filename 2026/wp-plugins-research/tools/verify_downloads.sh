#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MANIFEST="${REPO_ROOT}/plugins/manifest.csv"
ZIPS_DIR="${REPO_ROOT}/plugins/zips"
SRC_DIR="${REPO_ROOT}/plugins/src"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

pass() { echo -e "${GREEN}[PASS]${NC} $*"; }
fail() { echo -e "${RED}[FAIL]${NC} $*"; }

overall_exit=0

# ── 1. Count public plugins in manifest ───────────────────────────────────────
public_slugs=()
while IFS=',' read -r rank name slug url source_type; do
  [[ "$rank" == "rank" ]] && continue   # skip header
  [[ "$source_type" == "public" ]] && public_slugs+=("$slug")
done < "$MANIFEST"

public_count=${#public_slugs[@]}
echo "Manifest public plugins : ${public_count}"

# ── 2. Count zips present ─────────────────────────────────────────────────────
zip_count=0
[[ -d "$ZIPS_DIR" ]] && zip_count=$(find "$ZIPS_DIR" -maxdepth 1 -name "*.zip" | wc -l | tr -d ' ')
echo "Zip files present       : ${zip_count}"

# ── 3. Count extracted dirs ───────────────────────────────────────────────────
src_count=0
[[ -d "$SRC_DIR" ]] && src_count=$(find "$SRC_DIR" -maxdepth 1 -mindepth 1 -type d | wc -l | tr -d ' ')
echo "Extracted plugin dirs   : ${src_count}"
echo ""

# ── 4. Per-plugin verification ────────────────────────────────────────────────
for slug in "${public_slugs[@]}"; do
  zip_ok=false
  extracted_ok=false
  php_count=0
  issues=()

  # Check zip
  zip_file="${ZIPS_DIR}/${slug}.latest-stable.zip"
  if [[ -f "$zip_file" ]]; then
    zip_ok=true
  else
    # Try any zip that starts with the slug
    any_zip=$(find "$ZIPS_DIR" -maxdepth 1 -name "${slug}*.zip" 2>/dev/null | head -1)
    if [[ -n "$any_zip" ]]; then
      zip_ok=true
    else
      issues+=("zip MISSING")
    fi
  fi

  # Check extracted dir
  plugin_dir="${SRC_DIR}/${slug}"
  if [[ -d "$plugin_dir" ]]; then
    extracted_ok=true

    # Count PHP files
    php_count=$(find "$plugin_dir" -name "*.php" | wc -l | tr -d ' ')

    # Verify main plugin file (the one with Plugin Name: header)
    main_php=$(grep -rl "Plugin Name:" "$plugin_dir" --include="*.php" 2>/dev/null | head -1)
    if [[ -z "$main_php" ]]; then
      issues+=("no PHP file with 'Plugin Name:' header")
    fi
  else
    issues+=("extracted dir MISSING")
  fi

  # Print result
  zip_status="zip OK"
  extracted_status="extracted OK"
  [[ "$zip_ok" == false ]] && zip_status="zip MISSING"
  [[ "$extracted_ok" == false ]] && extracted_status="extracted MISSING"

  if [[ ${#issues[@]} -eq 0 ]]; then
    pass "${slug}: ${zip_status}, ${extracted_status}, ${php_count} PHP files"
  else
    issue_str=$(IFS='; '; echo "${issues[*]}")
    fail "${slug}: ${zip_status}, ${extracted_status}, ${php_count} PHP files — ${issue_str}"
    overall_exit=1
  fi
done

echo ""
echo "─────────────────────────────────────────────────"

# ── 5. Summary checks ─────────────────────────────────────────────────────────
if [[ "$zip_count" -ge "$public_count" ]]; then
  pass "Zip count: ${zip_count} >= ${public_count} public plugins"
else
  fail "Zip count: ${zip_count} < ${public_count} public plugins (${$((public_count - zip_count))} missing)"
  overall_exit=1
fi

if [[ "$src_count" -ge "$public_count" ]]; then
  pass "Extracted count: ${src_count} >= ${public_count} public plugins"
else
  fail "Extracted count: ${src_count} < ${public_count} public plugins ($((public_count - src_count)) missing)"
  overall_exit=1
fi

echo ""
if [[ "$overall_exit" -eq 0 ]]; then
  echo -e "${GREEN}All checks passed.${NC}"
else
  echo -e "${RED}One or more checks failed.${NC}"
fi

exit $overall_exit
