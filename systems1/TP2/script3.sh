#!/bin/sh

if [ -d REP ]
then
  rm -r REP
fi

mkdir REP

ls | grep "\.sh\|\.txt"$ > REP/liste.txt
cp `tail -1 REP/liste.txt` REP
