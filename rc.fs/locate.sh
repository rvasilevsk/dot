_locateFactoryMac() {
    alias updb="sudo /usr/libexec/locate.updatedb"

    alias loc='locate -i'
    alias loci='locate'
    alias locStat='locate -S'

    alias mdf='mdfind'
    alias mdfName='mdfind -name'
    alias mdfLive='mdfind -live'
    alias mdfLiveName='mdfind -live -name'
    alias mdfDocs='mdfind -onlyin ~/Documents/:~/Dropbox'
}

_locateFactoryLinux() {
    # echo _locateFactoryLinux
    alias loc='locate -i'
    alias loci='locate'
    alias locStat='locate -S' # todo
    # locate -r /testfile$
    alias updb='echo time sudo updatedb; time sudo updatedb'
}

case "$(uname -s)" in
    Linux*)     _locateFactoryLinux;;
    Darwin*)    _locateFactoryMac;;
    # CYGWIN*)    machine=Cygwin;;
    # MINGW*)     machine=MinGw;;
    # *)          machine="UNKNOWN:${unameOut}"
esac

unset -f _locateFactoryMac
unset -f _locateFactoryLinux
