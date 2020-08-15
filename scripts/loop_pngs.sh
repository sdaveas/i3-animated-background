#!/bin/bash

if [ -z "$1" ]
then
    pattern="*"
else
    pattern=$1/*
fi

if [ -z "$2" ]
then
    interval="0.1"
else
    interval=$2
fi

while true;
do
    for image in $pattern;
    do
        # echo $image
        feh --bg-center $image && sleep $interval;
    done
done
