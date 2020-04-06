export ARIA_DIR="$HOME/Downloads/aria"

# Download 1 file at a time (-j)
# continuing (-c) any partially downloaded ones
# reading urls from the file (-i)
# to the directory specified (-d)
# seed-time=0
# seed-ratio=0

aria_by_dir() {
    local cmd="aria2c -j5 -c --seed-time=0 -i '$1/aria.list' --save-session '$1/aria.sess' --dir '$1'"
    echo "$cmd"
    eval "$cmd"
    unset cmd
}

alias ar.='aria_by_dir .'
alias arr='aria_by_dir "$ARIA_DIR"'
alias arcd='cd "$ARIA_DIR"'
alias arls='ls -lh "$ARIA_DIR"'
alias arst='mkdir -p "$ARIA_DIR"; touch "$ARIA_DIR"/aria.list && st "$ARIA_DIR"/aria.list'
