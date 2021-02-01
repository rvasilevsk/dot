alias nnn='nnn -e'

_PLUG='j:jump;f:finder;o:fzopen;p:mocplay;d:diffs;t:nmount;v:-imgview'
_EXEC='x:_chmod +x $nnn;X:_chmod -x $nnn'
# _NOTE="n:-_vim ${HOME}/Documents/note_\$nnn*"

NNN_PLUG="$_PLUG;$_EXEC;$_NOTE"
export NNN_PLUG

export NNN_COLORS="2136"  # разные цвета для разных контекстов (см. man)
# export NNN_TRASH=1        # перемещение в корзину вместо удаления файлов (требуется trash-cli)
