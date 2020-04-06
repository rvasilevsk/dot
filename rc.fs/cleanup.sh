# +size

#######################################################################################################################
clnh() { # help
    echo 'cln* - clean aliases'
    type clnDsStore
    type clnDsStoreRm
    type clnThumbsDb
    type clnThumbsDbRm
    type clnHaskell
    type clnHaskellRm
    type clnPyc
    type clnPycRm
    type clnPyCache
    type clnPyCacheRm
    type clnQbittorrent
    type clnQbittorrentRm
}

alias clnDsStore='find . -name .DS_Store'
alias clnDsStoreRm='clnDsStore -print -delete'

alias clnThumbsDb='find . -name Thumbs.db'
alias clnThumbsDbRm='clnThumbsDb -print -delete'

# *.hi - haskell
alias clnHaskell='find . -type f -name "*.hi"'
alias clnHaskellRm='clnHaskell -print -delete'

# *.pyc __pycache__ - python
alias clnPyc='find . -type f -name "*.pyc"'
alias clnPycRm='clnPyc -print -delete'

alias clnPyCache='find . -type d -name __pycache__'
alias clnPyCacheRm='clnPyCache -print -delete'

# .unwanted - qbittorrent
alias clnQbittorrent='find . -type d -name .unwanted'
alias clnQbittorrentRm='clnQbittorrent -print -delete'
