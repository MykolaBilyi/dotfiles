# Dotfiles

This repository contains my dotfiles managed by [chezmoi](https://chezmoi.io/).

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

[starship]: https://starship.rs
