(define (domain grapevine)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_l1)
        (not_at_a_l2)
        (not_at_b_l1)
        (not_at_b_l2)
        (not_at_c_l1)
        (not_at_c_l2)
        (not_at_d_l1)
        (not_at_d_l2)
        (not_connected_l1_l1)
        (not_connected_l1_l2)
        (not_connected_l2_l1)
        (not_connected_l2_l2)
        (not_secret_a)
        (not_secret_b)
        (not_secret_c)
        (not_secret_d)
        (Ba_not_secret_a)
        (Ba_not_secret_b)
        (Ba_not_secret_c)
        (Ba_not_secret_d)
        (Ba_secret_a)
        (Ba_secret_b)
        (Ba_secret_c)
        (Ba_secret_d)
        (Bb_not_secret_a)
        (Bb_not_secret_b)
        (Bb_not_secret_c)
        (Bb_not_secret_d)
        (Bb_secret_a)
        (Bb_secret_b)
        (Bb_secret_c)
        (Bb_secret_d)
        (Bc_not_secret_a)
        (Bc_not_secret_b)
        (Bc_not_secret_c)
        (Bc_not_secret_d)
        (Bc_secret_a)
        (Bc_secret_b)
        (Bc_secret_c)
        (Bc_secret_d)
        (Bd_not_secret_a)
        (Bd_not_secret_b)
        (Bd_not_secret_c)
        (Bd_not_secret_d)
        (Bd_secret_a)
        (Bd_secret_b)
        (Bd_secret_c)
        (Bd_secret_d)
        (Pa_not_secret_a)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_not_secret_d)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pa_secret_d)
        (Pb_not_secret_a)
        (Pb_not_secret_b)
        (Pb_not_secret_c)
        (Pb_not_secret_d)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pb_secret_d)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_c)
        (Pc_not_secret_d)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (Pc_secret_d)
        (Pd_not_secret_a)
        (Pd_not_secret_b)
        (Pd_not_secret_c)
        (Pd_not_secret_d)
        (Pd_secret_a)
        (Pd_secret_b)
        (Pd_secret_c)
        (Pd_secret_d)
        (at_a_l1)
        (at_a_l2)
        (at_b_l1)
        (at_b_l2)
        (at_c_l1)
        (at_c_l2)
        (at_d_l1)
        (at_d_l2)
        (connected_l1_l1)
        (connected_l1_l2)
        (connected_l2_l1)
        (connected_l2_l2)
        (secret_a)
        (secret_b)
        (secret_c)
        (secret_d)
    )

    (:action move_a_l1_l1
        :precondition (and (at_a_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #53899: origin
                    (not_at_a_l1)

                    ; #66216: origin
                    (at_a_l1)

                    ; #53899: <==negation-removal== 66216 (pos)
                    (not (not_at_a_l1))

                    ; #66216: <==negation-removal== 53899 (pos)
                    (not (at_a_l1))))

    (:action move_a_l1_l2
        :precondition (and (at_a_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #14645: origin
                    (at_a_l2)

                    ; #53899: origin
                    (not_at_a_l1)

                    ; #27878: <==negation-removal== 14645 (pos)
                    (not (not_at_a_l2))

                    ; #66216: <==negation-removal== 53899 (pos)
                    (not (at_a_l1))))

    (:action move_a_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_a_l2))
        :effect (and
                    ; #27878: origin
                    (not_at_a_l2)

                    ; #66216: origin
                    (at_a_l1)

                    ; #14645: <==negation-removal== 27878 (pos)
                    (not (at_a_l2))

                    ; #53899: <==negation-removal== 66216 (pos)
                    (not (not_at_a_l1))))

    (:action move_a_l2_l2
        :precondition (and (at_a_l2)
                           (connected_l2_l2))
        :effect (and
                    ; #14645: origin
                    (at_a_l2)

                    ; #27878: origin
                    (not_at_a_l2)

                    ; #14645: <==negation-removal== 27878 (pos)
                    (not (at_a_l2))

                    ; #27878: <==negation-removal== 14645 (pos)
                    (not (not_at_a_l2))))

    (:action move_b_l1_l1
        :precondition (and (connected_l1_l1)
                           (at_b_l1))
        :effect (and
                    ; #46867: origin
                    (not_at_b_l1)

                    ; #55765: origin
                    (at_b_l1)

                    ; #46867: <==negation-removal== 55765 (pos)
                    (not (not_at_b_l1))

                    ; #55765: <==negation-removal== 46867 (pos)
                    (not (at_b_l1))))

    (:action move_b_l1_l2
        :precondition (and (at_b_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #36916: origin
                    (at_b_l2)

                    ; #46867: origin
                    (not_at_b_l1)

                    ; #55765: <==negation-removal== 46867 (pos)
                    (not (at_b_l1))

                    ; #88162: <==negation-removal== 36916 (pos)
                    (not (not_at_b_l2))))

    (:action move_b_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_b_l2))
        :effect (and
                    ; #55765: origin
                    (at_b_l1)

                    ; #88162: origin
                    (not_at_b_l2)

                    ; #36916: <==negation-removal== 88162 (pos)
                    (not (at_b_l2))

                    ; #46867: <==negation-removal== 55765 (pos)
                    (not (not_at_b_l1))))

    (:action move_b_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_b_l2))
        :effect (and
                    ; #36916: origin
                    (at_b_l2)

                    ; #88162: origin
                    (not_at_b_l2)

                    ; #36916: <==negation-removal== 88162 (pos)
                    (not (at_b_l2))

                    ; #88162: <==negation-removal== 36916 (pos)
                    (not (not_at_b_l2))))

    (:action move_c_l1_l1
        :precondition (and (at_c_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #57916: origin
                    (not_at_c_l1)

                    ; #83589: origin
                    (at_c_l1)

                    ; #57916: <==negation-removal== 83589 (pos)
                    (not (not_at_c_l1))

                    ; #83589: <==negation-removal== 57916 (pos)
                    (not (at_c_l1))))

    (:action move_c_l1_l2
        :precondition (and (at_c_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #57916: origin
                    (not_at_c_l1)

                    ; #91757: origin
                    (at_c_l2)

                    ; #79741: <==negation-removal== 91757 (pos)
                    (not (not_at_c_l2))

                    ; #83589: <==negation-removal== 57916 (pos)
                    (not (at_c_l1))))

    (:action move_c_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_c_l2))
        :effect (and
                    ; #79741: origin
                    (not_at_c_l2)

                    ; #83589: origin
                    (at_c_l1)

                    ; #57916: <==negation-removal== 83589 (pos)
                    (not (not_at_c_l1))

                    ; #91757: <==negation-removal== 79741 (pos)
                    (not (at_c_l2))))

    (:action move_c_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_c_l2))
        :effect (and
                    ; #79741: origin
                    (not_at_c_l2)

                    ; #91757: origin
                    (at_c_l2)

                    ; #79741: <==negation-removal== 91757 (pos)
                    (not (not_at_c_l2))

                    ; #91757: <==negation-removal== 79741 (pos)
                    (not (at_c_l2))))

    (:action move_d_l1_l1
        :precondition (and (at_d_l1)
                           (connected_l1_l1))
        :effect (and
                    ; #65914: origin
                    (at_d_l1)

                    ; #79628: origin
                    (not_at_d_l1)

                    ; #65914: <==negation-removal== 79628 (pos)
                    (not (at_d_l1))

                    ; #79628: <==negation-removal== 65914 (pos)
                    (not (not_at_d_l1))))

    (:action move_d_l1_l2
        :precondition (and (at_d_l1)
                           (connected_l1_l2))
        :effect (and
                    ; #79628: origin
                    (not_at_d_l1)

                    ; #90449: origin
                    (at_d_l2)

                    ; #26773: <==negation-removal== 90449 (pos)
                    (not (not_at_d_l2))

                    ; #65914: <==negation-removal== 79628 (pos)
                    (not (at_d_l1))))

    (:action move_d_l2_l1
        :precondition (and (connected_l2_l1)
                           (at_d_l2))
        :effect (and
                    ; #26773: origin
                    (not_at_d_l2)

                    ; #65914: origin
                    (at_d_l1)

                    ; #79628: <==negation-removal== 65914 (pos)
                    (not (not_at_d_l1))

                    ; #90449: <==negation-removal== 26773 (pos)
                    (not (at_d_l2))))

    (:action move_d_l2_l2
        :precondition (and (connected_l2_l2)
                           (at_d_l2))
        :effect (and
                    ; #26773: origin
                    (not_at_d_l2)

                    ; #90449: origin
                    (at_d_l2)

                    ; #26773: <==negation-removal== 90449 (pos)
                    (not (not_at_d_l2))

                    ; #90449: <==negation-removal== 26773 (pos)
                    (not (at_d_l2))))

    (:action share_a_a_l1
        :precondition (and (Pa_secret_a)
                           (at_a_l1)
                           (Ba_secret_a))
        :effect (and
                    ; #18497: <==closure== 45555 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #19018: <==closure== 40900 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #21750: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #26721: <==closure== 21750 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #40900: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #45555: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #45868: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #52339: <==closure== 45868 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #11877: <==negation-removal== 19018 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #13176: <==unclosure== 28610 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #19440: <==negation-removal== 21750 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22568: <==negation-removal== 45868 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28610: <==uncertain_firing== 40900 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #36693: <==unclosure== 93476 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #38910: <==uncertain_firing== 21750 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #40067: <==negation-removal== 45555 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #45735: <==uncertain_firing== 45868 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #48846: <==negation-removal== 52339 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #53941: <==negation-removal== 18497 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #62883: <==negation-removal== 26721 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #83228: <==unclosure== 38910 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #84823: <==negation-removal== 40900 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87766: <==unclosure== 45735 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #93476: <==uncertain_firing== 45555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))))

    (:action share_a_a_l2
        :precondition (and (Pa_secret_a)
                           (at_a_l2)
                           (Ba_secret_a))
        :effect (and
                    ; #14828: <==closure== 40311 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #17019: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #33136: <==closure== 38802 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #38802: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #40311: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #41082: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #65768: <==closure== 17019 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75235: <==closure== 41082 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #15973: <==negation-removal== 75235 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #16173: <==negation-removal== 33136 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #25046: <==unclosure== 29774 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #29774: <==uncertain_firing== 41082 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #36832: <==unclosure== 85464 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #45849: <==unclosure== 51879 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #47217: <==negation-removal== 17019 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47775: <==negation-removal== 14828 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #51879: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #55240: <==negation-removal== 41082 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #55424: <==uncertain_firing== 38802 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #59136: <==negation-removal== 40311 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #66584: <==negation-removal== 65768 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #67343: <==negation-removal== 38802 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #77308: <==unclosure== 55424 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85464: <==uncertain_firing== 17019 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_a_b_l1
        :precondition (and (Ba_secret_b)
                           (at_a_l1)
                           (Pa_secret_b))
        :effect (and
                    ; #20885: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #26257: <==closure== 20885 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #39609: <==closure== 70033 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #50024: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #69286: <==closure== 69683 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #69683: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #70033: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76100: <==closure== 50024 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #14202: <==negation-removal== 39609 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #16284: <==negation-removal== 26257 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #17776: <==negation-removal== 50024 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #35824: <==negation-removal== 69286 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #36715: <==uncertain_firing== 69683 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #39367: <==uncertain_firing== 50024 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #40207: <==negation-removal== 76100 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #49235: <==unclosure== 36715 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52114: <==negation-removal== 20885 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #54149: <==negation-removal== 69683 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #56627: <==uncertain_firing== 70033 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #59244: <==unclosure== 39367 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #59997: <==unclosure== 89672 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #76002: <==unclosure== 56627 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #86284: <==negation-removal== 70033 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #89672: <==uncertain_firing== 20885 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_a_b_l2
        :precondition (and (Ba_secret_b)
                           (at_a_l2)
                           (Pa_secret_b))
        :effect (and
                    ; #10244: <==closure== 50420 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14127: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #40596: <==closure== 70156 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #50420: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #56737: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #66363: <==closure== 14127 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68175: <==closure== 56737 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #70156: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #16827: <==unclosure== 21674 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #17743: <==unclosure== 50936 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #19053: <==negation-removal== 56737 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #21674: <==uncertain_firing== 56737 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #25632: <==negation-removal== 70156 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #34849: <==negation-removal== 10244 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #37501: <==negation-removal== 66363 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #40738: <==unclosure== 71521 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #43703: <==negation-removal== 14127 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #50475: <==negation-removal== 68175 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #50936: <==uncertain_firing== 50420 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #52006: <==unclosure== 63834 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #63834: <==uncertain_firing== 14127 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #65698: <==negation-removal== 40596 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #71521: <==uncertain_firing== 70156 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #86606: <==negation-removal== 50420 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_a_c_l1
        :precondition (and (at_a_l1)
                           (Ba_secret_c)
                           (Pa_secret_c))
        :effect (and
                    ; #26030: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36189: <==closure== 46178 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #46178: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #50857: <==closure== 26030 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52116: <==closure== 91355 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #55308: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #69539: <==closure== 55308 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #91355: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #15863: <==uncertain_firing== 46178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20502: <==uncertain_firing== 55308 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #20799: <==negation-removal== 46178 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #21845: <==negation-removal== 55308 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #26979: <==uncertain_firing== 91355 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44229: <==negation-removal== 69539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #45976: <==negation-removal== 26030 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #46971: <==unclosure== 20502 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #49604: <==unclosure== 15863 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #60819: <==negation-removal== 50857 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #69511: <==negation-removal== 91355 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #79178: <==unclosure== 90488 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #83899: <==negation-removal== 36189 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #90488: <==uncertain_firing== 26030 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #91710: <==unclosure== 26979 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #98393: <==negation-removal== 52116 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))))

    (:action share_a_c_l2
        :precondition (and (Pa_secret_c)
                           (at_a_l2)
                           (Ba_secret_c))
        :effect (and
                    ; #13090: <==closure== 68603 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #18051: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #46212: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #54328: <==closure== 18051 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #56028: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #68603: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #72346: <==closure== 46212 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #76771: <==closure== 56028 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #11618: <==uncertain_firing== 46212 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #30417: <==uncertain_firing== 56028 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #34186: <==unclosure== 80397 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #43427: <==unclosure== 77412 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #43806: <==negation-removal== 68603 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #52196: <==negation-removal== 18051 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #54581: <==negation-removal== 46212 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #58790: <==unclosure== 11618 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #60066: <==negation-removal== 13090 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #63463: <==negation-removal== 72346 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69991: <==negation-removal== 76771 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #77412: <==uncertain_firing== 18051 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #80397: <==uncertain_firing== 68603 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #81460: <==unclosure== 30417 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #81711: <==negation-removal== 54328 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #91358: <==negation-removal== 56028 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_a_d_l1
        :precondition (and (at_a_l1)
                           (Pa_secret_d)
                           (Ba_secret_d))
        :effect (and
                    ; #32472: <==closure== 82864 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #46968: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #47720: <==closure== 46968 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #59997: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #68773: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #69506: <==closure== 59997 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #82864: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #85871: <==closure== 68773 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #13249: <==unclosure== 17900 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #17900: <==uncertain_firing== 68773 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #25789: <==negation-removal== 32472 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #27225: <==unclosure== 41997 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #28023: <==negation-removal== 46968 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #38261: <==negation-removal== 82864 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #41997: <==uncertain_firing== 46968 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #43069: <==uncertain_firing== 82864 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #48357: <==unclosure== 43069 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #49336: <==unclosure== 58993 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #58993: <==uncertain_firing== 59997 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #63994: <==negation-removal== 59997 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #69652: <==negation-removal== 68773 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #74515: <==negation-removal== 69506 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74864: <==negation-removal== 85871 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #77809: <==negation-removal== 47720 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_a_d_l2
        :precondition (and (at_a_l2)
                           (Pa_secret_d)
                           (Ba_secret_d))
        :effect (and
                    ; #10507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #16668: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #28403: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #38516: <==closure== 10507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #39421: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #45814: <==closure== 16668 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #51420: <==closure== 39421 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #97922: <==closure== 28403 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11329: <==negation-removal== 51420 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #16223: <==uncertain_firing== 28403 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17277: <==negation-removal== 16668 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #27142: <==negation-removal== 28403 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #33747: <==negation-removal== 45814 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #35868: <==negation-removal== 39421 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #36670: <==unclosure== 16223 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36694: <==unclosure== 54625 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #40888: <==uncertain_firing== 10507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #49240: <==negation-removal== 10507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #52714: <==negation-removal== 38516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #54625: <==uncertain_firing== 16668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #57434: <==uncertain_firing== 39421 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #67703: <==unclosure== 40888 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #90280: <==unclosure== 57434 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #99867: <==negation-removal== 97922 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

    (:action share_b_a_l1
        :precondition (and (Bb_secret_a)
                           (Pb_secret_a)
                           (at_b_l1))
        :effect (and
                    ; #18497: <==closure== 45555 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #19018: <==closure== 40900 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #21750: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #26721: <==closure== 21750 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #40900: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #45555: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #45868: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #52339: <==closure== 45868 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #11877: <==negation-removal== 19018 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #13176: <==unclosure== 28610 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #19440: <==negation-removal== 21750 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22568: <==negation-removal== 45868 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28610: <==uncertain_firing== 40900 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #36693: <==unclosure== 93476 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #38910: <==uncertain_firing== 21750 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #40067: <==negation-removal== 45555 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #45735: <==uncertain_firing== 45868 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #48846: <==negation-removal== 52339 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #53941: <==negation-removal== 18497 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #62883: <==negation-removal== 26721 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #83228: <==unclosure== 38910 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #84823: <==negation-removal== 40900 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87766: <==unclosure== 45735 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #93476: <==uncertain_firing== 45555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))))

    (:action share_b_a_l2
        :precondition (and (Pb_secret_a)
                           (Bb_secret_a)
                           (at_b_l2))
        :effect (and
                    ; #14828: <==closure== 40311 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #17019: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #33136: <==closure== 38802 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #38802: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #40311: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #41082: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #65768: <==closure== 17019 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75235: <==closure== 41082 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #15973: <==negation-removal== 75235 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #16173: <==negation-removal== 33136 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #25046: <==unclosure== 29774 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #29774: <==uncertain_firing== 41082 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #36832: <==unclosure== 85464 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #45849: <==unclosure== 51879 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #47217: <==negation-removal== 17019 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47775: <==negation-removal== 14828 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #51879: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #55240: <==negation-removal== 41082 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #55424: <==uncertain_firing== 38802 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #59136: <==negation-removal== 40311 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #66584: <==negation-removal== 65768 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #67343: <==negation-removal== 38802 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #77308: <==unclosure== 55424 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85464: <==uncertain_firing== 17019 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_b_b_l1
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l1))
        :effect (and
                    ; #20885: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #26257: <==closure== 20885 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #39609: <==closure== 70033 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #50024: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #69286: <==closure== 69683 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #69683: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #70033: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76100: <==closure== 50024 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #14202: <==negation-removal== 39609 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #16284: <==negation-removal== 26257 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #17776: <==negation-removal== 50024 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #35824: <==negation-removal== 69286 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #36715: <==uncertain_firing== 69683 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #39367: <==uncertain_firing== 50024 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #40207: <==negation-removal== 76100 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #49235: <==unclosure== 36715 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52114: <==negation-removal== 20885 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #54149: <==negation-removal== 69683 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #56627: <==uncertain_firing== 70033 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #59244: <==unclosure== 39367 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #59997: <==unclosure== 89672 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #76002: <==unclosure== 56627 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #86284: <==negation-removal== 70033 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #89672: <==uncertain_firing== 20885 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_b_b_l2
        :precondition (and (Pb_secret_b)
                           (Bb_secret_b)
                           (at_b_l2))
        :effect (and
                    ; #10244: <==closure== 50420 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14127: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #40596: <==closure== 70156 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #50420: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #56737: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #66363: <==closure== 14127 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68175: <==closure== 56737 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #70156: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #16827: <==unclosure== 21674 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #17743: <==unclosure== 50936 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #19053: <==negation-removal== 56737 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #21674: <==uncertain_firing== 56737 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #25632: <==negation-removal== 70156 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #34849: <==negation-removal== 10244 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #37501: <==negation-removal== 66363 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #40738: <==unclosure== 71521 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #43703: <==negation-removal== 14127 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #50475: <==negation-removal== 68175 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #50936: <==uncertain_firing== 50420 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #52006: <==unclosure== 63834 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #63834: <==uncertain_firing== 14127 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #65698: <==negation-removal== 40596 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #71521: <==uncertain_firing== 70156 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #86606: <==negation-removal== 50420 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_b_c_l1
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l1))
        :effect (and
                    ; #26030: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36189: <==closure== 46178 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #46178: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #50857: <==closure== 26030 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52116: <==closure== 91355 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #55308: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #69539: <==closure== 55308 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #91355: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #15863: <==uncertain_firing== 46178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20502: <==uncertain_firing== 55308 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #20799: <==negation-removal== 46178 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #21845: <==negation-removal== 55308 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #26979: <==uncertain_firing== 91355 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44229: <==negation-removal== 69539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #45976: <==negation-removal== 26030 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #46971: <==unclosure== 20502 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #49604: <==unclosure== 15863 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #60819: <==negation-removal== 50857 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #69511: <==negation-removal== 91355 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #79178: <==unclosure== 90488 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #83899: <==negation-removal== 36189 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #90488: <==uncertain_firing== 26030 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #91710: <==unclosure== 26979 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #98393: <==negation-removal== 52116 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))))

    (:action share_b_c_l2
        :precondition (and (Pb_secret_c)
                           (Bb_secret_c)
                           (at_b_l2))
        :effect (and
                    ; #13090: <==closure== 68603 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #18051: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #46212: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #54328: <==closure== 18051 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #56028: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #68603: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #72346: <==closure== 46212 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #76771: <==closure== 56028 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #11618: <==uncertain_firing== 46212 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #30417: <==uncertain_firing== 56028 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #34186: <==unclosure== 80397 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #43427: <==unclosure== 77412 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #43806: <==negation-removal== 68603 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #52196: <==negation-removal== 18051 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #54581: <==negation-removal== 46212 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #58790: <==unclosure== 11618 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #60066: <==negation-removal== 13090 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #63463: <==negation-removal== 72346 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69991: <==negation-removal== 76771 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #77412: <==uncertain_firing== 18051 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #80397: <==uncertain_firing== 68603 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #81460: <==unclosure== 30417 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #81711: <==negation-removal== 54328 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #91358: <==negation-removal== 56028 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_b_d_l1
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l1))
        :effect (and
                    ; #32472: <==closure== 82864 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #46968: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #47720: <==closure== 46968 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #59997: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #68773: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #69506: <==closure== 59997 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #82864: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #85871: <==closure== 68773 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #13249: <==unclosure== 17900 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #17900: <==uncertain_firing== 68773 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #25789: <==negation-removal== 32472 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #27225: <==unclosure== 41997 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #28023: <==negation-removal== 46968 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #38261: <==negation-removal== 82864 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #41997: <==uncertain_firing== 46968 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #43069: <==uncertain_firing== 82864 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #48357: <==unclosure== 43069 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #49336: <==unclosure== 58993 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #58993: <==uncertain_firing== 59997 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #63994: <==negation-removal== 59997 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #69652: <==negation-removal== 68773 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #74515: <==negation-removal== 69506 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74864: <==negation-removal== 85871 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #77809: <==negation-removal== 47720 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_b_d_l2
        :precondition (and (Pb_secret_d)
                           (Bb_secret_d)
                           (at_b_l2))
        :effect (and
                    ; #10507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #16668: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #28403: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #38516: <==closure== 10507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #39421: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #45814: <==closure== 16668 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #51420: <==closure== 39421 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #97922: <==closure== 28403 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11329: <==negation-removal== 51420 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #16223: <==uncertain_firing== 28403 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17277: <==negation-removal== 16668 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #27142: <==negation-removal== 28403 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #33747: <==negation-removal== 45814 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #35868: <==negation-removal== 39421 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #36670: <==unclosure== 16223 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36694: <==unclosure== 54625 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #40888: <==uncertain_firing== 10507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #49240: <==negation-removal== 10507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #52714: <==negation-removal== 38516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #54625: <==uncertain_firing== 16668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #57434: <==uncertain_firing== 39421 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #67703: <==unclosure== 40888 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #90280: <==unclosure== 57434 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #99867: <==negation-removal== 97922 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

    (:action share_c_a_l1
        :precondition (and (Pc_secret_a)
                           (at_c_l1)
                           (Bc_secret_a))
        :effect (and
                    ; #18497: <==closure== 45555 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #19018: <==closure== 40900 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #21750: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #26721: <==closure== 21750 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #40900: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #45555: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #45868: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #52339: <==closure== 45868 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #11877: <==negation-removal== 19018 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #13176: <==unclosure== 28610 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #19440: <==negation-removal== 21750 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22568: <==negation-removal== 45868 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28610: <==uncertain_firing== 40900 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #36693: <==unclosure== 93476 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #38910: <==uncertain_firing== 21750 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #40067: <==negation-removal== 45555 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #45735: <==uncertain_firing== 45868 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #48846: <==negation-removal== 52339 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #53941: <==negation-removal== 18497 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #62883: <==negation-removal== 26721 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #83228: <==unclosure== 38910 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #84823: <==negation-removal== 40900 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87766: <==unclosure== 45735 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #93476: <==uncertain_firing== 45555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))))

    (:action share_c_a_l2
        :precondition (and (Pc_secret_a)
                           (at_c_l2)
                           (Bc_secret_a))
        :effect (and
                    ; #14828: <==closure== 40311 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #17019: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #33136: <==closure== 38802 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #38802: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #40311: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #41082: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #65768: <==closure== 17019 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75235: <==closure== 41082 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #15973: <==negation-removal== 75235 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #16173: <==negation-removal== 33136 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #25046: <==unclosure== 29774 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #29774: <==uncertain_firing== 41082 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #36832: <==unclosure== 85464 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #45849: <==unclosure== 51879 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #47217: <==negation-removal== 17019 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47775: <==negation-removal== 14828 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #51879: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #55240: <==negation-removal== 41082 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #55424: <==uncertain_firing== 38802 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #59136: <==negation-removal== 40311 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #66584: <==negation-removal== 65768 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #67343: <==negation-removal== 38802 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #77308: <==unclosure== 55424 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85464: <==uncertain_firing== 17019 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_c_b_l1
        :precondition (and (at_c_l1)
                           (Pc_secret_b)
                           (Bc_secret_b))
        :effect (and
                    ; #20885: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #26257: <==closure== 20885 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #39609: <==closure== 70033 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #50024: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #69286: <==closure== 69683 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #69683: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #70033: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76100: <==closure== 50024 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #14202: <==negation-removal== 39609 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #16284: <==negation-removal== 26257 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #17776: <==negation-removal== 50024 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #35824: <==negation-removal== 69286 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #36715: <==uncertain_firing== 69683 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #39367: <==uncertain_firing== 50024 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #40207: <==negation-removal== 76100 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #49235: <==unclosure== 36715 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52114: <==negation-removal== 20885 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #54149: <==negation-removal== 69683 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #56627: <==uncertain_firing== 70033 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #59244: <==unclosure== 39367 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #59997: <==unclosure== 89672 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #76002: <==unclosure== 56627 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #86284: <==negation-removal== 70033 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #89672: <==uncertain_firing== 20885 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_c_b_l2
        :precondition (and (Pc_secret_b)
                           (Bc_secret_b)
                           (at_c_l2))
        :effect (and
                    ; #10244: <==closure== 50420 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14127: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #40596: <==closure== 70156 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #50420: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #56737: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #66363: <==closure== 14127 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68175: <==closure== 56737 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #70156: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #16827: <==unclosure== 21674 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #17743: <==unclosure== 50936 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #19053: <==negation-removal== 56737 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #21674: <==uncertain_firing== 56737 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #25632: <==negation-removal== 70156 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #34849: <==negation-removal== 10244 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #37501: <==negation-removal== 66363 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #40738: <==unclosure== 71521 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #43703: <==negation-removal== 14127 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #50475: <==negation-removal== 68175 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #50936: <==uncertain_firing== 50420 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #52006: <==unclosure== 63834 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #63834: <==uncertain_firing== 14127 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #65698: <==negation-removal== 40596 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #71521: <==uncertain_firing== 70156 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #86606: <==negation-removal== 50420 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_c_c_l1
        :precondition (and (Pc_secret_c)
                           (at_c_l1)
                           (Bc_secret_c))
        :effect (and
                    ; #26030: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36189: <==closure== 46178 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #46178: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #50857: <==closure== 26030 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52116: <==closure== 91355 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #55308: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #69539: <==closure== 55308 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #91355: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #15863: <==uncertain_firing== 46178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20502: <==uncertain_firing== 55308 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #20799: <==negation-removal== 46178 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #21845: <==negation-removal== 55308 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #26979: <==uncertain_firing== 91355 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44229: <==negation-removal== 69539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #45976: <==negation-removal== 26030 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #46971: <==unclosure== 20502 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #49604: <==unclosure== 15863 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #60819: <==negation-removal== 50857 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #69511: <==negation-removal== 91355 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #79178: <==unclosure== 90488 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #83899: <==negation-removal== 36189 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #90488: <==uncertain_firing== 26030 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #91710: <==unclosure== 26979 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #98393: <==negation-removal== 52116 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))))

    (:action share_c_c_l2
        :precondition (and (Pc_secret_c)
                           (at_c_l2)
                           (Bc_secret_c))
        :effect (and
                    ; #13090: <==closure== 68603 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #18051: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #46212: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #54328: <==closure== 18051 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #56028: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #68603: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #72346: <==closure== 46212 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #76771: <==closure== 56028 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #11618: <==uncertain_firing== 46212 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #30417: <==uncertain_firing== 56028 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #34186: <==unclosure== 80397 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #43427: <==unclosure== 77412 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #43806: <==negation-removal== 68603 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #52196: <==negation-removal== 18051 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #54581: <==negation-removal== 46212 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #58790: <==unclosure== 11618 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #60066: <==negation-removal== 13090 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #63463: <==negation-removal== 72346 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69991: <==negation-removal== 76771 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #77412: <==uncertain_firing== 18051 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #80397: <==uncertain_firing== 68603 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #81460: <==unclosure== 30417 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #81711: <==negation-removal== 54328 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #91358: <==negation-removal== 56028 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_c_d_l1
        :precondition (and (Pc_secret_d)
                           (at_c_l1)
                           (Bc_secret_d))
        :effect (and
                    ; #32472: <==closure== 82864 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #46968: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #47720: <==closure== 46968 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #59997: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #68773: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #69506: <==closure== 59997 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #82864: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #85871: <==closure== 68773 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #13249: <==unclosure== 17900 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #17900: <==uncertain_firing== 68773 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #25789: <==negation-removal== 32472 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #27225: <==unclosure== 41997 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #28023: <==negation-removal== 46968 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #38261: <==negation-removal== 82864 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #41997: <==uncertain_firing== 46968 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #43069: <==uncertain_firing== 82864 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #48357: <==unclosure== 43069 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #49336: <==unclosure== 58993 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #58993: <==uncertain_firing== 59997 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #63994: <==negation-removal== 59997 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #69652: <==negation-removal== 68773 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #74515: <==negation-removal== 69506 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74864: <==negation-removal== 85871 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #77809: <==negation-removal== 47720 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_c_d_l2
        :precondition (and (Pc_secret_d)
                           (at_c_l2)
                           (Bc_secret_d))
        :effect (and
                    ; #10507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #16668: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #28403: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #38516: <==closure== 10507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #39421: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #45814: <==closure== 16668 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #51420: <==closure== 39421 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #97922: <==closure== 28403 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11329: <==negation-removal== 51420 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #16223: <==uncertain_firing== 28403 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17277: <==negation-removal== 16668 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #27142: <==negation-removal== 28403 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #33747: <==negation-removal== 45814 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #35868: <==negation-removal== 39421 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #36670: <==unclosure== 16223 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36694: <==unclosure== 54625 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #40888: <==uncertain_firing== 10507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #49240: <==negation-removal== 10507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #52714: <==negation-removal== 38516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #54625: <==uncertain_firing== 16668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #57434: <==uncertain_firing== 39421 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #67703: <==unclosure== 40888 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #90280: <==unclosure== 57434 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #99867: <==negation-removal== 97922 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

    (:action share_d_a_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_a)
                           (Pd_secret_a))
        :effect (and
                    ; #18497: <==closure== 45555 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_a))

                    ; #19018: <==closure== 40900 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_a))

                    ; #21750: origin
                    (when (and (at_a_l1))
                          (Ba_secret_a))

                    ; #26721: <==closure== 21750 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_a))

                    ; #40900: origin
                    (when (and (at_c_l1))
                          (Bc_secret_a))

                    ; #45555: origin
                    (when (and (at_b_l1))
                          (Bb_secret_a))

                    ; #45868: origin
                    (when (and (at_d_l1))
                          (Bd_secret_a))

                    ; #52339: <==closure== 45868 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_a))

                    ; #11877: <==negation-removal== 19018 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_a)))

                    ; #13176: <==unclosure== 28610 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_a)))

                    ; #19440: <==negation-removal== 21750 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_a)))

                    ; #22568: <==negation-removal== 45868 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_a)))

                    ; #28610: <==uncertain_firing== 40900 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_a)))

                    ; #36693: <==unclosure== 93476 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_a)))

                    ; #38910: <==uncertain_firing== 21750 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_a)))

                    ; #40067: <==negation-removal== 45555 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_a)))

                    ; #45735: <==uncertain_firing== 45868 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_a)))

                    ; #48846: <==negation-removal== 52339 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_a)))

                    ; #53941: <==negation-removal== 18497 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_a)))

                    ; #62883: <==negation-removal== 26721 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_a)))

                    ; #83228: <==unclosure== 38910 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_a)))

                    ; #84823: <==negation-removal== 40900 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_a)))

                    ; #87766: <==unclosure== 45735 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_a)))

                    ; #93476: <==uncertain_firing== 45555 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_a)))))

    (:action share_d_a_l2
        :precondition (and (Bd_secret_a)
                           (at_d_l2)
                           (Pd_secret_a))
        :effect (and
                    ; #14828: <==closure== 40311 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_a))

                    ; #17019: origin
                    (when (and (at_a_l2))
                          (Ba_secret_a))

                    ; #33136: <==closure== 38802 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_a))

                    ; #38802: origin
                    (when (and (at_b_l2))
                          (Bb_secret_a))

                    ; #40311: origin
                    (when (and (at_d_l2))
                          (Bd_secret_a))

                    ; #41082: origin
                    (when (and (at_c_l2))
                          (Bc_secret_a))

                    ; #65768: <==closure== 17019 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_a))

                    ; #75235: <==closure== 41082 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_a))

                    ; #15973: <==negation-removal== 75235 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_a)))

                    ; #16173: <==negation-removal== 33136 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_a)))

                    ; #25046: <==unclosure== 29774 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_a)))

                    ; #29774: <==uncertain_firing== 41082 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_a)))

                    ; #36832: <==unclosure== 85464 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_a)))

                    ; #45849: <==unclosure== 51879 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_a)))

                    ; #47217: <==negation-removal== 17019 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_a)))

                    ; #47775: <==negation-removal== 14828 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_a)))

                    ; #51879: <==uncertain_firing== 40311 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_a)))

                    ; #55240: <==negation-removal== 41082 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_a)))

                    ; #55424: <==uncertain_firing== 38802 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_a)))

                    ; #59136: <==negation-removal== 40311 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_a)))

                    ; #66584: <==negation-removal== 65768 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_a)))

                    ; #67343: <==negation-removal== 38802 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_a)))

                    ; #77308: <==unclosure== 55424 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_a)))

                    ; #85464: <==uncertain_firing== 17019 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_a)))))

    (:action share_d_b_l1
        :precondition (and (at_d_l1)
                           (Bd_secret_b)
                           (Pd_secret_b))
        :effect (and
                    ; #20885: origin
                    (when (and (at_c_l1))
                          (Bc_secret_b))

                    ; #26257: <==closure== 20885 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_b))

                    ; #39609: <==closure== 70033 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_b))

                    ; #50024: origin
                    (when (and (at_d_l1))
                          (Bd_secret_b))

                    ; #69286: <==closure== 69683 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_b))

                    ; #69683: origin
                    (when (and (at_b_l1))
                          (Bb_secret_b))

                    ; #70033: origin
                    (when (and (at_a_l1))
                          (Ba_secret_b))

                    ; #76100: <==closure== 50024 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_b))

                    ; #14202: <==negation-removal== 39609 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_b)))

                    ; #16284: <==negation-removal== 26257 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_b)))

                    ; #17776: <==negation-removal== 50024 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_b)))

                    ; #35824: <==negation-removal== 69286 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_b)))

                    ; #36715: <==uncertain_firing== 69683 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_b)))

                    ; #39367: <==uncertain_firing== 50024 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_b)))

                    ; #40207: <==negation-removal== 76100 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_b)))

                    ; #49235: <==unclosure== 36715 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_b)))

                    ; #52114: <==negation-removal== 20885 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_b)))

                    ; #54149: <==negation-removal== 69683 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_b)))

                    ; #56627: <==uncertain_firing== 70033 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_b)))

                    ; #59244: <==unclosure== 39367 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_b)))

                    ; #59997: <==unclosure== 89672 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_b)))

                    ; #76002: <==unclosure== 56627 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_b)))

                    ; #86284: <==negation-removal== 70033 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_b)))

                    ; #89672: <==uncertain_firing== 20885 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_b)))))

    (:action share_d_b_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_b)
                           (Bd_secret_b))
        :effect (and
                    ; #10244: <==closure== 50420 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_b))

                    ; #14127: origin
                    (when (and (at_c_l2))
                          (Bc_secret_b))

                    ; #40596: <==closure== 70156 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_b))

                    ; #50420: origin
                    (when (and (at_a_l2))
                          (Ba_secret_b))

                    ; #56737: origin
                    (when (and (at_d_l2))
                          (Bd_secret_b))

                    ; #66363: <==closure== 14127 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_b))

                    ; #68175: <==closure== 56737 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_b))

                    ; #70156: origin
                    (when (and (at_b_l2))
                          (Bb_secret_b))

                    ; #16827: <==unclosure== 21674 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_b)))

                    ; #17743: <==unclosure== 50936 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_b)))

                    ; #19053: <==negation-removal== 56737 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_b)))

                    ; #21674: <==uncertain_firing== 56737 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_b)))

                    ; #25632: <==negation-removal== 70156 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_b)))

                    ; #34849: <==negation-removal== 10244 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_b)))

                    ; #37501: <==negation-removal== 66363 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_b)))

                    ; #40738: <==unclosure== 71521 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_b)))

                    ; #43703: <==negation-removal== 14127 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_b)))

                    ; #50475: <==negation-removal== 68175 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_b)))

                    ; #50936: <==uncertain_firing== 50420 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_b)))

                    ; #52006: <==unclosure== 63834 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_b)))

                    ; #63834: <==uncertain_firing== 14127 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_b)))

                    ; #65698: <==negation-removal== 40596 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_b)))

                    ; #71521: <==uncertain_firing== 70156 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_b)))

                    ; #86606: <==negation-removal== 50420 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_b)))))

    (:action share_d_c_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_c)
                           (Bd_secret_c))
        :effect (and
                    ; #26030: origin
                    (when (and (at_b_l1))
                          (Bb_secret_c))

                    ; #36189: <==closure== 46178 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_c))

                    ; #46178: origin
                    (when (and (at_a_l1))
                          (Ba_secret_c))

                    ; #50857: <==closure== 26030 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_c))

                    ; #52116: <==closure== 91355 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_c))

                    ; #55308: origin
                    (when (and (at_d_l1))
                          (Bd_secret_c))

                    ; #69539: <==closure== 55308 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_c))

                    ; #91355: origin
                    (when (and (at_c_l1))
                          (Bc_secret_c))

                    ; #15863: <==uncertain_firing== 46178 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_c)))

                    ; #20502: <==uncertain_firing== 55308 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_c)))

                    ; #20799: <==negation-removal== 46178 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_c)))

                    ; #21845: <==negation-removal== 55308 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_c)))

                    ; #26979: <==uncertain_firing== 91355 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_c)))

                    ; #44229: <==negation-removal== 69539 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_c)))

                    ; #45976: <==negation-removal== 26030 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_c)))

                    ; #46971: <==unclosure== 20502 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_c)))

                    ; #49604: <==unclosure== 15863 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_c)))

                    ; #60819: <==negation-removal== 50857 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_c)))

                    ; #69511: <==negation-removal== 91355 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_c)))

                    ; #79178: <==unclosure== 90488 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_c)))

                    ; #83899: <==negation-removal== 36189 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_c)))

                    ; #90488: <==uncertain_firing== 26030 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_c)))

                    ; #91710: <==unclosure== 26979 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_c)))

                    ; #98393: <==negation-removal== 52116 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_c)))))

    (:action share_d_c_l2
        :precondition (and (Pd_secret_c)
                           (at_d_l2)
                           (Bd_secret_c))
        :effect (and
                    ; #13090: <==closure== 68603 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_c))

                    ; #18051: origin
                    (when (and (at_a_l2))
                          (Ba_secret_c))

                    ; #46212: origin
                    (when (and (at_c_l2))
                          (Bc_secret_c))

                    ; #54328: <==closure== 18051 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_c))

                    ; #56028: origin
                    (when (and (at_d_l2))
                          (Bd_secret_c))

                    ; #68603: origin
                    (when (and (at_b_l2))
                          (Bb_secret_c))

                    ; #72346: <==closure== 46212 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_c))

                    ; #76771: <==closure== 56028 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_c))

                    ; #11618: <==uncertain_firing== 46212 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_c)))

                    ; #30417: <==uncertain_firing== 56028 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_c)))

                    ; #34186: <==unclosure== 80397 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_c)))

                    ; #43427: <==unclosure== 77412 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_c)))

                    ; #43806: <==negation-removal== 68603 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_c)))

                    ; #52196: <==negation-removal== 18051 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_c)))

                    ; #54581: <==negation-removal== 46212 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_c)))

                    ; #58790: <==unclosure== 11618 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_c)))

                    ; #60066: <==negation-removal== 13090 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_c)))

                    ; #63463: <==negation-removal== 72346 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_c)))

                    ; #69991: <==negation-removal== 76771 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_c)))

                    ; #77412: <==uncertain_firing== 18051 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_c)))

                    ; #80397: <==uncertain_firing== 68603 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_c)))

                    ; #81460: <==unclosure== 30417 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_c)))

                    ; #81711: <==negation-removal== 54328 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_c)))

                    ; #91358: <==negation-removal== 56028 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_c)))))

    (:action share_d_d_l1
        :precondition (and (at_d_l1)
                           (Pd_secret_d)
                           (Bd_secret_d))
        :effect (and
                    ; #32472: <==closure== 82864 (pos)
                    (when (and (at_c_l1))
                          (Pc_secret_d))

                    ; #46968: origin
                    (when (and (at_a_l1))
                          (Ba_secret_d))

                    ; #47720: <==closure== 46968 (pos)
                    (when (and (at_a_l1))
                          (Pa_secret_d))

                    ; #59997: origin
                    (when (and (at_b_l1))
                          (Bb_secret_d))

                    ; #68773: origin
                    (when (and (at_d_l1))
                          (Bd_secret_d))

                    ; #69506: <==closure== 59997 (pos)
                    (when (and (at_b_l1))
                          (Pb_secret_d))

                    ; #82864: origin
                    (when (and (at_c_l1))
                          (Bc_secret_d))

                    ; #85871: <==closure== 68773 (pos)
                    (when (and (at_d_l1))
                          (Pd_secret_d))

                    ; #13249: <==unclosure== 17900 (neg)
                    (when (and (not (not_at_d_l1)))
                          (not (Bd_not_secret_d)))

                    ; #17900: <==uncertain_firing== 68773 (pos)
                    (when (and (not (not_at_d_l1)))
                          (not (Pd_not_secret_d)))

                    ; #25789: <==negation-removal== 32472 (pos)
                    (when (and (at_c_l1))
                          (not (Bc_not_secret_d)))

                    ; #27225: <==unclosure== 41997 (neg)
                    (when (and (not (not_at_a_l1)))
                          (not (Ba_not_secret_d)))

                    ; #28023: <==negation-removal== 46968 (pos)
                    (when (and (at_a_l1))
                          (not (Pa_not_secret_d)))

                    ; #38261: <==negation-removal== 82864 (pos)
                    (when (and (at_c_l1))
                          (not (Pc_not_secret_d)))

                    ; #41997: <==uncertain_firing== 46968 (pos)
                    (when (and (not (not_at_a_l1)))
                          (not (Pa_not_secret_d)))

                    ; #43069: <==uncertain_firing== 82864 (pos)
                    (when (and (not (not_at_c_l1)))
                          (not (Pc_not_secret_d)))

                    ; #48357: <==unclosure== 43069 (neg)
                    (when (and (not (not_at_c_l1)))
                          (not (Bc_not_secret_d)))

                    ; #49336: <==unclosure== 58993 (neg)
                    (when (and (not (not_at_b_l1)))
                          (not (Bb_not_secret_d)))

                    ; #58993: <==uncertain_firing== 59997 (pos)
                    (when (and (not (not_at_b_l1)))
                          (not (Pb_not_secret_d)))

                    ; #63994: <==negation-removal== 59997 (pos)
                    (when (and (at_b_l1))
                          (not (Pb_not_secret_d)))

                    ; #69652: <==negation-removal== 68773 (pos)
                    (when (and (at_d_l1))
                          (not (Pd_not_secret_d)))

                    ; #74515: <==negation-removal== 69506 (pos)
                    (when (and (at_b_l1))
                          (not (Bb_not_secret_d)))

                    ; #74864: <==negation-removal== 85871 (pos)
                    (when (and (at_d_l1))
                          (not (Bd_not_secret_d)))

                    ; #77809: <==negation-removal== 47720 (pos)
                    (when (and (at_a_l1))
                          (not (Ba_not_secret_d)))))

    (:action share_d_d_l2
        :precondition (and (at_d_l2)
                           (Pd_secret_d)
                           (Bd_secret_d))
        :effect (and
                    ; #10507: origin
                    (when (and (at_b_l2))
                          (Bb_secret_d))

                    ; #16668: origin
                    (when (and (at_a_l2))
                          (Ba_secret_d))

                    ; #28403: origin
                    (when (and (at_c_l2))
                          (Bc_secret_d))

                    ; #38516: <==closure== 10507 (pos)
                    (when (and (at_b_l2))
                          (Pb_secret_d))

                    ; #39421: origin
                    (when (and (at_d_l2))
                          (Bd_secret_d))

                    ; #45814: <==closure== 16668 (pos)
                    (when (and (at_a_l2))
                          (Pa_secret_d))

                    ; #51420: <==closure== 39421 (pos)
                    (when (and (at_d_l2))
                          (Pd_secret_d))

                    ; #97922: <==closure== 28403 (pos)
                    (when (and (at_c_l2))
                          (Pc_secret_d))

                    ; #11329: <==negation-removal== 51420 (pos)
                    (when (and (at_d_l2))
                          (not (Bd_not_secret_d)))

                    ; #16223: <==uncertain_firing== 28403 (pos)
                    (when (and (not (not_at_c_l2)))
                          (not (Pc_not_secret_d)))

                    ; #17277: <==negation-removal== 16668 (pos)
                    (when (and (at_a_l2))
                          (not (Pa_not_secret_d)))

                    ; #27142: <==negation-removal== 28403 (pos)
                    (when (and (at_c_l2))
                          (not (Pc_not_secret_d)))

                    ; #33747: <==negation-removal== 45814 (pos)
                    (when (and (at_a_l2))
                          (not (Ba_not_secret_d)))

                    ; #35868: <==negation-removal== 39421 (pos)
                    (when (and (at_d_l2))
                          (not (Pd_not_secret_d)))

                    ; #36670: <==unclosure== 16223 (neg)
                    (when (and (not (not_at_c_l2)))
                          (not (Bc_not_secret_d)))

                    ; #36694: <==unclosure== 54625 (neg)
                    (when (and (not (not_at_a_l2)))
                          (not (Ba_not_secret_d)))

                    ; #40888: <==uncertain_firing== 10507 (pos)
                    (when (and (not (not_at_b_l2)))
                          (not (Pb_not_secret_d)))

                    ; #49240: <==negation-removal== 10507 (pos)
                    (when (and (at_b_l2))
                          (not (Pb_not_secret_d)))

                    ; #52714: <==negation-removal== 38516 (pos)
                    (when (and (at_b_l2))
                          (not (Bb_not_secret_d)))

                    ; #54625: <==uncertain_firing== 16668 (pos)
                    (when (and (not (not_at_a_l2)))
                          (not (Pa_not_secret_d)))

                    ; #57434: <==uncertain_firing== 39421 (pos)
                    (when (and (not (not_at_d_l2)))
                          (not (Pd_not_secret_d)))

                    ; #67703: <==unclosure== 40888 (neg)
                    (when (and (not (not_at_b_l2)))
                          (not (Bb_not_secret_d)))

                    ; #90280: <==unclosure== 57434 (neg)
                    (when (and (not (not_at_d_l2)))
                          (not (Bd_not_secret_d)))

                    ; #99867: <==negation-removal== 97922 (pos)
                    (when (and (at_c_l2))
                          (not (Bc_not_secret_d)))))

)