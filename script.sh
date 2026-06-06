#!/usr/bin/env bash
set -Eeuo pipefail

GREEN='\e[32m'
CYAN='\e[36m'
WHITE='\e[97m'
YELLOW='\e[93m'
RED='\e[1;31m'
RESET='\e[0m'

REPO_RAW_URL="https://raw.githubusercontent.com/0fariid0/Toolbox/main"
TOOLBOX_URL="${REPO_RAW_URL}/toolbox.sh"
INSTALL_PATH="${INSTALL_PATH:-/usr/local/bin/toolbox}"
TMP_FILE="$(mktemp)"

cleanup() {
  rm -f "$TMP_FILE"
}
trap cleanup EXIT

echo -e "${GREEN}======================================================${RESET}"
echo -e "${WHITE}                    ToolBox${RESET}"
echo -e "${CYAN}      https://github.com/0fariid0/Toolbox${RESET}"
echo -e "${GREEN}======================================================${RESET}"

if [[ "${EUID}" -ne 0 ]]; then
  if command -v sudo >/dev/null 2>&1; then
    SUDO='sudo'
  else
    echo -e "${RED}❌ Please run as root, or install sudo.${RESET}"
    exit 1
  fi
else
  SUDO=''
fi

if command -v curl >/dev/null 2>&1; then
  echo -e "${CYAN}📥 Downloading toolbox from GitHub...${RESET}"
  curl -fsSL "$TOOLBOX_URL" -o "$TMP_FILE"
elif command -v wget >/dev/null 2>&1; then
  echo -e "${CYAN}📥 Downloading toolbox from GitHub...${RESET}"
  wget -qO "$TMP_FILE" "$TOOLBOX_URL"
else
  echo -e "${RED}❌ curl or wget is required.${RESET}"
  exit 1
fi

if ! bash -n "$TMP_FILE"; then
  echo -e "${RED}❌ Downloaded toolbox.sh has a syntax error. Installation aborted.${RESET}"
  exit 1
fi

$SUDO install -m 755 "$TMP_FILE" "$INSTALL_PATH"

echo -e "${GREEN}✅ ToolBox installed successfully.${RESET}"
echo -e "${WHITE}Install path:${RESET} ${YELLOW}${INSTALL_PATH}${RESET}"
echo -e "${CYAN}🚀 Run it with:${RESET} ${YELLOW}toolbox${RESET}"
