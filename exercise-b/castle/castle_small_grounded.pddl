(define (problem castle-small-grounded)
(:domain beleaguered-castle-grounded-for-castle-small)
(:objects
)
(:init
   (on-heart2-pile0)
   (on-club2-heart2)
   (on-heart3-pile1)
   (clear-club2)
   (clear-heart3)
   (clear-cluba)
   (discarded-cluba)
   (clear-hearta)
   (discarded-hearta)
   (alive-club2)
   (alive-heart2)
   (alive-heart3)
)
(:goal
    (and
        (discarded-cluba)
        (discarded-club2)
        (discarded-hearta)
        (discarded-heart2)
        (discarded-heart3)
        (clear-pile0)
        (clear-pile1)
    )
)
)
