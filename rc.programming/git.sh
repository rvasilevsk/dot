alias gist='git status'
alias gitst='git status'
alias gia.='git add .; git status'
alias giai='git add -i'
alias gicmsg='git commit -m'
alias gic-='git commit -m "-"'
alias gipush='git push'
alias giConfList='git config --list'
alias giLog='git log --pretty=oneline'

alias girv='git remote -v'

alias gidiff='git diff'
alias gidiffs='git diff --staged'
alias gidiffw='git diff --word-diff'
alias gidifft='git diff-tree --no-commit-id --name-only -r'

alias gitorigurl='git config --get remote.origin.url'

ggg() {
    git add .
    git status
    git commit -a -m "$1" && git push
}

alias gi...='git add .; git status; git commit -m "-"; git push'

## tig ################################################################################################################
alias tigst="tig status"

## git ################################################################################################################
# function lazygit() {
#     git add .
#     git commit -a -m "$1"
#     git push
# }

# [Remove .DS_Store from the repository you happen to staging by mistake | Bash One-Liners](http://www.bashoneliners.com/oneliners/185/)
# find . -name .DS_Store -exec git rm --ignore-unmatch --cached {} +

