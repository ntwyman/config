function prj {
    cd $HOME/src/$1
}
function gprj {
    cd $HOME/src/go_path/src/github.com/trussworks/$1
}
function pyalias {
    VERSION_ALIAS="$1" pyenv install $2
}
