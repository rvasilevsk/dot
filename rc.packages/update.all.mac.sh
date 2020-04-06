updateAll() {
    # set -o xtrace
    echo -- upgrade_oh_my_zsh -----------
    upgrade_oh_my_zsh
    echo -- tldr --update -----------
    tldr --update
    echo -- rustup update -----------
    rustup update
    echo -- cabal update -----------
    cabal update
    brall
    echo -- sudo /usr/libexec/locate.updatedb -----------
    sudo /usr/libexec/locate.updatedb
    # set +o xtrace
}
