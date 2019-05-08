(define (domain vampire)
    (:requirements :conditional-effects)
    (:predicates
        (light-on ?r)
        (slayer-is-alive)
        (slayer-is-in ?r)
        (vampire-is-alive)
        (vampire-is-in ?r)
        (fighting)
        ;
        ; static predicates
        (NEXT-ROOM ?r ?rn)
        (CONTAINS-GARLIC ?r)
    )

    (:action toggle-light
        :parameters (?anti-clockwise-neighbor ?room ?clockwise-neighbor)
        :precondition (and
            (NEXT-ROOM ?anti-clockwise-neighbor ?room)
            (NEXT-ROOM ?room ?clockwise-neighbor)
            (not (fighting))
        )
        :effect (and
            ; switched light on/off
            (when 
                (not (light-on ?room))
                (light-on ?room)
            )
            (when 
                (light-on ?room)
                (not(light-on ?room))
            )
            ; if light in current room is on, then vamp should move:
            ;   to anti-clock if it's dark
            ;   to clock otherwise
            (when
                (and
                    (light-on ?room)
                    (vampire-is-in ?room)
                    (not (light-on ?anti-clockwise-neighbor))
                )
                (and 
                    (vampire-is-in ?anti-clockwise-neighbor)
                    (not (vampire-is-in ?room))
                )
            )
            (when
                (and
                    (light-on ?room)
                    (vampire-is-in ?room)
                    (light-on ?anti-clockwise-neighbor)
                )
                (and 
                    (vampire-is-in ?clockwise-neighbor)
                    (not (vampire-is-in ?room))
                )
            )
            ; if light in current room is off, then slayer should move:
            ;   to clock if it's bright
            ;   to anti-clock otherwise
            (when
                (and
                    (not (light-on ?room))
                    (slayer-is-in ?room)
                    (light-on ?clockwise-neighbor)
                )
                (and 
                    (vampire-is-in ?clockwise-neighbor)
                    (not (vampire-is-in ?room))
                )
            )
            (when
                (and
                    (not (light-on ?room))
                    (slayer-is-in ?room)
                    (not (light-on ?clockwise-neighbor))
                )
                (and 
                    (vampire-is-in ?anti-clockwise-neighbor)
                    (not (vampire-is-in ?room))
                )
            )
            ; should they fight?
            (when
                (or
                    (and
                        (vampire-is-in ?anti-clockwise-neighbor)
                        (slayer-is-in ?anti-clockwise-neighbor)
                    )
                    (and
                        (vampire-is-in ?clockwise-neighbor)
                        (slayer-is-in ?clockwise-neighbor)
                    )
                )
                (fighting)
            )
        )
    )

    (:action watch-fight
        :parameters (?room)
        :precondition (and
            (slayer-is-in ?room)
            (slayer-is-alive)
            (vampire-is-in ?room)
            (vampire-is-alive)
            (fighting)
        )
        :effect (and
            (when
                (and
                    (not (light-on ?room))
                    (not (CONTAINS-GARLIC ?room))
                )
                (and
                    (not (slayer-is-alive))
                    (not (fighting))
                )
            )
            (when
                (or
                    (light-on ?room)
                    (CONTAINS-GARLIC ?room)
                )
                (and
                    (not (vampire-is-alive))
                    (not (fighting))
                )
            )
        )
    )
)
