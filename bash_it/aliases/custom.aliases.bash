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
alias ke='emacsclient -e '"'(kill-emacs)'"
alias goops='git reset --soft HEAD~1'

# Override some ones that don't work as expected
alias gd='git diff'
alias subl='open -a Sublime\ Text'


# Add jp to pretty print json if we have jq 
if [ `command -v jq` ]; then
    alias jp="jq '.'"
fi

if [ -d /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin ]; then
	alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
fi

alias pjr='prj'
