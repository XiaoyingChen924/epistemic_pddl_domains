(define (domain thief)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_goal)
        (not_guard)
        (not_thief)
        (Bg_not_guard)
        (Bg_not_thief)
        (Bg_Bg_not_guard)
        (Bg_Bg_not_thief)
        (Bg_Bg_guard)
        (Bg_Bg_thief)
        (Bg_Bt_not_guard)
        (Bg_Bt_not_thief)
        (Bg_Bt_guard)
        (Bg_Bt_thief)
        (Bg_Pg_not_guard)
        (Bg_Pg_not_thief)
        (Bg_Pg_guard)
        (Bg_Pg_thief)
        (Bg_Pt_not_guard)
        (Bg_Pt_not_thief)
        (Bg_Pt_guard)
        (Bg_Pt_thief)
        (Bg_guard)
        (Bg_thief)
        (Bt_not_guard)
        (Bt_not_thief)
        (Bt_Bg_not_guard)
        (Bt_Bg_not_thief)
        (Bt_Bg_guard)
        (Bt_Bg_thief)
        (Bt_Bt_not_guard)
        (Bt_Bt_not_thief)
        (Bt_Bt_guard)
        (Bt_Bt_thief)
        (Bt_Pg_not_guard)
        (Bt_Pg_not_thief)
        (Bt_Pg_guard)
        (Bt_Pg_thief)
        (Bt_Pt_not_guard)
        (Bt_Pt_not_thief)
        (Bt_Pt_guard)
        (Bt_Pt_thief)
        (Bt_guard)
        (Bt_thief)
        (Pg_not_guard)
        (Pg_not_thief)
        (Pg_Bg_not_guard)
        (Pg_Bg_not_thief)
        (Pg_Bg_guard)
        (Pg_Bg_thief)
        (Pg_Bt_not_guard)
        (Pg_Bt_not_thief)
        (Pg_Bt_guard)
        (Pg_Bt_thief)
        (Pg_Pg_not_guard)
        (Pg_Pg_not_thief)
        (Pg_Pg_guard)
        (Pg_Pg_thief)
        (Pg_Pt_not_guard)
        (Pg_Pt_not_thief)
        (Pg_Pt_guard)
        (Pg_Pt_thief)
        (Pg_guard)
        (Pg_thief)
        (Pt_not_guard)
        (Pt_not_thief)
        (Pt_Bg_not_guard)
        (Pt_Bg_not_thief)
        (Pt_Bg_guard)
        (Pt_Bg_thief)
        (Pt_Bt_not_guard)
        (Pt_Bt_not_thief)
        (Pt_Bt_guard)
        (Pt_Bt_thief)
        (Pt_Pg_not_guard)
        (Pt_Pg_not_thief)
        (Pt_Pg_guard)
        (Pt_Pg_thief)
        (Pt_Pt_not_guard)
        (Pt_Pt_not_thief)
        (Pt_Pt_guard)
        (Pt_Pt_thief)
        (Pt_guard)
        (Pt_thief)
        (goal)
        (guard)
        (thief)
    )

    (:action ambush
        :precondition (and (Pt_not_guard)
                           (thief))
        :effect (and
                    ; #80162: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #13602: <==closure== 29639 (pos)
                    (Pt_guard)

                    ; #24238: <==commonly_known== 24238 (pos)
                    (Bt_guard)

                    ; #41732: origin
                    (thief)

                    ; #20215: <==closure== 26961 (pos)
                    (not (not_thief))

                    ; #73861: <==closure== 29639 (pos)
                    (not (Bt_not_guard))

                    ; #75861: <==closure== 29639 (pos)
                    (not (Pt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #41732: origin
                    (thief)

                    ; #20215: <==closure== 26961 (pos)
                    (not (not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #18470: <==closure== 21965 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (Pt_guard))

                    ; #31296: <==commonly_known== 79842 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (Bt_guard))

                    ; #53890: <==commonly_known== 28902 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Bt_guard))

                    ; #86453: <==closure== 41896 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Pt_guard))

                    ; #14856: <==closure== 41896 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Bt_not_guard)))

                    ; #18968: <==closure== 41896 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Pt_not_guard)))

                    ; #19675: <==closure== 21965 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #37857: <==commonly_known== 37857 (neg)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #64600: <==closure== 51615 (pos)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #68517: <==closure== 21766 (pos)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #80554: <==closure== 21965 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)
                               (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #87527: <==commonly_known== 87527 (neg)
                    (when (and (and (not (Bt_not_thief))
                               (not (Pt_not_thief))))
                          (not (Pt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #71417: <==commonly_known== 48978 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (thief))

                    ; #16062: <==closure== 83106 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #80162: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #13602: <==closure== 29639 (pos)
                    (Pt_guard)

                    ; #24238: <==commonly_known== 24238 (pos)
                    (Bt_guard)

                    ; #73861: <==closure== 29639 (pos)
                    (not (Bt_not_guard))

                    ; #75861: <==closure== 29639 (pos)
                    (not (Pt_not_guard))))

    (:action trick
        :precondition (and (Pt_guard)
                           (thief)
                           (Bt_guard)
                           (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief))
        :effect (and
                    ; #80162: origin
                    (goal)))

)