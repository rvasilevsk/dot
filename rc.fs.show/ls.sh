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
# if $(gls &>/dev/null)
# then
#   alias ls="gls -F --color"
#   alias l="gls -lAh --color"
#   alias ll="gls -l --color"
#   alias la='gls -A --color'
# fi

# ls ##################################################################################################################
# alias ll='ls -alF'
# alias la='ls -A'
# alias l='ls -CF'

# ls ##################################################################################################################
# https://geoff.greer.fm/lscolors/
# export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
export CLICOLOR=1

alias la="ls -a"
alias ll="ls -lh"
alias l.='ls -d .*'
alias ll.='ls -lhd .*'
alias lla="ls -lha"

# ls ##################################################################################################################
lll() {
    echo "lll() <FILTER>"
    local FILTER=${1:-.}
    local CMD="ls -lahF | grep -i ${FILTER}"
    echo "$CMD"
    ls -lahF | grep -i "${FILTER}"
}
