#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR
source env.sh

echo $ATOM_HOME

$ATOM_BIN/atom &!

popd
