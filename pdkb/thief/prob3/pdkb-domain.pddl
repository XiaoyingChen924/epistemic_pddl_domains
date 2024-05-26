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
                           (Pt_not_guard))
        :effect (and
                    ; #67999: origin
                    (goal)

                    ; #44004: <==negation-removal== 67999 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #11287: origin
                    (Bt_guard)

                    ; #16019: origin
                    (Bg_thief)

                    ; #22106: <==closure== 49512 (pos)
                    (Pt_Pg_thief)

                    ; #23409: <==closure== 80711 (pos)
                    (Pg_Bt_guard)

                    ; #29924: <==closure== 80711 (pos)
                    (Pg_Pt_guard)

                    ; #35278: <==closure== 80711 (pos)
                    (Bg_Pt_guard)

                    ; #42154: <==closure== 16019 (pos)
                    (Pg_thief)

                    ; #45976: <==closure== 49512 (pos)
                    (Pt_Bg_thief)

                    ; #49512: <==commonly_known== 16019 (pos)
                    (Bt_Bg_thief)

                    ; #56487: <==closure== 49512 (pos)
                    (Bt_Pg_thief)

                    ; #58931: <==closure== 11287 (pos)
                    (Pt_guard)

                    ; #80711: <==commonly_known== 11287 (pos)
                    (Bg_Bt_guard)

                    ; #12362: <==negation-removal== 29924 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #16319: <==negation-removal== 22106 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #24119: <==negation-removal== 16019 (pos)
                    (not (Pg_not_thief))

                    ; #38302: <==negation-removal== 49512 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #45218: <==negation-removal== 23409 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #51816: <==negation-removal== 56487 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #69104: <==negation-removal== 35278 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #72558: <==negation-removal== 80711 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #77182: <==negation-removal== 45976 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #79353: <==negation-removal== 42154 (pos)
                    (not (Bg_not_thief))

                    ; #82649: <==negation-removal== 11287 (pos)
                    (not (Pt_not_guard))

                    ; #88239: <==negation-removal== 58931 (pos)
                    (not (Bt_not_guard))))

    (:action guard-sees-thief
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #16019: origin
                    (Bg_thief)

                    ; #22106: <==closure== 49512 (pos)
                    (Pt_Pg_thief)

                    ; #42154: <==closure== 16019 (pos)
                    (Pg_thief)

                    ; #45976: <==closure== 49512 (pos)
                    (Pt_Bg_thief)

                    ; #49512: <==commonly_known== 16019 (pos)
                    (Bt_Bg_thief)

                    ; #56487: <==closure== 49512 (pos)
                    (Bt_Pg_thief)

                    ; #16319: <==negation-removal== 22106 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #24119: <==negation-removal== 16019 (pos)
                    (not (Pg_not_thief))

                    ; #38302: <==negation-removal== 49512 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #51816: <==negation-removal== 56487 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #77182: <==negation-removal== 45976 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #79353: <==negation-removal== 42154 (pos)
                    (not (Bg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #18457: <==commonly_known== 63786 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (Bt_guard))

                    ; #22643: <==commonly_known== 19846 (neg)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Bt_guard))

                    ; #22811: <==closure== 66565 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Pt_guard))

                    ; #23111: <==commonly_known== 18457 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)))
                          (Bg_Bt_guard))

                    ; #25054: <==closure== 18457 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (Pt_guard))

                    ; #26525: <==closure== 23111 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Pt_guard))

                    ; #51076: <==closure== 66565 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Bt_guard))

                    ; #55408: <==closure== 23111 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Bg_Pt_guard))

                    ; #57269: <==closure== 63786 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #58919: <==closure== 61258 (pos)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #61258: <==commonly_known== 93188 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #63786: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #66565: <==commonly_known== 63786 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Bt_guard))

                    ; #69462: <==closure== 23111 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (Pg_Bt_guard))

                    ; #87565: <==closure== 66565 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Pt_guard))

                    ; #89718: <==closure== 22643 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Pt_guard))

                    ; #10331: <==negation-removal== 18457 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (not (Pt_not_guard)))

                    ; #12882: <==unclosure== 19846 (neg)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #19286: <==unclosure== 48599 (neg)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #19846: <==uncertain_firing== 18457 (pos)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #20074: <==negation-removal== 61258 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #25287: <==negation-removal== 58919 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #30850: <==negation-removal== 89718 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #31722: <==unclosure== 48599 (neg)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #33541: <==negation-removal== 22643 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #33875: <==negation-removal== 66565 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #36313: <==negation-removal== 69462 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #36643: <==negation-removal== 23111 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #36759: <==negation-removal== 57269 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #36889: <==unclosure== 48599 (neg)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #39019: <==negation-removal== 51076 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #41356: <==unclosure== 54359 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #42280: <==negation-removal== 26525 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #46976: <==unclosure== 54359 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #48599: <==uncertain_firing== 66565 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #52843: <==negation-removal== 22811 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #54359: <==uncertain_firing== 23111 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #59547: <==negation-removal== 63786 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))

                    ; #69043: <==negation-removal== 87565 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #72730: <==unclosure== 54359 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))
                               (not (Pg_Bt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #76330: <==unclosure== 93188 (neg)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #78123: <==negation-removal== 55408 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Bt_thief)
                               (Bg_Bt_thief)
                               (Pg_Pt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #87406: <==negation-removal== 25054 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (not (Bt_not_guard)))

                    ; #93188: <==uncertain_firing== 63786 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #10637: <==commonly_known== 13642 (pos)
                    (when (and (and (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Bg_guard)
                               (Pt_Pg_guard)))
                          (Bt_Bg_thief))

                    ; #11494: <==closure== 53835 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #13642: <==commonly_known== 36933 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Bg_thief))

                    ; #18600: <==commonly_known== 36933 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Bg_thief))

                    ; #23020: <==closure== 36933 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #31026: <==closure== 13642 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (Pg_thief))

                    ; #36933: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #44305: <==closure== 10637 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Bg_thief))

                    ; #44572: <==closure== 18600 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Pg_thief))

                    ; #49167: <==commonly_known== 44432 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #53835: <==commonly_known== 74120 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #59976: <==closure== 18600 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Bg_thief))

                    ; #63013: <==closure== 49167 (pos)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #80548: <==closure== 10637 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (Bt_Pg_thief))

                    ; #83484: <==closure== 18600 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Pg_thief))

                    ; #91784: <==closure== 10637 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (Pt_Pg_thief))

                    ; #10273: <==negation-removal== 10637 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #10295: <==negation-removal== 59976 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #12837: <==unclosure== 39202 (neg)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #17972: <==negation-removal== 80548 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #25462: <==negation-removal== 44572 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #26732: <==unclosure== 41750 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #34007: <==negation-removal== 49167 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #34445: <==unclosure== 39202 (neg)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #39202: <==uncertain_firing== 10637 (pos)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #41750: <==uncertain_firing== 18600 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #41885: <==negation-removal== 44305 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #44432: <==uncertain_firing== 36933 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #44475: <==negation-removal== 13642 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (not (Pg_not_thief)))

                    ; #46260: <==unclosure== 41750 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #46353: <==unclosure== 74120 (neg)
                    (when (and (and (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #47259: <==unclosure== 44432 (neg)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #50887: <==negation-removal== 31026 (pos)
                    (when (and (and (Bg_guard)
                               (Pg_guard)))
                          (not (Bg_not_thief)))

                    ; #52532: <==negation-removal== 23020 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #54153: <==negation-removal== 83484 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #55628: <==negation-removal== 63013 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #56877: <==unclosure== 39202 (neg)
                    (when (and (and (not (Pt_Pg_not_guard))
                               (not (Bt_Pg_not_guard))
                               (not (Pt_Bg_not_guard))
                               (not (Bt_Bg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #62156: <==negation-removal== 91784 (pos)
                    (when (and (and (Pt_Bg_guard)
                               (Bt_Bg_guard)
                               (Bt_Pg_guard)
                               (Pt_Pg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #73985: <==negation-removal== 11494 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #74120: <==uncertain_firing== 13642 (pos)
                    (when (and (and (not (Bg_not_guard))
                               (not (Pg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #76927: <==unclosure== 41750 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #77764: <==negation-removal== 53835 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #80913: <==negation-removal== 18600 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #81336: <==negation-removal== 36933 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #67999: origin
                    (goal)

                    ; #44004: <==negation-removal== 67999 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #11287: origin
                    (Bt_guard)

                    ; #23409: <==closure== 80711 (pos)
                    (Pg_Bt_guard)

                    ; #29924: <==closure== 80711 (pos)
                    (Pg_Pt_guard)

                    ; #35278: <==closure== 80711 (pos)
                    (Bg_Pt_guard)

                    ; #58931: <==closure== 11287 (pos)
                    (Pt_guard)

                    ; #80711: <==commonly_known== 11287 (pos)
                    (Bg_Bt_guard)

                    ; #12362: <==negation-removal== 29924 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #45218: <==negation-removal== 23409 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #69104: <==negation-removal== 35278 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #72558: <==negation-removal== 80711 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #82649: <==negation-removal== 11287 (pos)
                    (not (Pt_not_guard))

                    ; #88239: <==negation-removal== 58931 (pos)
                    (not (Bt_not_guard))))

    (:action trick
        :precondition (and (thief)
                           (Pt_guard)
                           (Bt_Pg_not_thief)
                           (Pt_Pg_not_thief)
                           (Bt_guard))
        :effect (and
                    ; #67999: origin
                    (goal)

                    ; #44004: <==negation-removal== 67999 (pos)
                    (not (not_goal))))

)