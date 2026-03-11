#!/usr/bin/env bash
set -euo pipefail

echo "Activating feature 'claude-code'"

if command -v claude >/dev/null 2>&1; then
    echo "claude already installed."
    exit 0
fi

apt-get update -y
apt-get install -y --no-install-recommends \
    ca-certificates \
    curl
rm -rf /var/lib/apt/lists/*

curl -fsSL https://claude.ai/install.sh | bash

CLAUDE_BIN=""
if [ -x "${HOME}/.local/bin/claude" ]; then
    CLAUDE_BIN="${HOME}/.local/bin/claude"
else
    CLAUDE_BIN="$(find /root /home -maxdepth 4 -path '*/.local/bin/claude' -type f -perm -111 2>/dev/null | head -n 1 || true)"
fi

if [ -n "${CLAUDE_BIN}" ] && [ -x "${CLAUDE_BIN}" ]; then
    install -m 0755 "${CLAUDE_BIN}" /usr/local/bin/claude
fi

mkdir -p /opt/claude-credentials/dot-claude
echo '{}' > /opt/claude-credentials/dot-claude.json
chmod -R 777 /opt/claude-credentials
