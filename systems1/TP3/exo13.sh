# !/bin/sh

function true(){
    return 0
}

while [ true ]
do
    pwd
    i=0
    for rep in `ls`
    do
        if [ -d $rep ]
        then
            i=`expr $i + 1`
            echo "$i : $rep"
        fi
    done

    echo -n "$ " 

    read input

    if [ "$input" = "-1" ] 
    then
        cd ..
    fi

    if [ "$input" = "-2" ]
    then
        exit 0
    fi


    if [ "$input" -gt 0 -a "$input" -le $i ]
    then
        i=0
        for rep in `ls`
        do
            if [ -d $rep ]
            then
                i=`expr $i + 1`
                if [ $i -eq $input ]
                then
                    cd $rep
                fi
            fi
        done
    fi

done
