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
        (Bg_Bg_Bg_not_guard)
        (Bg_Bg_Bg_not_thief)
        (Bg_Bg_Bg_guard)
        (Bg_Bg_Bg_thief)
        (Bg_Bg_Bt_not_guard)
        (Bg_Bg_Bt_not_thief)
        (Bg_Bg_Bt_guard)
        (Bg_Bg_Bt_thief)
        (Bg_Bg_Pg_not_guard)
        (Bg_Bg_Pg_not_thief)
        (Bg_Bg_Pg_guard)
        (Bg_Bg_Pg_thief)
        (Bg_Bg_Pt_not_guard)
        (Bg_Bg_Pt_not_thief)
        (Bg_Bg_Pt_guard)
        (Bg_Bg_Pt_thief)
        (Bg_Bg_guard)
        (Bg_Bg_thief)
        (Bg_Bt_not_guard)
        (Bg_Bt_not_thief)
        (Bg_Bt_Bg_not_guard)
        (Bg_Bt_Bg_not_thief)
        (Bg_Bt_Bg_guard)
        (Bg_Bt_Bg_thief)
        (Bg_Bt_Bt_not_guard)
        (Bg_Bt_Bt_not_thief)
        (Bg_Bt_Bt_guard)
        (Bg_Bt_Bt_thief)
        (Bg_Bt_Pg_not_guard)
        (Bg_Bt_Pg_not_thief)
        (Bg_Bt_Pg_guard)
        (Bg_Bt_Pg_thief)
        (Bg_Bt_Pt_not_guard)
        (Bg_Bt_Pt_not_thief)
        (Bg_Bt_Pt_guard)
        (Bg_Bt_Pt_thief)
        (Bg_Bt_guard)
        (Bg_Bt_thief)
        (Bg_Pg_not_guard)
        (Bg_Pg_not_thief)
        (Bg_Pg_Bg_not_guard)
        (Bg_Pg_Bg_not_thief)
        (Bg_Pg_Bg_guard)
        (Bg_Pg_Bg_thief)
        (Bg_Pg_Bt_not_guard)
        (Bg_Pg_Bt_not_thief)
        (Bg_Pg_Bt_guard)
        (Bg_Pg_Bt_thief)
        (Bg_Pg_Pg_not_guard)
        (Bg_Pg_Pg_not_thief)
        (Bg_Pg_Pg_guard)
        (Bg_Pg_Pg_thief)
        (Bg_Pg_Pt_not_guard)
        (Bg_Pg_Pt_not_thief)
        (Bg_Pg_Pt_guard)
        (Bg_Pg_Pt_thief)
        (Bg_Pg_guard)
        (Bg_Pg_thief)
        (Bg_Pt_not_guard)
        (Bg_Pt_not_thief)
        (Bg_Pt_Bg_not_guard)
        (Bg_Pt_Bg_not_thief)
        (Bg_Pt_Bg_guard)
        (Bg_Pt_Bg_thief)
        (Bg_Pt_Bt_not_guard)
        (Bg_Pt_Bt_not_thief)
        (Bg_Pt_Bt_guard)
        (Bg_Pt_Bt_thief)
        (Bg_Pt_Pg_not_guard)
        (Bg_Pt_Pg_not_thief)
        (Bg_Pt_Pg_guard)
        (Bg_Pt_Pg_thief)
        (Bg_Pt_Pt_not_guard)
        (Bg_Pt_Pt_not_thief)
        (Bg_Pt_Pt_guard)
        (Bg_Pt_Pt_thief)
        (Bg_Pt_guard)
        (Bg_Pt_thief)
        (Bg_guard)
        (Bg_thief)
        (Bt_not_guard)
        (Bt_not_thief)
        (Bt_Bg_not_guard)
        (Bt_Bg_not_thief)
        (Bt_Bg_Bg_not_guard)
        (Bt_Bg_Bg_not_thief)
        (Bt_Bg_Bg_guard)
        (Bt_Bg_Bg_thief)
        (Bt_Bg_Bt_not_guard)
        (Bt_Bg_Bt_not_thief)
        (Bt_Bg_Bt_guard)
        (Bt_Bg_Bt_thief)
        (Bt_Bg_Pg_not_guard)
        (Bt_Bg_Pg_not_thief)
        (Bt_Bg_Pg_guard)
        (Bt_Bg_Pg_thief)
        (Bt_Bg_Pt_not_guard)
        (Bt_Bg_Pt_not_thief)
        (Bt_Bg_Pt_guard)
        (Bt_Bg_Pt_thief)
        (Bt_Bg_guard)
        (Bt_Bg_thief)
        (Bt_Bt_not_guard)
        (Bt_Bt_not_thief)
        (Bt_Bt_Bg_not_guard)
        (Bt_Bt_Bg_not_thief)
        (Bt_Bt_Bg_guard)
        (Bt_Bt_Bg_thief)
        (Bt_Bt_Bt_not_guard)
        (Bt_Bt_Bt_not_thief)
        (Bt_Bt_Bt_guard)
        (Bt_Bt_Bt_thief)
        (Bt_Bt_Pg_not_guard)
        (Bt_Bt_Pg_not_thief)
        (Bt_Bt_Pg_guard)
        (Bt_Bt_Pg_thief)
        (Bt_Bt_Pt_not_guard)
        (Bt_Bt_Pt_not_thief)
        (Bt_Bt_Pt_guard)
        (Bt_Bt_Pt_thief)
        (Bt_Bt_guard)
        (Bt_Bt_thief)
        (Bt_Pg_not_guard)
        (Bt_Pg_not_thief)
        (Bt_Pg_Bg_not_guard)
        (Bt_Pg_Bg_not_thief)
        (Bt_Pg_Bg_guard)
        (Bt_Pg_Bg_thief)
        (Bt_Pg_Bt_not_guard)
        (Bt_Pg_Bt_not_thief)
        (Bt_Pg_Bt_guard)
        (Bt_Pg_Bt_thief)
        (Bt_Pg_Pg_not_guard)
        (Bt_Pg_Pg_not_thief)
        (Bt_Pg_Pg_guard)
        (Bt_Pg_Pg_thief)
        (Bt_Pg_Pt_not_guard)
        (Bt_Pg_Pt_not_thief)
        (Bt_Pg_Pt_guard)
        (Bt_Pg_Pt_thief)
        (Bt_Pg_guard)
        (Bt_Pg_thief)
        (Bt_Pt_not_guard)
        (Bt_Pt_not_thief)
        (Bt_Pt_Bg_not_guard)
        (Bt_Pt_Bg_not_thief)
        (Bt_Pt_Bg_guard)
        (Bt_Pt_Bg_thief)
        (Bt_Pt_Bt_not_guard)
        (Bt_Pt_Bt_not_thief)
        (Bt_Pt_Bt_guard)
        (Bt_Pt_Bt_thief)
        (Bt_Pt_Pg_not_guard)
        (Bt_Pt_Pg_not_thief)
        (Bt_Pt_Pg_guard)
        (Bt_Pt_Pg_thief)
        (Bt_Pt_Pt_not_guard)
        (Bt_Pt_Pt_not_thief)
        (Bt_Pt_Pt_guard)
        (Bt_Pt_Pt_thief)
        (Bt_Pt_guard)
        (Bt_Pt_thief)
        (Bt_guard)
        (Bt_thief)
        (Pg_not_guard)
        (Pg_not_thief)
        (Pg_Bg_not_guard)
        (Pg_Bg_not_thief)
        (Pg_Bg_Bg_not_guard)
        (Pg_Bg_Bg_not_thief)
        (Pg_Bg_Bg_guard)
        (Pg_Bg_Bg_thief)
        (Pg_Bg_Bt_not_guard)
        (Pg_Bg_Bt_not_thief)
        (Pg_Bg_Bt_guard)
        (Pg_Bg_Bt_thief)
        (Pg_Bg_Pg_not_guard)
        (Pg_Bg_Pg_not_thief)
        (Pg_Bg_Pg_guard)
        (Pg_Bg_Pg_thief)
        (Pg_Bg_Pt_not_guard)
        (Pg_Bg_Pt_not_thief)
        (Pg_Bg_Pt_guard)
        (Pg_Bg_Pt_thief)
        (Pg_Bg_guard)
        (Pg_Bg_thief)
        (Pg_Bt_not_guard)
        (Pg_Bt_not_thief)
        (Pg_Bt_Bg_not_guard)
        (Pg_Bt_Bg_not_thief)
        (Pg_Bt_Bg_guard)
        (Pg_Bt_Bg_thief)
        (Pg_Bt_Bt_not_guard)
        (Pg_Bt_Bt_not_thief)
        (Pg_Bt_Bt_guard)
        (Pg_Bt_Bt_thief)
        (Pg_Bt_Pg_not_guard)
        (Pg_Bt_Pg_not_thief)
        (Pg_Bt_Pg_guard)
        (Pg_Bt_Pg_thief)
        (Pg_Bt_Pt_not_guard)
        (Pg_Bt_Pt_not_thief)
        (Pg_Bt_Pt_guard)
        (Pg_Bt_Pt_thief)
        (Pg_Bt_guard)
        (Pg_Bt_thief)
        (Pg_Pg_not_guard)
        (Pg_Pg_not_thief)
        (Pg_Pg_Bg_not_guard)
        (Pg_Pg_Bg_not_thief)
        (Pg_Pg_Bg_guard)
        (Pg_Pg_Bg_thief)
        (Pg_Pg_Bt_not_guard)
        (Pg_Pg_Bt_not_thief)
        (Pg_Pg_Bt_guard)
        (Pg_Pg_Bt_thief)
        (Pg_Pg_Pg_not_guard)
        (Pg_Pg_Pg_not_thief)
        (Pg_Pg_Pg_guard)
        (Pg_Pg_Pg_thief)
        (Pg_Pg_Pt_not_guard)
        (Pg_Pg_Pt_not_thief)
        (Pg_Pg_Pt_guard)
        (Pg_Pg_Pt_thief)
        (Pg_Pg_guard)
        (Pg_Pg_thief)
        (Pg_Pt_not_guard)
        (Pg_Pt_not_thief)
        (Pg_Pt_Bg_not_guard)
        (Pg_Pt_Bg_not_thief)
        (Pg_Pt_Bg_guard)
        (Pg_Pt_Bg_thief)
        (Pg_Pt_Bt_not_guard)
        (Pg_Pt_Bt_not_thief)
        (Pg_Pt_Bt_guard)
        (Pg_Pt_Bt_thief)
        (Pg_Pt_Pg_not_guard)
        (Pg_Pt_Pg_not_thief)
        (Pg_Pt_Pg_guard)
        (Pg_Pt_Pg_thief)
        (Pg_Pt_Pt_not_guard)
        (Pg_Pt_Pt_not_thief)
        (Pg_Pt_Pt_guard)
        (Pg_Pt_Pt_thief)
        (Pg_Pt_guard)
        (Pg_Pt_thief)
        (Pg_guard)
        (Pg_thief)
        (Pt_not_guard)
        (Pt_not_thief)
        (Pt_Bg_not_guard)
        (Pt_Bg_not_thief)
        (Pt_Bg_Bg_not_guard)
        (Pt_Bg_Bg_not_thief)
        (Pt_Bg_Bg_guard)
        (Pt_Bg_Bg_thief)
        (Pt_Bg_Bt_not_guard)
        (Pt_Bg_Bt_not_thief)
        (Pt_Bg_Bt_guard)
        (Pt_Bg_Bt_thief)
        (Pt_Bg_Pg_not_guard)
        (Pt_Bg_Pg_not_thief)
        (Pt_Bg_Pg_guard)
        (Pt_Bg_Pg_thief)
        (Pt_Bg_Pt_not_guard)
        (Pt_Bg_Pt_not_thief)
        (Pt_Bg_Pt_guard)
        (Pt_Bg_Pt_thief)
        (Pt_Bg_guard)
        (Pt_Bg_thief)
        (Pt_Bt_not_guard)
        (Pt_Bt_not_thief)
        (Pt_Bt_Bg_not_guard)
        (Pt_Bt_Bg_not_thief)
        (Pt_Bt_Bg_guard)
        (Pt_Bt_Bg_thief)
        (Pt_Bt_Bt_not_guard)
        (Pt_Bt_Bt_not_thief)
        (Pt_Bt_Bt_guard)
        (Pt_Bt_Bt_thief)
        (Pt_Bt_Pg_not_guard)
        (Pt_Bt_Pg_not_thief)
        (Pt_Bt_Pg_guard)
        (Pt_Bt_Pg_thief)
        (Pt_Bt_Pt_not_guard)
        (Pt_Bt_Pt_not_thief)
        (Pt_Bt_Pt_guard)
        (Pt_Bt_Pt_thief)
        (Pt_Bt_guard)
        (Pt_Bt_thief)
        (Pt_Pg_not_guard)
        (Pt_Pg_not_thief)
        (Pt_Pg_Bg_not_guard)
        (Pt_Pg_Bg_not_thief)
        (Pt_Pg_Bg_guard)
        (Pt_Pg_Bg_thief)
        (Pt_Pg_Bt_not_guard)
        (Pt_Pg_Bt_not_thief)
        (Pt_Pg_Bt_guard)
        (Pt_Pg_Bt_thief)
        (Pt_Pg_Pg_not_guard)
        (Pt_Pg_Pg_not_thief)
        (Pt_Pg_Pg_guard)
        (Pt_Pg_Pg_thief)
        (Pt_Pg_Pt_not_guard)
        (Pt_Pg_Pt_not_thief)
        (Pt_Pg_Pt_guard)
        (Pt_Pg_Pt_thief)
        (Pt_Pg_guard)
        (Pt_Pg_thief)
        (Pt_Pt_not_guard)
        (Pt_Pt_not_thief)
        (Pt_Pt_Bg_not_guard)
        (Pt_Pt_Bg_not_thief)
        (Pt_Pt_Bg_guard)
        (Pt_Pt_Bg_thief)
        (Pt_Pt_Bt_not_guard)
        (Pt_Pt_Bt_not_thief)
        (Pt_Pt_Bt_guard)
        (Pt_Pt_Bt_thief)
        (Pt_Pt_Pg_not_guard)
        (Pt_Pt_Pg_not_thief)
        (Pt_Pt_Pg_guard)
        (Pt_Pt_Pg_thief)
        (Pt_Pt_Pt_not_guard)
        (Pt_Pt_Pt_not_thief)
        (Pt_Pt_Pt_guard)
        (Pt_Pt_Pt_thief)
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
                    ; #63800: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #10721: <==commonly_known== 10721 (pos)
                    (Bt_Bg_thief)

                    ; #35904: <==closure== 68910 (pos)
                    (Pt_guard)

                    ; #42893: origin
                    (thief)

                    ; #44242: <==closure== 31023 (pos)
                    (Pt_Pg_thief)

                    ; #56977: <==closure== 31023 (pos)
                    (Bt_Pg_thief)

                    ; #60328: <==commonly_known== 60328 (pos)
                    (Bt_guard)

                    ; #72239: <==closure== 31023 (pos)
                    (Pt_Bg_thief)

                    ; #34940: <==closure== 31023 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #36500: <==closure== 31023 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #72782: <==closure== 31023 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #72885: <==closure== 31023 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #82799: <==closure== 68910 (pos)
                    (not (Bt_not_guard))

                    ; #87405: <==closure== 68910 (pos)
                    (not (Pt_not_guard))

                    ; #90603: <==closure== 46099 (pos)
                    (not (not_thief))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #10721: <==commonly_known== 10721 (pos)
                    (Bt_Bg_thief)

                    ; #42893: origin
                    (thief)

                    ; #44242: <==closure== 31023 (pos)
                    (Pt_Pg_thief)

                    ; #56977: <==closure== 31023 (pos)
                    (Bt_Pg_thief)

                    ; #72239: <==closure== 31023 (pos)
                    (Pt_Bg_thief)

                    ; #34940: <==closure== 31023 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #36500: <==closure== 31023 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #72782: <==closure== 31023 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #72885: <==closure== 31023 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #90603: <==closure== 46099 (pos)
                    (not (not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #10274: <==closure== 74084 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (Pt_guard))

                    ; #24430: <==commonly_known== 54468 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (Bt_guard))

                    ; #42944: <==commonly_known== 15947 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Bt_guard))

                    ; #51973: <==closure== 66840 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (Pt_guard))

                    ; #20520: <==closure== 74084 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #27451: <==commonly_known== 27451 (neg)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #33650: <==closure== 81482 (pos)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #36889: <==closure== 66840 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Pt_not_guard)))

                    ; #37716: <==closure== 66840 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (Bt_not_guard)))

                    ; #40506: <==commonly_known== 40506 (neg)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #52033: <==closure== 74084 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)
                               (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #88839: <==closure== 61461 (pos)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #14724: <==commonly_known== 60562 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (Pt_Bg_thief))

                    ; #28622: <==commonly_known== 60466 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (thief))

                    ; #29944: <==commonly_known== 79359 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (Bt_Bg_thief))

                    ; #54369: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (Bt_Pg_thief))

                    ; #55578: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (Pt_Bg_thief))

                    ; #57322: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (Bt_Pg_thief))

                    ; #64280: <==commonly_known== 73309 (pos)
                    (when (and (and (Pt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (Pt_Bg_thief))

                    ; #65183: <==commonly_known== 11804 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (Bt_Bg_thief))

                    ; #66928: <==closure== 79841 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (Pt_Pg_thief))

                    ; #67898: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (Pt_Bg_thief))

                    ; #71377: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (Pt_Pg_thief))

                    ; #76199: <==closure== 21519 (pos)
                    (when (and (and (Pt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (Pt_Pg_thief))

                    ; #89435: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (Pt_Pg_thief))

                    ; #15853: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #17877: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #18007: <==closure== 16415 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #19623: <==closure== 79841 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #20490: <==closure== 21519 (pos)
                    (when (and (and (Pt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #20986: <==closure== 59552 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (not_thief)))

                    ; #21962: <==closure== 79841 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Pt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #23825: <==closure== 30403 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #37882: <==closure== 21519 (pos)
                    (when (and (and (Pt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #41227: <==closure== 30403 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #52872: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #54350: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #54926: <==closure== 16415 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #55609: <==closure== 30403 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #62368: <==commonly_known== 62368 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #71689: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #75331: <==closure== 16415 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #77981: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #82858: <==commonly_known== 82858 (neg)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #86582: <==closure== 71199 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Bt_Pg_guard)
                               (not (Pt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #88784: <==closure== 18814 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)
                               (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #63800: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #35904: <==closure== 68910 (pos)
                    (Pt_guard)

                    ; #60328: <==commonly_known== 60328 (pos)
                    (Bt_guard)

                    ; #82799: <==closure== 68910 (pos)
                    (not (Bt_not_guard))

                    ; #87405: <==closure== 68910 (pos)
                    (not (Pt_not_guard))))

    (:action trick
        :precondition (and (thief)
                           (Pt_guard)
                           (Bt_guard)
                           (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief))
        :effect (and
                    ; #63800: origin
                    (goal)))

)