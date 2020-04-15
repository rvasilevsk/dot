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

tmhelp() {
cat << EOF
Ctrl+b Ctrl+(→|←|↑|↓) — изменение размеров панели на 1
Ctrl+b Alt+(→|←|↑|↓)  — изменение размеров панели на 5
Ctrl+b Alt+[1-5]      — выравнивание панелей по-всякому
Cntrl+B Cntrl+o       — Поменять панели местами в одном окне

Ctrl+b PgUp — вход в «режим копирования», после чего:
PgUp, PgDown — скроллинг;
q — выход из «режима копирования».

Ctrl+b c — создать окошко;
Ctrl+b & — закрыть окошко (а можно просто набрать exit в терминале).
Ctrl+b d — отключиться

Ctrl+b 0...9 — перейти в такое-то окошко;
Ctrl+b p — перейти в предыдущее окошко;
Ctrl+b n — перейти в следующее окошко;
Ctrl+b l — перейти в предыдущее активное окошко (из которого вы переключились в текущее);

В одном окошке может быть много панелей:
Ctrl+b % — разделить текущую панель на две, по вертикали;
Ctrl+b " — разделить текущую панель на две, по горизонтали (это кавычка, которая около Enter, а не Shift+2);
Ctrl+b →←↑↓ — переходить между панелями;
Ctrl+b x — закрыть панель (а можно просто набрать exit в терминале).

unbind C-b
set -g prefix C-a
EOF
}
