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
                    ; #39989: origin
                    (goal)

                    ; #16629: <==negation-removal== 39989 (pos)
                    (not (not_goal))))

    (:action both-see-each-other
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #12820: <==closure== 25545 (pos)
                    (Pg_Bt_guard)

                    ; #25545: <==commonly_known== 59196 (pos)
                    (Bg_Bt_guard)

                    ; #29662: origin
                    (Bg_thief)

                    ; #35089: <==closure== 73855 (pos)
                    (Pt_Bg_thief)

                    ; #59196: origin
                    (Bt_guard)

                    ; #72925: <==closure== 25545 (pos)
                    (Pg_Pt_guard)

                    ; #73855: <==commonly_known== 29662 (pos)
                    (Bt_Bg_thief)

                    ; #81746: <==closure== 25545 (pos)
                    (Bg_Pt_guard)

                    ; #85687: <==closure== 73855 (pos)
                    (Pt_Pg_thief)

                    ; #86418: <==closure== 29662 (pos)
                    (Pg_thief)

                    ; #90091: <==closure== 73855 (pos)
                    (Bt_Pg_thief)

                    ; #91253: <==closure== 59196 (pos)
                    (Pt_guard)

                    ; #21356: <==negation-removal== 29662 (pos)
                    (not (Pg_not_thief))

                    ; #29813: <==negation-removal== 12820 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #41641: <==negation-removal== 73855 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #59998: <==negation-removal== 25545 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #62206: <==negation-removal== 59196 (pos)
                    (not (Pt_not_guard))

                    ; #65111: <==negation-removal== 91253 (pos)
                    (not (Bt_not_guard))

                    ; #67769: <==negation-removal== 35089 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #69662: <==negation-removal== 72925 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #71450: <==negation-removal== 81746 (pos)
                    (not (Pg_Bt_not_guard))

                    ; #72913: <==negation-removal== 90091 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #84386: <==negation-removal== 85687 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #90401: <==negation-removal== 86418 (pos)
                    (not (Bg_not_thief))))

    (:action guard-sees-thief
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #29662: origin
                    (Bg_thief)

                    ; #35089: <==closure== 73855 (pos)
                    (Pt_Bg_thief)

                    ; #73855: <==commonly_known== 29662 (pos)
                    (Bt_Bg_thief)

                    ; #85687: <==closure== 73855 (pos)
                    (Pt_Pg_thief)

                    ; #86418: <==closure== 29662 (pos)
                    (Pg_thief)

                    ; #90091: <==closure== 73855 (pos)
                    (Bt_Pg_thief)

                    ; #21356: <==negation-removal== 29662 (pos)
                    (not (Pg_not_thief))

                    ; #41641: <==negation-removal== 73855 (pos)
                    (not (Pt_Pg_not_thief))

                    ; #67769: <==negation-removal== 35089 (pos)
                    (not (Bt_Pg_not_thief))

                    ; #72913: <==negation-removal== 90091 (pos)
                    (not (Pt_Bg_not_thief))

                    ; #84386: <==negation-removal== 85687 (pos)
                    (not (Bt_Bg_not_thief))

                    ; #90401: <==negation-removal== 86418 (pos)
                    (not (Bg_not_thief))))

    (:action make-noise-guard
        :precondition (and (guard))
        :effect (and
                    ; #11606: <==closure== 85326 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Bt_guard))

                    ; #16733: <==closure== 85326 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Pt_guard))

                    ; #18646: <==closure== 44384 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Pt_guard))

                    ; #21639: <==closure== 25349 (pos)
                    (when (and (Pg_thief))
                          (Pg_Pt_guard))

                    ; #25349: <==commonly_known== 50091 (neg)
                    (when (and (Pg_thief))
                          (Pg_Bt_guard))

                    ; #28839: <==closure== 85326 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Bt_thief)))
                          (Bg_Pt_guard))

                    ; #34866: <==closure== 86277 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (Pt_guard))

                    ; #44384: <==commonly_known== 48048 (neg)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Pg_Bt_guard))

                    ; #48957: <==closure== 65342 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Bt_guard))

                    ; #59296: origin
                    (when (and (thief))
                          (Bt_guard))

                    ; #60827: <==closure== 65342 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Pg_Pt_guard))

                    ; #65342: <==commonly_known== 59296 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Bt_guard))

                    ; #85326: <==commonly_known== 86277 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Pt_thief)
                               (Pg_Bt_thief)))
                          (Bg_Bt_guard))

                    ; #86277: <==commonly_known== 59296 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (Bt_guard))

                    ; #90461: <==closure== 59296 (pos)
                    (when (and (thief))
                          (Pt_guard))

                    ; #91005: <==closure== 65342 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (Bg_Pt_guard))

                    ; #15890: <==uncertain_firing== 65342 (pos)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #19070: <==negation-removal== 59296 (pos)
                    (when (and (thief))
                          (not (Pt_not_guard)))

                    ; #22304: <==unclosure== 71406 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #23610: <==negation-removal== 86277 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (not (Pt_not_guard)))

                    ; #24140: <==unclosure== 50091 (neg)
                    (when (and (not (not_thief)))
                          (not (Bt_not_guard)))

                    ; #27638: <==negation-removal== 48957 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #28210: <==negation-removal== 44384 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #37535: <==unclosure== 15890 (neg)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #37898: <==negation-removal== 85326 (pos)
                    (when (and (and (Bg_Pt_thief)
                               (Pg_Pt_thief)
                               (Bg_Bt_thief)
                               (Pg_Bt_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #43197: <==negation-removal== 90461 (pos)
                    (when (and (thief))
                          (not (Bt_not_guard)))

                    ; #44338: <==negation-removal== 65342 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Pt_not_guard)))

                    ; #44960: <==unclosure== 71406 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Bg_Bt_not_guard)))

                    ; #46177: <==unclosure== 15890 (neg)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Bg_Pt_not_guard)))

                    ; #48048: <==uncertain_firing== 86277 (pos)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Pt_not_guard)))

                    ; #50091: <==uncertain_firing== 59296 (pos)
                    (when (and (not (not_thief)))
                          (not (Pt_not_guard)))

                    ; #50188: <==negation-removal== 91005 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #55096: <==negation-removal== 28839 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Pg_Bt_not_guard)))

                    ; #58839: <==unclosure== 15890 (neg)
                    (when (and (and (not (Pg_not_thief))
                               (not (Bg_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #59095: <==negation-removal== 25349 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Pt_not_guard)))

                    ; #65549: <==negation-removal== 60827 (pos)
                    (when (and (and (Bg_thief)
                               (Pg_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #71406: <==uncertain_firing== 85326 (pos)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Pg_Pt_not_guard)))

                    ; #73202: <==unclosure== 71406 (neg)
                    (when (and (and (not (Bg_Pt_not_thief))
                               (not (Pg_Bt_not_thief))
                               (not (Pg_Pt_not_thief))
                               (not (Bg_Bt_not_thief))))
                          (not (Pg_Bt_not_guard)))

                    ; #78210: <==negation-removal== 18646 (pos)
                    (when (and (and (Pg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Bt_not_guard)))

                    ; #78443: <==unclosure== 48048 (neg)
                    (when (and (and (not (Pt_not_thief))
                               (not (Bt_not_thief))))
                          (not (Bt_not_guard)))

                    ; #82209: <==negation-removal== 21639 (pos)
                    (when (and (Pg_thief))
                          (not (Bg_Bt_not_guard)))

                    ; #84677: <==negation-removal== 11606 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Pt_not_guard)))

                    ; #88135: <==negation-removal== 34866 (pos)
                    (when (and (and (Pt_thief)
                               (Bt_thief)))
                          (not (Bt_not_guard)))

                    ; #88237: <==negation-removal== 16733 (pos)
                    (when (and (and (Bg_Bt_thief)
                               (Pg_Pt_thief)
                               (Bg_Pt_thief)
                               (Pg_Bt_thief)))
                          (not (Bg_Bt_not_guard)))))

    (:action make-noise-thief
        :precondition (and (thief))
        :effect (and
                    ; #19296: <==commonly_known== 73933 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Bg_thief))

                    ; #20793: <==commonly_known== 63903 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Bt_Bg_thief))

                    ; #29874: <==closure== 73933 (pos)
                    (when (and (guard))
                          (Pg_thief))

                    ; #34236: <==closure== 63138 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #34275: <==closure== 20793 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #37925: <==closure== 57012 (pos)
                    (when (and (Pt_guard))
                          (Pt_Pg_thief))

                    ; #45029: <==closure== 63903 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (Pg_thief))

                    ; #48805: <==closure== 19296 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Bt_Pg_thief))

                    ; #57012: <==commonly_known== 44894 (neg)
                    (when (and (Pt_guard))
                          (Pt_Bg_thief))

                    ; #58838: <==closure== 19296 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Pg_thief))

                    ; #63138: <==commonly_known== 81228 (neg)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (Pt_Bg_thief))

                    ; #63903: <==commonly_known== 73933 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (Bg_thief))

                    ; #73933: origin
                    (when (and (guard))
                          (Bg_thief))

                    ; #86866: <==closure== 20793 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Bt_Pg_thief))

                    ; #88101: <==closure== 20793 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (Pt_Pg_thief))

                    ; #89143: <==closure== 19296 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (Pt_Bg_thief))

                    ; #12320: <==negation-removal== 73933 (pos)
                    (when (and (guard))
                          (not (Pg_not_thief)))

                    ; #13217: <==unclosure== 63779 (neg)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Bg_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #16931: <==negation-removal== 58838 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #22018: <==negation-removal== 86866 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #23979: <==negation-removal== 63903 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Pg_not_thief)))

                    ; #24522: <==unclosure== 31663 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #30644: <==negation-removal== 34275 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #31663: <==uncertain_firing== 19296 (pos)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #33834: <==negation-removal== 63138 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #36135: <==unclosure== 63779 (neg)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Bg_not_guard))))
                          (not (Bt_Bg_not_thief)))

                    ; #36484: <==unclosure== 31663 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #36541: <==unclosure== 63779 (neg)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Bg_not_guard))))
                          (not (Bt_Pg_not_thief)))

                    ; #44894: <==uncertain_firing== 73933 (pos)
                    (when (and (not (not_guard)))
                          (not (Pg_not_thief)))

                    ; #47905: <==negation-removal== 19296 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #51260: <==unclosure== 81228 (neg)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Bg_not_thief)))

                    ; #51654: <==negation-removal== 34236 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))

                    ; #51677: <==negation-removal== 20793 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Pt_Pg_not_thief)))

                    ; #52638: <==negation-removal== 29874 (pos)
                    (when (and (guard))
                          (not (Bg_not_thief)))

                    ; #52932: <==negation-removal== 37925 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Bg_not_thief)))

                    ; #61595: <==unclosure== 31663 (neg)
                    (when (and (and (not (Pt_not_guard))
                               (not (Bt_not_guard))))
                          (not (Pt_Bg_not_thief)))

                    ; #63779: <==uncertain_firing== 20793 (pos)
                    (when (and (and (not (Bt_Pg_not_guard))
                               (not (Pt_Pg_not_guard))
                               (not (Bt_Bg_not_guard))
                               (not (Pt_Bg_not_guard))))
                          (not (Pt_Pg_not_thief)))

                    ; #64539: <==negation-removal== 57012 (pos)
                    (when (and (Pt_guard))
                          (not (Bt_Pg_not_thief)))

                    ; #65661: <==negation-removal== 45029 (pos)
                    (when (and (and (Pg_guard)
                               (Bg_guard)))
                          (not (Bg_not_thief)))

                    ; #71539: <==negation-removal== 89143 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Bt_Pg_not_thief)))

                    ; #81154: <==negation-removal== 48805 (pos)
                    (when (and (and (Pt_guard)
                               (Bt_guard)))
                          (not (Pt_Bg_not_thief)))

                    ; #81228: <==uncertain_firing== 63903 (pos)
                    (when (and (and (not (Pg_not_guard))
                               (not (Bg_not_guard))))
                          (not (Pg_not_thief)))

                    ; #82311: <==unclosure== 44894 (neg)
                    (when (and (not (not_guard)))
                          (not (Bg_not_thief)))

                    ; #86221: <==negation-removal== 88101 (pos)
                    (when (and (and (Pt_Pg_guard)
                               (Pt_Bg_guard)
                               (Bt_Pg_guard)
                               (Bt_Bg_guard)))
                          (not (Bt_Bg_not_thief)))))

    (:action rush
        :precondition (and (thief))
        :effect (and
                    ; #39989: origin
                    (goal)

                    ; #16629: <==negation-removal== 39989 (pos)
                    (not (not_goal))))

    (:action thief-sees-guard
        :precondition (and (thief)
                           (guard))
        :effect (and
                    ; #12820: <==closure== 25545 (pos)
                    (Pg_Bt_guard)

                    ; #25545: <==commonly_known== 59196 (pos)
                    (Bg_Bt_guard)

                    ; #59196: origin
                    (Bt_guard)

                    ; #72925: <==closure== 25545 (pos)
                    (Pg_Pt_guard)

                    ; #81746: <==closure== 25545 (pos)
                    (Bg_Pt_guard)

                    ; #91253: <==closure== 59196 (pos)
                    (Pt_guard)

                    ; #29813: <==negation-removal== 12820 (pos)
                    (not (Bg_Pt_not_guard))

                    ; #59998: <==negation-removal== 25545 (pos)
                    (not (Pg_Pt_not_guard))

                    ; #62206: <==negation-removal== 59196 (pos)
                    (not (Pt_not_guard))

                    ; #65111: <==negation-removal== 91253 (pos)
                    (not (Bt_not_guard))

                    ; #69662: <==negation-removal== 72925 (pos)
                    (not (Bg_Bt_not_guard))

                    ; #71450: <==negation-removal== 81746 (pos)
                    (not (Pg_Bt_not_guard))))

    (:action trick
        :precondition (and (thief)
                           (Pt_Pg_not_thief)
                           (Pt_guard)
                           (Bt_guard)
                           (Bt_Pg_not_thief))
        :effect (and
                    ; #39989: origin
                    (goal)

                    ; #16629: <==negation-removal== 39989 (pos)
                    (not (not_goal))))

)