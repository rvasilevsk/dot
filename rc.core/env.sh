# echo --- "$_ (env.sh -> assembled.sh)" # debug
# @priority=0


# PATH ########################################################################
alias pln=pathln

export GOPATH="$HOME/go"
GO_BIN="$GOPATH/bin"
CARGO_BIN="$HOME/.cargo/bin"
COMPOSER_BIN="$HOME/.composer/vendor/bin"
SQLITE_BIN="/usr/local/opt/sqlite/bin"
CONDA_BIN="$HOME/miniconda3/bin"
MONGO_BIN="$HOME/bin/mongodb-osx-x86_64-4.0.12/bin"
NODE_BIN="$HOME/bin/node-v12.14.0-linux-x64/bin"
SWIFT_BIN="/home/beh/bin/swift-5.2.4/usr/bin"
# $HOME/bin/mongodb
export JAVA_HOME=/usr/lib/jvm/default-java
export PATH="/usr/local/sbin:$HOME/bin:$HOME/.local/bin:$PATH:$CONDA_BIN:$MONGO_BIN:$CARGO_BIN:$COMPOSER_BIN:$SQLITE_BIN:$GO_BIN:$NODE_BIN:$SWIFT_BIN"
export CDPATH=:..:~:/Volumes:~/Documents/:~/Documents/dev/:~/Documents/dev-beh/:~/Dropbox/drop-docs/:



# /usr/local/opt/sqlite/bin
# /Users/apple/bin
# /usr/local/sbin
#
# /Users/apple/miniconda3/bin
# /Users/apple/.cargo/bin
# /Users/apple/go/bin
# /Users/apple/bin/mongodb
# /Users/apple/.composer/vendor/bin
#
# /opt/local/bin
# /usr/local/bin
# /usr/bin
# /bin
# /usr/sbin
# /sbin
# /opt/X11/bin
# /usr/local/go/bin
# /Library/Frameworks/Mono.framework/Versions/Current/Commands
# /Applications/Wireshark.app/Contents/MacOS
# /Applications/Xamarin Workbooks.app/Contents/SharedSupport/path-bin
# /Users/apple/.fzf/bin

###############################################################################
export BYOBU_PREFIX=/usr/local

###############################################################################
if [ -n "$ZSH_VERSION" ]; then
    # Zsh
   true
elif [ -n "$BASH_VERSION" ]; then
    # Bash
    true
else
    # something else
    true
fi

#######################################################################################################################
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

#######################################################################################################################
# needed for tmux colors
export TERM="screen-256color"

#######################################################################################################################
export EDITOR=vim
# export EDITOR='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
# export EDITOR='open -a Sublime\ Text'
export CHEATCOLORS=true

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
