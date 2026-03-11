# Dev Container Features for AI Agents

- `claude-code`: installs Claude Code CLI using the native installer.
- `codex`: installs OpenAI Codex CLI via npm.

## Features

### `claude-code`

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/<owner>/<repo>/claude-code:1": {}
    }
}
```

### `codex`

```jsonc
{
    "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
    "features": {
        "ghcr.io/<owner>/<repo>/codex:1": {
            "codex_version": "latest",
            "node_version": "20"
        }
    }
}
```
