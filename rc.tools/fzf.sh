# fzf-marks
# bash zsh tmux


## fzf ################################################################################################################
export FZF_DEFAULT_OPTS='--height 100% --reverse --border'

if [ -n "$ZSH_VERSION" ]; then
   # Zsh
    # shellcheck source=/dev/null
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    # source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh
elif [ -n "$BASH_VERSION" ]; then
   # Bash
    # shellcheck source=/dev/null
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
else
   # something else
    true
fi

## fzf ################################################################################################################
alias fvim='vim $(fzf -m)'

fcd() {
    local DIR
    DIR=$(find ${1:-.} -path '*/\.*' -prune -o -type d -print 2> /dev/null | fzf +m) && cd "$DIR" || return
}

fcda() {
    local DIR
    DIR=$(find * -maxdepth 5 -type d -print 2> /dev/null | fzf-tmux) && cd "$DIR" || return
}

# cdf - cd into the directory of the selected file
cdf() {
    local file
    local dir
    file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir" || return
}

# fkill - kill process
fkill() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -9 "$pid"
    #echo $pid | xargs kill -${1:-9}
  fi
}
