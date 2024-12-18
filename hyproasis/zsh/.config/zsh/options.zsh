unsetopt BEEP
setopt autocd
setopt globdots
setopt prompt_subst
setopt SHARE_HISTORY APPEND_HISTORY INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS HIST_SAVE_NO_DUPS HIST_IGNORE_ALL_DUPS HIST_EXPIRE_DUPS_FIRST

CASE_SENSITIVE=false
ENABLE_CORRECTION=true
HYPHEN_INSENSITIVE=true
COMPLETION_WAITING_DOTS=true
HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/history/zsh-history"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

zstyle ':omz:update' frequency 14
zstyle ':omz:update' mode reminder

zstyle '*:compinit' arguments -D -i -u -C -w

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*:messages' format ' %F{11} -- %d --%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{2}-- %d --%f'
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*:warnings' format ' %F{9}-- no matches found --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{208}!- %d (errors: %e) -!%f'

zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
