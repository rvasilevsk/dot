alias npmi="npm install"
alias npmig="npm install -g"
alias npmun="npm uninstall"
alias npmout="npm outdated"
alias npmup="npm update"
alias npmri="rm -r node_modules && npm install"
alias npmcheck="npm-check -su"

###############################################################################
# https://stackify.com/top-command-line-tools/

# npm install --global pageres-cli

# npm install -g diff2html-cli
alias d2h=diff2html

diff2h() {
    diff -u "$1" "$2" | diff2html -i stdin
}

# npm install -g caniuse-cmd
alias ciu='caniuse'

# brew install httpie

# brew update && brew install icdiff

# npm install -g moro

# gem install timetrap

# npm i -g movie-cli

# npm install hget -g
