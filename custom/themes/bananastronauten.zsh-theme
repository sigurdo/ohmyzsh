rgb_color() {
    r=$1
    g=$2
    b=$3
    echo "[38;2;$r;$g;${b}m"
}

bold_on="[1m"

prompt_path() {
    echo "%{$fg_bold[yellow]%}$(shrink_path -f)%{$reset_color%} "
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
# ZSH_THEME_GIT_PROMPT_PREFIX="(%{$(rgb_color 92 197 197)%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%})"
# ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg_bold[red]%}🎉"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{[93m%}🤔"
