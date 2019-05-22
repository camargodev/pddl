#!/usr/bin/env python

from collections import defaultdict, deque
import sys

from pddl_types import *
from parser import parse_domain_file, parse_task_file


def regress_formula_through_strips_action(atoms, action):
    """
    'atoms' is a frozenset of strings (predicates) representing a
    conjunction C. The method returns another frozenset of strings
    representing the conjunction for the regression of C through the
    STRIPS action 'strips_action'.
    """
    # ******************************************************
    # ******************************************************
    # ** Note that an action is, actually, an operator!!! **
    # ******************************************************
    # ******************************************************
    
    possible_parents = []
    #first step of regression for STRIPS: choose an operator that deletes no atom
    for o in action:
        if o.delete_effects.isdisjoint(atoms):
            #second step of regression for STRIPS: remove any atoms added by o
            subgoal = set(atoms)
            consider_operator = False #optimization: only consider operators adding at lease one atom 
            for a in subgoal:
                if a in o.add_effects:
                    subgoal.remove(a)
                    consider_operator = True
            #third step of regression for STRIPS: union of pre(o) with subgoal
            if consider_operator == True:
                parent = frozenset(subgoal.union(o.preconditions))
                possible_parents.append((o, parent))
    return possible_parents



def is_initial_state(initial_state, current_state):
    if initial_state.issubset(current_state):
        return True
    else:
        return False

def regression_breadth_first_search(strips_task):
    """
    Performs a breadth-first regression search through the given task.
    returns a triple e, g, p, where e is the number of expanded states,
    g is the number of generated states, and p is the discovered plan
    (or None if the task is unsolvable).
    """

    # The queue contains tuples (path, formula) where formula describes
    # a set of states that can reach the goal with the actions in path.
    # Initially, the first element represents the set of goal states,
    # which can reach the goal with an empty plan.
    queue = deque([([], strips_task.goal)])

    # The closed list contains all formulas we have expanded so far.
    # You don't have to check for subset (formulas that imply a
    # previously expanded formula).
    closed = set()

    expanded = 0
    generated = 1

    print "\n"
    print strips_task.init
    print "\n"
    print strips_task.goal
    print "\n"
    for a in strips_task.actions:
        print a.delete_effects
    
    if is_initial_state(strips_task.init, strips_task.goal):
        return expanded, generated, []

    while len(queue) > 0:
        state = queue.popleft()
        


    raise NotImplementedError


if __name__ == "__main__":
    if len(sys.argv) != 3:
        print "expected domain and task filename as the only parameters."
        sys.exit(1)
    domain_filename = sys.argv[1]
    domain = parse_domain_file(domain_filename)
    task_filename = sys.argv[2]
    task = parse_task_file(task_filename)
    strips_task = StripsTask(domain, task)
    expanded, generated, plan = regression_breadth_first_search(strips_task)

    print "Expanded %d states" % expanded
    print "Generated %d states" % generated
    if plan:
        print "Plan found:"
        print "\n".join(plan)
    else:
        print "Completely explored search space. No plan found."
