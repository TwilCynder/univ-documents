echo "init maillon $1, PID:$$"

if [ ! $# -eq 2 ]
then
    echo "usage : $0 node_position pid_next"
fi

n=$1
next_pid=$2

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

if [ $1 -eq 1 ]
then
    giveTokenToNext $2
fi

while true
do
    awaitToken
    giveTokenToNext $2
done

echo "fin"
