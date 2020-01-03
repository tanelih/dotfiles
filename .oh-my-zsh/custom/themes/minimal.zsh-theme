ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[red]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$reset_color%} "

PROMPT='%{$fg[white]%}%~%{$reset_color%} $(git_prompt_info)%{$fg[yellow]%}$%{$reset_color%}%b '
