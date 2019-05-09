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
            (when 
                ; when light is off 
                (not (light-on ?room))
                (and
                    ; should turn it on
                    (light-on ?room)
                    (when
                        ; if vamp's in the room
                        (vampire-is-in ?room)
                        (and
                            ; should move out
                            (not (vampire-is-in ?room))
                            (and
                                (when
                                    ; if anti-clock neigh is dark
                                    (not (light-on ?anti-clockwise-neighbor))
                                    (and 
                                        ; moves to there and fight if slayer's there
                                        (vampire-is-in ?anti-clockwise-neighbor)
                                        (when
                                            (slayer-is-in ?anti-clockwise-neighbor)
                                            (fighting)
                                        )
                                    )
                                )
                                (when
                                    ; if anti-clock neigh is bright
                                     (light-on ?anti-clockwise-neighbor)
                                     (and
                                        ; moves to clock neigh and fight if slayer's there
                                        (vampire-is-in ?clockwise-neighbor)
                                        (when
                                            (slayer-is-in ?clockwise-neighbor)
                                            (fighting)
                                        )
                                     )
                                )
                            )
                        )
                    )
                )
            )
            (when
                ; when light is on 
                (light-on ?room)
                (and
                    ; should turn off
                    (not(light-on ?room))
                    (when
                        ; if slayer is in the room
                        (slayer-is-in ?room)
                        (and
                            ; she should get out of it
                            (not (slayer-is-in ?room))
                            (and
                                (when
                                    ; if clock-neigh is bright
                                    (light-on ?clockwise-neighbor)
                                    (and
                                        ; moves to there and fight if vamp's there
                                        (slayer-is-in ?clockwise-neighbor)
                                        (when
                                            (vampire-is-in ?clockwise-neighbor)
                                            (fighting)
                                        )
                                    )
                                )
                                (when
                                    ; if clock-neigh is dark
                                    (not (light-on ?clockwise-neighbor))
                                    (and
                                        ; moves to anti-clock and fight if vamp's there
                                        (slayer-is-in ?anti-clockwise-neighbor)
                                        (when
                                            (vampire-is-in ?anti-clockwise-neighbor)
                                            (fighting)
                                        )
                                    )
                                )
                            )
                        )
                    )
                )
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
                ; room is dark and there's no garlic
                (and
                    (not (light-on ?room))
                    (not (CONTAINS-GARLIC ?room))
                )
                ; fight is over, slayer dies
                (and
                    (not (slayer-is-alive))
                    (not (slayer-is-in ?room))
                    (not (fighting))
                )
            )
            (when
                ; room is bright or there's a garlic
                (or
                    (light-on ?room)
                    (CONTAINS-GARLIC ?room)
                )
                ; fight is over, vamp dies
                (and
                    (not (vampire-is-alive))
                    (not (vampire-is-in ?room))
                    (not (fighting))
                )
            )
        )
    )
)
