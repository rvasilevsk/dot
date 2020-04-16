#######################################################################################################################
export HISTSIZE=32000
export HISTFILESIZE=$HISTSIZE
export HISTIGNORE='mc:ls:history:h:f5:f6:htop:cd:cd -:pwd:exit:date:* --help'
export HISTTIMEFORMAT='%F %T '

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend


alias hgrep='history | grep -i'
alias h='history'

# alias hsync='history -a; history -c; history -r;' # разобраться
# history -w
# history -r

# h() {
#   if [[ -z "$1" ]]; then
#     history
#   else
#     history 0 | grep "$*"
#   fi
# }
