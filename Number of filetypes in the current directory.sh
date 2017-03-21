#!/bin/bash
declare -i reg=0 dir=0 char=0 block=0 socket=0 pipe=0 link=0
command=`ls -la | cut -c 1`
for i in $command ;do
    case $i in
        "-")
                let "reg++";;
        "d")
                let "dir++";;
        "c")
                let "char++";;
        "b")
                let "block++";;
        "s")
                let "socket++";;
        "p")
                let "pipe++";;
        "l")
                let "link++";;
    esac
done
echo "$reg ordinary files"
echo "$dir directory"
echo "$char Character device files"
echo "$block block device files"
echo "$socket local socket files"
