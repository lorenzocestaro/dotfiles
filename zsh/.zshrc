# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

# Default autoenv filename.
export AUTOENV_ENV_FILENAME=.env

# Path
# export GOPATH=$HOME/Go
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin
export PATH=~/.npm-global/bin:$PATH

# ZSH theme.
ZSH_THEME="node"

# Text editor shell command.
EDITOR='code'

# ZSH configuration.
plugins=(git kubectl)

# User configuration.
export LANG=en_US.UTF-8

# Aliases.
alias dc='docker-compose'
alias kctl='kubectl'

alias fd='HOME=$PWD cd $(find "$HOME" -maxdepth 4 -type d | fzf)'

alias ohmyzsh='$EDITOR $HOME/.oh-my-zsh'
alias zshconfig='$EDITOR $HOME/.zshrc'

# Python env.
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source $(brew --prefix autoenv)/activate.sh

# Disable AUTO_CD (automatically switch dir if you type a subdirectory name).
unsetopt AUTO_CD

source $ZSH/oh-my-zsh.sh
