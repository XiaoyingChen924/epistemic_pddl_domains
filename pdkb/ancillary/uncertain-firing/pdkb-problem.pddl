(define (problem uncertain-firing-prob)

    (:domain uncertain-firing)

    (:init
        (Ba_not_q)
        (Pa_not_p)
        (Pa_not_q)
        (Pa_not_r)
        (Pa_Ba_not_p)
        (Pa_Ba_not_q)
        (Pa_Ba_not_r)
        (Pa_Ba_p)
        (Pa_Ba_q)
        (Pa_Ba_r)
        (Pa_Pa_not_p)
        (Pa_Pa_not_q)
        (Pa_Pa_not_r)
        (Pa_Pa_p)
        (Pa_Pa_q)
        (Pa_Pa_r)
        (Pa_p)
        (Pa_r)
    )

    (:goal (and
        (r)
    ))
)