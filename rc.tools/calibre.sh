# tldr calibre-server
# tldr calibredb

clbh() {
    echo 'clbserver  calibre-server --port 8083'
    echo 'clbls      calibredb list'
    echo 'clbfd      calibredb list --search'
    echo 'clbids     calibredb search'
    echo ''
    echo 'tldr calibre-server'
    echo 'tldr calibredb'
}

alias clbserver='echo calibre-server --port 8083; calibre-server --port 8083'
alias clbls='echo calibredb list; calibredb list'
alias clbfd='echo calibredb list --search; calibredb list --search'
alias clbids='echo calibredb search; calibredb search'
