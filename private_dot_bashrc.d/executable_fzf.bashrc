# Set up fzf key bindings and fuzzy completion
which fzf >/dev/null 2>&1 && eval "$(fzf --bash)"

[ -n "$TMUX" ] && {
  export FZF_DEFAULT_OPTS="--layout=reverse"
  export FZF_TMUX_OPTS="-d 80%"
}
