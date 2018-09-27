# Path to your oh-my-zsh installation.
export ZSH=/Users/lorenzocestaro/.oh-my-zsh

# Default autoenv filename.
export AUTOENV_ENV_FILENAME=.env

# ZSH theme.
ZSH_THEME="node"

# ZSH configuration.
plugins=(git kubectl)

# User configuration
export LANG=en_US.UTF-8

# Aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"
alias dj="python manage.py"
alias dc="docker-compose"
alias dcb="docker-compose -f docker-compose.backend.yml"

# Python env.
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source $(brew --prefix autoenv)/activate.sh

# Setup fzf ad fd.
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="$PATH:/usr/local/opt/fzf/bin"
fi
export FZF_DEFAULT_COMMAND="fd --type file --color=always"
export FZF_DEFAULT_OPTS="--ansi"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
function fd() {
    dir=$(fzf)
    cd ./$(dirname $dir)
}

source $ZSH/oh-my-zsh.sh
