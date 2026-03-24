# Dev Container Features for AI Agents

- `claude-code`: installs Claude Code CLI using the native installer.
- `codex`: installs OpenAI Codex CLI via npm.

## Features

### `claude-code`

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/nito-008/ai-agents-feature/claude-code:1": {}
    }
}
```

### `codex`

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/devcontainers/features/node:1": {},
        "ghcr.io/nito-008/ai-agents-feature/codex:2": {
            "codex_version": "latest"
        }
    }
}
```
