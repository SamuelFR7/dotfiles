eval "$(starship init zsh)"

. "$HOME/.asdf/asdf.sh"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH=$PATH:$HOME/.cargo/bin:$HOME/.local/bin

alias cat="bat --style=auto"
alias ls="exa --icons -1"
alias vim="nvim"

export PROJECTS="$HOME/www"

export FZF_DEFAULT_COMMAND='find $PROJECTS -maxdepth 2 -mindepth 2 -type d'

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

bindkey -s ^f "tms\n"
