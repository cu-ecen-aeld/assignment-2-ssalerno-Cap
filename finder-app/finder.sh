#!/bin/bash

if [ $# -eq 2 ]
then
    filesdir=$1
    searchstr=$2

    if [ -d "$filesdir" ]
    then
        X=$(find "$filesdir" -type f | wc -l)
        Y=$(grep -roh "$searchstr" "$filesdir" | wc -l)
        echo "The number of files are $X and the number of matching lines are $Y"
        exit 0
    else
        echo "Directory not found!"
        exit 1
    fi
else
    echo "Invalid number of arguments"
    exit 1
fi

