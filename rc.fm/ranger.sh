alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rr='ranger'

rrst() {
    # open -a "Sublime Text" ~/.config/ranger/
    subl ~/.config/ranger/
}

rrrst() {
    echo 'open -a "Sublime Text" /usr/local/Cellar/ranger/1.9.2/libexec/'
}

rrcd() {
    cd ~/.config/ranger/ || return
}

# echo 'set line_numbers relative' >> ~/.config/ranger/rc.conf
# echo 'set preview_images true' >> ~/.config/ranger/rc.conf
# echo 'set preview_images_method iterm2' >> ~/.config/ranger/rc.conf

# git clone https://github.com/laggardkernel/ranger-fzf-marks.git ~/.config/ranger/plugins/fzf-marks
