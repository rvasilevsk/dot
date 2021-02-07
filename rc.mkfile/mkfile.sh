mknerdtreeignore() {
    local F=.nerdtreeignore
    if [[ "$1" != "-F" ]] && [[ -f "$F" ]]; then
        echo "$F exists"
        echo "use -F to force"
        return
    fi

    {
        echo '\.git$[[dir]]'
        echo '\.py[co]$[[file]]'
    } > "$F"
    ls -lh "$F"
    cat "$F"
}
