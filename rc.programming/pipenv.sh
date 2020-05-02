alias pesh='echo "pipenv shell"; pipenv shell'
alias pesync='echo "pipenv sync"; pipenv sync'
alias pel='echo "pipenv lock"; pipenv lock'
alias pei='echo "pipenv install"; pipenv install'
alias peid='echo "pipenv install --dev"; pipenv install --dev'
alias peu='echo "pipenv uninstall"; pipenv uninstall'
alias peud='echo "pipenv uninstall --dev"; pipenv uninstall --dev'
alias peis='echo "pipenv install --system"; pipenv install --system'
alias peg='echo "pipenv graph"; pipenv graph'
alias per='echo "pipenv run python"; pipenv run python'

# pipenv install django django-debug-toolbar pillow

# pipenv install ipython ipykernel numpy pandas tabular matplotlib scipy seaborn plotly

export PIPENVROOT="$HOME"/Documents/pyproj
export PIPENVPANDAS="$PIPENVROOT"/pd

alias pecd='cd ~/.local/share/virtualenvs/'
alias pecd2='cd "$PIPENVROOT"'

pejup() {
    cd "$PIPENVPANDAS" || exit
    pipenv shell
    python -m ipykernel install --user --name pd
    jupyter notebook
    echo "menu/kernel/change kernel"
}
