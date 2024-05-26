(define (problem closure-prob)

    (:domain closure)

    (:init
        (Ba_not_p)
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
        (Pa_q)
    )

    (:goal (and
        (q)
    ))
)