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
export CHEATCOLORS=true
