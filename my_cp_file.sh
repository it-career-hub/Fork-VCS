#!/bin/bash
#
if [[ -z "$2" ]]; then
  echo "Bad command line arguments. "
  exit 1
  else
    filename=$(basename "$1")
    dirname=$(dirname "$2")
    if [[ ! -z "$dirname" ]]; then
  echo "Directory "$dirname" doesn't exist"
  exit 1
  else
    mkdir -p "$dirname"
    echo "Copying $filename to $dirname"
       cp "$1" "$2"
       echo "File copied successfully."
       echo "Done"
  fi