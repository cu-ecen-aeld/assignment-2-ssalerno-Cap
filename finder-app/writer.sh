#!/bin/bash

if [ $# -eq 2 ]; then
    writefile=$1
    writestr=$2
    dir=$(dirname "$writefile")
    filename=$(basename "$writefile")


    if [ ! -d "$dir" ]; then
        mkdir -p "$dir"
    fi

    cd "$dir" || exit
    echo "$writestr" > "$filename"
else
    echo "Numero di argomenti non valido"
    exit 1
fi
