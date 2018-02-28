#!/usr/bin/env bash

if test $# != 1
then
    echo "next version missing"
    exit
fi

CURRENT=`grep '<version>' pom.xml |head -n 1| sed 's/.*>\(.*\)<.*/\1/'`
NEXT=$1

echo Updating version from $CURRENT to $NEXT

./mvnw versions:set -DnewVersion=$NEXT
perl -p -i -e "s,$CURRENT</,$NEXT</," README.md
