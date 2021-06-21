alias pipcachedir="pip cache dir"
alias pipcachecd="cd $(pip cache dir)"
alias pipcachepurge="pip cache purge"

alias pipcachedu="du -sh $(pip cache dir)"
alias pipcachencdu="ncdu $(pip cache dir)"

pipcachefd() {
    >&2 echo fd $1 $(pip cache dir)
    fd $1 $(pip cache dir)
}

