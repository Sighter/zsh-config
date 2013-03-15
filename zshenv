
# set up your editor
export EDITOR='vim -p'

# dont set this because of framebuffer detection will not work
# export TERM='xterm-256color'

export LC_ALL=en_US.utf-8 
export LANG="$LC_ALL"

# keep the entries of the variable path unique
typeset -U path                 
path=(/usr/local/bin $HOME/bin $path) # add your dirs to path

# Some Colors for the Ls-Programm
ls_main='di=1;36:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:'
col_pics='91'
col_archive='32'
col_sound='34'
col_docs='33'
col_vids='34'

ls_pic="*.png=$col_pics:*.jpg=$col_pics:"
ls_archive="*.gz=$col_archive:*.rar=$col_archive:*.zip=$col_archive:*.tar=$col_archive:"                        
ls_sound="*.mp3=$col_sound:*.wav=$col_sound:*.wave=$col_sound:*.ogg=$col_sound:*.flac=$col_sound:*.pls=$col_sound:*.m3u=$col_sound:"
ls_vid="*.wmv=$col_vids:*.avi=$col_vids:*.rmvb=$col_vids:*.mpg=$col_vids:*.ogv=$col_vids:"
ls_docs="*.doc=$col_docs:*.pdf=$col_docs:*.rtf=$col_docs:*.txt=$col_docs:*.nfo=$col_docs:*.odt=$col_docs:*.xls=$col_docs:"
ls_dev="*.cpp=34:*.c=34:*.h=91:*.lua=91:*.py=91"

export LS_COLORS="$ls_main$ls_pic$ls_archive$ls_sound$ls_vid$ls_docs$ls_dev"

export TEXMFHOME="$HOME/texmf"

# Less Colors
# see http://en.wikipedia.org/wiki/ANSI_escape_code for
# colorcodes
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
