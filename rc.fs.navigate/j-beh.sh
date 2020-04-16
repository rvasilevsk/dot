jvars() {
    J_DB_FILE="$HOME/.jpathdb"
    J_TEMP_FILE="$TMPDIR/jdir.temp"
}

jj() {
    jvars
    jmain -default="." -of="$J_TEMP_FILE" -ifilter="$1"
    CONTENT=$(cat "$J_TEMP_FILE")
    rm "$J_TEMP_FILE"
    cd "$CONTENT" || false
}

jopen() {
    jvars
    jmain -default="." -of="$J_TEMP_FILE" -ifilter="$1"
    CONTENT=$(cat "$J_TEMP_FILE")
    rm "$J_TEMP_FILE"
    open "$CONTENT"
}

jdblist() {
    jvars
    echo "*** $J_DB_FILE **********"
    cat "$J_DB_FILE"
}
