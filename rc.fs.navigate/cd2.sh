# alias /='cd /'
alias ~='cd ~'
alias cd..='cd ..'
alias ..='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

alias ...="cd ../.."
alias ....="cd ../../.."

# alias cd- ="cd -"                 # Go to previous dir with -
# alias -- ="cd -"                  # Go to previous dir with -

# -=  WTF ???
# alias -- -="cd -"                  # Go to previous dir with -

alias cd.='cd $(readlink -f .)'    # Go to real dir (i.e. if current dir is linked)
# readlink: illegal option -- f

# dirs: Display the directory stack
# pushd: Push directory into the stack
# popd: Pop directory from the stack and cd to it

#TODO
# cdfrommc() {

# }

# cdfromranger() {
	
# }