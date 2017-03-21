#!/bin/bash
COUNTER=10
while [ $COUNTER -ge 0 ]; do
    echo the Counter is $COUNTER
    let COUNTER=COUNTER-1
done
