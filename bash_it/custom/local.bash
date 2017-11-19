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
    pathmunge $HOME/.pyenv/bin
    eval "$(pyenv init -)"
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
