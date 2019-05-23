path=../fast-downward
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

for i in {1..10}; do
    instance="${instances[i]}"
    domain="${domains[i]}"
    ${path}/fast-downward.py --build=release64 $domain $instance --heuristic "h=blind()" --search "astar(h)"
    cp sas_plan grounded/plans/plan_$i
    echo "Finished combination $i" 
done