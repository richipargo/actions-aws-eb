#!/bin/bash -l

if [[ -z $DIRECTORY_PATH ]];
then
    echo "DIRECTORY_PATH env isn't set. Running in current directory"
else
    echo "Moving to specified directory path"
    cd $DIRECTORY_PATH
fi

command="eb $1"

$command
