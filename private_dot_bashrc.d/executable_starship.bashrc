which starship >/dev/null 2>&1 || exit

export STARSHIP_CONFIG="$HOME/.config/starship/default.toml"
[[ "$TERM_FEATURES" == *nerd-font* ]] && export STARSHIP_CONFIG="$HOME/.config/starship/nerd-font.toml"
[[ "$TERM_FEATURES" == *e-ink* ]] && export STARSHIP_CONFIG="$HOME/.config/starship/e-ink.toml"
source <(starship init bash)
