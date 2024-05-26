(define (domain inverted-closure)

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
                    ; #51743: <==unclosure== 62031 (neg)
                    (not (Ba_p))

                    ; #62031: origin
                    (not (Pa_p))))

    (:action check
        :precondition (and (not (Ba_p))
                           (not (Pa_p)))
        :effect (and
                    ; #35303: <==closure== 72016 (pos)
                    (Pa_q)

                    ; #72016: <==commonly_known== 79176 (pos)
                    (Ba_q)

                    ; #79176: origin
                    (q)

                    ; #56169: <==negation-removal== 35303 (pos)
                    (not (Ba_not_q))

                    ; #64013: <==negation-removal== 79176 (pos)
                    (not (not_q))

                    ; #71886: <==negation-removal== 72016 (pos)
                    (not (Pa_not_q))))

)