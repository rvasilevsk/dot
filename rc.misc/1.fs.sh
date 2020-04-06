#######################################################################################################################
# -A     Turn on ANSI line graphics hack when printing the indentation lines.
# -d     List directories only.
# -L     level

# alias tree="tree -A"
alias trd="tree -d"
alias tr1="tree -d -L 1"
alias tr2="tree -d -L 2"

# Directory listing/traversal #########################################################################################
# ls:
# -a, --all
# -l     use a long listing format
# -h, --human-readable
# -A, --almost-all
# -t     sort by modification time, newest first
# -r, --reverse
# -F, --classify - append indicator (one of */=>@|) to entries
# -G in a long listing, don't print group names

# ls ##################################################################################################################
# gls: supports --group-directories-first
# mac ls: not
#
# mac:
# ls -lh | sort -k1 -r
# pipe => color is off
#
# gls on mac: xargs marker "@"" not supported

# gls #################################################################################################################
# LS_COLORS=$(is-supported "ls --color" --color -G)
# LS_TIMESTYLEISO=$(is-supported "ls --time-style=long-iso" --time-style=long-iso)
# LS_GROUPDIRSFIRST=$(is-supported "ls --group-directories-first" --group-directories-first)

# LS_COLORS='--color -G'
# LS_TIMESTYLEISO='--time-style=long-iso'
# LS_GROUPDIRSFIRST='--group-directories-first'
# LS_COLORS=''

# LS_TIMESTYLEISO=''
# LS_GROUPDIRSFIRST=''
# LS=" $LS_COLORS $LS_GROUPDIRSFIRST $LS_TIMESTYLEISO"

# alias la="gls -a $LS"
# alias ll="gls -lh $LS"
# alias lla="gls -lha $LS"

# ls ##################################################################################################################
# https://geoff.greer.fm/lscolors/
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export CLICOLOR=1

alias la="ls -a"
alias l.='ls -d .*'
alias ll.='ls -lhd .*'
alias ll="ls -lh"
alias lla="ls -lha"

# alias l="ls -lahAF $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
# alias ll="ls -lAF $LS_COLORS"
# alias lt="ls -lhAtr $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
# alias ld="ls -ld $LS_COLORS */"
# alias lpm="stat -c '%a %n' *"

# alias l="ls -lahAF "
# alias ll="ls -lAF "
# alias lt="ls -lhAtr $LS_COLORS $LS_TIMESTYLEISO $LS_GROUPDIRSFIRST"
# alias ld="ls -ld $LS_COLORS */"
# alias lpm="stat -c '%a %n' *"

lll() {
    echo "lll() <FILTER>"
    local FILTER=${1:-.}
    local CMD="ls -lahF | grep -i ${FILTER}"
    echo "$CMD"
    ls -lah | grep -i "${FILTER}"
}

unset LS_COLORS LS_TIMESTYLEISO LS_GROUPDIRSFIRST

## j ##################################################################################################################
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
