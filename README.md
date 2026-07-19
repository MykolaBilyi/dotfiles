# Dotfiles

This repository contains my dotfiles managed by [chezmoi](https://chezmoi.io/).

## Notes

- `fzf` is installed via _apt_ on _debian_, but it can be outdated. Install latest from [RELEASES](https://github.com/junegunn/fzf/releases/latest) 

## Tasks

on a fresh install you need to start with `init`

## init

Download dotfiles config from the repo

```bash
chezmoi init git@github.com:MykolaBilyi/dotfiles.git
```

## apply

Apply config changes to the system

```bash
chezmoi apply
```
