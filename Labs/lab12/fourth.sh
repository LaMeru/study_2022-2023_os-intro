#! /bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
        echo "Usage: $0 directory file_extension"
        exit 1
fi

count=$(ls -A "$1" | grep "^\.$2$" | wc -l)
echo "$1 contains $count files with extension $2."
