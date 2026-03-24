#!/usr/bin/env bash
set -euo pipefail

echo "Activating feature 'codex'"

CODEX_VERSION="${CODEX_VERSION:-latest}"

npm install -g "@openai/codex@${CODEX_VERSION}"
                                                                         
mkdir -p /opt/codex-credentials                                                                        
chmod 777 /opt/codex-credentials    