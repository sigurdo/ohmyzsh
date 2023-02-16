prompt_path() {
    echo "%{$fg[yellow]%}$(shrink_path -f)%{$reset_color%} "
}

git_prompt() {
    if [[ $(pwd -P) == "/mnt/"* ]]
    then
        exit 0
    fi
    if [ "$(git rev-parse --show-toplevel 2> /dev/null)" = $HOME ]
    then
        exit 0
    fi

    echo "$(git_prompt_info) "
}

prompt_symbol() {
    color="%(?:$fg_bold[green]:$fg_bold[red])"
    symbol="%(!:#:>)"
    echo "%{$color%}$symbol%{$reset_color%} "
}

PROMPT='$(prompt_path)$(git_prompt)$(prompt_symbol)'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
ZSH_THEME_GIT_PROMPT_CLEAN=" 🎉"
ZSH_THEME_GIT_PROMPT_DIRTY=" 🤔"
