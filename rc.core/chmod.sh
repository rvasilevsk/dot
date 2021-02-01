touchx() {
    echo "touch \"$1\" && chmod +x \"$1\""
    touch "$1" && chmod +x "$1"
}


chmx() {
    echo "chmod +x \"$1\""
    chmod +x "$1"
    echo "ls -lh \"$1\""
    ls -lh "$1"
}

chmX() {
    echo "chmod -x \"$1\""
    chmod -x "$1"
    echo "ls -lh \"$1\""
    ls -lh "$1"
}
