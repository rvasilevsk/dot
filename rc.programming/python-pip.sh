## pip --user test.pypi
tpipiu() {
    >&2 echo test.pypi --user
    >&2 echo pip install --user --index-url https://test.pypi.org/simple/ $1
    pip install --user --index-url https://test.pypi.org/simple/ $1
}

## pip show
alias pipshow='pip show'
alias pipshowu='pip show --user'

## pip cache
alias pipcachedir='pip cache dir'
alias pipcachecd='cd $(pip cache dir)'
alias pipcachepurge='pip cache purge'

alias pipcachedu='du -sh $(pip cache dir)'
alias pipcachencdu='ncdu $(pip cache dir)'

pipcachefd() {
    >&2 echo fd $1 $(pip cache dir)
    fd $1 $(pip cache dir)
}

## pip fzf
pipfzf() {
    pip freeze | tr '==' ' ' | awk '{print $1}' | fzf --preview 'pip show -f {}'
}

pipufzf() {
    pip freeze --user | tr '==' ' ' | awk '{print $1}' | fzf --preview 'pip show -f {}'
}

## pip locate
alias locvenv='locate -r /venv$'

