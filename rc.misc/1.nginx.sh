# linux tested:
alias ngreload='sudo nginx -s reload'
alias ngquit='sudo nginx -s quit'


nglinuxmncat() {
    echo 'xdg-open http://localhost'
    echo 'sudo nginx'
    echo 'sudo nginx -s stop'
    echo 'sudo nginx -s quit'
    echo 'sudo nginx -s reopen'
    echo 'sudo nginx -s reload'
    echo 'sudo nginx -s reload'
    echo 'cd /var/log/nginx'
    echo 'cd /var/www/html'
}


ngmn() {
    res=$(nglinuxmncat | fzf)
    echo 'exec:' "$res"
    eval "$res"
}
