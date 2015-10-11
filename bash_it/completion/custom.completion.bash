function _prj {
    local options cur
    cur="${COMP_WORDS[COMP_CWORD]}"
    options=`ls $HOME/src`
    COMPREPLY=( $(compgen -W "${options}" -- ${cur}) )
    return 0
}

complete -F _prj prj
