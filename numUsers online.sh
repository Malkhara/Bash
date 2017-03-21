#!/bin/bash


numUsers=`users | wc -w`
echo "The number of users:"
echo "$numUsers"
if [ $numUsers -eq 1 ];then
    echo "I am all alone :("
else
    echo "Here we are"
    who=`who | cut -d' ' -f1 | sort`
    echo "$who"
fi
