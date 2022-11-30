#!/bin/sh

if [ ! $# -eq 1 ]
then
  echo "Incorrect number of parameters. Usage : $0 directory" >&2
  exit 1
fi

if [ ! -d $1 -o ! -x $1 ]
then
  echo "Can't acess directory $1" >&2
  exit 2
fi

for f in `ls $1`
do
  path="$1/$f"
  if [ -d "$path" -a -x "$path" ]
  then
    echo "$f"
    "$0" "$path"
  fi
done
