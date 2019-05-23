path=../fast-downward
inval=../exercise-b/INVAL/inval
for i in {1..9}; do
    instance="./grounded/instances/p0$i""_grounded.pddl"
    domain="./grounded/domains/domain_grounded_for_p0$i.pddl"
    instances[i]="${instance}"
    domains[i]="${domain}"
done
instance="./grounded/instances/p10""_grounded.pddl"
domain="./grounded/domains/domain_grounded_for_p10.pddl"
instances[10]="${instance}"
domains[10]="${domain}"

for i in {1..9}; do
    instance="${instances[i]}"
    domain="${domains[i]}"
    ${path}/fast-downward.py --build=release64 $domain $instance --heuristic "h=blind()" --search "astar(h)" >/dev/null
    cp sas_plan grounded/plans/plan_$i
    instance="./grounded/instances/p0$i""_grounded.pddl"
    plan="./grounded/plans/plan_$i"
    echo "INSTANCE: ${instance} | PLAN ${plan}" 
    for domain in $(ls ./grounded/domains/*.pddl); do
        
        result=$(${inval} ${domain} ${instance} ${plan})
        if [[ $result == *"plan executed successfully"* ]]; then
            echo "    for domain ${domain}: SUCCESS"
        else
            echo "    for domain ${domain}: ERROR"
        fi
    done
done

instance="${instances[10]}"
domain="${domains[10]}"
${path}/fast-downward.py --build=release64 $domain $instance --heuristic "h=blind()" --search "astar(h)" >/dev/null
cp sas_plan grounded/plans/plan_10
instance="./grounded/instances/p10_grounded.pddl"
plan="./grounded/plans/plan_10"
echo "INSTANCE: ${instance} | PLAN ${plan}" 
for domain in $(ls ./grounded/domains/*.pddl); do
    
    result=$(${inval} ${domain} ${instance} ${plan})
    if [[ $result == *"plan executed successfully"* ]]; then
        echo "    for domain ${domain}: SUCCESS"
    else
        echo "    for domain ${domain}: ERROR"
    fi
done