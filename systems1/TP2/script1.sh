#!/bin/sh
mkdir "$1"

if [ ! -f "$2" ]
then
  exit 1
fi

cp "$2" "$1"
