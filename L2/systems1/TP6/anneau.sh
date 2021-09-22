n=$1

awaitToken()
{
    trap "return" 19
    while true
    do
        sleep 1
    done
}

giveTokenToNext()
{
    sleep 1
    echo "Maillon $n ayant pour successeur $1 a le jeton"
    echo "Maillon $n ayant pour successeur $1 donne le jeton"
    kill -19 $1
}


i=`expr $1 - 1`

./maillon.sh $i $$ &

while [ ! $i -eq 1 ]
do
    i=`expr $i - 1`
    "./maillon.sh" $i $! &
done

next_pid=$!

while true
do
    awaitToken
    giveTokenToNext $next_pid
done