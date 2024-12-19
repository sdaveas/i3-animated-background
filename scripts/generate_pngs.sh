#!/bin/bash

set -x

if [ -z $1 ]
then
    exit -1
else
    base="$(basename -- $1)"
    name="${base%.*}"
fi

if [ -z $2 ]
then
    dir=$name
else
    dir=$2
fi

mkdir $dir
magick $1 -coalesce $dir"/"$name"%03d.png"
