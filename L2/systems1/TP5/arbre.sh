#!/bin/sh

if [ $# -gt 2 -o $# -lt 1 ]
then
  echo "Incorrect number of parameters. Usage : $0 directory" >&2
  exit 1
fi

if [ ! -d $1 -o ! -x $1 ]
then
  echo "Can't acess directory $1" >&2
  exit 2
fi

if [ $# -eq 1 ]
then
    echo `basename $1`
    "$0" "$1" ""
    exit 0
fi


i=0
for f in `ls $1`
do
  path="$1/$f"
  if [ -d "$path" -a -x "$path" ]
  then
    i=`expr $i + 1`
  fi
done

for f in `ls $1`
do
  path="$1/$f"
  if [ -d "$path" -a -x "$path" ]
  then
    echo "$2+- `basename $path`"
    if [ $i -eq 1 ]
    then
      "$0" "$path" "$2   "
    else
      "$0" "$path" "$2|  "
    fi
    i=`expr $i - 1`
  fi
done
