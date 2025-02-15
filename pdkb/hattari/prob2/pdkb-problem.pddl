(define (problem hattari4-single-prob)

    (:domain hattari4-single)

    (:init
        (Pa_not_holding_a_c1)
        (Pa_not_holding_a_c2)
        (Pa_not_holding_a_c3)
        (Pa_not_holding_a_c4)
        (Pa_not_holding_a_c5)
        (Pa_not_holding_a_c6)
        (Pa_not_holding_a_c7)
        (Pa_not_holding_a_c8)
        (Pa_not_holding_b_c1)
        (Pa_not_holding_b_c2)
        (Pa_not_holding_b_c3)
        (Pa_not_holding_b_c4)
        (Pa_not_holding_b_c5)
        (Pa_not_holding_b_c6)
        (Pa_not_holding_b_c7)
        (Pa_not_holding_b_c8)
        (Pa_not_holding_c_c1)
        (Pa_not_holding_c_c2)
        (Pa_not_holding_c_c3)
        (Pa_not_holding_c_c4)
        (Pa_not_holding_c_c5)
        (Pa_not_holding_c_c6)
        (Pa_not_holding_c_c7)
        (Pa_not_holding_c_c8)
        (Pa_not_holding_d_c1)
        (Pa_not_holding_d_c2)
        (Pa_not_holding_d_c3)
        (Pa_not_holding_d_c4)
        (Pa_not_holding_d_c5)
        (Pa_not_holding_d_c6)
        (Pa_not_holding_d_c7)
        (Pa_not_holding_d_c8)
        (Pa_not_suspect_spot1_c1)
        (Pa_not_suspect_spot1_c2)
        (Pa_not_suspect_spot1_c3)
        (Pa_not_suspect_spot1_c4)
        (Pa_not_suspect_spot1_c5)
        (Pa_not_suspect_spot1_c6)
        (Pa_not_suspect_spot1_c7)
        (Pa_not_suspect_spot1_c8)
        (Pa_not_suspect_spot2_c1)
        (Pa_not_suspect_spot2_c2)
        (Pa_not_suspect_spot2_c3)
        (Pa_not_suspect_spot2_c4)
        (Pa_not_suspect_spot2_c5)
        (Pa_not_suspect_spot2_c6)
        (Pa_not_suspect_spot2_c7)
        (Pa_not_suspect_spot2_c8)
        (Pa_not_suspect_spot3_c1)
        (Pa_not_suspect_spot3_c2)
        (Pa_not_suspect_spot3_c3)
        (Pa_not_suspect_spot3_c4)
        (Pa_not_suspect_spot3_c5)
        (Pa_not_suspect_spot3_c6)
        (Pa_not_suspect_spot3_c7)
        (Pa_not_suspect_spot3_c8)
        (Pa_not_victim_c1)
        (Pa_not_victim_c2)
        (Pa_not_victim_c3)
        (Pa_not_victim_c4)
        (Pa_not_victim_c5)
        (Pa_not_victim_c6)
        (Pa_not_victim_c7)
        (Pa_not_victim_c8)
        (Pa_holding_a_c1)
        (Pa_holding_a_c2)
        (Pa_holding_a_c3)
        (Pa_holding_a_c4)
        (Pa_holding_a_c5)
        (Pa_holding_a_c6)
        (Pa_holding_a_c7)
        (Pa_holding_a_c8)
        (Pa_holding_b_c1)
        (Pa_holding_b_c2)
        (Pa_holding_b_c3)
        (Pa_holding_b_c4)
        (Pa_holding_b_c5)
        (Pa_holding_b_c6)
        (Pa_holding_b_c7)
        (Pa_holding_b_c8)
        (Pa_holding_c_c1)
        (Pa_holding_c_c2)
        (Pa_holding_c_c3)
        (Pa_holding_c_c4)
        (Pa_holding_c_c5)
        (Pa_holding_c_c6)
        (Pa_holding_c_c7)
        (Pa_holding_c_c8)
        (Pa_holding_d_c1)
        (Pa_holding_d_c2)
        (Pa_holding_d_c3)
        (Pa_holding_d_c4)
        (Pa_holding_d_c5)
        (Pa_holding_d_c6)
        (Pa_holding_d_c7)
        (Pa_holding_d_c8)
        (Pa_suspect_spot1_c1)
        (Pa_suspect_spot1_c2)
        (Pa_suspect_spot1_c3)
        (Pa_suspect_spot1_c4)
        (Pa_suspect_spot1_c5)
        (Pa_suspect_spot1_c6)
        (Pa_suspect_spot1_c7)
        (Pa_suspect_spot1_c8)
        (Pa_suspect_spot2_c1)
        (Pa_suspect_spot2_c2)
        (Pa_suspect_spot2_c3)
        (Pa_suspect_spot2_c4)
        (Pa_suspect_spot2_c5)
        (Pa_suspect_spot2_c6)
        (Pa_suspect_spot2_c7)
        (Pa_suspect_spot2_c8)
        (Pa_suspect_spot3_c1)
        (Pa_suspect_spot3_c2)
        (Pa_suspect_spot3_c3)
        (Pa_suspect_spot3_c4)
        (Pa_suspect_spot3_c5)
        (Pa_suspect_spot3_c6)
        (Pa_suspect_spot3_c7)
        (Pa_suspect_spot3_c8)
        (Pa_victim_c1)
        (Pa_victim_c2)
        (Pa_victim_c3)
        (Pa_victim_c4)
        (Pa_victim_c5)
        (Pa_victim_c6)
        (Pa_victim_c7)
        (Pa_victim_c8)
        (Pb_not_holding_a_c1)
        (Pb_not_holding_a_c2)
        (Pb_not_holding_a_c3)
        (Pb_not_holding_a_c4)
        (Pb_not_holding_a_c5)
        (Pb_not_holding_a_c6)
        (Pb_not_holding_a_c7)
        (Pb_not_holding_a_c8)
        (Pb_not_holding_b_c1)
        (Pb_not_holding_b_c2)
        (Pb_not_holding_b_c3)
        (Pb_not_holding_b_c4)
        (Pb_not_holding_b_c5)
        (Pb_not_holding_b_c6)
        (Pb_not_holding_b_c7)
        (Pb_not_holding_b_c8)
        (Pb_not_holding_c_c1)
        (Pb_not_holding_c_c2)
        (Pb_not_holding_c_c3)
        (Pb_not_holding_c_c4)
        (Pb_not_holding_c_c5)
        (Pb_not_holding_c_c6)
        (Pb_not_holding_c_c7)
        (Pb_not_holding_c_c8)
        (Pb_not_holding_d_c1)
        (Pb_not_holding_d_c2)
        (Pb_not_holding_d_c3)
        (Pb_not_holding_d_c4)
        (Pb_not_holding_d_c5)
        (Pb_not_holding_d_c6)
        (Pb_not_holding_d_c7)
        (Pb_not_holding_d_c8)
        (Pb_not_suspect_spot1_c1)
        (Pb_not_suspect_spot1_c2)
        (Pb_not_suspect_spot1_c3)
        (Pb_not_suspect_spot1_c4)
        (Pb_not_suspect_spot1_c5)
        (Pb_not_suspect_spot1_c6)
        (Pb_not_suspect_spot1_c7)
        (Pb_not_suspect_spot1_c8)
        (Pb_not_suspect_spot2_c1)
        (Pb_not_suspect_spot2_c2)
        (Pb_not_suspect_spot2_c3)
        (Pb_not_suspect_spot2_c4)
        (Pb_not_suspect_spot2_c5)
        (Pb_not_suspect_spot2_c6)
        (Pb_not_suspect_spot2_c7)
        (Pb_not_suspect_spot2_c8)
        (Pb_not_suspect_spot3_c1)
        (Pb_not_suspect_spot3_c2)
        (Pb_not_suspect_spot3_c3)
        (Pb_not_suspect_spot3_c4)
        (Pb_not_suspect_spot3_c5)
        (Pb_not_suspect_spot3_c6)
        (Pb_not_suspect_spot3_c7)
        (Pb_not_suspect_spot3_c8)
        (Pb_not_victim_c1)
        (Pb_not_victim_c2)
        (Pb_not_victim_c3)
        (Pb_not_victim_c4)
        (Pb_not_victim_c5)
        (Pb_not_victim_c6)
        (Pb_not_victim_c7)
        (Pb_not_victim_c8)
        (Pb_holding_a_c1)
        (Pb_holding_a_c2)
        (Pb_holding_a_c3)
        (Pb_holding_a_c4)
        (Pb_holding_a_c5)
        (Pb_holding_a_c6)
        (Pb_holding_a_c7)
        (Pb_holding_a_c8)
        (Pb_holding_b_c1)
        (Pb_holding_b_c2)
        (Pb_holding_b_c3)
        (Pb_holding_b_c4)
        (Pb_holding_b_c5)
        (Pb_holding_b_c6)
        (Pb_holding_b_c7)
        (Pb_holding_b_c8)
        (Pb_holding_c_c1)
        (Pb_holding_c_c2)
        (Pb_holding_c_c3)
        (Pb_holding_c_c4)
        (Pb_holding_c_c5)
        (Pb_holding_c_c6)
        (Pb_holding_c_c7)
        (Pb_holding_c_c8)
        (Pb_holding_d_c1)
        (Pb_holding_d_c2)
        (Pb_holding_d_c3)
        (Pb_holding_d_c4)
        (Pb_holding_d_c5)
        (Pb_holding_d_c6)
        (Pb_holding_d_c7)
        (Pb_holding_d_c8)
        (Pb_suspect_spot1_c1)
        (Pb_suspect_spot1_c2)
        (Pb_suspect_spot1_c3)
        (Pb_suspect_spot1_c4)
        (Pb_suspect_spot1_c5)
        (Pb_suspect_spot1_c6)
        (Pb_suspect_spot1_c7)
        (Pb_suspect_spot1_c8)
        (Pb_suspect_spot2_c1)
        (Pb_suspect_spot2_c2)
        (Pb_suspect_spot2_c3)
        (Pb_suspect_spot2_c4)
        (Pb_suspect_spot2_c5)
        (Pb_suspect_spot2_c6)
        (Pb_suspect_spot2_c7)
        (Pb_suspect_spot2_c8)
        (Pb_suspect_spot3_c1)
        (Pb_suspect_spot3_c2)
        (Pb_suspect_spot3_c3)
        (Pb_suspect_spot3_c4)
        (Pb_suspect_spot3_c5)
        (Pb_suspect_spot3_c6)
        (Pb_suspect_spot3_c7)
        (Pb_suspect_spot3_c8)
        (Pb_victim_c1)
        (Pb_victim_c2)
        (Pb_victim_c3)
        (Pb_victim_c4)
        (Pb_victim_c5)
        (Pb_victim_c6)
        (Pb_victim_c7)
        (Pb_victim_c8)
        (Pc_not_holding_a_c1)
        (Pc_not_holding_a_c2)
        (Pc_not_holding_a_c3)
        (Pc_not_holding_a_c4)
        (Pc_not_holding_a_c5)
        (Pc_not_holding_a_c6)
        (Pc_not_holding_a_c7)
        (Pc_not_holding_a_c8)
        (Pc_not_holding_b_c1)
        (Pc_not_holding_b_c2)
        (Pc_not_holding_b_c3)
        (Pc_not_holding_b_c4)
        (Pc_not_holding_b_c5)
        (Pc_not_holding_b_c6)
        (Pc_not_holding_b_c7)
        (Pc_not_holding_b_c8)
        (Pc_not_holding_c_c1)
        (Pc_not_holding_c_c2)
        (Pc_not_holding_c_c3)
        (Pc_not_holding_c_c4)
        (Pc_not_holding_c_c5)
        (Pc_not_holding_c_c6)
        (Pc_not_holding_c_c7)
        (Pc_not_holding_c_c8)
        (Pc_not_holding_d_c1)
        (Pc_not_holding_d_c2)
        (Pc_not_holding_d_c3)
        (Pc_not_holding_d_c4)
        (Pc_not_holding_d_c5)
        (Pc_not_holding_d_c6)
        (Pc_not_holding_d_c7)
        (Pc_not_holding_d_c8)
        (Pc_not_suspect_spot1_c1)
        (Pc_not_suspect_spot1_c2)
        (Pc_not_suspect_spot1_c3)
        (Pc_not_suspect_spot1_c4)
        (Pc_not_suspect_spot1_c5)
        (Pc_not_suspect_spot1_c6)
        (Pc_not_suspect_spot1_c7)
        (Pc_not_suspect_spot1_c8)
        (Pc_not_suspect_spot2_c1)
        (Pc_not_suspect_spot2_c2)
        (Pc_not_suspect_spot2_c3)
        (Pc_not_suspect_spot2_c4)
        (Pc_not_suspect_spot2_c5)
        (Pc_not_suspect_spot2_c6)
        (Pc_not_suspect_spot2_c7)
        (Pc_not_suspect_spot2_c8)
        (Pc_not_suspect_spot3_c1)
        (Pc_not_suspect_spot3_c2)
        (Pc_not_suspect_spot3_c3)
        (Pc_not_suspect_spot3_c4)
        (Pc_not_suspect_spot3_c5)
        (Pc_not_suspect_spot3_c6)
        (Pc_not_suspect_spot3_c7)
        (Pc_not_suspect_spot3_c8)
        (Pc_not_victim_c1)
        (Pc_not_victim_c2)
        (Pc_not_victim_c3)
        (Pc_not_victim_c4)
        (Pc_not_victim_c5)
        (Pc_not_victim_c6)
        (Pc_not_victim_c7)
        (Pc_not_victim_c8)
        (Pc_holding_a_c1)
        (Pc_holding_a_c2)
        (Pc_holding_a_c3)
        (Pc_holding_a_c4)
        (Pc_holding_a_c5)
        (Pc_holding_a_c6)
        (Pc_holding_a_c7)
        (Pc_holding_a_c8)
        (Pc_holding_b_c1)
        (Pc_holding_b_c2)
        (Pc_holding_b_c3)
        (Pc_holding_b_c4)
        (Pc_holding_b_c5)
        (Pc_holding_b_c6)
        (Pc_holding_b_c7)
        (Pc_holding_b_c8)
        (Pc_holding_c_c1)
        (Pc_holding_c_c2)
        (Pc_holding_c_c3)
        (Pc_holding_c_c4)
        (Pc_holding_c_c5)
        (Pc_holding_c_c6)
        (Pc_holding_c_c7)
        (Pc_holding_c_c8)
        (Pc_holding_d_c1)
        (Pc_holding_d_c2)
        (Pc_holding_d_c3)
        (Pc_holding_d_c4)
        (Pc_holding_d_c5)
        (Pc_holding_d_c6)
        (Pc_holding_d_c7)
        (Pc_holding_d_c8)
        (Pc_suspect_spot1_c1)
        (Pc_suspect_spot1_c2)
        (Pc_suspect_spot1_c3)
        (Pc_suspect_spot1_c4)
        (Pc_suspect_spot1_c5)
        (Pc_suspect_spot1_c6)
        (Pc_suspect_spot1_c7)
        (Pc_suspect_spot1_c8)
        (Pc_suspect_spot2_c1)
        (Pc_suspect_spot2_c2)
        (Pc_suspect_spot2_c3)
        (Pc_suspect_spot2_c4)
        (Pc_suspect_spot2_c5)
        (Pc_suspect_spot2_c6)
        (Pc_suspect_spot2_c7)
        (Pc_suspect_spot2_c8)
        (Pc_suspect_spot3_c1)
        (Pc_suspect_spot3_c2)
        (Pc_suspect_spot3_c3)
        (Pc_suspect_spot3_c4)
        (Pc_suspect_spot3_c5)
        (Pc_suspect_spot3_c6)
        (Pc_suspect_spot3_c7)
        (Pc_suspect_spot3_c8)
        (Pc_victim_c1)
        (Pc_victim_c2)
        (Pc_victim_c3)
        (Pc_victim_c4)
        (Pc_victim_c5)
        (Pc_victim_c6)
        (Pc_victim_c7)
        (Pc_victim_c8)
        (Pd_not_holding_a_c1)
        (Pd_not_holding_a_c2)
        (Pd_not_holding_a_c3)
        (Pd_not_holding_a_c4)
        (Pd_not_holding_a_c5)
        (Pd_not_holding_a_c6)
        (Pd_not_holding_a_c7)
        (Pd_not_holding_a_c8)
        (Pd_not_holding_b_c1)
        (Pd_not_holding_b_c2)
        (Pd_not_holding_b_c3)
        (Pd_not_holding_b_c4)
        (Pd_not_holding_b_c5)
        (Pd_not_holding_b_c6)
        (Pd_not_holding_b_c7)
        (Pd_not_holding_b_c8)
        (Pd_not_holding_c_c1)
        (Pd_not_holding_c_c2)
        (Pd_not_holding_c_c3)
        (Pd_not_holding_c_c4)
        (Pd_not_holding_c_c5)
        (Pd_not_holding_c_c6)
        (Pd_not_holding_c_c7)
        (Pd_not_holding_c_c8)
        (Pd_not_holding_d_c1)
        (Pd_not_holding_d_c2)
        (Pd_not_holding_d_c3)
        (Pd_not_holding_d_c4)
        (Pd_not_holding_d_c5)
        (Pd_not_holding_d_c6)
        (Pd_not_holding_d_c7)
        (Pd_not_holding_d_c8)
        (Pd_not_suspect_spot1_c1)
        (Pd_not_suspect_spot1_c2)
        (Pd_not_suspect_spot1_c3)
        (Pd_not_suspect_spot1_c4)
        (Pd_not_suspect_spot1_c5)
        (Pd_not_suspect_spot1_c6)
        (Pd_not_suspect_spot1_c7)
        (Pd_not_suspect_spot1_c8)
        (Pd_not_suspect_spot2_c1)
        (Pd_not_suspect_spot2_c2)
        (Pd_not_suspect_spot2_c3)
        (Pd_not_suspect_spot2_c4)
        (Pd_not_suspect_spot2_c5)
        (Pd_not_suspect_spot2_c6)
        (Pd_not_suspect_spot2_c7)
        (Pd_not_suspect_spot2_c8)
        (Pd_not_suspect_spot3_c1)
        (Pd_not_suspect_spot3_c2)
        (Pd_not_suspect_spot3_c3)
        (Pd_not_suspect_spot3_c4)
        (Pd_not_suspect_spot3_c5)
        (Pd_not_suspect_spot3_c6)
        (Pd_not_suspect_spot3_c7)
        (Pd_not_suspect_spot3_c8)
        (Pd_not_victim_c1)
        (Pd_not_victim_c2)
        (Pd_not_victim_c3)
        (Pd_not_victim_c4)
        (Pd_not_victim_c5)
        (Pd_not_victim_c6)
        (Pd_not_victim_c7)
        (Pd_not_victim_c8)
        (Pd_holding_a_c1)
        (Pd_holding_a_c2)
        (Pd_holding_a_c3)
        (Pd_holding_a_c4)
        (Pd_holding_a_c5)
        (Pd_holding_a_c6)
        (Pd_holding_a_c7)
        (Pd_holding_a_c8)
        (Pd_holding_b_c1)
        (Pd_holding_b_c2)
        (Pd_holding_b_c3)
        (Pd_holding_b_c4)
        (Pd_holding_b_c5)
        (Pd_holding_b_c6)
        (Pd_holding_b_c7)
        (Pd_holding_b_c8)
        (Pd_holding_c_c1)
        (Pd_holding_c_c2)
        (Pd_holding_c_c3)
        (Pd_holding_c_c4)
        (Pd_holding_c_c5)
        (Pd_holding_c_c6)
        (Pd_holding_c_c7)
        (Pd_holding_c_c8)
        (Pd_holding_d_c1)
        (Pd_holding_d_c2)
        (Pd_holding_d_c3)
        (Pd_holding_d_c4)
        (Pd_holding_d_c5)
        (Pd_holding_d_c6)
        (Pd_holding_d_c7)
        (Pd_holding_d_c8)
        (Pd_suspect_spot1_c1)
        (Pd_suspect_spot1_c2)
        (Pd_suspect_spot1_c3)
        (Pd_suspect_spot1_c4)
        (Pd_suspect_spot1_c5)
        (Pd_suspect_spot1_c6)
        (Pd_suspect_spot1_c7)
        (Pd_suspect_spot1_c8)
        (Pd_suspect_spot2_c1)
        (Pd_suspect_spot2_c2)
        (Pd_suspect_spot2_c3)
        (Pd_suspect_spot2_c4)
        (Pd_suspect_spot2_c5)
        (Pd_suspect_spot2_c6)
        (Pd_suspect_spot2_c7)
        (Pd_suspect_spot2_c8)
        (Pd_suspect_spot3_c1)
        (Pd_suspect_spot3_c2)
        (Pd_suspect_spot3_c3)
        (Pd_suspect_spot3_c4)
        (Pd_suspect_spot3_c5)
        (Pd_suspect_spot3_c6)
        (Pd_suspect_spot3_c7)
        (Pd_suspect_spot3_c8)
        (Pd_victim_c1)
        (Pd_victim_c2)
        (Pd_victim_c3)
        (Pd_victim_c4)
        (Pd_victim_c5)
        (Pd_victim_c6)
        (Pd_victim_c7)
        (Pd_victim_c8)
        (me_a)
        (neighbour_a_b)
        (neighbour_b_c)
        (neighbour_c_d)
        (neighbour_d_a)
    )

    (:goal (and
    ))
)