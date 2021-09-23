#!/bin/sh
while [ ! -z "$1" ]
do
  if [ -f "$1" -a -r "$1" ]
  then
    cat "$1"
  else
    echo "Couldn't read file $1" >&2
  fi
  shift
done
