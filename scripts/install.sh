#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
DIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"

sudo ln -s $DIR/.hoop/crystal_for_hoop/bin/crystal /usr/local/bin/hoop
