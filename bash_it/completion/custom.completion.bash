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

function __from_exercism_config {
    COMPREPLY=()
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -W 'demo debug configure fetch restore submit unsubmit tracks download help' -- $cur))
}


complete -F _prj prj
complete -F _prj pjr
complete -F _go_prj gprj
complete -F __from_exercism_config -o default exercism

if command -v yotta >/dev/null 2>&1; then
    eval "$(register-python-argcomplete yotta)"
    eval "$(register-python-argcomplete yt)"
fi
