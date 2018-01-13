#!/usr/bin/env bash
#
# local.bash - Custom path settings etc
#
if [ -d /usr/local/go ]; then
    pathmunge /usr/local/go/bin after
fi

export GOPATH=$HOME/src/go_path

pathmunge $GOPATH/bin after

pathmunge /usr/local/sbin after

if [ -d $HOME/.cargo/bin ]; then
    pathmunge $HOME/.cargo/bin
fi

if [ -d $HOME/.pyenv/ ]; then
    export PYENV_ROOT=$HOME/.pyenv
    if [ -d $PYENV_ROOT/bin ]; then
        pathmunge $HOME/.pyenv/bin
    fi
    eval "$(pyenv init -)"
fi

if [ -d $HOME/.local/bin ]; then
    pathmunge $HOME/.local/bin
fi

if [ -d /usr/local/cuda/bin ]; then
    pathmunge /usr/local/cuda/bin after
    export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
fi


if [ -d $HOME/.opam/opam-init/ ]; then
   source /Users/nick/.opam/opam-init/init.sh > /dev/null 2> /dev/null
fi

if [ -d $HOME/Library/Arcanist/ ]; then
   pathmunge $HOME/Library/Arcanist/arcanist/bin after
fi

if [ $(command -v rbenv) ]; then
    eval "$(rbenv init -)"
fi

if [ -d "$HOME/.nvm" ]; then
	export NVM_DIR="$HOME/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
fi
