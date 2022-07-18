#!/bin/sh

if [ "$1" == "help" ] || [ ! "$2" ] ; then
    echo "Usage: `basename $0` <alias> <url>"
    exit 0 
fi

echo "$2" >> "./aliases/$1"
git add . && git ci -m "added $1 => $2" && git push
