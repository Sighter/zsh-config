# ZSH Theme emulating the Fish shell's default prompt.

_fishy_collapsed_wd() {
  echo $(pwd | perl -pe "s|^$HOME|~|g; s|/([^/][^/])[^/]*(?=/)|/\$1|g")
}

local user_color='white'; [ $UID -eq 0 ] && user_color='red'
local machine_color='blue'
local pwd_color='white'

local prefix="%{$fg_bold[red]%}<%{$reset_color%}%{$fg[red]%}<%{$reset_color%} "
local user_part="%{$fg_bold[$user_color]%}%n "
local machine_part="%{$fg_bold[white]%}[%{$reset_color%}%{$fg_bold[$machine_color]%}%m%{$reset_color%}%{$fg_bold[white]%}]%{$reset_color%} "
local suffix="%{$fg[red]%}>%{$reset_color%}%{$fg_bold[red]%}>%{$reset_color%} "

PROMPT='$prefix$user_part$machine_part%{$fg[$pwd_color]%}$(_fishy_collapsed_wd)%{$reset_color%} $suffix'
PROMPT2='%{$fg_bold[red]%}\ %{$reset_color%}'

local return_status="%{$fg_bold[red]%}%(?..%?)%{$reset_color%}"
#RPROMPT='${return_status}$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'
RPROMPT='${return_status}$(git_prompt_info)%{$reset_color%}'
#
ZSH_THEME_GIT_PROMPT_PREFIX=" "
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[magenta]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[cyan]%}?"
