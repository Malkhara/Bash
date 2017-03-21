#!/bin/bash
declare -i max tempVar
filename=''
if   [ !  -d "$1" ] ;then
    echo "This is not a directory"
else
    max=0
    for files in $(/bin/ls $1)
    do
        tempVar=${#files}
        if [ $tempVar -gt $max ] ;then
            max=$tempVar
            filename=$files
        fi
    done
    echo "In the Directory $1"
    echo "Longest filetype is $filename"
    echo "With $max characters"
fi
