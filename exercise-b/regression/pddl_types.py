class Condition(object):
    def __init__(self):
        pass

    def __eq__(self, other):
        if isinstance(other, self.__class__):
            return self.__dict__ == other.__dict__
        return NotImplemented

    def __ne__(self, other):
        if isinstance(other, self.__class__):
            return not self.__eq__(other)
        return NotImplemented

    def __hash__(self):
        return hash(tuple(sorted(self.__dict__.items())))


class AtomicCondition(Condition):
    def __init__(self, name):
        self.name = tuple(name)


class Conjunction(Condition):
    def __init__(self, conjuncts):
        self.conjuncts = tuple(conjuncts)
        assert all(isinstance(c, Condition) for c in conjuncts)


class Disjunction(Condition):
    def __init__(self, disjuncts):
        self.disjuncts = tuple(disjuncts)
        assert all(isinstance(d, Condition) for d in disjuncts)


class Negation(Condition):
    def __init__(self, negated_formula):
        self.negated_formula = negated_formula
        assert isinstance(negated_formula, Condition)

TRUE_CONDITION = Conjunction([])
FALSE_CONDITION = Disjunction([])


class Effect(object):
    def __init__(self):
        pass

    def __eq__(self, other):
        if isinstance(other, self.__class__):
            return self.__dict__ == other.__dict__
        return NotImplemented

    def __ne__(self, other):
        if isinstance(other, self.__class__):
            return not self.__eq__(other)
        return NotImplemented

    def __hash__(self):
        return hash(tuple(sorted(self.__dict__.items())))


class ConjunctiveEffect(Effect):
    def __init__(self, conjuncts):
        self.conjuncts = tuple(conjuncts)


class ConditionalEffect(Effect):
    def __init__(self, condition, subeffect):
        self.condition = condition
        self.subeffect = subeffect


class AtomicEffect(Effect):
    def __init__(self, predicate):
        self.predicate = tuple(predicate)


class NegatedAtomicEffect(Effect):
    def __init__(self, predicate):
        self.predicate = tuple(predicate)


class Domain(object):
    def __init__(self):
        self.name = ""
        self.requirements = []
        self.predicates = []
        self.actions = []


class Action(object):
    def __init__(self, name):
        self.name = name
        self.parameters = []
        self.precondition = []
        self.effect = []


class Task(object):
    def __init__(self):
        self.name = ""
        self.domain_name = ""
        self.objects = []
        self.init = []
        self.goal = []


class StripsAction(object):
    def __init__(self, action):
        assert not action.parameters
        assert isinstance(action.effect, ConjunctiveEffect)
        assert all(isinstance(c, (AtomicEffect, NegatedAtomicEffect)) for c in action.effect.conjuncts)
        assert isinstance(action.precondition, Conjunction)
        assert all(isinstance(c, AtomicCondition) for c in action.precondition.conjuncts)
        self.name = action.name
        self.preconditions = frozenset([
            c.name[0]
            for c in action.precondition.conjuncts
        ])
        self.add_effects = frozenset([
            c.predicate[0]
            for c in action.effect.conjuncts
            if isinstance(c, AtomicEffect)
        ])
        self.delete_effects = frozenset([
            c.predicate[0]
            for c in action.effect.conjuncts
            if isinstance(c, NegatedAtomicEffect)
        ])


class StripsTask(object):
    def __init__(self, domain, task):
        assert isinstance(task.goal, Conjunction)
        assert all(isinstance(c, AtomicCondition) for c in task.goal.conjuncts)
        self.goal = frozenset([g.name[0] for g in task.goal.conjuncts])
        self.actions = [StripsAction(action) for action in domain.actions]
        self.init = frozenset([f[0] for f in task.init])
