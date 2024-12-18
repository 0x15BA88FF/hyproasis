#!/usr/bin/env bash

[[ $- != *i* ]] && return

_exists() { command -v "$1" &>/dev/null; }
_source() { [[ -f "$1" ]] && source "$1"; }

_source "$BASHDOTDIR/input.sh"
_source "$BASHDOTDIR/options.sh"
_source "$BASHDOTDIR/preexec.sh"
_source "$XDG_CONFIG_HOME/shell/aliasrc"
_source "$XDG_CONFIG_HOME/shell/functions"

_exists fzf && eval "$(fzf --bash)"
_exists atuin && eval "$(atuin init bash)"
_exists zoxide && eval "$(zoxide init bash)"
_exists direnv && eval "$(direnv hook bash)"
_exists thefuck && eval "$(thefuck --alias)"
_exists starship && eval "$(starship init bash)"

preexec() { echo ""; }
