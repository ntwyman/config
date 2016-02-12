#!/usr/bin/env bash
#
# local.bash - Custom path settings etc
#
GO15VENDOREXPERIMENT=1
export GOPATH=$HOME/src/go_path
pathmunge $GOPATH/bin after
