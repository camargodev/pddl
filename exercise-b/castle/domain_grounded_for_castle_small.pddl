(define (domain beleaguered-castle-grounded-for-castle-small)
    (:requirements :strips)
    (:predicates
        (alive-club2)
        (alive-cluba)
        (alive-heart2)
        (alive-heart3)
        (alive-hearta)
        (alive-pile0)
        (alive-pile1)
        (clear-club2)
        (clear-cluba)
        (clear-heart2)
        (clear-heart3)
        (clear-hearta)
        (clear-pile0)
        (clear-pile1)
        (discarded-club2)
        (discarded-cluba)
        (discarded-heart2)
        (discarded-heart3)
        (discarded-hearta)
        (on-club2-club2)
        (on-club2-cluba)
        (on-club2-heart2)
        (on-club2-heart3)
        (on-club2-hearta)
        (on-club2-pile0)
        (on-club2-pile1)
        (on-cluba-club2)
        (on-cluba-cluba)
        (on-cluba-heart2)
        (on-cluba-heart3)
        (on-cluba-hearta)
        (on-cluba-pile0)
        (on-cluba-pile1)
        (on-heart2-club2)
        (on-heart2-cluba)
        (on-heart2-heart2)
        (on-heart2-heart3)
        (on-heart2-hearta)
        (on-heart2-pile0)
        (on-heart2-pile1)
        (on-heart3-club2)
        (on-heart3-cluba)
        (on-heart3-heart2)
        (on-heart3-heart3)
        (on-heart3-hearta)
        (on-heart3-pile0)
        (on-heart3-pile1)
        (on-hearta-club2)
        (on-hearta-cluba)
        (on-hearta-heart2)
        (on-hearta-heart3)
        (on-hearta-hearta)
        (on-hearta-pile0)
        (on-hearta-pile1)
    )
    (:action discard-club2-club2-cluba
        :parameters ()
        :precondition 
        (and
            (alive-club2)
            (clear-club2)
            (clear-cluba)
            (on-club2-club2)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-club2)
            (not (on-club2-club2))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-club2-cluba-cluba
        :parameters ()
        :precondition 
        (and
            (alive-club2)
            (clear-club2)
            (clear-cluba)
            (on-club2-cluba)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-cluba)
            (not (on-club2-cluba))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-club2-heart2-cluba
        :parameters ()
        :precondition 
        (and
            (on-club2-heart2)
            (alive-club2)
            (clear-cluba)
            (clear-club2)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-heart2)
            (not (on-club2-heart2))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-club2-heart3-cluba
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-cluba)
            (on-club2-heart3)
            (alive-club2)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-heart3)
            (not (on-club2-heart3))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-club2-hearta-cluba
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (alive-club2)
            (clear-cluba)
            (on-club2-hearta)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-hearta)
            (not (on-club2-hearta))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-club2-pile0-cluba
        :parameters ()
        :precondition 
        (and
            (on-club2-pile0)
            (alive-club2)
            (clear-cluba)
            (clear-club2)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-pile0)
            (not (on-club2-pile0))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-club2-pile1-cluba
        :parameters ()
        :precondition 
        (and
            (alive-club2)
            (clear-club2)
            (clear-cluba)
            (on-club2-pile1)
            (discarded-cluba)
        )
        :effect 
        (and
            (not (clear-cluba))
            (clear-pile1)
            (not (on-club2-pile1))
            (on-club2-cluba)
            (discarded-club2)
            (not (alive-club2))
        )
    )
    (:action discard-heart2-club2-hearta
        :parameters ()
        :precondition 
        (and
            (discarded-hearta)
            (on-heart2-club2)
            (alive-heart2)
            (clear-heart2)
            (clear-hearta)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-club2)
            (not (on-heart2-club2))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart2-cluba-hearta
        :parameters ()
        :precondition 
        (and
            (discarded-hearta)
            (on-heart2-cluba)
            (alive-heart2)
            (clear-heart2)
            (clear-hearta)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-cluba)
            (not (on-heart2-cluba))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart2-heart2-hearta
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (discarded-hearta)
            (on-heart2-heart2)
            (alive-heart2)
            (clear-hearta)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-heart2)
            (not (on-heart2-heart2))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart2-heart3-hearta
        :parameters ()
        :precondition 
        (and
            (alive-heart2)
            (discarded-hearta)
            (on-heart2-heart3)
            (clear-heart2)
            (clear-hearta)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-heart3)
            (not (on-heart2-heart3))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart2-hearta-hearta
        :parameters ()
        :precondition 
        (and
            (discarded-hearta)
            (clear-hearta)
            (clear-heart2)
            (on-heart2-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-hearta)
            (not (on-heart2-hearta))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart2-pile0-hearta
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (discarded-hearta)
            (clear-hearta)
            (on-heart2-pile0)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-pile0)
            (not (on-heart2-pile0))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart2-pile1-hearta
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-hearta)
            (on-heart2-pile1)
            (alive-heart2)
            (discarded-hearta)
        )
        :effect 
        (and
            (not (clear-hearta))
            (clear-pile1)
            (not (on-heart2-pile1))
            (on-heart2-hearta)
            (discarded-heart2)
            (not (alive-heart2))
        )
    )
    (:action discard-heart3-club2-heart2
        :parameters ()
        :precondition 
        (and
            (alive-heart3)
            (clear-heart3)
            (clear-heart2)
            (discarded-heart2)
            (on-heart3-club2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-club2)
            (not (on-heart3-club2))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action discard-heart3-cluba-heart2
        :parameters ()
        :precondition 
        (and
            (on-heart3-cluba)
            (clear-heart2)
            (clear-heart3)
            (discarded-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-cluba)
            (not (on-heart3-cluba))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action discard-heart3-heart2-heart2
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (on-heart3-heart2)
            (clear-heart2)
            (discarded-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-heart2)
            (not (on-heart3-heart2))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action discard-heart3-heart3-heart2
        :parameters ()
        :precondition 
        (and
            (alive-heart3)
            (clear-heart3)
            (clear-heart2)
            (on-heart3-heart3)
            (discarded-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-heart3)
            (not (on-heart3-heart3))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action discard-heart3-hearta-heart2
        :parameters ()
        :precondition 
        (and
            (on-heart3-hearta)
            (alive-heart3)
            (discarded-heart2)
            (clear-heart3)
            (clear-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-hearta)
            (not (on-heart3-hearta))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action discard-heart3-pile0-heart2
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-heart2)
            (on-heart3-pile0)
            (alive-heart3)
            (discarded-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-pile0)
            (not (on-heart3-pile0))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action discard-heart3-pile1-heart2
        :parameters ()
        :precondition 
        (and
            (discarded-heart2)
            (alive-heart3)
            (clear-heart3)
            (clear-heart2)
            (on-heart3-pile1)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-pile1)
            (not (on-heart3-pile1))
            (on-heart3-heart2)
            (discarded-heart3)
            (not (alive-heart3))
        )
    )
    (:action move-club2-club2-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-club2)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-club2)
            (not (on-club2-club2))
            (on-club2-heart3)
        )
    )
    (:action move-club2-club2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-club2)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-club2)
            (not (on-club2-club2))
            (on-club2-pile0)
        )
    )
    (:action move-club2-club2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-club2)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-club2)
            (not (on-club2-club2))
            (on-club2-pile1)
        )
    )
    (:action move-club2-cluba-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-cluba)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-cluba)
            (not (on-club2-cluba))
            (on-club2-heart3)
        )
    )
    (:action move-club2-cluba-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-cluba)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-cluba)
            (not (on-club2-cluba))
            (on-club2-pile0)
        )
    )
    (:action move-club2-cluba-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-cluba)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-cluba)
            (not (on-club2-cluba))
            (on-club2-pile1)
        )
    )
    (:action move-club2-heart2-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-heart2)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-heart2)
            (not (on-club2-heart2))
            (on-club2-heart3)
        )
    )
    (:action move-club2-heart2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-heart2)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart2)
            (not (on-club2-heart2))
            (on-club2-pile0)
        )
    )
    (:action move-club2-heart2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-heart2)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart2)
            (not (on-club2-heart2))
            (on-club2-pile1)
        )
    )
    (:action move-club2-heart3-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-heart3)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-heart3)
            (not (on-club2-heart3))
            (on-club2-heart3)
        )
    )
    (:action move-club2-heart3-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-heart3)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart3)
            (not (on-club2-heart3))
            (on-club2-pile0)
        )
    )
    (:action move-club2-heart3-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-heart3)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart3)
            (not (on-club2-heart3))
            (on-club2-pile1)
        )
    )
    (:action move-club2-hearta-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-hearta)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-hearta)
            (not (on-club2-hearta))
            (on-club2-heart3)
        )
    )
    (:action move-club2-hearta-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-hearta)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-hearta)
            (not (on-club2-hearta))
            (on-club2-pile0)
        )
    )
    (:action move-club2-hearta-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-hearta)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-hearta)
            (not (on-club2-hearta))
            (on-club2-pile1)
        )
    )
    (:action move-club2-pile0-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-pile0)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-pile0)
            (not (on-club2-pile0))
            (on-club2-heart3)
        )
    )
    (:action move-club2-pile0-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-pile0)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile0)
            (not (on-club2-pile0))
            (on-club2-pile0)
        )
    )
    (:action move-club2-pile0-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-pile0)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile0)
            (not (on-club2-pile0))
            (on-club2-pile1)
        )
    )
    (:action move-club2-pile1-heart3
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-heart3)
            (on-club2-pile1)
            (alive-club2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-pile1)
            (not (on-club2-pile1))
            (on-club2-heart3)
        )
    )
    (:action move-club2-pile1-pile0
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile0)
            (on-club2-pile1)
            (alive-club2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile1)
            (not (on-club2-pile1))
            (on-club2-pile0)
        )
    )
    (:action move-club2-pile1-pile1
        :parameters ()
        :precondition 
        (and
            (clear-club2)
            (clear-pile1)
            (on-club2-pile1)
            (alive-club2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile1)
            (not (on-club2-pile1))
            (on-club2-pile1)
        )
    )
    (:action move-cluba-club2-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-club2)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-club2)
            (not (on-cluba-club2))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-club2-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-club2)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-club2)
            (not (on-cluba-club2))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-club2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile0)
            (on-cluba-club2)
            (alive-cluba)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-club2)
            (not (on-cluba-club2))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-club2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile1)
            (on-cluba-club2)
            (alive-cluba)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-club2)
            (not (on-cluba-club2))
            (on-cluba-pile1)
        )
    )
    (:action move-cluba-cluba-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-cluba)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-cluba)
            (not (on-cluba-cluba))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-cluba-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-cluba)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-cluba)
            (not (on-cluba-cluba))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-cluba-pile0
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile0)
            (on-cluba-cluba)
            (alive-cluba)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-cluba)
            (not (on-cluba-cluba))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-cluba-pile1
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile1)
            (on-cluba-cluba)
            (alive-cluba)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-cluba)
            (not (on-cluba-cluba))
            (on-cluba-pile1)
        )
    )
    (:action move-cluba-heart2-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-heart2)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-heart2)
            (not (on-cluba-heart2))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-heart2-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-heart2)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-heart2)
            (not (on-cluba-heart2))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-heart2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile0)
            (on-cluba-heart2)
            (alive-cluba)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart2)
            (not (on-cluba-heart2))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-heart2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile1)
            (on-cluba-heart2)
            (alive-cluba)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart2)
            (not (on-cluba-heart2))
            (on-cluba-pile1)
        )
    )
    (:action move-cluba-heart3-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-heart3)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-heart3)
            (not (on-cluba-heart3))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-heart3-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-heart3)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-heart3)
            (not (on-cluba-heart3))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-heart3-pile0
        :parameters ()
        :precondition 
        (and
            (alive-pile0)
            (clear-cluba)
            (clear-pile0)
            (on-cluba-heart3)
            (alive-cluba)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart3)
            (not (on-cluba-heart3))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-heart3-pile1
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile1)
            (on-cluba-heart3)
            (alive-cluba)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart3)
            (not (on-cluba-heart3))
            (on-cluba-pile1)
        )
    )
    (:action move-cluba-hearta-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-hearta)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-hearta)
            (not (on-cluba-hearta))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-hearta-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-hearta)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-hearta)
            (not (on-cluba-hearta))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-hearta-pile0
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile0)
            (on-cluba-hearta)
            (alive-cluba)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-hearta)
            (not (on-cluba-hearta))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-hearta-pile1
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile1)
            (on-cluba-hearta)
            (alive-cluba)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-hearta)
            (not (on-cluba-hearta))
            (on-cluba-pile1)
        )
    )
    (:action move-cluba-pile0-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-pile0)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-pile0)
            (not (on-cluba-pile0))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-pile0-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-pile0)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-pile0)
            (not (on-cluba-pile0))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-pile0-pile0
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile0)
            (on-cluba-pile0)
            (alive-cluba)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile0)
            (not (on-cluba-pile0))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-pile0-pile1
        :parameters ()
        :precondition 
        (and
            (alive-pile1)
            (clear-cluba)
            (clear-pile1)
            (on-cluba-pile0)
            (alive-cluba)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile0)
            (not (on-cluba-pile0))
            (on-cluba-pile1)
        )
    )
    (:action move-cluba-pile1-club2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-club2)
            (on-cluba-pile1)
            (alive-cluba)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-pile1)
            (not (on-cluba-pile1))
            (on-cluba-club2)
        )
    )
    (:action move-cluba-pile1-heart2
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-heart2)
            (on-cluba-pile1)
            (alive-cluba)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-pile1)
            (not (on-cluba-pile1))
            (on-cluba-heart2)
        )
    )
    (:action move-cluba-pile1-pile0
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile0)
            (on-cluba-pile1)
            (alive-cluba)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile1)
            (not (on-cluba-pile1))
            (on-cluba-pile0)
        )
    )
    (:action move-cluba-pile1-pile1
        :parameters ()
        :precondition 
        (and
            (clear-cluba)
            (clear-pile1)
            (on-cluba-pile1)
            (alive-cluba)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile1)
            (not (on-cluba-pile1))
            (on-cluba-pile1)
        )
    )
    (:action move-heart2-club2-heart3
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-heart3)
            (on-heart2-club2)
            (alive-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-club2)
            (not (on-heart2-club2))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-club2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-club2)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-club2)
            (not (on-heart2-club2))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-club2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile1)
            (on-heart2-club2)
            (alive-heart2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-club2)
            (not (on-heart2-club2))
            (on-heart2-pile1)
        )
    )
    (:action move-heart2-cluba-heart3
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-heart3)
            (on-heart2-cluba)
            (alive-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-cluba)
            (not (on-heart2-cluba))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-cluba-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-cluba)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-cluba)
            (not (on-heart2-cluba))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-cluba-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile1)
            (on-heart2-cluba)
            (alive-heart2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-cluba)
            (not (on-heart2-cluba))
            (on-heart2-pile1)
        )
    )
    (:action move-heart2-heart2-heart3
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (alive-heart2)
            (clear-heart3)
            (on-heart2-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-heart2)
            (not (on-heart2-heart2))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-heart2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-heart2)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart2)
            (not (on-heart2-heart2))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-heart2-pile1
        :parameters ()
        :precondition 
        (and
            (on-heart2-heart2)
            (alive-heart2)
            (alive-pile1)
            (clear-heart2)
            (clear-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart2)
            (not (on-heart2-heart2))
            (on-heart2-pile1)
        )
    )
    (:action move-heart2-heart3-heart3
        :parameters ()
        :precondition 
        (and
            (alive-heart3)
            (clear-heart3)
            (alive-heart2)
            (clear-heart2)
            (on-heart2-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-heart3)
            (not (on-heart2-heart3))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-heart3-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-heart3)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart3)
            (not (on-heart2-heart3))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-heart3-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile1)
            (on-heart2-heart3)
            (alive-heart2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart3)
            (not (on-heart2-heart3))
            (on-heart2-pile1)
        )
    )
    (:action move-heart2-hearta-heart3
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-heart3)
            (on-heart2-hearta)
            (alive-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-hearta)
            (not (on-heart2-hearta))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-hearta-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-hearta)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-hearta)
            (not (on-heart2-hearta))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-hearta-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile1)
            (on-heart2-hearta)
            (alive-heart2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-hearta)
            (not (on-heart2-hearta))
            (on-heart2-pile1)
        )
    )
    (:action move-heart2-pile0-heart3
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-heart3)
            (on-heart2-pile0)
            (alive-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-pile0)
            (not (on-heart2-pile0))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-pile0-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-pile0)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile0)
            (not (on-heart2-pile0))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-pile0-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile1)
            (on-heart2-pile0)
            (alive-heart2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile0)
            (not (on-heart2-pile0))
            (on-heart2-pile1)
        )
    )
    (:action move-heart2-pile1-heart3
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-heart3)
            (on-heart2-pile1)
            (alive-heart2)
            (alive-heart3)
        )
        :effect 
        (and
            (not (clear-heart3))
            (clear-pile1)
            (not (on-heart2-pile1))
            (on-heart2-heart3)
        )
    )
    (:action move-heart2-pile1-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile0)
            (on-heart2-pile1)
            (alive-heart2)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile1)
            (not (on-heart2-pile1))
            (on-heart2-pile0)
        )
    )
    (:action move-heart2-pile1-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart2)
            (clear-pile1)
            (on-heart2-pile1)
            (alive-heart2)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile1)
            (not (on-heart2-pile1))
            (on-heart2-pile1)
        )
    )
    (:action move-heart3-club2-pile0
        :parameters ()
        :precondition 
        (and
            (on-heart3-club2)
            (clear-heart3)
            (alive-heart3)
            (clear-pile0)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-club2)
            (not (on-heart3-club2))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-club2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-club2)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-club2)
            (not (on-heart3-club2))
            (on-heart3-pile1)
        )
    )
    (:action move-heart3-cluba-pile0
        :parameters ()
        :precondition 
        (and
            (on-heart3-cluba)
            (alive-heart3)
            (clear-pile0)
            (clear-heart3)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-cluba)
            (not (on-heart3-cluba))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-cluba-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-cluba)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-cluba)
            (not (on-heart3-cluba))
            (on-heart3-pile1)
        )
    )
    (:action move-heart3-heart2-pile0
        :parameters ()
        :precondition 
        (and
            (alive-heart3)
            (clear-pile0)
            (on-heart3-heart2)
            (clear-heart3)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart2)
            (not (on-heart3-heart2))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-heart2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-heart2)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart2)
            (not (on-heart3-heart2))
            (on-heart3-pile1)
        )
    )
    (:action move-heart3-heart3-pile0
        :parameters ()
        :precondition 
        (and
            (clear-pile0)
            (alive-heart3)
            (clear-heart3)
            (on-heart3-heart3)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart3)
            (not (on-heart3-heart3))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-heart3-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-heart3)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart3)
            (not (on-heart3-heart3))
            (on-heart3-pile1)
        )
    )
    (:action move-heart3-hearta-pile0
        :parameters ()
        :precondition 
        (and
            (clear-pile0)
            (clear-heart3)
            (alive-heart3)
            (alive-pile0)
            (on-heart3-hearta)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-hearta)
            (not (on-heart3-hearta))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-hearta-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-hearta)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-hearta)
            (not (on-heart3-hearta))
            (on-heart3-pile1)
        )
    )
    (:action move-heart3-pile0-pile0
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile0)
            (on-heart3-pile0)
            (alive-heart3)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile0)
            (not (on-heart3-pile0))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-pile0-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-pile0)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile0)
            (not (on-heart3-pile0))
            (on-heart3-pile1)
        )
    )
    (:action move-heart3-pile1-pile0
        :parameters ()
        :precondition 
        (and
            (alive-heart3)
            (on-heart3-pile1)
            (clear-pile0)
            (clear-heart3)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile1)
            (not (on-heart3-pile1))
            (on-heart3-pile0)
        )
    )
    (:action move-heart3-pile1-pile1
        :parameters ()
        :precondition 
        (and
            (clear-heart3)
            (clear-pile1)
            (on-heart3-pile1)
            (alive-heart3)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile1)
            (not (on-heart3-pile1))
            (on-heart3-pile1)
        )
    )
    (:action move-hearta-club2-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-club2)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-club2)
            (not (on-hearta-club2))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-club2-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-club2)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-club2)
            (not (on-hearta-club2))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-club2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-club2)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-club2)
            (not (on-hearta-club2))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-club2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-club2)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-club2)
            (not (on-hearta-club2))
            (on-hearta-pile1)
        )
    )
    (:action move-hearta-cluba-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-cluba)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-cluba)
            (not (on-hearta-cluba))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-cluba-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-cluba)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-cluba)
            (not (on-hearta-cluba))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-cluba-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-cluba)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-cluba)
            (not (on-hearta-cluba))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-cluba-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-cluba)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-cluba)
            (not (on-hearta-cluba))
            (on-hearta-pile1)
        )
    )
    (:action move-hearta-heart2-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-heart2)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-heart2)
            (not (on-hearta-heart2))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-heart2-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-heart2)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-heart2)
            (not (on-hearta-heart2))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-heart2-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-heart2)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart2)
            (not (on-hearta-heart2))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-heart2-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-heart2)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart2)
            (not (on-hearta-heart2))
            (on-hearta-pile1)
        )
    )
    (:action move-hearta-heart3-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-heart3)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-heart3)
            (not (on-hearta-heart3))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-heart3-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-heart3)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-heart3)
            (not (on-hearta-heart3))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-heart3-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-heart3)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-heart3)
            (not (on-hearta-heart3))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-heart3-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-heart3)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-heart3)
            (not (on-hearta-heart3))
            (on-hearta-pile1)
        )
    )
    (:action move-hearta-hearta-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-hearta)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-hearta)
            (not (on-hearta-hearta))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-hearta-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-hearta)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-hearta)
            (not (on-hearta-hearta))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-hearta-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-hearta)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-hearta)
            (not (on-hearta-hearta))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-hearta-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-hearta)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-hearta)
            (not (on-hearta-hearta))
            (on-hearta-pile1)
        )
    )
    (:action move-hearta-pile0-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-pile0)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-pile0)
            (not (on-hearta-pile0))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-pile0-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-pile0)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-pile0)
            (not (on-hearta-pile0))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-pile0-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-pile0)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile0)
            (not (on-hearta-pile0))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-pile0-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-pile0)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile0)
            (not (on-hearta-pile0))
            (on-hearta-pile1)
        )
    )
    (:action move-hearta-pile1-club2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-club2)
            (on-hearta-pile1)
            (alive-hearta)
            (alive-club2)
        )
        :effect 
        (and
            (not (clear-club2))
            (clear-pile1)
            (not (on-hearta-pile1))
            (on-hearta-club2)
        )
    )
    (:action move-hearta-pile1-heart2
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-heart2)
            (on-hearta-pile1)
            (alive-hearta)
            (alive-heart2)
        )
        :effect 
        (and
            (not (clear-heart2))
            (clear-pile1)
            (not (on-hearta-pile1))
            (on-hearta-heart2)
        )
    )
    (:action move-hearta-pile1-pile0
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile0)
            (on-hearta-pile1)
            (alive-hearta)
            (alive-pile0)
        )
        :effect 
        (and
            (not (clear-pile0))
            (clear-pile1)
            (not (on-hearta-pile1))
            (on-hearta-pile0)
        )
    )
    (:action move-hearta-pile1-pile1
        :parameters ()
        :precondition 
        (and
            (clear-hearta)
            (clear-pile1)
            (on-hearta-pile1)
            (alive-hearta)
            (alive-pile1)
        )
        :effect 
        (and
            (not (clear-pile1))
            (clear-pile1)
            (not (on-hearta-pile1))
            (on-hearta-pile1)
        )
    )
)
