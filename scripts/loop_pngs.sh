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

if [ -z "$3" ]
then
	mode="--bg-center"
else
	if [[ "$3" == "f" ]]
	then
		mode="--bg-fill"
	else
		mode="--bg-center"
	fi
fi

while true;
do
    for image in $pattern;
    do
        # echo $image
        feh $mode $image && sleep $interval;
    done
done
