(define (domain uncertain-firing)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_p)
        (not_q)
        (not_r)
        (Ba_not_p)
        (Ba_not_q)
        (Ba_not_r)
        (Ba_Ba_not_p)
        (Ba_Ba_not_q)
        (Ba_Ba_not_r)
        (Ba_Ba_p)
        (Ba_Ba_q)
        (Ba_Ba_r)
        (Ba_Pa_not_p)
        (Ba_Pa_not_q)
        (Ba_Pa_not_r)
        (Ba_Pa_p)
        (Ba_Pa_q)
        (Ba_Pa_r)
        (Ba_p)
        (Ba_q)
        (Ba_r)
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
        (Pa_q)
        (Pa_r)
        (p)
        (q)
        (r)
    )

    (:action apply
        :precondition (and )
        :effect (and
                    ; #30747: origin
                    (when (and (p))
                          (q))

                    ; #71413: <==closure== 81641 (pos)
                    (when (and (and (Pa_p)
                               (Ba_p)))
                          (Pa_q))

                    ; #81641: <==commonly_known== 30747 (pos)
                    (when (and (and (Pa_p)
                               (Ba_p)))
                          (Ba_q))

                    ; #82446: <==commonly_known== 83282 (neg)
                    (when (and (Pa_p))
                          (Pa_q))

                    ; #58362: <==unclosure== 59159 (neg)
                    (when (and (and (not (Ba_not_p))
                               (not (Pa_not_p))))
                          (not (Ba_not_q)))

                    ; #59159: <==uncertain_firing== 81641 (pos)
                    (when (and (and (not (Ba_not_p))
                               (not (Pa_not_p))))
                          (not (Pa_not_q)))

                    ; #61297: <==negation-removal== 71413 (pos)
                    (when (and (and (Pa_p)
                               (Ba_p)))
                          (not (Ba_not_q)))

                    ; #61853: <==negation-removal== 81641 (pos)
                    (when (and (and (Pa_p)
                               (Ba_p)))
                          (not (Pa_not_q)))

                    ; #71531: <==negation-removal== 30747 (pos)
                    (when (and (p))
                          (not (not_q)))

                    ; #83282: <==uncertain_firing== 30747 (pos)
                    (when (and (not (not_p)))
                          (not (not_q)))

                    ; #85841: <==negation-removal== 82446 (pos)
                    (when (and (Pa_p))
                          (not (Ba_not_q)))))

    (:action check
        :precondition (and (Pa_q))
        :effect (and
                    ; #34155: origin
                    (r)

                    ; #36315: <==closure== 42983 (pos)
                    (Pa_r)

                    ; #42983: <==commonly_known== 34155 (pos)
                    (Ba_r)

                    ; #64447: <==negation-removal== 36315 (pos)
                    (not (Ba_not_r))

                    ; #79923: <==negation-removal== 42983 (pos)
                    (not (Pa_not_r))

                    ; #80536: <==negation-removal== 34155 (pos)
                    (not (not_r))))

)