#!/usr/bin/env bash
set -euo pipefail

echo "Activating feature 'codex'"

CODEX_VERSION="${CODEX_VERSION:-latest}"
NODE_VERSION="${NODE_VERSION:-20}"

apt-get update -y
apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
    gnupg
rm -rf /var/lib/apt/lists/*

if ! command -v node >/dev/null 2>&1 || ! command -v npm >/dev/null 2>&1; then
    curl -fsSL "https://deb.nodesource.com/setup_${NODE_VERSION}.x" | bash -
    apt-get update -y
    apt-get install -y --no-install-recommends nodejs
    rm -rf /var/lib/apt/lists/*
fi

npm install -g "@openai/codex@${CODEX_VERSION}"
                                                                         
mkdir -p /opt/codex-credentials                                                                        
chmod 777 /opt/codex-credentials    