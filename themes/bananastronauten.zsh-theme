print_prompt_path() {
    echo "$fg[yellow]%~$reset_color "
}

print_git_prompt() {
    if [ "$(pwd)" != "$HOME" ]
    then
        echo "$(git_prompt_info)$reset_color "
    fi
}

print_prompt_symbol() {
    color="%(?:$fg_bold[green]:$fg_bold[red])"
    symbol="%(!:#:>)"
    echo "$color$symbol$reset_color "
}

PROMPT='$(print_prompt_path)$(print_git_prompt)$(print_prompt_symbol)'

ZSH_THEME_GIT_PROMPT_PREFIX="($fg_bold[cyan]"
ZSH_THEME_GIT_PROMPT_SUFFIX="$reset_color)"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$fg_bold[magenta]*"

~/fish_greeting_utils/target/release/fish_greeting_utils arch
print -P "$fg_bold[magenta]%m Arch WSL$reset_color" | center
printf "$fg_bold[yellow]"
date +"%A %-d. %B %Y" | center
printf "$reset_color$fg[cyan]"
date +"%R" | toilet -w $COLUMNS -f future | center
printf "$reset_color"
