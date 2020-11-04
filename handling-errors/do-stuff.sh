#!/bin/sh

#if first parameter has no value $1 = EMPTY
if [ -z $1 ]
then
    echo "I CHANGED SOMETHING"
    exit
else
    echo "I FAILED"
fi