BGREEN="%{$fg_bold[green]%}"
BRED="%{$fg_bold[red]%}"
GREEN="%{$fg[green]%}"
BYELLOW="%{$fg_bold[yellow]%}"
YELLOW="%{$fg[yellow]%}"
CYAN="%{$fg_bold[cyan]%}"
BLUE="%{$fg_bold[blue]%}"
RED="%{$fg_bold[red]%}"
RESET="%{$reset_color%}"

PROMPT_SYMBOL="»"

ZSH_THEME_GIT_PROMPT_PREFIX=" $YELLOW\uf402 $BLUE"
ZSH_THEME_GIT_PROMPT_SUFFIX="$RESET"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="!"
ZSH_THEME_GIT_PROMPT_RENAMED="»"
ZSH_THEME_GIT_PROMPT_DELETED="x"
ZSH_THEME_GIT_PROMPT_UNMERGED="="
ZSH_THEME_GIT_PROMPT_AHEAD="⇡"
ZSH_THEME_GIT_PROMPT_BEHIND="⇣"
ZSH_THEME_GIT_PROMPT_DIVERGED="⇕"

function git_status() {
    if [[ $(git_prompt_status) ]]; then
        echo " [$(git_prompt_status)] "
    else
        echo " "
    fi
}

function command_status() {
    if [[ $? -ne 0 ]]; then
        echo "$BRED"
    else
        echo "$BGREEN"
    fi
}

PROMPT='$(command_status)⬢ $BYELLOW%c$(git_prompt_info)$(git_status)$BGREEN$PROMPT_SYMBOL $RESET'
