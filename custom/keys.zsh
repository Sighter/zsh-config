#  vim: ft=zsh
#
# Zsh Config for The keybindings

bindkey "\e[1~" beginning-of-line
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[3~" delete-char
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward
# bindkey -M menuselect "\C-N" accept-and-menu-complete 

# gnome terminal
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey -s "^a" "mc\r"




