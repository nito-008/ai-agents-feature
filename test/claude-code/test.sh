#!/bin/bash
set -e

source dev-container-features-test-lib

check "claude in path" bash -c "command -v claude"
check "claude version" bash -c "claude --version"

reportResults
