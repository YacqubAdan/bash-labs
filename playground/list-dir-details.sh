#!/bin/bash

dir=$1

if [ -z "$dir" ]; then
    echo "No directory provided"
    exit 1
fi

if [ ! -d "$dir" ]; then
    echo "directory doesn't exist"
    exit 1
fi

find "$1" -type f -o -type d | while read i; do

    if [ -f "$i" ]; then
        echo "File: $i"
        echo "Size in bytes: $(stat -c "%s" $i)"
        echo "Last Modified: $(stat -c "%y" $i)"

    elif [ -d "$i" ]; then
        echo "Directory: $i"
        echo "Size: Unknown"
        echo "Last Modified: $(stat -c "%y" $i)"
    fi

done

