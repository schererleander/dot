source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg-8"
export ZSH_AUTOSUGGEST_STRATEGY=("history")

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# view man pages with nvim
export MANPAGER="nvim +Man!"

# Directory completion with trailing slash
zstyle ':completion:*' list-dirs-first true
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' add-space false

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pure theme
autoload -U promptinit; promptinit
prompt pure

# vim keybindings
bindkey -v

alias ls="ls --color=auto"

eval "$(zoxide init zsh)"
export PATH="/opt/homebrew/opt/openjdk@21/bin:$PATH"