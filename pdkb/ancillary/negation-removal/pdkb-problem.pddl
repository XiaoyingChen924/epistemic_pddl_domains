(define (problem negation-removal-prob)

    (:domain negation-removal)

    (:init
        (Pa_not_p)
        (Pa_not_q)
        (Pa_Ba_not_p)
        (Pa_Ba_not_q)
        (Pa_Ba_p)
        (Pa_Ba_q)
        (Pa_Pa_not_p)
        (Pa_Pa_not_q)
        (Pa_Pa_p)
        (Pa_Pa_q)
        (Pa_p)
        (Pa_q)
    )

    (:goal (and
        (q)
    ))
)