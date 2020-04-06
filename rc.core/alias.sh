# alias.sh

function mdcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

#######################################################################################################################
# alias vi='vim'
# alias vim="/usr/local/bin/vim -p"

alias j='jobs -l'

alias _="sudo"

alias rsync="rsync -vh"
alias json="json -c"
alias psgrep="psgrep -i"

# List declared aliases, functions, paths
alias alis="alias | sed 's/=.*//'"
alias fns="declare -f | grep '^[a-z].* ()' | sed 's/{$//'"
alias paths='echo -e ${PATH//:/\\n}'

# https://github.com/jhspetersson/fselect/blob/master/docs/usage.md
# Global aliases
if [ -n "$ZSH_VERSION" ]; then
    alias -g G="| grep -i"
    alias -g H="| head"
    alias -g T="| tail"
    alias -g L="| less"
    alias -g C="| pbcopy"
    alias -g FZ="| fzf"
    # book
    alias -g BK="| grep -i -E '\\.(fb2|fb2\\.zip|djvu?|pdf|epub|mobi)$'"
fi
