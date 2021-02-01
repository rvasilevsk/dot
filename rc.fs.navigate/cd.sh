# alias ~='cd ~'
# alias ..='cd ..'
# alias cd..='cd ..'
# alias .2='cd ../../'
# alias .3='cd ../../../'
# alias .4='cd ../../../../'
# alias .5='cd ../../../../..'

# alias ..2='cd ../../'
# alias ..3='cd ../../../'
# alias ..4='cd ../../../../'
# alias ..5='cd ../../../../..'

alias cd1='cd ..'
alias cd2='cd ../../'
alias cd3='cd ../../../'
alias cd4='cd ../../../../'
alias cd5='cd ../../../../..'

alias cdh='cd ~'
alias cddw='cd ~/Downloads'
alias cdd='cd ~/Documents'
alias cdm='cd ~/Music'
alias cdv='cd ~/Videos'
alias cdp='cd ~/Pictures'

# alias ...="cd ../.."
# alias ....="cd ../../.."

# alias c-="cd -"
alias cd-="cd -"

alias cd.='cd $(readlink -f .)'    # Go to real dir (i.e. if current dir is linked)
# mac? readlink: illegal option -- f

# dirs: Display the directory stack
# pushd: Push directory into the stack
# popd: Pop directory from the stack and cd to it

#TODO
# cdfrommc() {

# }

# cdfromranger() {

# }
