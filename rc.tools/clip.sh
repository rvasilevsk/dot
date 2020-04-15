# [A few xclip aliases to simplify copying/pasting](https://gist.github.com/yiboyang/b46a6ed848a2b83fb625)

_clipFactoryMac() { # TODO
    alias ctc='pbcopy'
    alias ctv='pbpaste'
}

_clipFactoryLinux() {
    alias ctc='xclip' # copy to X clipboard (register *)
    alias ctcs='xclip -selection clipboard' # copy to system wide clipboard (register +)
    alias ctv='xclip -o' # output copied content (paste)
    alias ctvs='xclip -o -selection clipboard' # paste from system wide clipboard (equivalent to `v -selection clipboard`)
}

case "$(uname -s)" in
    Linux*)     _clipFactoryLinux;;
    Darwin*)    _clipFactoryMac;;
    # CYGWIN*)    machine=Cygwin;;
    # MINGW*)     machine=MinGw;;
    # *)          machine="UNKNOWN:${unameOut}"
esac

unset -f _clipFactoryMac
unset -f _clipFactoryLinux
