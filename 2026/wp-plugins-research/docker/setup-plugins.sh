#!/bin/sh
set -e

WP_URL="http://localhost:8880"
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
  echo "==> WordPress already installed."
  $WP option update siteurl "$WP_URL"
  $WP option update home "$WP_URL"
fi

echo ""
echo "==> Installing target plugins from wordpress.org..."

TARGET_PLUGINS="
mainwp-child
royal-elementor-addons
wpvivid-backuprestore
all-in-one-wp-security-and-firewall
wp-file-manager
duplicator
coming-soon
elementor
"

for plugin in $TARGET_PLUGINS; do
  if $WP plugin is-installed "$plugin" 2>/dev/null; then
    echo "  [EXISTS] $plugin — updating to latest"
    $WP plugin update "$plugin" 2>/dev/null || echo "  [WARN] update failed for $plugin"
  else
    echo "  [INSTALL] $plugin"
    $WP plugin install "$plugin" --activate 2>/dev/null || echo "  [FAIL] $plugin"
  fi
done

echo ""
echo "==> Activating all target plugins..."
for plugin in $TARGET_PLUGINS; do
  if $WP plugin is-installed "$plugin" 2>/dev/null; then
    $WP plugin activate "$plugin" 2>/dev/null && echo "  [OK] $plugin" || echo "  [SKIP] $plugin (already active or failed)"
  fi
done

echo ""
echo "==> Symlinking additional plugins from plugins-src..."
if [ -d "$PLUGINS_SRC" ]; then
  for plugin_path in "$PLUGINS_SRC"/*/; do
    if [ -d "$plugin_path" ]; then
      plugin_name=$(basename "$plugin_path")
      target="$PLUGINS_DIR/$plugin_name"
      if [ -L "$target" ] || [ -d "$target" ]; then
        continue
      else
        ln -s "$plugin_path" "$target"
        echo "  [LINK] $plugin_name"
      fi
    fi
  done
fi

echo ""
echo "==> Plugin status:"
$WP plugin list --format=table

echo ""
echo "========================================="
echo "  SETUP COMPLETE"
echo "  Site: $WP_URL"
echo "  Admin: $WP_ADMIN_USER / $WP_ADMIN_PASSWORD"
echo "========================================="
