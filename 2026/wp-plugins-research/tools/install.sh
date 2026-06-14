#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

installed() { echo -e "${GREEN}[INSTALLED]${NC} $*"; }
already()   { echo -e "${YELLOW}[ALREADY]${NC}   $*"; }
info()      { echo -e "${CYAN}[INFO]${NC}      $*"; }

echo "=== WordPress Plugin Security Research — macOS Setup ==="
echo "Repo root: ${REPO_ROOT}"
echo ""

# ── 1. Python virtual environment ─────────────────────────────────────────────
VENV_DIR="${REPO_ROOT}/.venv"
if [[ ! -d "$VENV_DIR" ]]; then
  info "Creating Python venv at .venv ..."
  uv venv "$VENV_DIR"
  installed "Python venv"
else
  already "Python venv (.venv)"
fi

info "Activating venv and installing Python requirements ..."
# shellcheck source=/dev/null
source "${VENV_DIR}/bin/activate"

uv pip install -r "${REPO_ROOT}/requirements.txt"
installed "Python packages from requirements.txt"

# ── 2. System tools via Homebrew ──────────────────────────────────────────────
echo ""
echo "--- System tools (brew) ---"

brew_install() {
  local pkg="$1"
  local check_cmd="${2:-$1}"
  if command -v "$check_cmd" &>/dev/null; then
    already "brew: ${pkg} ($(command -v "$check_cmd"))"
  else
    info "Installing ${pkg} via brew ..."
    brew install "$pkg"
    installed "brew: ${pkg}"
  fi
}

brew_install php php
brew_install graphviz dot
brew_install jq jq
brew_install ripgrep rg
brew_install cloc cloc

# ── 3. Composer ───────────────────────────────────────────────────────────────
echo ""
echo "--- Composer ---"

if command -v composer &>/dev/null; then
  already "composer ($(command -v composer))"
else
  info "Installing composer via brew ..."
  brew install composer
  installed "composer"
fi

# ── 4. Semgrep ────────────────────────────────────────────────────────────────
echo ""
echo "--- Semgrep ---"

# semgrep is in requirements.txt so should already be installed in venv;
# re-install explicitly to be explicit about version
if python3 -c "import semgrep" 2>/dev/null; then
  already "semgrep (python package)"
else
  info "Installing semgrep via uv pip ..."
  uv pip install semgrep
  installed "semgrep"
fi

# ── 5. Java 21 / OpenJDK (required by Joern) ─────────────────────────────────
echo ""
echo "--- Java 21 (for Joern) ---"

java_ok=false
if command -v java &>/dev/null; then
  java_ver=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}' | cut -d. -f1)
  if [[ "${java_ver:-0}" -ge 21 ]]; then
    already "Java ${java_ver} (>= 21)"
    java_ok=true
  else
    info "Java ${java_ver} found but Joern needs Java 21+; installing openjdk@21 ..."
    brew install openjdk@21
    # Brew does not symlink openjdk@21 automatically
    sudo ln -sfn "$(brew --prefix)/opt/openjdk@21/libexec/openjdk.jdk" \
      /Library/Java/JavaVirtualMachines/openjdk-21.jdk 2>/dev/null || true
    export JAVA_HOME
    JAVA_HOME="$(brew --prefix)/opt/openjdk@21"
    export PATH="${JAVA_HOME}/bin:${PATH}"
    installed "openjdk@21"
    java_ok=true
  fi
else
  info "Java not found; installing openjdk@21 via brew ..."
  brew install openjdk@21
  sudo ln -sfn "$(brew --prefix)/opt/openjdk@21/libexec/openjdk.jdk" \
    /Library/Java/JavaVirtualMachines/openjdk-21.jdk 2>/dev/null || true
  export JAVA_HOME
  JAVA_HOME="$(brew --prefix)/opt/openjdk@21"
  export PATH="${JAVA_HOME}/bin:${PATH}"
  installed "openjdk@21"
  java_ok=true
fi

# ── 6. Joern ──────────────────────────────────────────────────────────────────
echo ""
echo "--- Joern (optional) ---"

JOERN_INSTALL_DIR="${HOME}/.joern"
JOERN_BIN="${JOERN_INSTALL_DIR}/joern-cli/joern"

if [[ -x "$JOERN_BIN" ]]; then
  already "Joern (${JOERN_BIN})"
elif [[ "$java_ok" == true ]]; then
  info "Attempting Joern install to ${JOERN_INSTALL_DIR} ..."
  mkdir -p "$JOERN_INSTALL_DIR"
  joern_script=$(mktemp)
  curl -sL "https://github.com/joernio/joern/releases/latest/download/joern-install.sh" \
    -o "$joern_script" || { echo "[WARN] Could not download Joern install script; skipping."; rm -f "$joern_script"; joern_script=""; }
  if [[ -n "$joern_script" && -f "$joern_script" ]]; then
    bash "$joern_script" --install-dir "$JOERN_INSTALL_DIR" --overwrite 2>&1 \
      && installed "Joern" \
      || echo "[WARN] Joern install script failed; skipping. Install manually: https://joern.io/docs/"
    rm -f "$joern_script"
  fi
else
  echo "[WARN] Skipping Joern install (Java 21+ not available)."
fi

# ── 7. phpcs + WordPress Coding Standards ─────────────────────────────────────
echo ""
echo "--- phpcs + WordPress Coding Standards (optional) ---"

COMPOSER_BIN_DIR="${HOME}/.composer/vendor/bin"

if command -v phpcs &>/dev/null || [[ -x "${COMPOSER_BIN_DIR}/phpcs" ]]; then
  already "phpcs"
else
  info "Installing phpcs via composer global ..."
  composer global require --quiet "squizlabs/php_codesniffer" \
    && installed "phpcs" \
    || echo "[WARN] phpcs install failed; skipping."
fi

if composer global show "wp-coding-standards/wpcs" &>/dev/null 2>&1; then
  already "WordPress Coding Standards (wpcs)"
else
  info "Installing WordPress Coding Standards via composer global ..."
  composer global require --quiet "wp-coding-standards/wpcs:^3" \
    && installed "WordPress Coding Standards" \
    || echo "[WARN] wpcs install failed; skipping."
fi

# Register WPCS with phpcs if both are present
PHPCS_BIN="${COMPOSER_BIN_DIR}/phpcs"
WPCS_PATH="${HOME}/.composer/vendor/wp-coding-standards/wpcs"
if [[ -x "$PHPCS_BIN" && -d "$WPCS_PATH" ]]; then
  "$PHPCS_BIN" --config-set installed_paths "$WPCS_PATH" 2>/dev/null \
    && info "Registered wpcs installed_paths with phpcs" \
    || true
fi

# ── 8. Psalm ──────────────────────────────────────────────────────────────────
echo ""
echo "--- Psalm (optional) ---"

if command -v psalm &>/dev/null || [[ -x "${COMPOSER_BIN_DIR}/psalm" ]]; then
  already "psalm"
else
  info "Installing psalm via composer global ..."
  composer global require --quiet "vimeo/psalm" \
    && installed "psalm" \
    || echo "[WARN] psalm install failed; skipping."
fi

# ── Done ──────────────────────────────────────────────────────────────────────
echo ""
echo "=== Setup complete ==="
echo "Activate the venv with:  source ${VENV_DIR}/bin/activate"
echo "Run verification with:   bash tools/verify_tools.sh"
