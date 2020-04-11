updateAll() {
    # todo: echo on, if rustup

    sudo echo updateAll, pycharm, zeal, ytdl, wportable
    echo cabal update
    cabal update

    echo rustup update
    rustup update

    echo tldr update
    tldr update

    echo apt update / autoremove / upgrade
    apt update
    apt autoremove
    apt upgrade

    echo sudo updatedb
    sudo updatedb
}
