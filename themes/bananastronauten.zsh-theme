prompt_path() {
    echo "$fg[yellow]$(shrink_path -f)$reset_color "
}

git_prompt() {
    if [ $(git rev-parse --show-toplevel) != $HOME ]
    then
        echo "$(git_prompt_info) "
    fi
}

prompt_symbol() {
    color="%(?:$fg_bold[green]:$fg_bold[red])"
    symbol="%(!:#:>)"
    echo "$color$symbol$reset_color "
}

PROMPT='$(prompt_path)$(git_prompt)$(prompt_symbol)'

ZSH_THEME_GIT_PROMPT_PREFIX="($fg_bold[cyan]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$reset_color)"
ZSH_THEME_GIT_PROMPT_CLEAN=" 🎉"
ZSH_THEME_GIT_PROMPT_DIRTY=" 🤔"
