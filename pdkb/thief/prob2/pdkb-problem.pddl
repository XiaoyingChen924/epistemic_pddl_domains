(define (problem thief-prob)

    (:domain thief)

    (:init
        (Pg_not_thief)
        (guard)
        (thief)
    )

    (:goal (and
        (goal)
    ))
)