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
