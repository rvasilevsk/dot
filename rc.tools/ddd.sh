# %D date (mm/dd/yy)
# %d day of month (01..31)
# %m month (01..12)
# %y last two digits of year (00..99)
# %a locale’s abbreviated weekday name (Sun..Sat)
# %A locale’s full weekday name, variable length (Sunday..Saturday)
# %b locale’s abbreviated month name (Jan..Dec)
# %B locale’s full month name, variable length (January..December)
# %H hour (00..23)
# %I hour (01..12)
# %Y year (1970…)
# date '+Current Date: %m/%d/%y%nCurrent Time:%H:%M:%S'
# date --date="10 months 2 day ago"

#######################################################################################################################
alias ddd='date +%Y-%m-%d'
alias dddd='date "+%Y-%m-%d %T"'
alias mmm='date %T'

#######################################################################################################################
_cddd_linux()
{
    alias cddd='ddd|xclip -selection clipboard'
    alias cdddd='dddd|xclip -selection clipboard'
    alias cmmm='mmm|xclip -selection clipboard'
}

_cddd_mac()
{
    alias cddd='ddd|pbcopy'
    alias cdddd='dddd|pbcopy'
    alias cmmm='mmm|pbcopy'
}

case "$(uname -s)" in
    Linux*)     _cddd_linux;;
    Darwin*)    _cddd_mac;;
    # CYGWIN*)    machine=Cygwin;;
    # MINGW*)     machine=MinGw;;
    # *)          machine="UNKNOWN:${unameOut}"
esac

unset -f _cddd_linux
unset -f _cddd_mac

#######################################################################################################################
# echo hello | xclip -selection primary
# echo hello | xclip -selection secondary
# echo hello | xclip -selection clipboard
# echo hello | xclip -selection buffer-cut
