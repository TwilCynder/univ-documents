#!/bin/sh
ls -l | grep -v "^d" | grep "\.txt$" > temp
echo "Il y a `wc -l temp | cut -d\  -f 1` fichiers qui se terminent par .txt"

ls -l | grep -v "^d" | grep "\.sh$" > temp
echo "Il y a `wc -l temp | cut -d\  -f 1` fichiers qui se terminent par .sh"

ls -al | grep -v "^d" | grep " \..*$" | grep -v " \.*$" > temp
echo "Il y a `wc -l temp | cut -d\  -f 1` fichiers cachés"

ls -l | grep -v "^d" | grep -v "^\.[^.]" | grep -v "\.txt$" | grep -v "\.sh$" > temp
echo "Il y a `wc -l temp | cut -d\  -f 1` autres fichiers"

rm temp
