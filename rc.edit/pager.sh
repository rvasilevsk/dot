### vimpager ##########################################################################################################
# export PAGER=/usr/bin/vimpager

### bat ###############################################################################################################
# [bat error]: Use of bat as a pager is disallowed in order to avoid infinite recursion problems
# export PAGER=bat

### most ##############################################################################################################
# export PAGER=/usr/bin/most

### less ######################################################################
export PAGER=/usr/bin/less

### aliases ###########################################################################################################
# alias less="$PAGER"
# alias zless="$PAGER"

# pager_unalias() {
#     echo unalias less
#     unalias less
#     echo unalias zless
#     unalias zless
# }

## colors #############################################################################################################
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

#######################################################################################################################
# export LESS="-isM"
export LESS="-isRXF"
# -i or --ignore-case
# -s or --squeeze-blank-lines
# -R or --RAW-CONTROL-CHARS
# -X or --no-init - [beh] don't clear screen
# -F or --quit-if-one-screen

#######################################################################################################################
export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man ts=4 nomod nolist noma number norelativenumber' -\""

#######################################################################################################################
# export MANPAGER="/usr/local/bin/most -s"

#######################################################################################################################
# export MANPAGER=less
# export MANPAGER="less -X"; # Don’t clear the screen after quitting a manual page

# export MANPAGER="/bin/sh -c \"unset MANPAGER;col -b -x | \
#                  view -R \
#                       -c 'set ft=man nomod nolist' \
#                       -c 'set nonumber' \
#                       -c 'map q :q<CR>' \
#                       -c 'map <SPACE> <C-F>' -c 'map b <C-U>' \
#                       -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""

