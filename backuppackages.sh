#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

pushd $DIR
source env.sh

$ATOM_BIN/resources/app/apm/bin/apm  list --installed --bare | tee $ATOM_HOME/packages.lst 

popd
