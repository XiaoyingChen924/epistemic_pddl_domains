(define (domain negation-removal)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_p)
        (not_q)
        (Ba_not_p)
        (Ba_not_q)
        (Ba_Ba_not_p)
        (Ba_Ba_not_q)
        (Ba_Ba_p)
        (Ba_Ba_q)
        (Ba_Pa_not_p)
        (Ba_Pa_not_q)
        (Ba_Pa_p)
        (Ba_Pa_q)
        (Ba_p)
        (Ba_q)
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
        (p)
        (q)
    )

    (:action apply
        :precondition (and )
        :effect (and
                    ; #15372: origin
                    (Ba_p)

                    ; #43585: <==closure== 15372 (pos)
                    (Pa_p)

                    ; #28565: <==negation-removal== 43585 (pos)
                    (not (Ba_not_p))

                    ; #89920: <==negation-removal== 15372 (pos)
                    (not (Pa_not_p))))

    (:action check
        :precondition (and (not (Pa_not_p)))
        :effect (and
                    ; #12293: <==closure== 17373 (pos)
                    (Pa_q)

                    ; #13324: origin
                    (q)

                    ; #17373: <==commonly_known== 13324 (pos)
                    (Ba_q)

                    ; #20716: <==negation-removal== 17373 (pos)
                    (not (Pa_not_q))

                    ; #74154: <==negation-removal== 12293 (pos)
                    (not (Ba_not_q))

                    ; #76931: <==negation-removal== 13324 (pos)
                    (not (not_q))))

)