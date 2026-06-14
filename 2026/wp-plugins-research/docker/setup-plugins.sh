#!/bin/sh
set -e

WP_URL="http://localhost:8080"
WP_ADMIN_USER="admin"
WP_ADMIN_PASSWORD="admin"
WP_ADMIN_EMAIL="admin@example.com"
WP_TITLE="WP Security Research"

PLUGINS_SRC="/var/www/html/wp-content/plugins-src"
PLUGINS_DIR="/var/www/html/wp-content/plugins"

WP="wp --allow-root --path=/var/www/html"

echo "==> Checking WordPress installation..."
if ! $WP core is-installed 2>/dev/null; then
  echo "==> Installing WordPress..."
  $WP core install \
    --url="$WP_URL" \
    --title="$WP_TITLE" \
    --admin_user="$WP_ADMIN_USER" \
    --admin_password="$WP_ADMIN_PASSWORD" \
    --admin_email="$WP_ADMIN_EMAIL" \
    --skip-email
  echo "==> WordPress installed."
else
  echo "==> WordPress already installed, skipping."
fi

echo ""
echo "==> Symlinking plugins from plugins-src to plugins directory..."
if [ -d "$PLUGINS_SRC" ]; then
  for plugin_path in "$PLUGINS_SRC"/*/; do
    if [ -d "$plugin_path" ]; then
      plugin_name=$(basename "$plugin_path")
      target="$PLUGINS_DIR/$plugin_name"
      if [ -L "$target" ]; then
        echo "  [SKIP] $plugin_name — symlink already exists"
      elif [ -d "$target" ]; then
        echo "  [SKIP] $plugin_name — real directory already exists"
      else
        ln -s "$plugin_path" "$target"
        echo "  [LINK] $plugin_name"
      fi
    fi
  done
else
  echo "  [WARN] plugins-src directory not found at $PLUGINS_SRC — skipping symlinks"
fi

echo ""
echo "==> Activating plugins..."
activated=0
failed=0
failed_list=""

for plugin_path in "$PLUGINS_SRC"/*/; do
  if [ -d "$plugin_path" ]; then
    plugin_name=$(basename "$plugin_path")
    if $WP plugin activate "$plugin_name" 2>/dev/null; then
      echo "  [OK]   $plugin_name"
      activated=$((activated + 1))
    else
      echo "  [FAIL] $plugin_name — skipped (missing dependencies or activation error)"
      failed=$((failed + 1))
      failed_list="$failed_list $plugin_name"
    fi
  fi
done

echo ""
echo "========================================="
echo "  PLUGIN ACTIVATION SUMMARY"
echo "========================================="
echo "  Activated : $activated"
echo "  Failed    : $failed"
if [ -n "$failed_list" ]; then
  echo "  Failed plugins:$failed_list" | tr ' ' '\n' | sed 's/^/    /'
fi
echo "========================================="
