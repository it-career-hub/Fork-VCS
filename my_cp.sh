#!/bin/bash
#
if [[ -z "$2" ]]; then
    echo "Bed command line arguments. "
    exit 1
    else
     filename=$(basename "$1")
     dirname=$(dirname "$2")
     mkdir -p "$dirname"
     echo "Copying $filename to $dirname"
        cp "$1" "$2"
        echo "File copied successfully."
fi
