# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

source "${ZINIT_HOME}/zinit.zsh"


zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light Aloxaf/fzf-tab
zinit light jirutka/zsh-shift-select

autoload -Uz compinit
compinit

# -q is for quiet; actually run all the `compdef's saved before `compinit` call
# (`compinit' declares the `compdef' function, so it cannot be used until
# `compinit' is ran; Zinit solves this via intercepting the `compdef'-calls and
# storing them for later use with `zinit cdreplay')

zinit cdreplay -q

export PATH=/opt/homebrew/bin:$PATH

bindkey '^P' history-search-backward
bindkey '^N' history-search-forward
bindkey '^J' down-line-or-history
bindkey '^K' up-line-or-history
# bindkey '^H' backward-char
# bindkey '^L' forward-char


# # ctrl + cmd + h
bindkey "^[[104;5u" beginning-of-line
# # ctrl + cmd + l
bindkey "^[[108;5u" end-of-line
# # ctrl + alt + l
bindkey "^[^L" forward-word
# # ctrl + alt + h
bindkey "^[^H" backward-word
bindkey "^U" kill-whole-line
bindkey "^[[101;6u" kill-line
# ctrl+ shift + w
bindkey "^[[119;6u" backward-kill-line


bindkey -s '^B' 'cd ..^M'
# ^M or ^I
# bindkey -s ';5u' 'cd -^M'
 bindkey -s '^O' 'cd -^M'


# select all line
# bindkey '^[[1;10C' select-line

alias vim=nvim
alias v=nvim
alias c=clear
alias ls='eza $eza_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --all --header --long $eza_params'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias tree='eza --tree $eza_params'
alias fzf="fzf --style full \
    --preview 'fzf-preview.sh {}' --bind 'focus:transform-header:file --brief {}'"
alias n=navi
alias rm=rip
alias ol=ollama
alias tl=tldr
alias tm='task-master'

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

source <(fzf --zsh)

eval "$(zoxide init --cmd cd zsh)"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
fi

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

export XDG_CONFIG_HOME="$HOME/.config"

export GEMINI_FREE_API_KEY=$GEMINI_FREE_KEY
export GEMINI_API_KEY=$GEMINI_KEY
export ANTHROPIC_API_KEY=$ANTHROPIC_KEY
export GOOGLE_SEARCH_API_KEY=$GOOGLE_SEARCH_KEY
export GOOGLE_SEARCH_ENGINE_ID=$GOOGLE_SEARCH_ENGINE_ID
export KAGI_API_KEY=$KAGI_KEY

export AVANTE_ANTHROPIC_API_KEY=$ANTHROPIC_KEY
export AVANTE_GEMINI_API_KEY=$GEMINI_KEY

export EDITOR=/run/current-system/sw/bin/nvim
export NAVI_PATH=$HOME/.config/navi
export ANDROID_HOME=$HOME/Library/Android/sdk

# espanso
export CONFIG=$HOME/.config/espanso
eval $(thefuck --alias)


export PATH=~/.npm-packages/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export NODE_PATH=~/.npm-packages/lib/node_modules
export JAVA_HOME=/opt/homebrew/opt/openjdk@21

# yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	# rm -f -- "$tmp"
    rm -- "$tmp"
}



export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/p1n9/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/p1n9/.bun/_bun" ] && source "/Users/p1n9/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/p1n9/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/p1n9/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/p1n9/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/p1n9/google-cloud-sdk/completion.zsh.inc'; fi
