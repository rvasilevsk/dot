_duFactoryMac() {
    alias dff='df -h /Volumes/*'
    alias ncdu='ncdu --color dark'
}

_duFactoryLinux() {
    alias duu='du -h --max-depth=1 | sort -h'
    alias dff='df -h /dev/sd*'
}

case "$(uname -s)" in
    Linux*)     _duFactoryLinux;;
    Darwin*)    _duFactoryMac;;
    # CYGWIN*)    machine=Cygwin;;
    # MINGW*)     machine=MinGw;;
    # *)          machine="UNKNOWN:${unameOut}"
esac

unset -f _duFactoryMac
unset -f _duFactoryLinux
