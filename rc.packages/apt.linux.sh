aptlist() {
    # [How to check package dependencies with apt-rdepends - TechRepublic](https://www.techrepublic.com/article/how-to-check-package-dependencies-with-apt-rdepends/)
    # sudo apt install apt-rdepends
    # apt-rdepends php
    # apt-rdepends -r php
    # sudo apt-install graphviz
    # apt-rdepends --dotty php | dot -Tpng > ~/Pictures/php-dependencies.png
    echo apt-rdepends

    echo fpp
    echo lftp
    echo mycli
}

aptfzf() {
    aptlist | fzf
}

alias apts='echo "apt search"; apt search'
alias aptinf='echo "apt show"; apt show'

alias aptup='echo "apt update"; apt update'
alias aptd='echo "apt download"; apt download'
alias aptf='echo "apt download (fetch on mac)"; apt download'
alias apti='echo "apt install"; apt install'
alias aptrm='echo "apt remove"; apt remove'

alias aptls='echo "apt list --installed"; apt list --installed'
alias aptlsall='echo "apt list"; apt list'
alias aptout='echo "apt list --upgradable"; apt list --upgradable'

alias aptcd='cd /var/cache/apt/archives'
alias aptsize='du -hs /var/cache/apt/archives'
alias aptcl='echo "apt clean"; apt clean'

# alias aptleaves='echo apt leaves; apt leaves'
# alias apttree='echo apt deps --tree --installed; apt deps --tree --installed'


# apt-rdepends --dotty ranger | dot -Tpng > ~/Pictures/ranger-dependencies.png
# aptall() {
#     type aptall
#     apt update
#     # apt list --upgradable
#     apt upgrade
# }

alias aptall='type aptall; apt update; apt upgrade'

aptdep() {
    local out="~/Pictures/$1-dependencies.png"
    apt-rdepends --dotty "$1" | dot -Tpng > "$out"
    echo "$out"
    unset out
}

# brdirs() {
#     echo /usr/local/Caskroom/
#     echo /Users/apple/Library/Caches/Homebrew/
# }

# brlist() {
#     echo p7zip
# }

