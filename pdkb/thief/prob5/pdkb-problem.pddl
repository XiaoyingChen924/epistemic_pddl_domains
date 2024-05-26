(define (problem thief-prob)

    (:domain thief)

    (:init
        (Bt_Pg_not_thief)
        (Bt_Pg_thief)
        (Pt_not_guard)
        (Pt_Pg_not_thief)
        (Pt_Pg_thief)
        (Pt_guard)
        (guard)
    )

    (:goal (and
        (goal)
    ))
)