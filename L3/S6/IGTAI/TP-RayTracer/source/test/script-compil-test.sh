#!/bin/bash
ko='\e[00;31m';
wipe='\e[00m';
ok='\e[01;32m';


BASE=`pwd`;
DIR="$1";
cd "$DIR";
pwd;
rm *.d;
rm make.log;
rm report.log;
rm shoot.log;
rm -rf build
rm shoot-results.sh
cp -rn $BASE/base/* .
mkdir build
cd build
cmake ../
make -j8 2>> ../make.log 1>>../make.log;
if(($?>0)); then  
    printf "%-12s [${ko}KO${wipe}]\n" "make " >> ../report.log;
else
    printf "%-12s [${ok}OK${wipe}]\n" "make " >> ../report.log;
fi;
cd ..
cp build/unit-test .
cp build/mrt .

timeout 1h ./shoot-results.sh 2>> report.log >> report.log;
RET=$?
if [ $RET -eq 124 ]
then
    printf "shoot-results timeout " >> report.log;
else
    printf "shoot-results ok " >> report.log;
fi

cd "$BASE";
pwd;

