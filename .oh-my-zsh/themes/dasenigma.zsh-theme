local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ %s)"
PROMPT='%{$fg[cyan]%}%c %{$reset_color%}$(git_prompt_info)%{$fg[cyan]%}> %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%} x %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
