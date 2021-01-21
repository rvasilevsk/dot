updateAll() {
    # todo: echo on, if rustup

    sudo echo updateAll, carbinall, pycharm, zeal, ytdl, wportable
    # echo cabal update
    # cabal update

    echo rustup update
    rustup update

    echo tldr --update
    tldr --update

    echo apt update / autoremove / upgrade
    apt update
    apt autoremove -y
    apt upgrade -y
    apt autoremove -y

    # carbinall
    cargo cache -a

    echo sudo updatedb
    sudo updatedb
}
