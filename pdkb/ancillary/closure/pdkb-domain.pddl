(define (domain closure)

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
                    ; #82846: <==closure== 84797 (pos)
                    (Pa_p)

                    ; #84797: origin
                    (Ba_p)

                    ; #32752: <==negation-removal== 84797 (pos)
                    (not (Pa_not_p))

                    ; #71635: <==negation-removal== 82846 (pos)
                    (not (Ba_not_p))))

    (:action check
        :precondition (and (Pa_p))
        :effect (and
                    ; #20985: <==closure== 40936 (pos)
                    (Pa_q)

                    ; #33959: origin
                    (q)

                    ; #40936: <==commonly_known== 33959 (pos)
                    (Ba_q)

                    ; #57002: <==negation-removal== 20985 (pos)
                    (not (Ba_not_q))

                    ; #74385: <==negation-removal== 40936 (pos)
                    (not (Pa_not_q))

                    ; #85313: <==negation-removal== 33959 (pos)
                    (not (not_q))))

)