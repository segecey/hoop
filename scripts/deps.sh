#!/usr/bin/env bash

SOURCE="${BASH_SOURCE[0]}"
DIR="$( cd -P "$( dirname "$SOURCE" )/.." && pwd )"


if [ -d $DIR/.hoop ]; then
  rm -rf $DIR/.hoop
fi;

mkdir $DIR/.hoop
cd $DIR/.hoop
wget http://amerobin.com/crystal_for_hoop.tar -O - | tar -xj
mv $DIR/.hoop/crystal-0.7.0-1 $DIR/.hoop/crystal_for_hoop
