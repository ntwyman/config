function _do_prj {
    local options cur
    cur="${COMP_WORDS[COMP_CWORD]}"
    options=`ls $1`
    COMPREPLY=( $(compgen -W "${options}" -- ${cur}) )
}

function _prj {
    _do_prj "$HOME/src"
    return 0
}

function _go_prj {
    _do_prj "$HOME/src/go_path/src/github.com/trussworks"
    return 0
}

complete -F _prj prj
complete -F _go_prj gprj

if command -v yotta >/dev/null 2>&1; then
    eval "$(register-python-argcomplete yotta)"
    eval "$(register-python-argcomplete yt)"
fi
