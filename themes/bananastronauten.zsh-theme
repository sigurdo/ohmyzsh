PROMPT='%{$reset_color%}%{$fg[yellow]%}%~ %{$reset_color%}$(git_prompt_info)%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}) "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
