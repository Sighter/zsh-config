
# program shortcuts
alias p="pacman"    # pacman call
alias y="yaourt"    # yaourt call
alias e="vim -p"    # vim tabbed
alias m="mplayer"   # mplayer
alias irsc='if pgrep irssi;then screen -x irssi;else screen -S irssi irssi;fi'		# start screen with irssi in it if its isnt runnig
alias switchtowin="sudo switchtowin"
alias lsaliases="cat ~/.oh-my-zsh/custom/aliases.zsh"

# listings
alias lt="ls -h -l -t --group-directories-first -F --color"     # long listing sorted by time
alias ll="ls -h -l --group-directories-first -F --color"        # long listing sorted by name
alias la="ls -h -l -a --group-directories-first -F -X --color"  # long listing all files

# program modification
alias grep='grep --color=tty -d skip'                   # color use for grep
alias startx="startx > /home/sighter/.x11.output.log"   # log the x-output

# todo - git
alias gl="git log"
alias gst="git status"
alias gb="git branch"
alias gc="git checkout"
alias gd="git diff"
alias ga="git add"
alias gcm="git commit -m"
alias gco="git commit"

# global aliases -- handle with care -- z-shell only
alias -g xc="| xclip"			# pipe something to the X-clipboard
alias -g G="| grep"				# pipe something to grep 
alias -g sp="| sprunge"			# pipe something to sprunge

# vim def
alias vimc="vim -p (*.h|*.cc|*.cpp)"
alias vimp="vim -p (*.py)"

# source config
alias scon="source ~/.zshenv && source ~/.zshrc"
