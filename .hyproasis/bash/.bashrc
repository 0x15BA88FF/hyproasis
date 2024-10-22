[[ $- != *i* ]] && return

shopt -s cdspell
shopt -s nocaseglob
shopt -s histappend
shopt -s autocd 2>/dev/null
shopt -s globstar 2>/dev/null

export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/bash/history"

command -v zoxide &>/dev/null && eval "$(zoxide init bash)"
command -v starship &>/dev/null && eval "$(starship init bash)"

[[ -f "$HOME/.config/shell/aliasrc" ]] && source "$HOME/.config/shell/aliasrc"
