(define (problem grapevine-prob)

    (:domain grapevine)

    (:init
        (Ba_secret_a)
        (Bb_secret_b)
        (Bc_secret_c)
        (Bd_secret_d)
        (Pa_not_secret_b)
        (Pa_not_secret_c)
        (Pa_not_secret_d)
        (Pa_secret_a)
        (Pa_secret_b)
        (Pa_secret_c)
        (Pa_secret_d)
        (Pb_not_secret_a)
        (Pb_not_secret_c)
        (Pb_not_secret_d)
        (Pb_secret_a)
        (Pb_secret_b)
        (Pb_secret_c)
        (Pb_secret_d)
        (Pc_not_secret_a)
        (Pc_not_secret_b)
        (Pc_not_secret_d)
        (Pc_secret_a)
        (Pc_secret_b)
        (Pc_secret_c)
        (Pc_secret_d)
        (Pd_not_secret_a)
        (Pd_not_secret_b)
        (Pd_not_secret_c)
        (Pd_secret_a)
        (Pd_secret_b)
        (Pd_secret_c)
        (Pd_secret_d)
        (at_a_l1)
        (at_b_l1)
        (at_c_l1)
        (at_d_l1)
        (connected_l1_l2)
        (connected_l2_l1)
    )

    (:goal (and
        (Ba_secret_b)
        (Bb_secret_c)
        (Bc_secret_d)
        (Bd_secret_a)
        (Pa_not_secret_d)
        (Pa_secret_b)
        (Pb_not_secret_a)
        (Pb_secret_c)
        (Pc_not_secret_b)
        (Pc_secret_d)
        (Pd_not_secret_c)
        (Pd_secret_a)
    ))
)