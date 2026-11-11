# Dotfiles

This repository contains my dotfiles managed by [chezmoi](https://chezmoi.io/).

## Notes

### Local machine differneces

Differences in environment, tools, etc. can be set as a local [mise] config override, e.g. `~/.config/mise/config.local.toml`

```toml
[env]
USER = 'mykola'
```

### LLM Key

Some apps (like [aichat]) need an LLM API key to be functional.
You can either set `LLM_API_KEY` env variable, or do a [mise] task `get-llm-key` override. E.g.

```toml
[tasks.get-llm-key]
extends = "llm-secret"
run = "secret-tool lookup service llm-api-key client ${usage_client?}"
```

## Tasks

on a fresh install you need to start with `init`

### init

Download dotfiles config from the repo

```bash
chezmoi init git@github.com:MykolaBilyi/dotfiles.git
```

### apply

Apply config changes to the system

```bash
chezmoi apply
```

### allow-terminal-features-pass

```bash
echo "AcceptEnv TERM_FEATURES" > $TERMUX__PREFIX/etc/ssh/sshd_config.d/terminal.conf 
```

### set-terminal-features

Set default terminal features. These are used for [starship] config. Supported options:
- nerd-font
- e-ink

input: TERM_FEATURES

```bash
echo "export TERM_FEATURES=\${TERM_FEATURES:-$TERM_FEATURES}" > ~/.bashrc.d/00-term.bashrc 
```

[aichat]: https://github.com/sigoden/aichat
[mise]: https://mise.jdx.dev
[starship]: https://starship.rs
