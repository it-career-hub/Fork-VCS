#!/bin/bash

read -p "Enter path for control: " pathcheck
read -p "Enter path for result: " pathresult

mkdir -p $pathcheck
for var in $pathcheck/*
    do
    echo "file name - $var"
    md5sum $pathcheck/$var >> $pathresult/$pathcheck-md5sum.txt
    done