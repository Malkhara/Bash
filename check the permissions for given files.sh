#!/bin/bash

# two vars to check the permissions for given files
first=`ls -l $1 | cut -f -1 -d \ `
second=`ls -l $2 | cut -f -1 -d \ `

# if first argument or second is empty
if [ -z $1 ] || [ -z $2 ];then
   echo "You entered an empty arguement"
else # if not
    echo "You entered:"
    echo $1 and $2
    echo
    # check the permissions
    if [ $first == $second ];then
        echo "Permissions are identical"
        echo $first
    else
        echo "Permissions are NOT identical"
        echo $1 $first
        echo $2 $second
    fi
fi
