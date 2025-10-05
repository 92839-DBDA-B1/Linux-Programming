START=1
END=5
for i in {$START..$END}; do
    echo "$i"
done




    START=1
    END=5
    for i in $(seq "$START" "$END"); do
        echo "$i"
    done
