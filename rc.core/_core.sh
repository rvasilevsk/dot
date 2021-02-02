unameOut="$(uname -s)"
# unameOut=Darwin
# unameOut=Linux

unset MACHINE_NAME
unset IS_LINUX
unset IS_MAC
unset IS_CYGWIN
unset IS_MINGW
unset IS_UNKNOWN

case "${unameOut}" in
    Linux*)
        MACHINE_NAME=Linux
        IS_LINUX=1
        ;;
    Darwin*)
        MACHINE_NAME=Mac
        IS_MAC=1
        ;;
    CYGWIN*)
        MACHINE_NAME=Cygwin
        IS_CYGWIN=1
        ;;
    MINGW*)
        MACHINE_NAME=MinGw
        IS_MINGW=1
        ;;
    *)
        MACHINE_NAME="UNKNOWN:${unameOut}"
        IS_UNKNOWN=1
esac
unset unameOut

beh_show_is_vars() {
    echo unameOut: "${unameOut}"
    echo MACHINE_NAME: "${MACHINE_NAME}"
    echo IS_LINUX: "${IS_LINUX}"
    echo IS_MAC: "${IS_MAC}"
    echo IS_CYGWIN: "${IS_CYGWIN}"
    echo IS_MINGW: "${IS_MINGW}"
    echo IS_UNKNOWN: "${IS_UNKNOWN}"
    # env | grep -i "is_"
}

#################################################################################
export DOTFILES="$HOME"/Documents/dot
export DOTFILESPRIVATE="$HOME"/Documents/dot-private
export DOTCOMPILER="$DOTFILES"/rc_compiler.py
export DOTASSEMBLED="$HOME"/assembled.sh

deduppath() {
    PATH=$(echo "$PATH" | awk 'BEGIN { RS=":"; }; { gsub(/\/+$/, ""); if (!seen[$0]++) printf sep $0; sep=":" }')
    export PATH
}

f11() {
    export FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"
    "$DOTCOMPILER" --mode=ls | fzf
}

f3() {
    bat "$DOTASSEMBLED"
}

f4() {
    "$DOTCOMPILER" --mode=ls
    # shellcheck source=/dev/null
    source "$DOTASSEMBLED"
    deduppath
}

f5() {
    "$DOTCOMPILER"
    # shellcheck source=/dev/null
    source "$DOTASSEMBLED"
    deduppath
}

f6() {
    for file in "$DOTFILES"/rc*/*.sh
    do
        # echo shellcheck -s bash "$file"
        shellcheck -s bash "$file"
        # echo ----------------------
    done
    unset file
}

rcf1() {
    find "$DOTFILES" -type f -not -path '*/\.*' | fzf --height='100%' --preview='cat {}'
}

if [ ${IS_MAC} ]; then
    rcst() { open -a "Sublime Text" "$DOTFILES" "$DOTFILESPRIVATE"; }
else
    rcst() { subl "$DOTFILES" "$DOTFILESPRIVATE"; }
fi

rccd() {
    cd "$DOTFILES" || return
}
