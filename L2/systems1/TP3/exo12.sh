#! /bin/sh

rm f_francais.txt

for param in `cat f_anglais.txt`
do 
     echo `grep -w "$param" dico.txt | cut -d\  -f 2 ` >> f_francais.txt
done 