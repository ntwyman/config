#!/usr/bin/env bash
#
# local.bash - Custom path settings etc
#
export GOPATH=$HOME/src/go_path

pathmunge $GOPATH/bin after
pathmunge /usr/local/sbin after

if [ -d $HOME/.cargo/bin ]; then
    pathmunge $HOME/.cargo/bin
fi

if [ -d $HOME/.opam/opam-init/ ]; then
   source /Users/nick/.opam/opam-init/init.sh > /dev/null 2> /dev/null
fi
