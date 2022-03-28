snh() {
    local msg='
snh - my snap help
alias snncdu="ncdu /var/lib/snapd/snaps"
alias snl="snap list"
alias snla="snap list --all"
alias sni="snap install"
alias snu="snap remove"
alias snch="snap changes"
alias snup="snap refresh"
snui() { remove/install }

sudo snap set system refresh.retain=2'

    echo "$msg"
}

alias snncdu="ncdu /var/lib/snapd/snaps"
alias snl="snap list"
alias snla="snap list --all"
alias sni="snap install"
alias snu="snap remove"
alias snch="snap changes"
alias snup="snap refresh"

snui() {
    echo sudo snap remove "$1"
    sudo snap remove "$1"
    echo sudo snap install "$1"
    sudo snap install "$1"
}
