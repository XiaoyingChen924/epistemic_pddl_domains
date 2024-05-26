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
        :precondition (and (thief)
                           (not (guard)))
        :effect (and
                    ; #18390: origin
                    (goal)))

    (:action both-see-each-other
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #10678: <==closure== 71057 (pos)
                    (Pg_thief)

                    ; #24788: origin
                    (guard)

                    ; #29994: <==commonly_known== 29994 (pos)
                    (Bg_thief)

                    ; #53974: <==closure== 71057 (pos)
                    (not (Bg_not_thief))

                    ; #57070: <==closure== 71057 (pos)
                    (not (Pg_not_thief))

                    ; #89069: <==closure== 41223 (pos)
                    (not (not_guard))))

    (:action guard-sees-thief
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #10678: <==closure== 71057 (pos)
                    (Pg_thief)

                    ; #29994: <==commonly_known== 29994 (pos)
                    (Bg_thief)

                    ; #53974: <==closure== 71057 (pos)
                    (not (Bg_not_thief))

                    ; #57070: <==closure== 71057 (pos)
                    (not (Pg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #16298: <==commonly_known== 53693 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (guard))

                    ; #72904: <==closure== 80592 (pos)
                    (when (and (and (thief)
                               (not (not_thief))))
                          (not (not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #11397: <==closure== 44048 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (Pg_thief))

                    ; #12183: <==closure== 59115 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (Pg_thief))

                    ; #89593: <==commonly_known== 11555 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (Bg_thief))

                    ; #91918: <==commonly_known== 89328 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (Bg_thief))

                    ; #24229: <==closure== 59115 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (Pg_not_thief)))

                    ; #26409: <==commonly_known== 26409 (neg)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #28113: <==closure== 44048 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #29781: <==closure== 54726 (pos)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #67257: <==commonly_known== 67257 (neg)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #77272: <==closure== 59115 (pos)
                    (when (and (and (guard)
                               (not (not_guard))))
                          (not (Bg_not_thief)))

                    ; #77601: <==closure== 60171 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #89604: <==closure== 44048 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)
                               (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #18390: origin
                    (goal)))

    (:action thief-sees-guard
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #24788: origin
                    (guard)

                    ; #89069: <==closure== 41223 (pos)
                    (not (not_guard))))

    (:action trick
        :precondition (and (thief)
                           (guard)
                           (Pg_not_thief)
                           (not (Bg_thief))
                           (not (not_guard))
                           (not (Pg_thief)))
        :effect (and
                    ; #18390: origin
                    (goal)))

)