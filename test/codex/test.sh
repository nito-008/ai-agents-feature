#!/bin/bash
set -e

source dev-container-features-test-lib

check "codex in path" bash -c "command -v codex"
check "codex version" bash -c "codex --version"

reportResults
