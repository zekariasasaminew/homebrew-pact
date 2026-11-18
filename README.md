# homebrew-pact

Homebrew tap for [pact](https://github.com/zekariasasaminew/pact), a CLI
that runs several AI coding agent CLIs (GitHub Copilot CLI, Claude Code,
Codex, Gemini CLI, Antigravity) in parallel on one repository: `pact run`
splits one task into units that own disjoint files, runs them as parallel
lanes, and verifies the combined result.

## Install

```sh
brew tap zekariasasaminew/pact
brew install pact
```

## Updating

This formula tracks pact's tagged GitHub releases. See
[pact's release workflow](https://github.com/zekariasasaminew/pact/blob/main/.github/workflows/release.yml)
for how release assets are built.
