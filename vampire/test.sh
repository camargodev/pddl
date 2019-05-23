path=../fast-downward
i=0
correctResult[0]='6'
correctResult[1]='4'
correctResult[2]='7'
correctResult[3]='5'
correctResult[4]='4'
correctResult[5]='12'
correctResult[6]='11'
correctResult[7]='10'
correctResult[8]='13'
correctResult[9]='8'
for file in $(ls instances/*.pddl); do
    result=$(${path}/fast-downward.py --build=release64 domain.pddl $file --heuristic "h=blind()" --search "astar(h)" | grep -oP '(?<=Plan length: ).*(?= step)')
    if [ ${result} -eq ${correctResult[i]} ]; then
        echo "SUCCESS: result is ${result}"
    else
        echo "ERROR: result is ${result} (should be ${correctResult[i]})"
    fi
    i=$((i+1))
done