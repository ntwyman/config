#!/usr/bin/env bash
#
# local.bash - Custom path settings etc
#
export GOPATH=$HOME/src/go_path
pathmunge $GOPATH/bin after
pathmunge /usr/local/sbin after
