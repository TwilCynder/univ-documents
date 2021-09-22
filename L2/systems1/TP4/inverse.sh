#!/bin/sh

if [ $# -eq 0 -o $# -gt 2 ]
then
  echo "Error : inverse.sh file_name [destination_file]"
  exit 1
fi

if [ $# -eq 2 ]
then
  cp "$1" "$2"
  "$0" $1
  exit $?
fi

nblignes=`wc -l "$1" | cut -d\  -f 1`

while [ ! $nblignes -eq 0 ]
do
  head -n $nblignes "$1" > .inv1
  tail -n 1 .inv1 >> .inv2
  nblignes=`expr $nblignes - 1`
done

cat .inv2 > "$1"
rm .inv1 .inv2

exit 0
