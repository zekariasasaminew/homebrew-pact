# homebrew-pact

Homebrew tap for [pact](https://github.com/zekariasasaminew/pact) -- a
CLI that orchestrates multiple AI coding agent CLIs (Claude Code, GitHub
Copilot CLI, Codex, Gemini CLI) running in parallel on the same repo, via
git worktrees, shared dependency caching, and an MCP coordination server.

## Install

```sh
brew tap zekariasasaminew/pact
brew install pact
```

## Updating

This formula tracks pact's tagged GitHub releases. See
[pact's release workflow](https://github.com/zekariasasaminew/pact/blob/main/.github/workflows/release.yml)
for how release assets are built.
