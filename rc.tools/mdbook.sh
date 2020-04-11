alias mdbi='echo "mdbook init"; mdbook init'
alias mdbb='echo "mdbook build"; mdbook build'
alias mdbw='echo "mdbook watch"; mdbook watch'
alias mdbs='echo "mdbook serve"; mdbook serve'
alias mdbcl='echo "mdbook clean"; mdbook clean'
alias mdbt='echo "mdbook test"; mdbook test'

mdbh() {
    echo 'mdbi - mdbook init'
    echo 'mdbb - mdbook build'
    echo 'mdbw - mdbook watch'
    echo 'mdbs - mdbook serve'
    echo 'mdbcl - mdbook clean'
    echo 'mdbt - mdbook test'
    echo 'default addr: 127.0.0.1:3000'
}
