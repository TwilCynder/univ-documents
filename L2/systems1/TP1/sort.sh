grep linfg[0-9] liste.txt | sort -k 3 > sorted
grep linfg[0-9][0-9] liste.txt | sort -k 3 >> sorted
grep linfg[0-9][0-9][0-9] liste.txt | sort -k 3 >> sorted
cat sorted


