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
                    ; #61320: origin
                    (goal)

                    ; #56522: <==negation-removal== 61320 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #28181: <==closure== 36794 (pos)
                    (Pt_Pg_thief)

                    ; #36794: <==commonly_known== 41955 (pos)
                    (Bt_Bg_thief)

                    ; #38368: <==closure== 68287 (pos)
                    (Bg_Pt_guard)

                    ; #41955: origin
                    (Bg_thief)

                    ; #47765: <==closure== 68287 (pos)
                    (Pg_Pt_guard)

                    ; #47884: <==closure== 92131 (pos)
                    (Pt_guard)

                    ; #68276: <==closure== 41955 (pos)
                    (Pg_thief)

                    ; #68287: <==commonly_known== 92131 (pos)
                    (Bg_Bt_guard)

                    ; #82276: <==closure== 68287 (pos)
                    (Pg_Bt_guard)

                    ; #83154: <==closure== 36794 (pos)
                    (Bt_Pg_thief)

                    ; #83944: <==closure== 36794 (pos)
                    (Pt_Bg_thief)

                    ; #92131: origin
                    (Bt_guard)

                    ; #23179: <==negation-removal== 47765 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #31002: <==negation-removal== 83154 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #31338: <==negation-removal== 38368 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #37707: <==negation-removal== 36794 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #43217: <==negation-removal== 47884 (pos)
                    (not (Bt_not_guard))

                    ; #49703: <==negation-removal== 28181 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #51894: <==negation-removal== 83944 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #54291: <==negation-removal== 68276 (pos)
                    (not (Bg_not_thief))

                    ; #64230: <==negation-removal== 82276 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #77806: <==negation-removal== 41955 (pos)
                    (not (Pg_not_thief))

                    ; #91453: <==negation-removal== 92131 (pos)
                    (not (Pt_not_guard))

                    ; #98299: <==negation-removal== 68287 (pos)
                    (not (Pg_Pt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #28181: <==closure== 36794 (pos)
                    (Pt_Pg_thief)

                    ; #36794: <==commonly_known== 41955 (pos)
                    (Bt_Bg_thief)

                    ; #41955: origin
                    (Bg_thief)

                    ; #68276: <==closure== 41955 (pos)
                    (Pg_thief)

                    ; #83154: <==closure== 36794 (pos)
                    (Bt_Pg_thief)

                    ; #83944: <==closure== 36794 (pos)
                    (Pt_Bg_thief)

                    ; #31002: <==negation-removal== 83154 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #37707: <==negation-removal== 36794 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #49703: <==negation-removal== 28181 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #51894: <==negation-removal== 83944 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #54291: <==negation-removal== 68276 (pos)
                    (not (Bg_not_thief))

                    ; #77806: <==negation-removal== 41955 (pos)
                    (not (Pg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #14289: <==closure== 65576 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #15643: <==closure== 65576 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Bg_Pt_guard))

                    ; #20647: <==commonly_known== 22392 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Bt_guard))

                    ; #22392: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #27964: <==closure== 22392 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #30057: <==closure== 76337 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #30373: <==closure== 72987 (pos)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #34616: <==commonly_known== 22392 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Bt_guard))

                    ; #40140: <==closure== 20647 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Bt_guard))

                    ; #54575: <==closure== 65576 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #65576: <==commonly_known== 34616 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (Bg_Bt_guard))

                    ; #72987: <==commonly_known== 23587 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #76337: <==commonly_known== 66450 (neg)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #76647: <==closure== 34616 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (Pt_guard))

                    ; #91087: <==closure== 20647 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Pt_guard))

                    ; #96278: <==closure== 20647 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Pt_guard))

                    ; #10871: <==negation-removal== 96278 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #11147: <==uncertain_firing== 20647 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #11188: <==unclosure== 23587 (neg)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #11551: <==negation-removal== 72987 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #15388: <==negation-removal== 14289 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #16679: <==negation-removal== 15643 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #17064: <==uncertain_firing== 76337 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #19656: <==negation-removal== 76647 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Bt_not_guard)))

                    ; #20321: <==unclosure== 11147 (neg)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #23587: <==uncertain_firing== 22392 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #29005: <==negation-removal== 76337 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #30408: <==unclosure== 48151 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #33621: <==negation-removal== 34616 (pos)
                    (when (and (and (Bt_thief)
                               (Pt_thief)))
                          (not (Pt_not_guard)))

                    ; #48151: <==uncertain_firing== 65576 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #49104: <==unclosure== 48151 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #51992: <==negation-removal== 20647 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #56661: <==negation-removal== 22392 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))

                    ; #57320: <==negation-removal== 40140 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #59090: <==negation-removal== 30373 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #66450: <==uncertain_firing== 34616 (pos)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #74535: <==uncertain_firing== 72987 (pos)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #74886: <==negation-removal== 65576 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #77130: <==negation-removal== 30057 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #77156: <==unclosure== 66450 (neg)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #79122: <==negation-removal== 27964 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #86424: <==unclosure== 11147 (neg)
                    (when (and (and (not (Bg_not_thief))
                               (not (Pg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #90144: <==negation-removal== 54575 (pos)
                    (when (and (and (Pg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Bg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #90430: <==negation-removal== 91087 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Bt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #10404: <==commonly_known== 45442 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #15788: <==commonly_known== 23861 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Bt_Bg_thief))

                    ; #16109: <==commonly_known== 89266 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #18630: <==closure== 16109 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #22636: <==closure== 15788 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #23861: <==commonly_known== 50205 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (Bg_thief))

                    ; #25370: <==closure== 15788 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Bt_Pg_thief))

                    ; #36325: <==closure== 68063 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Pg_thief))

                    ; #43402: <==closure== 68063 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Bg_thief))

                    ; #43428: <==closure== 23861 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (Pg_thief))

                    ; #43549: <==closure== 10404 (pos)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #47117: <==closure== 50205 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #50205: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #53337: <==closure== 15788 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #68063: <==commonly_known== 50205 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Bg_thief))

                    ; #75487: <==closure== 68063 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Pg_thief))

                    ; #10086: <==negation-removal== 25370 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #11611: <==negation-removal== 16109 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #15323: <==negation-removal== 10404 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #18844: <==unclosure== 89266 (neg)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #20281: <==uncertain_firing== 15788 (pos)
                    (when (and (and (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #27300: <==unclosure== 91251 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #27415: <==negation-removal== 47117 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #41137: <==negation-removal== 50205 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))

                    ; #41790: <==unclosure== 91251 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #43369: <==negation-removal== 68063 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #45442: <==uncertain_firing== 50205 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #46013: <==negation-removal== 36325 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #49313: <==negation-removal== 43428 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Bg_not_thief)))

                    ; #50594: <==uncertain_firing== 16109 (pos)
                    (when (and (and (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #50768: <==negation-removal== 15788 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #52680: <==unclosure== 45442 (neg)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #54155: <==negation-removal== 75487 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #55226: <==negation-removal== 22636 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #63536: <==negation-removal== 43402 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #63880: <==uncertain_firing== 10404 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #68857: <==unclosure== 20281 (neg)
                    (when (and (and (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #71677: <==unclosure== 20281 (neg)
                    (when (and (and (not (Bt_Bg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Pt_Pg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #82094: <==negation-removal== 23861 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Pg_not_thief)))

                    ; #87272: <==negation-removal== 53337 (pos)
                    (when (and (and (Bt_Pg_guard)
                               (Bt_Bg_guard)
                               (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #87717: <==negation-removal== 18630 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #87967: <==negation-removal== 43549 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #89266: <==uncertain_firing== 23861 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #91251: <==uncertain_firing== 68063 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #61320: origin
                    (goal)

                    ; #56522: <==negation-removal== 61320 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (guard)
                           (thief))
        :effect (and
                    ; #38368: <==closure== 68287 (pos)
                    (Bg_Pt_guard)

                    ; #47765: <==closure== 68287 (pos)
                    (Pg_Pt_guard)

                    ; #47884: <==closure== 92131 (pos)
                    (Pt_guard)

                    ; #68287: <==commonly_known== 92131 (pos)
                    (Bg_Bt_guard)

                    ; #82276: <==closure== 68287 (pos)
                    (Pg_Bt_guard)

                    ; #92131: origin
                    (Bt_guard)

                    ; #23179: <==negation-removal== 47765 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #31338: <==negation-removal== 38368 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #43217: <==negation-removal== 47884 (pos)
                    (not (Bt_not_guard))

                    ; #64230: <==negation-removal== 82276 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #91453: <==negation-removal== 92131 (pos)
                    (not (Pt_not_guard))

                    ; #98299: <==negation-removal== 68287 (pos)
                    (not (Pg_Pt_not_guard))))

    (:action trick
        :precondition (and (Pt_Pg_not_thief)
                           (Pt_guard)
                           (thief)
                           (Bt_Pg_not_thief)
                           (Bt_guard))
        :effect (and
                    ; #61320: origin
                    (goal)

                    ; #56522: <==negation-removal== 61320 (pos)
                    (not (not_goal))))

)