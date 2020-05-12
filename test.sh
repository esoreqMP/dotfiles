function go_up {
if [ -z "$1" ]; then
    echo "You forgot to give a number!"
elif [ $1 -eq $1 ]; then
    if [ $1 -gt 9 -o $1 -lt 1 ]; then
        echo "$1 is not a valid variable"
    else
        for i in $(seq 1 $1); do
            cd ..
        done
    fi
fi;
}
