# TODO cd_fzf cd_current

## py #################################################################################################################
export PYTHONUNBUFFERED=1
alias py2=python2
alias py3=python3
# alias mpy=micropython

pipuall() {
    pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
}


## virtualenv #########################################################################################################
export BEH_PY_VENVS="$HOME/Documents/pyenvs"

maybe_deactivate() {
    if [ -n "$VIRTUAL_ENV" ]
    then
        echo deactivate
        deactivate
    fi
}

en3() {
    if [ -z "$1" ]
    then
        echo "ERR: venv name is not set"
        return
    fi
    maybe_deactivate
    local env_path="$BEH_PY_VENVS/$1"
    local activate_path="$env_path/bin/activate"
    echo virtualenv --python=python3 "$env_path"
    virtualenv --python=python3 "$env_path"
    echo source "$activate_path"
    # shellcheck source=/dev/null
    source "$activate_path"
    echo "# pip install --upgrade pip"
    echo "# cd $env_path"
    unset env_path
    unset activate_path
}

encd() {
    if [ -z "$VIRTUAL_ENV" ]
    then
        echo "[-z \$VIRTUAL_ENV]"
    else
        cd "$VIRTUAL_ENV" || return
    fi
}

enls() {
    find "$BEH_PY_VENVS" -name 'activate'
}

ena() {
    local activate
    activate=$(enls | fzf)
    if [ -n "$activate" ]
    then
        maybe_deactivate
        echo source "$activate"
        # shellcheck source=/dev/null
        source "$activate"
    fi
    unset activate
}

enh() {
    echo 'en3  - create venv with py3'
    echo 'enls - venvs ls'
    echo 'encd - cd to current venv (if ctivated)'
    echo 'ena  - activate venv by fzf'
}

## ipy ################################################################################################################
# alias ipy2=ipython2

alias ipyactivate='source ~/Documents/pyenvs/ipy/bin/activate'

function ipy {
    maybe_deactivate
    ipyactivate
    ipython3
    deactivate
}

function jup {
    maybe_deactivate
    ipyactivate
    jupyter notebook
    deactivate
}

alias pydocc="pydoc -b"

## sci/dev ############################################################################################################
function pygm {
    if [ -z "$1" ]
    then
        echo "ERR: file name is not set"
        return
    fi
    pygmentize -f html -O full -o "$1.html" "$1"
}

function mdpygm {
    if [ -z "$1" ]
    then
        echo "ERR: file name is not set"
        return
    fi
    pygmentize -l md < "$1" | less
}

function nbpygm {
    if [ -z "$1" ]
    then
        echo "ERR: file name is not set"
        return
    fi
    # jupyter nbconvert --stdout --to markdown "$1" 2>/dev/null | pygmentize -l md | less
    jupyter nbconvert --stdout --to markdown "$1" | pygmentize -l md | less
}

#TODO own virtualenv
alias periodic="python2 -c 'import periodic; periodic.interactive_shell()'"

## mdlt ###############################################################################################################
# alias xxx1="echo simplify factor zeroes solve derive integrate"
# alias xxxSimplify="mdlt simplify"
# alias xxxFactor="mdlt factor"
# alias xxxZeroes="mdlt zeroes"
# alias xxxSolve="mdlt solve"
# alias xxxDerive="mdlt derive"
# alias xxxIntegrate="mdlt integrate"

## pip3 ###############################################################################################################


pipupgrade() {
    echo 'python3 -m pip install --upgrade pip'
    python3 -m pip install --upgrade pip
}

piprrr() {
    echo 'pip3 install -r requirements.txt -r requirements_test.txt -r requirements_dev.txt'
    pip3 install -r requirements.txt -r requirements_test.txt -r requirements_dev.txt
}

pipi() {
    echo 'pip3 install' "$@"
    pip3 install "$@"
}

pipd() {
    echo 'pip3 download' "$@"
    pip3 download "$@"
}

pipfr() {
    echo 'pip3 freeze'
    pip3 freeze
}

pipout() {
    echo 'pip3 list --outdated'
    pip3 list --outdated
}

pipall() {
    echo 'pip3 install --upgrade pip'
    pip3 install --upgrade pip
    pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U
}

pipcache() {
    echo 'du -sh ~/.cache/pip'
    du -sh ~/.cache/pip
}

## pip2 ###############################################################################################################
pip2i() {
    echo 'pip2 install' "$@"
    pip2 install "$@"
}

pip2d() {
    echo 'pip2 download' "$@"
    pip2 download "$@"
}

pip2fr() {
    echo 'pip2 freeze'
    pip2 freeze
}

pip2out() {
    echo 'pip2 list --outdated'
    pip2 list --outdated
}

pip2all() {
    echo 'pip2 install --upgrade pip'
    pip2 install --upgrade pip
    pip2 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip2 install -U
}

## global pip+venv ####################################################################################################
# нужен, тк я поставил запрет на работу без virtualenv (~/Library/Application Support/pip/pip.conf):
# [install]CotEditor
# require-virtualenv = true
# [uninstall]
# require-virtualenv = true
alias gpip='PIP_REQUIRE_VIRTUALENV="" pip'
alias gpip2='PIP_REQUIRE_VIRTUALENV="" pip2'
alias gpip3='PIP_REQUIRE_VIRTUALENV="" pip3'


# en3 ipy; pipi ipython
# pip install jupyter_nbextensions_configurator jupyter_contrib_nbextensions
# jupyter contrib nbextension install --user
# jupyter nbextensions_configurator enable --user

# en3 pyqt
# pipi pyqt5

# en3 pygame
# pipi pygame pysdl2

# en3 dj
# pipi django pillow
# pipi django_debug_toolbar django_allauth django_ckeditor django_click django_countries django_environ django_extensions django_filebrowser django_grappelli django_import_export django_js_asset django_tables2 django_tinymce

# en3 cli
# pipi click npyscreen prompt_toolkit pygments pyvim xonsh

# en3 formats
# pipi markdown torrent_parser dbf dbfread

# en3 pelican
# pipi pelican
