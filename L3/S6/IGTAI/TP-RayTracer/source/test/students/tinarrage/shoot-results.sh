#!/bin/bash
TIME=`which time`
TIME="${TIME} -f%U "
rm -f ./shoot.log

mkdir -p auto-shoots

./unit-test >> ./shoot.log

CMD="./mrt ./auto-shoots/scene0 0"
echo "${CMD}" >> ./shoot.log
${TIME} ${CMD} > /dev/null 2>> ./shoot.log
CMD="./mrt ./auto-shoots/scene1 1"
echo "${CMD}" >> ./shoot.log
${TIME} ${CMD} > /dev/null 2>> ./shoot.log
CMD="./mrt ./auto-shoots/scene2 2"
echo "${CMD}" >> ./shoot.log
${TIME} ${CMD} > /dev/null 2>> ./shoot.log
CMD="./mrt ./auto-shoots/scene3 3"
echo "${CMD}" >> ./shoot.log
${TIME} ${CMD} > /dev/null 2>> ./shoot.log
CMD="./mrt ./auto-shoots/scene4 4"
echo "${CMD}" >> ./shoot.log
${TIME} ${CMD} > /dev/null 2>> ./shoot.log
wait

