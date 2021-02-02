export DIR_DOT="$HOME"/Documents/dot
export DIR_DOT_PRIVATE="$HOME"/Documents/dot-private

export DIR_VIM="$HOME"/dotfiles_vim
export DIR_SNIPS="$HOME"/dotfiles_vim/UltiSnips
export DIR_VIM_TEMP="$HOME"/tmp/vim
mkdir -p "$DIR_VIM_TEMP"

export DIR_DEV="$HOME"/Documents/dev
export DIR_WWC="$DIR_DEV"/play_c/wwc
export DIR_WWCPY="$DIR_DEV"/play_c/wwc_py

envdirsall() {
    env | grep "^DIR_"
}

envdirs() {
    env | grep "^DIR_" | sed -e "s/^[a-zA-Z_]\+=//g"
    # -e script, --expression=script
    #    add the script to the commands to be executed
}

cdenvdirs() {
    local DIR=$(envdirs | fzf)
    [ -z $DIR ] || cd "$DIR"
}
