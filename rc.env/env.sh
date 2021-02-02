envstarted() {
    env | grep -i "^$1"
}

envstartedi() {
    env | grep "^$1"
}
