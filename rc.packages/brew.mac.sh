export HOMEBREW_NO_AUTO_UPDATE=1

brlist() {
    echo fpp
    echo lftp
    echo mycli
}

brfzf() {
    brlist | fzf
}

alias brup="echo brew update; brew update"
alias bri="echo brew install; brew install"
alias brun="echo brew uninstall; brew uninstall"
alias brf="echo brew fetch; brew fetch"
alias brs="echo brew search; brew search"
alias brupg="echo brew upgrade; brew upgrade"
alias brout="echo brew outdated; brew outdated; echo brew cask outdated; brew cask outdated"
alias brcl="echo brew cleanup; brew cleanup"
alias brls="echo brew ls --verbose; brew ls --verbose"
alias brleaves='echo brew leaves; brew leaves'
alias brtree='echo brew deps --tree --installed; brew deps --tree --installed'

# brew tap beeftornado/rmtree
# brew rmtree <package>

alias bci="echo brew cask install; brew cask install"
alias bcun="echo brew cask uninstall; brew cask uninstall"
# alias bcf="echo brew cask fetch --deps; brew cask fetch --deps"
alias bcf="echo brew cask fetch; brew cask fetch"
alias bcs="echo brew cask search; brew cask search"
alias bcupg="echo brew cask upgrade; brew cask upgrade"
alias bcout="echo brew cask outdated; brew cask outdated"
alias bcls="echo brew cask ls --verbose; brew cask ls --verbose"
# alias bccl="echo brew cask cleanup; brew cask cleanup"

brall() {
    echo 'brew update; brew cleanup; brew outdated; brew cask outdated; brew cask upgrade; brew upgrade; brew cleanup;'

    echo -- brew update -----------
    brew update
    echo -- brew cleanup -----------
    brew cleanup
    echo '-- brew outdated; brew cask outdated -----------'
    brew outdated
    brew cask outdated

    # echo -- brew cask upgrade -----------
    # brew cask upgrade
    # echo -- brew cleanup -----------
    # brew cleanup

    echo -- brew upgrade -----------
    brew upgrade
    echo -- brew cleanup -----------
    brew cleanup
}

brdirs() {
    echo /usr/local/Caskroom/
    echo /Users/apple/Library/Caches/Homebrew/
}

brlist() {
    echo p7zip
}

# brbr() {
#     brew list -1 | while read cask; do echo -ne "\x1B[1;34m $cask \x1B[0m"; brew uses $cask --installed | awk '{printf(" %s ", $0)}'; echo ""; done
# }
# brbr() {
#     brew list -1 | while read -r cask; do echo -ne "\x1B[1;34m $cask \x1B[0m"; brew uses $cask --installed | awk '{printf(" %s ", $0)}'; echo ""; done
# }
## shellcheck -s bash /Users/apple/dotfiles/rc/brew.sh
                         # ^-- SC2162: read without -r will mangle backslashes.
                         #                         ^-- SC1117: Backslash is literal in "\x". Prefer explicit escaping: "\\x".
                         #                                          ^-- SC1117: Backslash is literal in "\x". Prefer explicit escaping: "\\x".
                         #                                                              ^-- SC2086: Double quote to prevent globbing and word splitting.
