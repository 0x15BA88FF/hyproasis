export HISTFILE="${XDG_DATA_HOME:-$HOME/.local/share}/zsh/history"
export ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/ohmyzsh"
export ZSH_COMPDUMP="$ZSH_CACHE_DIR/.zcompdump"

setopt SHARE_HISTORY APPEND_HISTORY HIST_IGNORE_DUPS
HIST_STAMPS="dd/mm/yyyy"
COMPLETION_WAITING_DOTS=true
HYPHEN_INSENSITIVE=true
ENABLE_CORRECTION=true
CASE_SENSITIVE=false

for tool in fzf zoxide starship; do
    pacman -Qi "$tool" &>/dev/null && eval "$("$tool" --zsh)"
done

load_aliasrc() {
    [[ -f "$HOME/.config/shell/aliasrc" ]] && source "$HOME/.config/shell/aliasrc"
}

if [[ -f "$HOME/.local/share/zsh/zsh-async/async.zsh" ]]; then
    source "$HOME/.local/share/zsh/zsh-async/async.zsh"
    async_init
    async_start_worker aliasrc_loader load_aliasrc
else
    load_aliasrc
fi

zstyle ':omz:update' frequency 14
zstyle ':omz:update' mode reminder
