alias tmuxx='tmux attach || tmux new'

# tmux send ###########################################################################################################
tms() {
    # args=$@
    tmux send-keys -t right "$@" C-m
}

tm-mus() {
    tmux new-session -d "cd $HOME/Music/ && cmus"
    tmux split-window -v "$HOME/Dcouments/dot/bin/cmus-lyrics"
    tmux split-window -h
    # tmux new-window 'mc'
    tmux -2 attach-session -d
}

tm-variants() {
    cat <<EOT
tmn #tmux new -s session-name
tmn #tmux new -s session-name
tmn #tmux new -s session-name
EOT
}

# tm-variants() {
#     echo 'tmn # tmux new -s session-name'
# }

alias tmh='tm-variants | fzf'
