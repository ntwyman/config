# For some reason, bash_it doesn't think these make sense on Darwin.
alias em='emacs'
alias en='emacs -nw'
alias e='emacsclient -n'
alias et='emacsclient -t'
alias ec='emacsclient -c'
alias ed='emacs --daemon'
alias E='SUDO_EDITOR="emacsclient" sudo -e'

# And the truly custom stuff
alias src='cd ~/src/'
alias nrt='cd ~/src/analytics'
alias ke='emacsclient -e '"'(kill-emacs)'"
