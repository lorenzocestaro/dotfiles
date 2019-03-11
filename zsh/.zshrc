# Path to your oh-my-zsh installation.
export ZSH=/Users/$(whoami)/.oh-my-zsh

# Default autoenv filename.
export AUTOENV_ENV_FILENAME=.env

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
alias dcb='docker-compose -f docker-compose.backend.yml'
alias dj='python manage.py'
alias fd='HOME=$PWD cd $(find "$HOME" -maxdepth 4 -type d | fzf)'
alias ohmyzsh='$EDITOR $HOME/.oh-my-zsh'
alias zshconfig='$EDITOR $HOME/.zshrc'

# Python env.
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source $(brew --prefix autoenv)/activate.sh

source $ZSH/oh-my-zsh.sh
