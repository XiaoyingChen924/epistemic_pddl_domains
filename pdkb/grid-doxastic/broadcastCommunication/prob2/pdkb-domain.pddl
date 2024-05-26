(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_checked_p1)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_leader_a)
        (not_leader_b)
        (not_leader_c)
        (not_succ_p1_p1)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (at_a_p1)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (checked_p1)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (leader_a)
        (leader_b)
        (leader_c)
        (succ_p1_p1)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #66381: origin
                    (Ba_not_survivorat_s_p1)

                    ; #70622: <==closure== 66381 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #61438: <==negation-removal== 66381 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86262: <==negation-removal== 70622 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b))
        :effect (and
                    ; #21412: origin
                    (Bb_not_survivorat_s_p1)

                    ; #57397: <==closure== 21412 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #11381: <==negation-removal== 21412 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #50412: <==negation-removal== 57397 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #18372: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19387: <==closure== 18372 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #65587: <==negation-removal== 18372 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #91157: <==negation-removal== 19387 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #66381: origin
                    (Ba_not_survivorat_s_p1)

                    ; #70622: <==closure== 66381 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #61438: <==negation-removal== 66381 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86262: <==negation-removal== 70622 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #21412: origin
                    (Bb_not_survivorat_s_p1)

                    ; #57397: <==closure== 21412 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #11381: <==negation-removal== 21412 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #50412: <==negation-removal== 57397 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #18372: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19387: <==closure== 18372 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #65587: <==negation-removal== 18372 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #91157: <==negation-removal== 19387 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #66381: origin
                    (Ba_not_survivorat_s_p1)

                    ; #70622: <==closure== 66381 (pos)
                    (Pa_not_survivorat_s_p1)

                    ; #61438: <==negation-removal== 66381 (pos)
                    (not (Pa_survivorat_s_p1))

                    ; #86262: <==negation-removal== 70622 (pos)
                    (not (Ba_survivorat_s_p1))))

    (:action badcomm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #21412: origin
                    (Bb_not_survivorat_s_p1)

                    ; #57397: <==closure== 21412 (pos)
                    (Pb_not_survivorat_s_p1)

                    ; #11381: <==negation-removal== 21412 (pos)
                    (not (Pb_survivorat_s_p1))

                    ; #50412: <==negation-removal== 57397 (pos)
                    (not (Bb_survivorat_s_p1))))

    (:action badcomm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #18372: origin
                    (Bc_not_survivorat_s_p1)

                    ; #19387: <==closure== 18372 (pos)
                    (Pc_not_survivorat_s_p1)

                    ; #65587: <==negation-removal== 18372 (pos)
                    (not (Pc_survivorat_s_p1))

                    ; #91157: <==negation-removal== 19387 (pos)
                    (not (Bc_survivorat_s_p1))))

    (:action badcomm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #40732: origin
                    (Ba_not_survivorat_s_p2)

                    ; #51296: <==closure== 40732 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #29447: <==negation-removal== 40732 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45901: <==negation-removal== 51296 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #12654: origin
                    (Bb_not_survivorat_s_p2)

                    ; #28347: <==closure== 12654 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #30518: <==negation-removal== 12654 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #68822: <==negation-removal== 28347 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #23729: <==closure== 40639 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #40639: origin
                    (Bc_not_survivorat_s_p2)

                    ; #50464: <==negation-removal== 40639 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #68188: <==negation-removal== 23729 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #40732: origin
                    (Ba_not_survivorat_s_p2)

                    ; #51296: <==closure== 40732 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #29447: <==negation-removal== 40732 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45901: <==negation-removal== 51296 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_b)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #12654: origin
                    (Bb_not_survivorat_s_p2)

                    ; #28347: <==closure== 12654 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #30518: <==negation-removal== 12654 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #68822: <==negation-removal== 28347 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_c)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #23729: <==closure== 40639 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #40639: origin
                    (Bc_not_survivorat_s_p2)

                    ; #50464: <==negation-removal== 40639 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #68188: <==negation-removal== 23729 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p2_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #40732: origin
                    (Ba_not_survivorat_s_p2)

                    ; #51296: <==closure== 40732 (pos)
                    (Pa_not_survivorat_s_p2)

                    ; #29447: <==negation-removal== 40732 (pos)
                    (not (Pa_survivorat_s_p2))

                    ; #45901: <==negation-removal== 51296 (pos)
                    (not (Ba_survivorat_s_p2))))

    (:action badcomm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b))
        :effect (and
                    ; #12654: origin
                    (Bb_not_survivorat_s_p2)

                    ; #28347: <==closure== 12654 (pos)
                    (Pb_not_survivorat_s_p2)

                    ; #30518: <==negation-removal== 12654 (pos)
                    (not (Pb_survivorat_s_p2))

                    ; #68822: <==negation-removal== 28347 (pos)
                    (not (Bb_survivorat_s_p2))))

    (:action badcomm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c))
        :effect (and
                    ; #23729: <==closure== 40639 (pos)
                    (Pc_not_survivorat_s_p2)

                    ; #40639: origin
                    (Bc_not_survivorat_s_p2)

                    ; #50464: <==negation-removal== 40639 (pos)
                    (not (Pc_survivorat_s_p2))

                    ; #68188: <==negation-removal== 23729 (pos)
                    (not (Bc_survivorat_s_p2))))

    (:action badcomm_p3_a_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #57298: <==closure== 89978 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #89978: origin
                    (Ba_not_survivorat_s_p3)

                    ; #28456: <==negation-removal== 57298 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #65587: <==negation-removal== 89978 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_a_b_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #47119: <==closure== 61580 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #61580: origin
                    (Bb_not_survivorat_s_p3)

                    ; #67534: <==negation-removal== 47119 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #83688: <==negation-removal== 61580 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_a_c_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #44202: origin
                    (Bc_not_survivorat_s_p3)

                    ; #62876: <==closure== 44202 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #21107: <==negation-removal== 44202 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #35383: <==negation-removal== 62876 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #57298: <==closure== 89978 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #89978: origin
                    (Ba_not_survivorat_s_p3)

                    ; #28456: <==negation-removal== 57298 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #65587: <==negation-removal== 89978 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #47119: <==closure== 61580 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #61580: origin
                    (Bb_not_survivorat_s_p3)

                    ; #67534: <==negation-removal== 47119 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #83688: <==negation-removal== 61580 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #44202: origin
                    (Bc_not_survivorat_s_p3)

                    ; #62876: <==closure== 44202 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #21107: <==negation-removal== 44202 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #35383: <==negation-removal== 62876 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #57298: <==closure== 89978 (pos)
                    (Pa_not_survivorat_s_p3)

                    ; #89978: origin
                    (Ba_not_survivorat_s_p3)

                    ; #28456: <==negation-removal== 57298 (pos)
                    (not (Ba_survivorat_s_p3))

                    ; #65587: <==negation-removal== 89978 (pos)
                    (not (Pa_survivorat_s_p3))))

    (:action badcomm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #47119: <==closure== 61580 (pos)
                    (Pb_not_survivorat_s_p3)

                    ; #61580: origin
                    (Bb_not_survivorat_s_p3)

                    ; #67534: <==negation-removal== 47119 (pos)
                    (not (Bb_survivorat_s_p3))

                    ; #83688: <==negation-removal== 61580 (pos)
                    (not (Pb_survivorat_s_p3))))

    (:action badcomm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #44202: origin
                    (Bc_not_survivorat_s_p3)

                    ; #62876: <==closure== 44202 (pos)
                    (Pc_not_survivorat_s_p3)

                    ; #21107: <==negation-removal== 44202 (pos)
                    (not (Pc_survivorat_s_p3))

                    ; #35383: <==negation-removal== 62876 (pos)
                    (not (Bc_survivorat_s_p3))))

    (:action badcomm_p4_a_a_s
        :precondition (and (leader_a)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #37295: origin
                    (Ba_not_survivorat_s_p4)

                    ; #39351: <==closure== 37295 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #24663: <==negation-removal== 37295 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #48931: <==negation-removal== 39351 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #16903: <==closure== 22920 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #22920: origin
                    (Bb_not_survivorat_s_p4)

                    ; #15059: <==negation-removal== 22920 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #27410: <==negation-removal== 16903 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_a_c_s
        :precondition (and (leader_c)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #39241: <==closure== 87405 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #87405: origin
                    (Bc_not_survivorat_s_p4)

                    ; #16331: <==negation-removal== 39241 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #18819: <==negation-removal== 87405 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_a)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #37295: origin
                    (Ba_not_survivorat_s_p4)

                    ; #39351: <==closure== 37295 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #24663: <==negation-removal== 37295 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #48931: <==negation-removal== 39351 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #16903: <==closure== 22920 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #22920: origin
                    (Bb_not_survivorat_s_p4)

                    ; #15059: <==negation-removal== 22920 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #27410: <==negation-removal== 16903 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #39241: <==closure== 87405 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #87405: origin
                    (Bc_not_survivorat_s_p4)

                    ; #16331: <==negation-removal== 39241 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #18819: <==negation-removal== 87405 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p4_c_a_s
        :precondition (and (leader_a)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #37295: origin
                    (Ba_not_survivorat_s_p4)

                    ; #39351: <==closure== 37295 (pos)
                    (Pa_not_survivorat_s_p4)

                    ; #24663: <==negation-removal== 37295 (pos)
                    (not (Pa_survivorat_s_p4))

                    ; #48931: <==negation-removal== 39351 (pos)
                    (not (Ba_survivorat_s_p4))))

    (:action badcomm_p4_c_b_s
        :precondition (and (leader_b)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #16903: <==closure== 22920 (pos)
                    (Pb_not_survivorat_s_p4)

                    ; #22920: origin
                    (Bb_not_survivorat_s_p4)

                    ; #15059: <==negation-removal== 22920 (pos)
                    (not (Pb_survivorat_s_p4))

                    ; #27410: <==negation-removal== 16903 (pos)
                    (not (Bb_survivorat_s_p4))))

    (:action badcomm_p4_c_c_s
        :precondition (and (leader_c)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #39241: <==closure== 87405 (pos)
                    (Pc_not_survivorat_s_p4)

                    ; #87405: origin
                    (Bc_not_survivorat_s_p4)

                    ; #16331: <==negation-removal== 39241 (pos)
                    (not (Bc_survivorat_s_p4))

                    ; #18819: <==negation-removal== 87405 (pos)
                    (not (Pc_survivorat_s_p4))))

    (:action badcomm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #87311: <==closure== 98062 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #98062: origin
                    (Ba_not_survivorat_s_p5)

                    ; #12986: <==negation-removal== 98062 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #62027: <==negation-removal== 87311 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (leader_b)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #29346: origin
                    (Bb_not_survivorat_s_p5)

                    ; #82743: <==closure== 29346 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11809: <==negation-removal== 29346 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #96775: <==negation-removal== 82743 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #22416: <==closure== 39854 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #39854: origin
                    (Bc_not_survivorat_s_p5)

                    ; #20470: <==negation-removal== 39854 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #47475: <==negation-removal== 22416 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #87311: <==closure== 98062 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #98062: origin
                    (Ba_not_survivorat_s_p5)

                    ; #12986: <==negation-removal== 98062 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #62027: <==negation-removal== 87311 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #29346: origin
                    (Bb_not_survivorat_s_p5)

                    ; #82743: <==closure== 29346 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11809: <==negation-removal== 29346 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #96775: <==negation-removal== 82743 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_c)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #22416: <==closure== 39854 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #39854: origin
                    (Bc_not_survivorat_s_p5)

                    ; #20470: <==negation-removal== 39854 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #47475: <==negation-removal== 22416 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p5_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #87311: <==closure== 98062 (pos)
                    (Pa_not_survivorat_s_p5)

                    ; #98062: origin
                    (Ba_not_survivorat_s_p5)

                    ; #12986: <==negation-removal== 98062 (pos)
                    (not (Pa_survivorat_s_p5))

                    ; #62027: <==negation-removal== 87311 (pos)
                    (not (Ba_survivorat_s_p5))))

    (:action badcomm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5))
        :effect (and
                    ; #29346: origin
                    (Bb_not_survivorat_s_p5)

                    ; #82743: <==closure== 29346 (pos)
                    (Pb_not_survivorat_s_p5)

                    ; #11809: <==negation-removal== 29346 (pos)
                    (not (Pb_survivorat_s_p5))

                    ; #96775: <==negation-removal== 82743 (pos)
                    (not (Bb_survivorat_s_p5))))

    (:action badcomm_p5_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #22416: <==closure== 39854 (pos)
                    (Pc_not_survivorat_s_p5)

                    ; #39854: origin
                    (Bc_not_survivorat_s_p5)

                    ; #20470: <==negation-removal== 39854 (pos)
                    (not (Pc_survivorat_s_p5))

                    ; #47475: <==negation-removal== 22416 (pos)
                    (not (Bc_survivorat_s_p5))))

    (:action badcomm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #24483: <==closure== 50612 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #50612: origin
                    (Ba_not_survivorat_s_p6)

                    ; #40954: <==negation-removal== 24483 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #55748: <==negation-removal== 50612 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #54909: <==closure== 65656 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #65656: origin
                    (Bb_not_survivorat_s_p6)

                    ; #34388: <==negation-removal== 54909 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #74154: <==negation-removal== 65656 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #11114: origin
                    (Bc_not_survivorat_s_p6)

                    ; #75704: <==closure== 11114 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #28609: <==negation-removal== 75704 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #33694: <==negation-removal== 11114 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #24483: <==closure== 50612 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #50612: origin
                    (Ba_not_survivorat_s_p6)

                    ; #40954: <==negation-removal== 24483 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #55748: <==negation-removal== 50612 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_b)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #54909: <==closure== 65656 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #65656: origin
                    (Bb_not_survivorat_s_p6)

                    ; #34388: <==negation-removal== 54909 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #74154: <==negation-removal== 65656 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (leader_c)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #11114: origin
                    (Bc_not_survivorat_s_p6)

                    ; #75704: <==closure== 11114 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #28609: <==negation-removal== 75704 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #33694: <==negation-removal== 11114 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p6_c_a_s
        :precondition (and (leader_a)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #24483: <==closure== 50612 (pos)
                    (Pa_not_survivorat_s_p6)

                    ; #50612: origin
                    (Ba_not_survivorat_s_p6)

                    ; #40954: <==negation-removal== 24483 (pos)
                    (not (Ba_survivorat_s_p6))

                    ; #55748: <==negation-removal== 50612 (pos)
                    (not (Pa_survivorat_s_p6))))

    (:action badcomm_p6_c_b_s
        :precondition (and (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #54909: <==closure== 65656 (pos)
                    (Pb_not_survivorat_s_p6)

                    ; #65656: origin
                    (Bb_not_survivorat_s_p6)

                    ; #34388: <==negation-removal== 54909 (pos)
                    (not (Bb_survivorat_s_p6))

                    ; #74154: <==negation-removal== 65656 (pos)
                    (not (Pb_survivorat_s_p6))))

    (:action badcomm_p6_c_c_s
        :precondition (and (leader_c)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #11114: origin
                    (Bc_not_survivorat_s_p6)

                    ; #75704: <==closure== 11114 (pos)
                    (Pc_not_survivorat_s_p6)

                    ; #28609: <==negation-removal== 75704 (pos)
                    (not (Bc_survivorat_s_p6))

                    ; #33694: <==negation-removal== 11114 (pos)
                    (not (Pc_survivorat_s_p6))))

    (:action badcomm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a))
        :effect (and
                    ; #11226: <==closure== 62772 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #62772: origin
                    (Ba_not_survivorat_s_p7)

                    ; #19854: <==negation-removal== 62772 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #47573: <==negation-removal== 11226 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b))
        :effect (and
                    ; #32481: origin
                    (Bb_not_survivorat_s_p7)

                    ; #61955: <==closure== 32481 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46074: <==negation-removal== 32481 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #63946: <==negation-removal== 61955 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c))
        :effect (and
                    ; #46272: <==closure== 83273 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #83273: origin
                    (Bc_not_survivorat_s_p7)

                    ; #47811: <==negation-removal== 83273 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #87732: <==negation-removal== 46272 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (leader_a)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #11226: <==closure== 62772 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #62772: origin
                    (Ba_not_survivorat_s_p7)

                    ; #19854: <==negation-removal== 62772 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #47573: <==negation-removal== 11226 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_b)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #32481: origin
                    (Bb_not_survivorat_s_p7)

                    ; #61955: <==closure== 32481 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46074: <==negation-removal== 32481 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #63946: <==negation-removal== 61955 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (leader_c)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #46272: <==closure== 83273 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #83273: origin
                    (Bc_not_survivorat_s_p7)

                    ; #47811: <==negation-removal== 83273 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #87732: <==negation-removal== 46272 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7))
        :effect (and
                    ; #11226: <==closure== 62772 (pos)
                    (Pa_not_survivorat_s_p7)

                    ; #62772: origin
                    (Ba_not_survivorat_s_p7)

                    ; #19854: <==negation-removal== 62772 (pos)
                    (not (Pa_survivorat_s_p7))

                    ; #47573: <==negation-removal== 11226 (pos)
                    (not (Ba_survivorat_s_p7))))

    (:action badcomm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #32481: origin
                    (Bb_not_survivorat_s_p7)

                    ; #61955: <==closure== 32481 (pos)
                    (Pb_not_survivorat_s_p7)

                    ; #46074: <==negation-removal== 32481 (pos)
                    (not (Pb_survivorat_s_p7))

                    ; #63946: <==negation-removal== 61955 (pos)
                    (not (Bb_survivorat_s_p7))))

    (:action badcomm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c))
        :effect (and
                    ; #46272: <==closure== 83273 (pos)
                    (Pc_not_survivorat_s_p7)

                    ; #83273: origin
                    (Bc_not_survivorat_s_p7)

                    ; #47811: <==negation-removal== 83273 (pos)
                    (not (Pc_survivorat_s_p7))

                    ; #87732: <==negation-removal== 46272 (pos)
                    (not (Bc_survivorat_s_p7))))

    (:action badcomm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #12385: origin
                    (Ba_not_survivorat_s_p8)

                    ; #57850: <==closure== 12385 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #24343: <==negation-removal== 57850 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #77304: <==negation-removal== 12385 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #19863: <==closure== 25426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #25426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #10420: <==negation-removal== 19863 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #31887: <==negation-removal== 25426 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #55574: origin
                    (Bc_not_survivorat_s_p8)

                    ; #57192: <==closure== 55574 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #30923: <==negation-removal== 57192 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #39296: <==negation-removal== 55574 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #12385: origin
                    (Ba_not_survivorat_s_p8)

                    ; #57850: <==closure== 12385 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #24343: <==negation-removal== 57850 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #77304: <==negation-removal== 12385 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #19863: <==closure== 25426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #25426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #10420: <==negation-removal== 19863 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #31887: <==negation-removal== 25426 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #55574: origin
                    (Bc_not_survivorat_s_p8)

                    ; #57192: <==closure== 55574 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #30923: <==negation-removal== 57192 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #39296: <==negation-removal== 55574 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #12385: origin
                    (Ba_not_survivorat_s_p8)

                    ; #57850: <==closure== 12385 (pos)
                    (Pa_not_survivorat_s_p8)

                    ; #24343: <==negation-removal== 57850 (pos)
                    (not (Ba_survivorat_s_p8))

                    ; #77304: <==negation-removal== 12385 (pos)
                    (not (Pa_survivorat_s_p8))))

    (:action badcomm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (leader_b)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #19863: <==closure== 25426 (pos)
                    (Pb_not_survivorat_s_p8)

                    ; #25426: origin
                    (Bb_not_survivorat_s_p8)

                    ; #10420: <==negation-removal== 19863 (pos)
                    (not (Bb_survivorat_s_p8))

                    ; #31887: <==negation-removal== 25426 (pos)
                    (not (Pb_survivorat_s_p8))))

    (:action badcomm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #55574: origin
                    (Bc_not_survivorat_s_p8)

                    ; #57192: <==closure== 55574 (pos)
                    (Pc_not_survivorat_s_p8)

                    ; #30923: <==negation-removal== 57192 (pos)
                    (not (Bc_survivorat_s_p8))

                    ; #39296: <==negation-removal== 55574 (pos)
                    (not (Pc_survivorat_s_p8))))

    (:action badcomm_p9_a_a_s
        :precondition (and (leader_a)
                           (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #11561: <==closure== 74435 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #74435: origin
                    (Ba_not_survivorat_s_p9)

                    ; #49940: <==negation-removal== 11561 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #72857: <==negation-removal== 74435 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #72080: origin
                    (Bb_not_survivorat_s_p9)

                    ; #75608: <==closure== 72080 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #29078: <==negation-removal== 72080 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #91851: <==negation-removal== 75608 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_a_c_s
        :precondition (and (leader_c)
                           (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #54507: <==closure== 66613 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66613: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82409: <==negation-removal== 54507 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #88182: <==negation-removal== 66613 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #11561: <==closure== 74435 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #74435: origin
                    (Ba_not_survivorat_s_p9)

                    ; #49940: <==negation-removal== 11561 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #72857: <==negation-removal== 74435 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #72080: origin
                    (Bb_not_survivorat_s_p9)

                    ; #75608: <==closure== 72080 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #29078: <==negation-removal== 72080 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #91851: <==negation-removal== 75608 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #54507: <==closure== 66613 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66613: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82409: <==negation-removal== 54507 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #88182: <==negation-removal== 66613 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action badcomm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #11561: <==closure== 74435 (pos)
                    (Pa_not_survivorat_s_p9)

                    ; #74435: origin
                    (Ba_not_survivorat_s_p9)

                    ; #49940: <==negation-removal== 11561 (pos)
                    (not (Ba_survivorat_s_p9))

                    ; #72857: <==negation-removal== 74435 (pos)
                    (not (Pa_survivorat_s_p9))))

    (:action badcomm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #72080: origin
                    (Bb_not_survivorat_s_p9)

                    ; #75608: <==closure== 72080 (pos)
                    (Pb_not_survivorat_s_p9)

                    ; #29078: <==negation-removal== 72080 (pos)
                    (not (Pb_survivorat_s_p9))

                    ; #91851: <==negation-removal== 75608 (pos)
                    (not (Bb_survivorat_s_p9))))

    (:action badcomm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #54507: <==closure== 66613 (pos)
                    (Pc_not_survivorat_s_p9)

                    ; #66613: origin
                    (Bc_not_survivorat_s_p9)

                    ; #82409: <==negation-removal== 54507 (pos)
                    (not (Bc_survivorat_s_p9))

                    ; #88182: <==negation-removal== 66613 (pos)
                    (not (Pc_survivorat_s_p9))))

    (:action comm_p1_a_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_a)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #61438: <==closure== 86262 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86262: origin
                    (Ba_survivorat_s_p1)

                    ; #66381: <==negation-removal== 61438 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #70622: <==negation-removal== 86262 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (leader_b))
        :effect (and
                    ; #11381: <==closure== 50412 (pos)
                    (Pb_survivorat_s_p1)

                    ; #50412: origin
                    (Bb_survivorat_s_p1)

                    ; #21412: <==negation-removal== 11381 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #57397: <==negation-removal== 50412 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Pa_survivorat_s_p1)
                           (leader_c)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #65587: <==closure== 91157 (pos)
                    (Pc_survivorat_s_p1)

                    ; #91157: origin
                    (Bc_survivorat_s_p1)

                    ; #18372: <==negation-removal== 65587 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #19387: <==negation-removal== 91157 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #61438: <==closure== 86262 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86262: origin
                    (Ba_survivorat_s_p1)

                    ; #66381: <==negation-removal== 61438 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #70622: <==negation-removal== 86262 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_b)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #11381: <==closure== 50412 (pos)
                    (Pb_survivorat_s_p1)

                    ; #50412: origin
                    (Bb_survivorat_s_p1)

                    ; #21412: <==negation-removal== 11381 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #57397: <==negation-removal== 50412 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #65587: <==closure== 91157 (pos)
                    (Pc_survivorat_s_p1)

                    ; #91157: origin
                    (Bc_survivorat_s_p1)

                    ; #18372: <==negation-removal== 65587 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #19387: <==negation-removal== 91157 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_a)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #61438: <==closure== 86262 (pos)
                    (Pa_survivorat_s_p1)

                    ; #86262: origin
                    (Ba_survivorat_s_p1)

                    ; #66381: <==negation-removal== 61438 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #70622: <==negation-removal== 86262 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_b)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #11381: <==closure== 50412 (pos)
                    (Pb_survivorat_s_p1)

                    ; #50412: origin
                    (Bb_survivorat_s_p1)

                    ; #21412: <==negation-removal== 11381 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #57397: <==negation-removal== 50412 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (leader_c)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #65587: <==closure== 91157 (pos)
                    (Pc_survivorat_s_p1)

                    ; #91157: origin
                    (Bc_survivorat_s_p1)

                    ; #18372: <==negation-removal== 65587 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #19387: <==negation-removal== 91157 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #29447: <==closure== 45901 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45901: origin
                    (Ba_survivorat_s_p2)

                    ; #40732: <==negation-removal== 29447 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #51296: <==negation-removal== 45901 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (leader_b))
        :effect (and
                    ; #30518: <==closure== 68822 (pos)
                    (Pb_survivorat_s_p2)

                    ; #68822: origin
                    (Bb_survivorat_s_p2)

                    ; #12654: <==negation-removal== 30518 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #28347: <==negation-removal== 68822 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (at_a_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #50464: <==closure== 68188 (pos)
                    (Pc_survivorat_s_p2)

                    ; #68188: origin
                    (Bc_survivorat_s_p2)

                    ; #23729: <==negation-removal== 68188 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #40639: <==negation-removal== 50464 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #29447: <==closure== 45901 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45901: origin
                    (Ba_survivorat_s_p2)

                    ; #40732: <==negation-removal== 29447 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #51296: <==negation-removal== 45901 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_b)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #30518: <==closure== 68822 (pos)
                    (Pb_survivorat_s_p2)

                    ; #68822: origin
                    (Bb_survivorat_s_p2)

                    ; #12654: <==negation-removal== 30518 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #28347: <==negation-removal== 68822 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_c)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #50464: <==closure== 68188 (pos)
                    (Pc_survivorat_s_p2)

                    ; #68188: origin
                    (Bc_survivorat_s_p2)

                    ; #23729: <==negation-removal== 68188 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #40639: <==negation-removal== 50464 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #29447: <==closure== 45901 (pos)
                    (Pa_survivorat_s_p2)

                    ; #45901: origin
                    (Ba_survivorat_s_p2)

                    ; #40732: <==negation-removal== 29447 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #51296: <==negation-removal== 45901 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b))
        :effect (and
                    ; #30518: <==closure== 68822 (pos)
                    (Pb_survivorat_s_p2)

                    ; #68822: origin
                    (Bb_survivorat_s_p2)

                    ; #12654: <==negation-removal== 30518 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #28347: <==negation-removal== 68822 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c))
        :effect (and
                    ; #50464: <==closure== 68188 (pos)
                    (Pc_survivorat_s_p2)

                    ; #68188: origin
                    (Bc_survivorat_s_p2)

                    ; #23729: <==negation-removal== 68188 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #40639: <==negation-removal== 50464 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_a)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #28456: origin
                    (Ba_survivorat_s_p3)

                    ; #65587: <==closure== 28456 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57298: <==negation-removal== 28456 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #89978: <==negation-removal== 65587 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_b)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #67534: origin
                    (Bb_survivorat_s_p3)

                    ; #83688: <==closure== 67534 (pos)
                    (Pb_survivorat_s_p3)

                    ; #47119: <==negation-removal== 67534 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #61580: <==negation-removal== 83688 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (Pa_survivorat_s_p3)
                           (leader_c)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #21107: <==closure== 35383 (pos)
                    (Pc_survivorat_s_p3)

                    ; #35383: origin
                    (Bc_survivorat_s_p3)

                    ; #44202: <==negation-removal== 21107 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #62876: <==negation-removal== 35383 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #28456: origin
                    (Ba_survivorat_s_p3)

                    ; #65587: <==closure== 28456 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57298: <==negation-removal== 28456 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #89978: <==negation-removal== 65587 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (leader_b)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #67534: origin
                    (Bb_survivorat_s_p3)

                    ; #83688: <==closure== 67534 (pos)
                    (Pb_survivorat_s_p3)

                    ; #47119: <==negation-removal== 67534 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #61580: <==negation-removal== 83688 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #21107: <==closure== 35383 (pos)
                    (Pc_survivorat_s_p3)

                    ; #35383: origin
                    (Bc_survivorat_s_p3)

                    ; #44202: <==negation-removal== 21107 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #62876: <==negation-removal== 35383 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #28456: origin
                    (Ba_survivorat_s_p3)

                    ; #65587: <==closure== 28456 (pos)
                    (Pa_survivorat_s_p3)

                    ; #57298: <==negation-removal== 28456 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #89978: <==negation-removal== 65587 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #67534: origin
                    (Bb_survivorat_s_p3)

                    ; #83688: <==closure== 67534 (pos)
                    (Pb_survivorat_s_p3)

                    ; #47119: <==negation-removal== 67534 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #61580: <==negation-removal== 83688 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #21107: <==closure== 35383 (pos)
                    (Pc_survivorat_s_p3)

                    ; #35383: origin
                    (Bc_survivorat_s_p3)

                    ; #44202: <==negation-removal== 21107 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #62876: <==negation-removal== 35383 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (leader_a)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #24663: <==closure== 48931 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48931: origin
                    (Ba_survivorat_s_p4)

                    ; #37295: <==negation-removal== 24663 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #39351: <==negation-removal== 48931 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (leader_b))
        :effect (and
                    ; #15059: <==closure== 27410 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27410: origin
                    (Bb_survivorat_s_p4)

                    ; #16903: <==negation-removal== 27410 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22920: <==negation-removal== 15059 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (leader_c)
                           (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #16331: origin
                    (Bc_survivorat_s_p4)

                    ; #18819: <==closure== 16331 (pos)
                    (Pc_survivorat_s_p4)

                    ; #39241: <==negation-removal== 16331 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #87405: <==negation-removal== 18819 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_a)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #24663: <==closure== 48931 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48931: origin
                    (Ba_survivorat_s_p4)

                    ; #37295: <==negation-removal== 24663 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #39351: <==negation-removal== 48931 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (leader_b)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #15059: <==closure== 27410 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27410: origin
                    (Bb_survivorat_s_p4)

                    ; #16903: <==negation-removal== 27410 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22920: <==negation-removal== 15059 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Pb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #16331: origin
                    (Bc_survivorat_s_p4)

                    ; #18819: <==closure== 16331 (pos)
                    (Pc_survivorat_s_p4)

                    ; #39241: <==negation-removal== 16331 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #87405: <==negation-removal== 18819 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #24663: <==closure== 48931 (pos)
                    (Pa_survivorat_s_p4)

                    ; #48931: origin
                    (Ba_survivorat_s_p4)

                    ; #37295: <==negation-removal== 24663 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #39351: <==negation-removal== 48931 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (leader_b)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #15059: <==closure== 27410 (pos)
                    (Pb_survivorat_s_p4)

                    ; #27410: origin
                    (Bb_survivorat_s_p4)

                    ; #16903: <==negation-removal== 27410 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #22920: <==negation-removal== 15059 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (leader_c)
                           (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #16331: origin
                    (Bc_survivorat_s_p4)

                    ; #18819: <==closure== 16331 (pos)
                    (Pc_survivorat_s_p4)

                    ; #39241: <==negation-removal== 16331 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #87405: <==negation-removal== 18819 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (leader_a)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #12986: <==closure== 62027 (pos)
                    (Pa_survivorat_s_p5)

                    ; #62027: origin
                    (Ba_survivorat_s_p5)

                    ; #87311: <==negation-removal== 62027 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #98062: <==negation-removal== 12986 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (leader_b)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #11809: <==closure== 96775 (pos)
                    (Pb_survivorat_s_p5)

                    ; #96775: origin
                    (Bb_survivorat_s_p5)

                    ; #29346: <==negation-removal== 11809 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82743: <==negation-removal== 96775 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #20470: <==closure== 47475 (pos)
                    (Pc_survivorat_s_p5)

                    ; #47475: origin
                    (Bc_survivorat_s_p5)

                    ; #22416: <==negation-removal== 47475 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #39854: <==negation-removal== 20470 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_a)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #12986: <==closure== 62027 (pos)
                    (Pa_survivorat_s_p5)

                    ; #62027: origin
                    (Ba_survivorat_s_p5)

                    ; #87311: <==negation-removal== 62027 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #98062: <==negation-removal== 12986 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_b)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #11809: <==closure== 96775 (pos)
                    (Pb_survivorat_s_p5)

                    ; #96775: origin
                    (Bb_survivorat_s_p5)

                    ; #29346: <==negation-removal== 11809 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82743: <==negation-removal== 96775 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (Pb_survivorat_s_p5)
                           (leader_c)
                           (at_b_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #20470: <==closure== 47475 (pos)
                    (Pc_survivorat_s_p5)

                    ; #47475: origin
                    (Bc_survivorat_s_p5)

                    ; #22416: <==negation-removal== 47475 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #39854: <==negation-removal== 20470 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (leader_a)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #12986: <==closure== 62027 (pos)
                    (Pa_survivorat_s_p5)

                    ; #62027: origin
                    (Ba_survivorat_s_p5)

                    ; #87311: <==negation-removal== 62027 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #98062: <==negation-removal== 12986 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (leader_b)
                           (at_c_p5))
        :effect (and
                    ; #11809: <==closure== 96775 (pos)
                    (Pb_survivorat_s_p5)

                    ; #96775: origin
                    (Bb_survivorat_s_p5)

                    ; #29346: <==negation-removal== 11809 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #82743: <==negation-removal== 96775 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (leader_c)
                           (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #20470: <==closure== 47475 (pos)
                    (Pc_survivorat_s_p5)

                    ; #47475: origin
                    (Bc_survivorat_s_p5)

                    ; #22416: <==negation-removal== 47475 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #39854: <==negation-removal== 20470 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #40954: origin
                    (Ba_survivorat_s_p6)

                    ; #55748: <==closure== 40954 (pos)
                    (Pa_survivorat_s_p6)

                    ; #24483: <==negation-removal== 40954 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #50612: <==negation-removal== 55748 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_b)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #34388: origin
                    (Bb_survivorat_s_p6)

                    ; #74154: <==closure== 34388 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54909: <==negation-removal== 34388 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65656: <==negation-removal== 74154 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Ba_survivorat_s_p6)
                           (leader_c)
                           (Pa_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #28609: origin
                    (Bc_survivorat_s_p6)

                    ; #33694: <==closure== 28609 (pos)
                    (Pc_survivorat_s_p6)

                    ; #11114: <==negation-removal== 33694 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #75704: <==negation-removal== 28609 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #40954: origin
                    (Ba_survivorat_s_p6)

                    ; #55748: <==closure== 40954 (pos)
                    (Pa_survivorat_s_p6)

                    ; #24483: <==negation-removal== 40954 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #50612: <==negation-removal== 55748 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (leader_b)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #34388: origin
                    (Bb_survivorat_s_p6)

                    ; #74154: <==closure== 34388 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54909: <==negation-removal== 34388 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65656: <==negation-removal== 74154 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (at_b_p6)
                           (leader_c)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #28609: origin
                    (Bc_survivorat_s_p6)

                    ; #33694: <==closure== 28609 (pos)
                    (Pc_survivorat_s_p6)

                    ; #11114: <==negation-removal== 33694 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #75704: <==negation-removal== 28609 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (leader_a)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #40954: origin
                    (Ba_survivorat_s_p6)

                    ; #55748: <==closure== 40954 (pos)
                    (Pa_survivorat_s_p6)

                    ; #24483: <==negation-removal== 40954 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #50612: <==negation-removal== 55748 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (leader_b)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #34388: origin
                    (Bb_survivorat_s_p6)

                    ; #74154: <==closure== 34388 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54909: <==negation-removal== 34388 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #65656: <==negation-removal== 74154 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (leader_c)
                           (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #28609: origin
                    (Bc_survivorat_s_p6)

                    ; #33694: <==closure== 28609 (pos)
                    (Pc_survivorat_s_p6)

                    ; #11114: <==negation-removal== 33694 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #75704: <==negation-removal== 28609 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_a))
        :effect (and
                    ; #19854: <==closure== 47573 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47573: origin
                    (Ba_survivorat_s_p7)

                    ; #11226: <==negation-removal== 47573 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #62772: <==negation-removal== 19854 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_b))
        :effect (and
                    ; #46074: <==closure== 63946 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63946: origin
                    (Bb_survivorat_s_p7)

                    ; #32481: <==negation-removal== 46074 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #61955: <==negation-removal== 63946 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (leader_c))
        :effect (and
                    ; #47811: <==closure== 87732 (pos)
                    (Pc_survivorat_s_p7)

                    ; #87732: origin
                    (Bc_survivorat_s_p7)

                    ; #46272: <==negation-removal== 87732 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #83273: <==negation-removal== 47811 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (Pb_survivorat_s_p7)
                           (leader_a)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #19854: <==closure== 47573 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47573: origin
                    (Ba_survivorat_s_p7)

                    ; #11226: <==negation-removal== 47573 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #62772: <==negation-removal== 19854 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (leader_b)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #46074: <==closure== 63946 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63946: origin
                    (Bb_survivorat_s_p7)

                    ; #32481: <==negation-removal== 46074 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #61955: <==negation-removal== 63946 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (Pb_survivorat_s_p7)
                           (leader_c)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #47811: <==closure== 87732 (pos)
                    (Pc_survivorat_s_p7)

                    ; #87732: origin
                    (Bc_survivorat_s_p7)

                    ; #46272: <==negation-removal== 87732 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #83273: <==negation-removal== 47811 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (leader_a)
                           (at_c_p7))
        :effect (and
                    ; #19854: <==closure== 47573 (pos)
                    (Pa_survivorat_s_p7)

                    ; #47573: origin
                    (Ba_survivorat_s_p7)

                    ; #11226: <==negation-removal== 47573 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #62772: <==negation-removal== 19854 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #46074: <==closure== 63946 (pos)
                    (Pb_survivorat_s_p7)

                    ; #63946: origin
                    (Bb_survivorat_s_p7)

                    ; #32481: <==negation-removal== 46074 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #61955: <==negation-removal== 63946 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c))
        :effect (and
                    ; #47811: <==closure== 87732 (pos)
                    (Pc_survivorat_s_p7)

                    ; #87732: origin
                    (Bc_survivorat_s_p7)

                    ; #46272: <==negation-removal== 87732 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #83273: <==negation-removal== 47811 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #24343: origin
                    (Ba_survivorat_s_p8)

                    ; #77304: <==closure== 24343 (pos)
                    (Pa_survivorat_s_p8)

                    ; #12385: <==negation-removal== 77304 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #57850: <==negation-removal== 24343 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (leader_b)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #10420: origin
                    (Bb_survivorat_s_p8)

                    ; #31887: <==closure== 10420 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19863: <==negation-removal== 10420 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #25426: <==negation-removal== 31887 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #30923: origin
                    (Bc_survivorat_s_p8)

                    ; #39296: <==closure== 30923 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55574: <==negation-removal== 39296 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #57192: <==negation-removal== 30923 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (leader_a)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #24343: origin
                    (Ba_survivorat_s_p8)

                    ; #77304: <==closure== 24343 (pos)
                    (Pa_survivorat_s_p8)

                    ; #12385: <==negation-removal== 77304 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #57850: <==negation-removal== 24343 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (leader_b)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #10420: origin
                    (Bb_survivorat_s_p8)

                    ; #31887: <==closure== 10420 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19863: <==negation-removal== 10420 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #25426: <==negation-removal== 31887 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (leader_c)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #30923: origin
                    (Bc_survivorat_s_p8)

                    ; #39296: <==closure== 30923 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55574: <==negation-removal== 39296 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #57192: <==negation-removal== 30923 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (leader_a)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #24343: origin
                    (Ba_survivorat_s_p8)

                    ; #77304: <==closure== 24343 (pos)
                    (Pa_survivorat_s_p8)

                    ; #12385: <==negation-removal== 77304 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #57850: <==negation-removal== 24343 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (leader_b)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #10420: origin
                    (Bb_survivorat_s_p8)

                    ; #31887: <==closure== 10420 (pos)
                    (Pb_survivorat_s_p8)

                    ; #19863: <==negation-removal== 10420 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #25426: <==negation-removal== 31887 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (at_c_p8)
                           (leader_c)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #30923: origin
                    (Bc_survivorat_s_p8)

                    ; #39296: <==closure== 30923 (pos)
                    (Pc_survivorat_s_p8)

                    ; #55574: <==negation-removal== 39296 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #57192: <==negation-removal== 30923 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (leader_a)
                           (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #49940: origin
                    (Ba_survivorat_s_p9)

                    ; #72857: <==closure== 49940 (pos)
                    (Pa_survivorat_s_p9)

                    ; #11561: <==negation-removal== 49940 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #74435: <==negation-removal== 72857 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (leader_b)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #29078: <==closure== 91851 (pos)
                    (Pb_survivorat_s_p9)

                    ; #91851: origin
                    (Bb_survivorat_s_p9)

                    ; #72080: <==negation-removal== 29078 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #75608: <==negation-removal== 91851 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (leader_c)
                           (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #82409: origin
                    (Bc_survivorat_s_p9)

                    ; #88182: <==closure== 82409 (pos)
                    (Pc_survivorat_s_p9)

                    ; #54507: <==negation-removal== 82409 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66613: <==negation-removal== 88182 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #49940: origin
                    (Ba_survivorat_s_p9)

                    ; #72857: <==closure== 49940 (pos)
                    (Pa_survivorat_s_p9)

                    ; #11561: <==negation-removal== 49940 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #74435: <==negation-removal== 72857 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (leader_b)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #29078: <==closure== 91851 (pos)
                    (Pb_survivorat_s_p9)

                    ; #91851: origin
                    (Bb_survivorat_s_p9)

                    ; #72080: <==negation-removal== 29078 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #75608: <==negation-removal== 91851 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #82409: origin
                    (Bc_survivorat_s_p9)

                    ; #88182: <==closure== 82409 (pos)
                    (Pc_survivorat_s_p9)

                    ; #54507: <==negation-removal== 82409 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66613: <==negation-removal== 88182 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_a)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #49940: origin
                    (Ba_survivorat_s_p9)

                    ; #72857: <==closure== 49940 (pos)
                    (Pa_survivorat_s_p9)

                    ; #11561: <==negation-removal== 49940 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #74435: <==negation-removal== 72857 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (leader_b)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #29078: <==closure== 91851 (pos)
                    (Pb_survivorat_s_p9)

                    ; #91851: origin
                    (Bb_survivorat_s_p9)

                    ; #72080: <==negation-removal== 29078 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #75608: <==negation-removal== 91851 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (leader_c)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #82409: origin
                    (Bc_survivorat_s_p9)

                    ; #88182: <==closure== 82409 (pos)
                    (Pc_survivorat_s_p9)

                    ; #54507: <==negation-removal== 82409 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #66613: <==negation-removal== 88182 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #43458: origin
                    (not_at_a_p1)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #73417: origin
                    (at_a_p2)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #62847: origin
                    (at_a_p3)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #70193: origin
                    (at_a_p4)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #91041: origin
                    (at_a_p5)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #49154: origin
                    (at_a_p6)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #61684: origin
                    (at_a_p7)

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #52932: origin
                    (at_a_p8)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #43458: origin
                    (not_at_a_p1)

                    ; #75235: origin
                    (at_a_p9)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #40530: <==negation-removal== 43458 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #51354: origin
                    (not_at_a_p2)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #73417: origin
                    (at_a_p2)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #62847: origin
                    (at_a_p3)

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #70193: origin
                    (at_a_p4)

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6)
                           (not (leader_a)))
        :effect (and
                    ; #49154: origin
                    (at_a_p6)

                    ; #51354: origin
                    (not_at_a_p2)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #61684: origin
                    (at_a_p7)

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #52932: origin
                    (at_a_p8)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9)
                           (not (leader_a)))
        :effect (and
                    ; #51354: origin
                    (not_at_a_p2)

                    ; #75235: origin
                    (at_a_p9)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #73417: <==negation-removal== 51354 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #73417: origin
                    (at_a_p2)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #62847: origin
                    (at_a_p3)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #70193: origin
                    (at_a_p4)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #90042: origin
                    (not_at_a_p3)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #49154: origin
                    (at_a_p6)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #61684: origin
                    (at_a_p7)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #52932: origin
                    (at_a_p8)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #75235: origin
                    (at_a_p9)

                    ; #90042: origin
                    (not_at_a_p3)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #62847: <==negation-removal== 90042 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2)
                           (not (leader_a)))
        :effect (and
                    ; #73417: origin
                    (at_a_p2)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #62847: origin
                    (at_a_p3)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4)
                           (not (leader_a)))
        :effect (and
                    ; #70193: origin
                    (at_a_p4)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5)
                           (not (leader_a)))
        :effect (and
                    ; #89558: origin
                    (not_at_a_p4)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #49154: origin
                    (at_a_p6)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7)
                           (not (leader_a)))
        :effect (and
                    ; #61684: origin
                    (at_a_p7)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8)
                           (not (leader_a)))
        :effect (and
                    ; #52932: origin
                    (at_a_p8)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #75235: origin
                    (at_a_p9)

                    ; #89558: origin
                    (not_at_a_p4)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #70193: <==negation-removal== 89558 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #44748: origin
                    (not_at_a_p5)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #73417: origin
                    (at_a_p2)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #62847: origin
                    (at_a_p3)

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #70193: origin
                    (at_a_p4)

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #49154: origin
                    (at_a_p6)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #61684: origin
                    (at_a_p7)

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #52932: origin
                    (at_a_p8)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9)
                           (not (leader_a)))
        :effect (and
                    ; #44748: origin
                    (not_at_a_p5)

                    ; #75235: origin
                    (at_a_p9)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #91041: <==negation-removal== 44748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #48386: origin
                    (not_at_a_p6)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #73417: origin
                    (at_a_p2)

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #62847: origin
                    (at_a_p3)

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #70193: origin
                    (at_a_p4)

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #49154: origin
                    (at_a_p6)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #61684: origin
                    (at_a_p7)

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #52932: origin
                    (at_a_p8)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #48386: origin
                    (not_at_a_p6)

                    ; #75235: origin
                    (at_a_p9)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #49154: <==negation-removal== 48386 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40530: origin
                    (at_a_p1)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #73417: origin
                    (at_a_p2)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #62847: origin
                    (at_a_p3)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #70193: origin
                    (at_a_p4)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #77239: origin
                    (not_at_a_p7)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #49154: origin
                    (at_a_p6)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #61684: origin
                    (at_a_p7)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #52932: origin
                    (at_a_p8)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #75235: origin
                    (at_a_p9)

                    ; #77239: origin
                    (not_at_a_p7)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #61684: <==negation-removal== 77239 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #40530: origin
                    (at_a_p1)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #73417: origin
                    (at_a_p2)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #62847: origin
                    (at_a_p3)

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #70193: origin
                    (at_a_p4)

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #49154: origin
                    (at_a_p6)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #61684: origin
                    (at_a_p7)

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #52932: origin
                    (at_a_p8)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #33151: origin
                    (not_at_a_p8)

                    ; #75235: origin
                    (at_a_p9)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #52932: <==negation-removal== 33151 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #40530: origin
                    (at_a_p1)

                    ; #43458: <==negation-removal== 40530 (pos)
                    (not (not_at_a_p1))

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #73417: origin
                    (at_a_p2)

                    ; #51354: <==negation-removal== 73417 (pos)
                    (not (not_at_a_p2))

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #62847: origin
                    (at_a_p3)

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))

                    ; #90042: <==negation-removal== 62847 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #70193: origin
                    (at_a_p4)

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))

                    ; #89558: <==negation-removal== 70193 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #91041: origin
                    (at_a_p5)

                    ; #44748: <==negation-removal== 91041 (pos)
                    (not (not_at_a_p5))

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #49154: origin
                    (at_a_p6)

                    ; #48386: <==negation-removal== 49154 (pos)
                    (not (not_at_a_p6))

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #61684: origin
                    (at_a_p7)

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))

                    ; #77239: <==negation-removal== 61684 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #52932: origin
                    (at_a_p8)

                    ; #33151: <==negation-removal== 52932 (pos)
                    (not (not_at_a_p8))

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9)
                           (not (leader_a)))
        :effect (and
                    ; #37848: origin
                    (not_at_a_p9)

                    ; #75235: origin
                    (at_a_p9)

                    ; #37848: <==negation-removal== 75235 (pos)
                    (not (not_at_a_p9))

                    ; #75235: <==negation-removal== 37848 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #45953: origin
                    (not_at_b_p1)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2)
                           (not (leader_b)))
        :effect (and
                    ; #45953: origin
                    (not_at_b_p1)

                    ; #77693: origin
                    (at_b_p2)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #45953: origin
                    (not_at_b_p1)

                    ; #80503: origin
                    (at_b_p3)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #45953: origin
                    (not_at_b_p1)

                    ; #47362: origin
                    (at_b_p4)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #45953: origin
                    (not_at_b_p1)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #45953: origin
                    (not_at_b_p1)

                    ; #53813: origin
                    (at_b_p6)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #45953: origin
                    (not_at_b_p1)

                    ; #50284: origin
                    (at_b_p7)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #45953: origin
                    (not_at_b_p1)

                    ; #55452: origin
                    (at_b_p8)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #45953: origin
                    (not_at_b_p1)

                    ; #24251: <==negation-removal== 45953 (pos)
                    (not (at_b_p1))

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #75217: origin
                    (not_at_b_p2)

                    ; #77693: origin
                    (at_b_p2)

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3)
                           (not (leader_b)))
        :effect (and
                    ; #75217: origin
                    (not_at_b_p2)

                    ; #80503: origin
                    (at_b_p3)

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #53813: origin
                    (at_b_p6)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #50284: origin
                    (at_b_p7)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #55452: origin
                    (at_b_p8)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #75217: origin
                    (not_at_b_p2)

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))

                    ; #77693: <==negation-removal== 75217 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #73317: origin
                    (not_at_b_p3)

                    ; #77693: origin
                    (at_b_p2)

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #73317: origin
                    (not_at_b_p3)

                    ; #80503: origin
                    (at_b_p3)

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #53813: origin
                    (at_b_p6)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50284: origin
                    (at_b_p7)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55452: origin
                    (at_b_p8)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #73317: origin
                    (not_at_b_p3)

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))

                    ; #80503: <==negation-removal== 73317 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #77693: origin
                    (at_b_p2)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #80503: origin
                    (at_b_p3)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #53813: origin
                    (at_b_p6)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #50284: origin
                    (at_b_p7)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8)
                           (not (leader_b)))
        :effect (and
                    ; #55452: origin
                    (at_b_p8)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #87173: origin
                    (not_at_b_p4)

                    ; #47362: <==negation-removal== 87173 (pos)
                    (not (at_b_p4))

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #54857: origin
                    (not_at_b_p5)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #54857: origin
                    (not_at_b_p5)

                    ; #77693: origin
                    (at_b_p2)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #54857: origin
                    (not_at_b_p5)

                    ; #80503: origin
                    (at_b_p3)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #54857: origin
                    (not_at_b_p5)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #54857: origin
                    (not_at_b_p5)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #53813: origin
                    (at_b_p6)

                    ; #54857: origin
                    (not_at_b_p5)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #50284: origin
                    (at_b_p7)

                    ; #54857: origin
                    (not_at_b_p5)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #54857: origin
                    (not_at_b_p5)

                    ; #55452: origin
                    (at_b_p8)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #54857: origin
                    (not_at_b_p5)

                    ; #24016: <==negation-removal== 54857 (pos)
                    (not (at_b_p5))

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #48843: origin
                    (not_at_b_p6)

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #48843: origin
                    (not_at_b_p6)

                    ; #77693: origin
                    (at_b_p2)

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #48843: origin
                    (not_at_b_p6)

                    ; #80503: origin
                    (at_b_p3)

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #48843: origin
                    (not_at_b_p6)

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #48843: origin
                    (not_at_b_p6)

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #48843: origin
                    (not_at_b_p6)

                    ; #53813: origin
                    (at_b_p6)

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #48843: origin
                    (not_at_b_p6)

                    ; #50284: origin
                    (at_b_p7)

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #48843: origin
                    (not_at_b_p6)

                    ; #55452: origin
                    (at_b_p8)

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #48843: origin
                    (not_at_b_p6)

                    ; #53813: <==negation-removal== 48843 (pos)
                    (not (at_b_p6))

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #62219: origin
                    (not_at_b_p7)

                    ; #77693: origin
                    (at_b_p2)

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3)
                           (not (leader_b)))
        :effect (and
                    ; #62219: origin
                    (not_at_b_p7)

                    ; #80503: origin
                    (at_b_p3)

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #53813: origin
                    (at_b_p6)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50284: origin
                    (at_b_p7)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #55452: origin
                    (at_b_p8)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #62219: origin
                    (not_at_b_p7)

                    ; #50284: <==negation-removal== 62219 (pos)
                    (not (at_b_p7))

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #33198: origin
                    (not_at_b_p8)

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33198: origin
                    (not_at_b_p8)

                    ; #77693: origin
                    (at_b_p2)

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33198: origin
                    (not_at_b_p8)

                    ; #80503: origin
                    (at_b_p3)

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33198: origin
                    (not_at_b_p8)

                    ; #47362: origin
                    (at_b_p4)

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #33198: origin
                    (not_at_b_p8)

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33198: origin
                    (not_at_b_p8)

                    ; #53813: origin
                    (at_b_p6)

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33198: origin
                    (not_at_b_p8)

                    ; #50284: origin
                    (at_b_p7)

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #33198: origin
                    (not_at_b_p8)

                    ; #55452: origin
                    (at_b_p8)

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #33198: origin
                    (not_at_b_p8)

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))

                    ; #55452: <==negation-removal== 33198 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1)
                           (not (leader_b)))
        :effect (and
                    ; #24251: origin
                    (at_b_p1)

                    ; #54364: origin
                    (not_at_b_p9)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #45953: <==negation-removal== 24251 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #54364: origin
                    (not_at_b_p9)

                    ; #77693: origin
                    (at_b_p2)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #75217: <==negation-removal== 77693 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #54364: origin
                    (not_at_b_p9)

                    ; #80503: origin
                    (at_b_p3)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #73317: <==negation-removal== 80503 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #47362: origin
                    (at_b_p4)

                    ; #54364: origin
                    (not_at_b_p9)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #87173: <==negation-removal== 47362 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5)
                           (not (leader_b)))
        :effect (and
                    ; #24016: origin
                    (at_b_p5)

                    ; #54364: origin
                    (not_at_b_p9)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #54857: <==negation-removal== 24016 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6)
                           (not (leader_b)))
        :effect (and
                    ; #53813: origin
                    (at_b_p6)

                    ; #54364: origin
                    (not_at_b_p9)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #48843: <==negation-removal== 53813 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7)
                           (not (leader_b)))
        :effect (and
                    ; #50284: origin
                    (at_b_p7)

                    ; #54364: origin
                    (not_at_b_p9)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #62219: <==negation-removal== 50284 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8)
                           (not (leader_b)))
        :effect (and
                    ; #54364: origin
                    (not_at_b_p9)

                    ; #55452: origin
                    (at_b_p8)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #33198: <==negation-removal== 55452 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #17551: origin
                    (at_b_p9)

                    ; #54364: origin
                    (not_at_b_p9)

                    ; #17551: <==negation-removal== 54364 (pos)
                    (not (at_b_p9))

                    ; #54364: <==negation-removal== 17551 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #62452: origin
                    (at_c_p3)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62277: origin
                    (at_c_p5)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #81585: origin
                    (at_c_p8)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #90075: origin
                    (at_c_p9)

                    ; #91237: origin
                    (not_at_c_p1)

                    ; #23639: <==negation-removal== 91237 (pos)
                    (not (at_c_p1))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #62452: origin
                    (at_c_p3)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #62277: origin
                    (at_c_p5)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #81585: origin
                    (at_c_p8)

                    ; #81595: origin
                    (not_at_c_p2)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9)
                           (not (leader_c)))
        :effect (and
                    ; #81595: origin
                    (not_at_c_p2)

                    ; #90075: origin
                    (at_c_p9)

                    ; #49790: <==negation-removal== 81595 (pos)
                    (not (at_c_p2))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #23639: origin
                    (at_c_p1)

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #49790: origin
                    (at_c_p2)

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #62452: origin
                    (at_c_p3)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #25555: origin
                    (at_c_p4)

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #62277: origin
                    (at_c_p5)

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #48622: origin
                    (at_c_p6)

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #32755: origin
                    (at_c_p7)

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #81585: origin
                    (at_c_p8)

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #22953: origin
                    (not_at_c_p3)

                    ; #90075: origin
                    (at_c_p9)

                    ; #62452: <==negation-removal== 22953 (pos)
                    (not (at_c_p3))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #59126: origin
                    (not_at_c_p4)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #59126: origin
                    (not_at_c_p4)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59126: origin
                    (not_at_c_p4)

                    ; #62452: origin
                    (at_c_p3)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #59126: origin
                    (not_at_c_p4)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5)
                           (not (leader_c)))
        :effect (and
                    ; #59126: origin
                    (not_at_c_p4)

                    ; #62277: origin
                    (at_c_p5)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #59126: origin
                    (not_at_c_p4)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #59126: origin
                    (not_at_c_p4)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8)
                           (not (leader_c)))
        :effect (and
                    ; #59126: origin
                    (not_at_c_p4)

                    ; #81585: origin
                    (at_c_p8)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #59126: origin
                    (not_at_c_p4)

                    ; #90075: origin
                    (at_c_p9)

                    ; #25555: <==negation-removal== 59126 (pos)
                    (not (at_c_p4))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #44166: origin
                    (not_at_c_p5)

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44166: origin
                    (not_at_c_p5)

                    ; #49790: origin
                    (at_c_p2)

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44166: origin
                    (not_at_c_p5)

                    ; #62452: origin
                    (at_c_p3)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #44166: origin
                    (not_at_c_p5)

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44166: origin
                    (not_at_c_p5)

                    ; #62277: origin
                    (at_c_p5)

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44166: origin
                    (not_at_c_p5)

                    ; #48622: origin
                    (at_c_p6)

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #44166: origin
                    (not_at_c_p5)

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44166: origin
                    (not_at_c_p5)

                    ; #81585: origin
                    (at_c_p8)

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #44166: origin
                    (not_at_c_p5)

                    ; #90075: origin
                    (at_c_p9)

                    ; #62277: <==negation-removal== 44166 (pos)
                    (not (at_c_p5))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #62452: origin
                    (at_c_p3)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62277: origin
                    (at_c_p5)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #73918: origin
                    (not_at_c_p6)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #73918: origin
                    (not_at_c_p6)

                    ; #81585: origin
                    (at_c_p8)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #73918: origin
                    (not_at_c_p6)

                    ; #90075: origin
                    (at_c_p9)

                    ; #48622: <==negation-removal== 73918 (pos)
                    (not (at_c_p6))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #52286: origin
                    (not_at_c_p7)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #52286: origin
                    (not_at_c_p7)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #52286: origin
                    (not_at_c_p7)

                    ; #62452: origin
                    (at_c_p3)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #52286: origin
                    (not_at_c_p7)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #52286: origin
                    (not_at_c_p7)

                    ; #62277: origin
                    (at_c_p5)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #52286: origin
                    (not_at_c_p7)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #52286: origin
                    (not_at_c_p7)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #52286: origin
                    (not_at_c_p7)

                    ; #81585: origin
                    (at_c_p8)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #52286: origin
                    (not_at_c_p7)

                    ; #90075: origin
                    (at_c_p9)

                    ; #32755: <==negation-removal== 52286 (pos)
                    (not (at_c_p7))

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #62452: origin
                    (at_c_p3)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62277: origin
                    (at_c_p5)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #81585: origin
                    (at_c_p8)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #90075: origin
                    (at_c_p9)

                    ; #90366: origin
                    (not_at_c_p8)

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))

                    ; #81585: <==negation-removal== 90366 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #23639: origin
                    (at_c_p1)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))

                    ; #91237: <==negation-removal== 23639 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #49790: origin
                    (at_c_p2)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #81595: <==negation-removal== 49790 (pos)
                    (not (not_at_c_p2))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #62452: origin
                    (at_c_p3)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #22953: <==negation-removal== 62452 (pos)
                    (not (not_at_c_p3))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #25555: origin
                    (at_c_p4)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #59126: <==negation-removal== 25555 (pos)
                    (not (not_at_c_p4))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #62277: origin
                    (at_c_p5)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #44166: <==negation-removal== 62277 (pos)
                    (not (not_at_c_p5))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #48622: origin
                    (at_c_p6)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #73918: <==negation-removal== 48622 (pos)
                    (not (not_at_c_p6))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #32755: origin
                    (at_c_p7)

                    ; #64406: origin
                    (not_at_c_p9)

                    ; #52286: <==negation-removal== 32755 (pos)
                    (not (not_at_c_p7))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #64406: origin
                    (not_at_c_p9)

                    ; #81585: origin
                    (at_c_p8)

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))

                    ; #90366: <==negation-removal== 81585 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9)
                           (not (leader_c)))
        :effect (and
                    ; #64406: origin
                    (not_at_c_p9)

                    ; #90075: origin
                    (at_c_p9)

                    ; #64406: <==negation-removal== 90075 (pos)
                    (not (not_at_c_p9))

                    ; #90075: <==negation-removal== 64406 (pos)
                    (not (at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #20026: <==closure== 20789 (pos)
                    (Pa_checked_p1)

                    ; #20789: <==commonly_known== 20879 (pos)
                    (Ba_checked_p1)

                    ; #20879: origin
                    (checked_p1)

                    ; #47904: <==closure== 52707 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #51795: <==commonly_known== 20879 (pos)
                    (Bb_checked_p1)

                    ; #52707: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #54301: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #66802: <==closure== 54301 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #68481: <==closure== 51795 (pos)
                    (Pb_checked_p1)

                    ; #69266: <==closure== 79546 (pos)
                    (Pc_checked_p1)

                    ; #79546: <==commonly_known== 20879 (pos)
                    (Bc_checked_p1)

                    ; #12889: <==negation-removal== 54301 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #18960: <==negation-removal== 52707 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #20633: <==negation-removal== 79546 (pos)
                    (not (Pc_not_checked_p1))

                    ; #34054: <==negation-removal== 47904 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #35098: <==negation-removal== 69266 (pos)
                    (not (Bc_not_checked_p1))

                    ; #42886: <==unclosure== 82418 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #45326: <==unclosure== 78091 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #50976: <==negation-removal== 66802 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58825: <==negation-removal== 68481 (pos)
                    (not (Bb_not_checked_p1))

                    ; #73394: <==negation-removal== 20789 (pos)
                    (not (Pa_not_checked_p1))

                    ; #78091: <==uncertain_firing== 52707 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #78138: <==negation-removal== 20026 (pos)
                    (not (Ba_not_checked_p1))

                    ; #82351: <==negation-removal== 20879 (pos)
                    (not (not_checked_p1))

                    ; #82418: <==uncertain_firing== 54301 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #85607: <==negation-removal== 51795 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #13528: <==closure== 44184 (pos)
                    (Pc_checked_p2)

                    ; #30865: <==closure== 36995 (pos)
                    (Pb_checked_p2)

                    ; #31111: <==closure== 60074 (pos)
                    (Pa_checked_p2)

                    ; #34732: <==closure== 85636 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #36995: <==commonly_known== 71056 (pos)
                    (Bb_checked_p2)

                    ; #44184: <==commonly_known== 71056 (pos)
                    (Bc_checked_p2)

                    ; #48996: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #60074: <==commonly_known== 71056 (pos)
                    (Ba_checked_p2)

                    ; #71056: origin
                    (checked_p2)

                    ; #71315: <==closure== 48996 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #85636: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #16872: <==negation-removal== 34732 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #18988: <==negation-removal== 30865 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20959: <==negation-removal== 36995 (pos)
                    (not (Pb_not_checked_p2))

                    ; #23712: <==negation-removal== 48996 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #25164: <==unclosure== 56421 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #25930: <==negation-removal== 85636 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #26032: <==negation-removal== 60074 (pos)
                    (not (Pa_not_checked_p2))

                    ; #38000: <==unclosure== 49010 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #49010: <==uncertain_firing== 85636 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #53525: <==negation-removal== 71056 (pos)
                    (not (not_checked_p2))

                    ; #56421: <==uncertain_firing== 48996 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #72495: <==negation-removal== 31111 (pos)
                    (not (Ba_not_checked_p2))

                    ; #82771: <==negation-removal== 13528 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89891: <==negation-removal== 44184 (pos)
                    (not (Pc_not_checked_p2))

                    ; #91610: <==negation-removal== 71315 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28859: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #29492: origin
                    (checked_p3)

                    ; #36460: <==closure== 68042 (pos)
                    (Pb_checked_p3)

                    ; #37365: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #40425: <==commonly_known== 29492 (pos)
                    (Bc_checked_p3)

                    ; #53184: <==closure== 40425 (pos)
                    (Pc_checked_p3)

                    ; #54311: <==closure== 28859 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #68042: <==commonly_known== 29492 (pos)
                    (Bb_checked_p3)

                    ; #69421: <==closure== 91901 (pos)
                    (Pa_checked_p3)

                    ; #90192: <==closure== 37365 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #91901: <==commonly_known== 29492 (pos)
                    (Ba_checked_p3)

                    ; #10225: <==negation-removal== 90192 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #16740: <==negation-removal== 54311 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #19139: <==negation-removal== 36460 (pos)
                    (not (Bb_not_checked_p3))

                    ; #21806: <==negation-removal== 37365 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #23680: <==negation-removal== 28859 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #35471: <==unclosure== 90194 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #37220: <==unclosure== 50965 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #39137: <==negation-removal== 91901 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45789: <==negation-removal== 40425 (pos)
                    (not (Pc_not_checked_p3))

                    ; #46054: <==negation-removal== 29492 (pos)
                    (not (not_checked_p3))

                    ; #46596: <==negation-removal== 68042 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50965: <==uncertain_firing== 28859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #54112: <==negation-removal== 69421 (pos)
                    (not (Ba_not_checked_p3))

                    ; #81847: <==negation-removal== 53184 (pos)
                    (not (Bc_not_checked_p3))

                    ; #90194: <==uncertain_firing== 37365 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #15850: <==closure== 25580 (pos)
                    (Pa_checked_p4)

                    ; #25580: <==commonly_known== 30188 (pos)
                    (Ba_checked_p4)

                    ; #28378: <==closure== 81122 (pos)
                    (Pc_checked_p4)

                    ; #29601: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #30188: origin
                    (checked_p4)

                    ; #46170: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #49634: <==commonly_known== 30188 (pos)
                    (Bb_checked_p4)

                    ; #56310: <==closure== 46170 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #81122: <==commonly_known== 30188 (pos)
                    (Bc_checked_p4)

                    ; #86524: <==closure== 49634 (pos)
                    (Pb_checked_p4)

                    ; #88541: <==closure== 29601 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #18693: <==negation-removal== 81122 (pos)
                    (not (Pc_not_checked_p4))

                    ; #25739: <==negation-removal== 88541 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #26010: <==negation-removal== 28378 (pos)
                    (not (Bc_not_checked_p4))

                    ; #27471: <==uncertain_firing== 46170 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #34320: <==negation-removal== 56310 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #58233: <==negation-removal== 46170 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #59872: <==uncertain_firing== 29601 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #61402: <==negation-removal== 86524 (pos)
                    (not (Bb_not_checked_p4))

                    ; #61552: <==unclosure== 59872 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #61995: <==negation-removal== 15850 (pos)
                    (not (Ba_not_checked_p4))

                    ; #67297: <==unclosure== 27471 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #68069: <==negation-removal== 49634 (pos)
                    (not (Pb_not_checked_p4))

                    ; #69026: <==negation-removal== 25580 (pos)
                    (not (Pa_not_checked_p4))

                    ; #78617: <==negation-removal== 29601 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #86347: <==negation-removal== 30188 (pos)
                    (not (not_checked_p4))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #11021: <==closure== 50421 (pos)
                    (Pa_checked_p5)

                    ; #23757: <==closure== 64131 (pos)
                    (Pc_checked_p5)

                    ; #40930: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #50421: <==commonly_known== 73843 (pos)
                    (Ba_checked_p5)

                    ; #60375: <==closure== 40930 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #60781: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #64131: <==commonly_known== 73843 (pos)
                    (Bc_checked_p5)

                    ; #73843: origin
                    (checked_p5)

                    ; #83681: <==commonly_known== 73843 (pos)
                    (Bb_checked_p5)

                    ; #86403: <==closure== 60781 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #87913: <==closure== 83681 (pos)
                    (Pb_checked_p5)

                    ; #23423: <==uncertain_firing== 60781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #24786: <==negation-removal== 50421 (pos)
                    (not (Pa_not_checked_p5))

                    ; #35609: <==unclosure== 23423 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #38285: <==negation-removal== 60781 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #44755: <==negation-removal== 73843 (pos)
                    (not (not_checked_p5))

                    ; #50876: <==negation-removal== 87913 (pos)
                    (not (Bb_not_checked_p5))

                    ; #51773: <==negation-removal== 23757 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56780: <==negation-removal== 86403 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #57637: <==negation-removal== 60375 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #59856: <==negation-removal== 83681 (pos)
                    (not (Pb_not_checked_p5))

                    ; #65673: <==negation-removal== 40930 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #75397: <==unclosure== 85476 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #78936: <==negation-removal== 11021 (pos)
                    (not (Ba_not_checked_p5))

                    ; #85457: <==negation-removal== 64131 (pos)
                    (not (Pc_not_checked_p5))

                    ; #85476: <==uncertain_firing== 40930 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #20632: <==commonly_known== 77126 (pos)
                    (Ba_checked_p6)

                    ; #25977: <==closure== 76612 (pos)
                    (Pb_checked_p6)

                    ; #45128: <==closure== 67452 (pos)
                    (Pc_checked_p6)

                    ; #60788: <==closure== 20632 (pos)
                    (Pa_checked_p6)

                    ; #65358: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #65386: <==closure== 65358 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #67452: <==commonly_known== 77126 (pos)
                    (Bc_checked_p6)

                    ; #67783: <==closure== 88590 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #76612: <==commonly_known== 77126 (pos)
                    (Bb_checked_p6)

                    ; #77126: origin
                    (checked_p6)

                    ; #88590: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #15766: <==negation-removal== 45128 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20155: <==unclosure== 90737 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #21568: <==negation-removal== 65386 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #43331: <==uncertain_firing== 65358 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #45289: <==negation-removal== 67452 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49126: <==negation-removal== 88590 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #49864: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52523: <==negation-removal== 77126 (pos)
                    (not (not_checked_p6))

                    ; #57858: <==negation-removal== 65358 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #61427: <==negation-removal== 60788 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69771: <==negation-removal== 20632 (pos)
                    (not (Pa_not_checked_p6))

                    ; #73227: <==negation-removal== 67783 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #85080: <==negation-removal== 76612 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88825: <==unclosure== 43331 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #90737: <==uncertain_firing== 88590 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #16578: <==commonly_known== 70339 (pos)
                    (Bb_checked_p7)

                    ; #22197: <==commonly_known== 70339 (pos)
                    (Bc_checked_p7)

                    ; #37537: <==commonly_known== 70339 (pos)
                    (Ba_checked_p7)

                    ; #42291: <==closure== 55757 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #55757: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #57957: <==closure== 81375 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #70339: origin
                    (checked_p7)

                    ; #80627: <==closure== 37537 (pos)
                    (Pa_checked_p7)

                    ; #81375: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #90653: <==closure== 22197 (pos)
                    (Pc_checked_p7)

                    ; #91896: <==closure== 16578 (pos)
                    (Pb_checked_p7)

                    ; #17946: <==negation-removal== 16578 (pos)
                    (not (Pb_not_checked_p7))

                    ; #27199: <==uncertain_firing== 81375 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #31791: <==unclosure== 48173 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #34222: <==negation-removal== 57957 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #47004: <==negation-removal== 90653 (pos)
                    (not (Bc_not_checked_p7))

                    ; #48173: <==uncertain_firing== 55757 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49162: <==negation-removal== 42291 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #53569: <==negation-removal== 81375 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #58005: <==negation-removal== 37537 (pos)
                    (not (Pa_not_checked_p7))

                    ; #67021: <==negation-removal== 22197 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69005: <==unclosure== 27199 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #75104: <==negation-removal== 70339 (pos)
                    (not (not_checked_p7))

                    ; #78762: <==negation-removal== 91896 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81483: <==negation-removal== 55757 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91063: <==negation-removal== 80627 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #28583: <==commonly_known== 41453 (pos)
                    (Bc_checked_p8)

                    ; #29359: <==closure== 28583 (pos)
                    (Pc_checked_p8)

                    ; #35381: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #39579: <==commonly_known== 41453 (pos)
                    (Ba_checked_p8)

                    ; #41453: origin
                    (checked_p8)

                    ; #42602: <==closure== 39579 (pos)
                    (Pa_checked_p8)

                    ; #46890: <==closure== 35381 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #58439: <==commonly_known== 41453 (pos)
                    (Bb_checked_p8)

                    ; #59764: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #60664: <==closure== 59764 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #82309: <==closure== 58439 (pos)
                    (Pb_checked_p8)

                    ; #18028: <==negation-removal== 35381 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #19608: <==negation-removal== 28583 (pos)
                    (not (Pc_not_checked_p8))

                    ; #24513: <==uncertain_firing== 59764 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26244: <==negation-removal== 39579 (pos)
                    (not (Pa_not_checked_p8))

                    ; #35561: <==negation-removal== 29359 (pos)
                    (not (Bc_not_checked_p8))

                    ; #42058: <==negation-removal== 46890 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #44634: <==negation-removal== 59764 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #56774: <==negation-removal== 41453 (pos)
                    (not (not_checked_p8))

                    ; #57631: <==negation-removal== 42602 (pos)
                    (not (Ba_not_checked_p8))

                    ; #59936: <==unclosure== 24513 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #61178: <==negation-removal== 82309 (pos)
                    (not (Bb_not_checked_p8))

                    ; #64889: <==negation-removal== 58439 (pos)
                    (not (Pb_not_checked_p8))

                    ; #71728: <==negation-removal== 60664 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #76823: <==unclosure== 77137 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #77137: <==uncertain_firing== 35381 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #12302: <==closure== 52428 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #13582: <==closure== 76626 (pos)
                    (Pc_checked_p9)

                    ; #18594: origin
                    (checked_p9)

                    ; #49742: <==commonly_known== 18594 (pos)
                    (Bb_checked_p9)

                    ; #52428: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #69594: <==closure== 86591 (pos)
                    (Pa_checked_p9)

                    ; #76626: <==commonly_known== 18594 (pos)
                    (Bc_checked_p9)

                    ; #77698: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #80954: <==closure== 49742 (pos)
                    (Pb_checked_p9)

                    ; #84751: <==closure== 77698 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #86591: <==commonly_known== 18594 (pos)
                    (Ba_checked_p9)

                    ; #10313: <==negation-removal== 18594 (pos)
                    (not (not_checked_p9))

                    ; #17969: <==uncertain_firing== 52428 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #25049: <==unclosure== 17969 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #28244: <==negation-removal== 52428 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35221: <==negation-removal== 12302 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #38387: <==negation-removal== 84751 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #44405: <==negation-removal== 80954 (pos)
                    (not (Bb_not_checked_p9))

                    ; #49870: <==negation-removal== 69594 (pos)
                    (not (Ba_not_checked_p9))

                    ; #50075: <==uncertain_firing== 77698 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #52221: <==unclosure== 50075 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #65477: <==negation-removal== 77698 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #77495: <==negation-removal== 13582 (pos)
                    (not (Bc_not_checked_p9))

                    ; #81531: <==negation-removal== 76626 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91819: <==negation-removal== 86591 (pos)
                    (not (Pa_not_checked_p9))

                    ; #92216: <==negation-removal== 49742 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #20026: <==closure== 20789 (pos)
                    (Pa_checked_p1)

                    ; #20789: <==commonly_known== 20879 (pos)
                    (Ba_checked_p1)

                    ; #20879: origin
                    (checked_p1)

                    ; #41336: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #51795: <==commonly_known== 20879 (pos)
                    (Bb_checked_p1)

                    ; #60227: <==closure== 41336 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #65488: <==closure== 88551 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #68481: <==closure== 51795 (pos)
                    (Pb_checked_p1)

                    ; #69266: <==closure== 79546 (pos)
                    (Pc_checked_p1)

                    ; #79546: <==commonly_known== 20879 (pos)
                    (Bc_checked_p1)

                    ; #88551: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #10352: <==negation-removal== 65488 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #13605: <==uncertain_firing== 88551 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #15890: <==unclosure== 81661 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #20633: <==negation-removal== 79546 (pos)
                    (not (Pc_not_checked_p1))

                    ; #35098: <==negation-removal== 69266 (pos)
                    (not (Bc_not_checked_p1))

                    ; #45298: <==negation-removal== 88551 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #58825: <==negation-removal== 68481 (pos)
                    (not (Bb_not_checked_p1))

                    ; #65979: <==unclosure== 13605 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #72381: <==negation-removal== 60227 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #73394: <==negation-removal== 20789 (pos)
                    (not (Pa_not_checked_p1))

                    ; #78138: <==negation-removal== 20026 (pos)
                    (not (Ba_not_checked_p1))

                    ; #81661: <==uncertain_firing== 41336 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #82351: <==negation-removal== 20879 (pos)
                    (not (not_checked_p1))

                    ; #85607: <==negation-removal== 51795 (pos)
                    (not (Pb_not_checked_p1))

                    ; #91150: <==negation-removal== 41336 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #13528: <==closure== 44184 (pos)
                    (Pc_checked_p2)

                    ; #28290: <==closure== 50730 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #30865: <==closure== 36995 (pos)
                    (Pb_checked_p2)

                    ; #31111: <==closure== 60074 (pos)
                    (Pa_checked_p2)

                    ; #36995: <==commonly_known== 71056 (pos)
                    (Bb_checked_p2)

                    ; #44184: <==commonly_known== 71056 (pos)
                    (Bc_checked_p2)

                    ; #50730: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #60074: <==commonly_known== 71056 (pos)
                    (Ba_checked_p2)

                    ; #71056: origin
                    (checked_p2)

                    ; #85117: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #88891: <==closure== 85117 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #10153: <==unclosure== 64465 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #16202: <==negation-removal== 88891 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #18988: <==negation-removal== 30865 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20959: <==negation-removal== 36995 (pos)
                    (not (Pb_not_checked_p2))

                    ; #21494: <==uncertain_firing== 50730 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #26032: <==negation-removal== 60074 (pos)
                    (not (Pa_not_checked_p2))

                    ; #32328: <==negation-removal== 85117 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #34455: <==negation-removal== 50730 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #48702: <==negation-removal== 28290 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #53525: <==negation-removal== 71056 (pos)
                    (not (not_checked_p2))

                    ; #57897: <==unclosure== 21494 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64465: <==uncertain_firing== 85117 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #72495: <==negation-removal== 31111 (pos)
                    (not (Ba_not_checked_p2))

                    ; #82771: <==negation-removal== 13528 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89891: <==negation-removal== 44184 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #26693: <==closure== 83850 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #29492: origin
                    (checked_p3)

                    ; #36460: <==closure== 68042 (pos)
                    (Pb_checked_p3)

                    ; #39118: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #40425: <==commonly_known== 29492 (pos)
                    (Bc_checked_p3)

                    ; #53184: <==closure== 40425 (pos)
                    (Pc_checked_p3)

                    ; #68042: <==commonly_known== 29492 (pos)
                    (Bb_checked_p3)

                    ; #69421: <==closure== 91901 (pos)
                    (Pa_checked_p3)

                    ; #83850: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #91662: <==closure== 39118 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #91901: <==commonly_known== 29492 (pos)
                    (Ba_checked_p3)

                    ; #19139: <==negation-removal== 36460 (pos)
                    (not (Bb_not_checked_p3))

                    ; #26028: <==uncertain_firing== 83850 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #29189: <==negation-removal== 39118 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #39137: <==negation-removal== 91901 (pos)
                    (not (Pa_not_checked_p3))

                    ; #45789: <==negation-removal== 40425 (pos)
                    (not (Pc_not_checked_p3))

                    ; #46054: <==negation-removal== 29492 (pos)
                    (not (not_checked_p3))

                    ; #46596: <==negation-removal== 68042 (pos)
                    (not (Pb_not_checked_p3))

                    ; #47704: <==unclosure== 26028 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #54112: <==negation-removal== 69421 (pos)
                    (not (Ba_not_checked_p3))

                    ; #63018: <==unclosure== 84692 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #74196: <==negation-removal== 26693 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #81847: <==negation-removal== 53184 (pos)
                    (not (Bc_not_checked_p3))

                    ; #84692: <==uncertain_firing== 39118 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #87485: <==negation-removal== 83850 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #87832: <==negation-removal== 91662 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #15850: <==closure== 25580 (pos)
                    (Pa_checked_p4)

                    ; #25580: <==commonly_known== 30188 (pos)
                    (Ba_checked_p4)

                    ; #28378: <==closure== 81122 (pos)
                    (Pc_checked_p4)

                    ; #30188: origin
                    (checked_p4)

                    ; #45675: <==closure== 87391 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #49634: <==commonly_known== 30188 (pos)
                    (Bb_checked_p4)

                    ; #61132: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #70793: <==closure== 61132 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #81122: <==commonly_known== 30188 (pos)
                    (Bc_checked_p4)

                    ; #86524: <==closure== 49634 (pos)
                    (Pb_checked_p4)

                    ; #87391: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #11619: <==uncertain_firing== 61132 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #14235: <==negation-removal== 61132 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #18693: <==negation-removal== 81122 (pos)
                    (not (Pc_not_checked_p4))

                    ; #19228: <==uncertain_firing== 87391 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #26010: <==negation-removal== 28378 (pos)
                    (not (Bc_not_checked_p4))

                    ; #33636: <==unclosure== 19228 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #43127: <==negation-removal== 87391 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #61402: <==negation-removal== 86524 (pos)
                    (not (Bb_not_checked_p4))

                    ; #61995: <==negation-removal== 15850 (pos)
                    (not (Ba_not_checked_p4))

                    ; #64352: <==negation-removal== 45675 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #67423: <==negation-removal== 70793 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #68069: <==negation-removal== 49634 (pos)
                    (not (Pb_not_checked_p4))

                    ; #69026: <==negation-removal== 25580 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71150: <==unclosure== 11619 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #86347: <==negation-removal== 30188 (pos)
                    (not (not_checked_p4))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #11021: <==closure== 50421 (pos)
                    (Pa_checked_p5)

                    ; #16362: <==closure== 19906 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #19906: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #23757: <==closure== 64131 (pos)
                    (Pc_checked_p5)

                    ; #50421: <==commonly_known== 73843 (pos)
                    (Ba_checked_p5)

                    ; #64131: <==commonly_known== 73843 (pos)
                    (Bc_checked_p5)

                    ; #69102: <==closure== 83114 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #73843: origin
                    (checked_p5)

                    ; #83114: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #83681: <==commonly_known== 73843 (pos)
                    (Bb_checked_p5)

                    ; #87913: <==closure== 83681 (pos)
                    (Pb_checked_p5)

                    ; #11611: <==uncertain_firing== 83114 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #13341: <==negation-removal== 69102 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #19763: <==negation-removal== 83114 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #24786: <==negation-removal== 50421 (pos)
                    (not (Pa_not_checked_p5))

                    ; #35474: <==unclosure== 11611 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #44755: <==negation-removal== 73843 (pos)
                    (not (not_checked_p5))

                    ; #50876: <==negation-removal== 87913 (pos)
                    (not (Bb_not_checked_p5))

                    ; #51773: <==negation-removal== 23757 (pos)
                    (not (Bc_not_checked_p5))

                    ; #52020: <==negation-removal== 19906 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #59856: <==negation-removal== 83681 (pos)
                    (not (Pb_not_checked_p5))

                    ; #76893: <==unclosure== 83827 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #77320: <==negation-removal== 16362 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #78936: <==negation-removal== 11021 (pos)
                    (not (Ba_not_checked_p5))

                    ; #83827: <==uncertain_firing== 19906 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #85457: <==negation-removal== 64131 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #20632: <==commonly_known== 77126 (pos)
                    (Ba_checked_p6)

                    ; #21125: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #25977: <==closure== 76612 (pos)
                    (Pb_checked_p6)

                    ; #45030: <==closure== 21125 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #45128: <==closure== 67452 (pos)
                    (Pc_checked_p6)

                    ; #52746: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #60788: <==closure== 20632 (pos)
                    (Pa_checked_p6)

                    ; #67452: <==commonly_known== 77126 (pos)
                    (Bc_checked_p6)

                    ; #75539: <==closure== 52746 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #76612: <==commonly_known== 77126 (pos)
                    (Bb_checked_p6)

                    ; #77126: origin
                    (checked_p6)

                    ; #15766: <==negation-removal== 45128 (pos)
                    (not (Bc_not_checked_p6))

                    ; #22460: <==negation-removal== 45030 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #25528: <==unclosure== 50711 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #32431: <==unclosure== 38504 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #38504: <==uncertain_firing== 21125 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #44984: <==negation-removal== 21125 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #45289: <==negation-removal== 67452 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49864: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p6))

                    ; #50711: <==uncertain_firing== 52746 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #52442: <==negation-removal== 75539 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #52523: <==negation-removal== 77126 (pos)
                    (not (not_checked_p6))

                    ; #57821: <==negation-removal== 52746 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #61427: <==negation-removal== 60788 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69771: <==negation-removal== 20632 (pos)
                    (not (Pa_not_checked_p6))

                    ; #85080: <==negation-removal== 76612 (pos)
                    (not (Pb_not_checked_p6))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12122: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #16578: <==commonly_known== 70339 (pos)
                    (Bb_checked_p7)

                    ; #22197: <==commonly_known== 70339 (pos)
                    (Bc_checked_p7)

                    ; #25582: <==closure== 12122 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #37537: <==commonly_known== 70339 (pos)
                    (Ba_checked_p7)

                    ; #45493: <==closure== 61289 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #61289: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #70339: origin
                    (checked_p7)

                    ; #80627: <==closure== 37537 (pos)
                    (Pa_checked_p7)

                    ; #90653: <==closure== 22197 (pos)
                    (Pc_checked_p7)

                    ; #91896: <==closure== 16578 (pos)
                    (Pb_checked_p7)

                    ; #10674: <==negation-removal== 61289 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #11684: <==unclosure== 74251 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #17946: <==negation-removal== 16578 (pos)
                    (not (Pb_not_checked_p7))

                    ; #19089: <==negation-removal== 12122 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #47004: <==negation-removal== 90653 (pos)
                    (not (Bc_not_checked_p7))

                    ; #57650: <==unclosure== 69039 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #58005: <==negation-removal== 37537 (pos)
                    (not (Pa_not_checked_p7))

                    ; #67021: <==negation-removal== 22197 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69039: <==uncertain_firing== 61289 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #74251: <==uncertain_firing== 12122 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #75104: <==negation-removal== 70339 (pos)
                    (not (not_checked_p7))

                    ; #78367: <==negation-removal== 25582 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #78762: <==negation-removal== 91896 (pos)
                    (not (Bb_not_checked_p7))

                    ; #87851: <==negation-removal== 45493 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #91063: <==negation-removal== 80627 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #23869: <==closure== 58227 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #28583: <==commonly_known== 41453 (pos)
                    (Bc_checked_p8)

                    ; #29359: <==closure== 28583 (pos)
                    (Pc_checked_p8)

                    ; #35624: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #39579: <==commonly_known== 41453 (pos)
                    (Ba_checked_p8)

                    ; #41453: origin
                    (checked_p8)

                    ; #42602: <==closure== 39579 (pos)
                    (Pa_checked_p8)

                    ; #58227: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #58439: <==commonly_known== 41453 (pos)
                    (Bb_checked_p8)

                    ; #68199: <==closure== 35624 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #82309: <==closure== 58439 (pos)
                    (Pb_checked_p8)

                    ; #19608: <==negation-removal== 28583 (pos)
                    (not (Pc_not_checked_p8))

                    ; #26244: <==negation-removal== 39579 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26469: <==negation-removal== 68199 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #35561: <==negation-removal== 29359 (pos)
                    (not (Bc_not_checked_p8))

                    ; #43332: <==negation-removal== 58227 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #47538: <==negation-removal== 23869 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #49591: <==unclosure== 55550 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #55550: <==uncertain_firing== 58227 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #56097: <==unclosure== 69156 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #56774: <==negation-removal== 41453 (pos)
                    (not (not_checked_p8))

                    ; #57631: <==negation-removal== 42602 (pos)
                    (not (Ba_not_checked_p8))

                    ; #61178: <==negation-removal== 82309 (pos)
                    (not (Bb_not_checked_p8))

                    ; #64889: <==negation-removal== 58439 (pos)
                    (not (Pb_not_checked_p8))

                    ; #69156: <==uncertain_firing== 35624 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71513: <==negation-removal== 35624 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #13582: <==closure== 76626 (pos)
                    (Pc_checked_p9)

                    ; #18594: origin
                    (checked_p9)

                    ; #19308: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #41827: <==closure== 69172 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #49742: <==commonly_known== 18594 (pos)
                    (Bb_checked_p9)

                    ; #55903: <==closure== 19308 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #69172: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #69594: <==closure== 86591 (pos)
                    (Pa_checked_p9)

                    ; #76626: <==commonly_known== 18594 (pos)
                    (Bc_checked_p9)

                    ; #80954: <==closure== 49742 (pos)
                    (Pb_checked_p9)

                    ; #86591: <==commonly_known== 18594 (pos)
                    (Ba_checked_p9)

                    ; #10313: <==negation-removal== 18594 (pos)
                    (not (not_checked_p9))

                    ; #18779: <==unclosure== 37369 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #18792: <==negation-removal== 19308 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #37369: <==uncertain_firing== 19308 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #41603: <==negation-removal== 55903 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #44405: <==negation-removal== 80954 (pos)
                    (not (Bb_not_checked_p9))

                    ; #44442: <==unclosure== 53581 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #48792: <==negation-removal== 41827 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #49870: <==negation-removal== 69594 (pos)
                    (not (Ba_not_checked_p9))

                    ; #53581: <==uncertain_firing== 69172 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #77495: <==negation-removal== 13582 (pos)
                    (not (Bc_not_checked_p9))

                    ; #79308: <==negation-removal== 69172 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #81531: <==negation-removal== 76626 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91819: <==negation-removal== 86591 (pos)
                    (not (Pa_not_checked_p9))

                    ; #92216: <==negation-removal== 49742 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #14792: <==closure== 21425 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #20026: <==closure== 20789 (pos)
                    (Pa_checked_p1)

                    ; #20789: <==commonly_known== 20879 (pos)
                    (Ba_checked_p1)

                    ; #20879: origin
                    (checked_p1)

                    ; #21425: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #51795: <==commonly_known== 20879 (pos)
                    (Bb_checked_p1)

                    ; #65159: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #68481: <==closure== 51795 (pos)
                    (Pb_checked_p1)

                    ; #69266: <==closure== 79546 (pos)
                    (Pc_checked_p1)

                    ; #70488: <==closure== 65159 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #79546: <==commonly_known== 20879 (pos)
                    (Bc_checked_p1)

                    ; #13242: <==negation-removal== 21425 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #20633: <==negation-removal== 79546 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24353: <==negation-removal== 65159 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #34068: <==unclosure== 52080 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35098: <==negation-removal== 69266 (pos)
                    (not (Bc_not_checked_p1))

                    ; #52080: <==uncertain_firing== 65159 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #54543: <==uncertain_firing== 21425 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #58825: <==negation-removal== 68481 (pos)
                    (not (Bb_not_checked_p1))

                    ; #66185: <==negation-removal== 70488 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73394: <==negation-removal== 20789 (pos)
                    (not (Pa_not_checked_p1))

                    ; #74385: <==negation-removal== 14792 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #78138: <==negation-removal== 20026 (pos)
                    (not (Ba_not_checked_p1))

                    ; #82351: <==negation-removal== 20879 (pos)
                    (not (not_checked_p1))

                    ; #85607: <==negation-removal== 51795 (pos)
                    (not (Pb_not_checked_p1))

                    ; #91450: <==unclosure== 54543 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13528: <==closure== 44184 (pos)
                    (Pc_checked_p2)

                    ; #17062: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #30865: <==closure== 36995 (pos)
                    (Pb_checked_p2)

                    ; #31111: <==closure== 60074 (pos)
                    (Pa_checked_p2)

                    ; #36995: <==commonly_known== 71056 (pos)
                    (Bb_checked_p2)

                    ; #44184: <==commonly_known== 71056 (pos)
                    (Bc_checked_p2)

                    ; #52202: <==closure== 17062 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #60074: <==commonly_known== 71056 (pos)
                    (Ba_checked_p2)

                    ; #71056: origin
                    (checked_p2)

                    ; #73197: <==closure== 82480 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #82480: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #18988: <==negation-removal== 30865 (pos)
                    (not (Bb_not_checked_p2))

                    ; #20959: <==negation-removal== 36995 (pos)
                    (not (Pb_not_checked_p2))

                    ; #26032: <==negation-removal== 60074 (pos)
                    (not (Pa_not_checked_p2))

                    ; #41660: <==negation-removal== 17062 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #49431: <==negation-removal== 52202 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #53525: <==negation-removal== 71056 (pos)
                    (not (not_checked_p2))

                    ; #55727: <==negation-removal== 82480 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #60314: <==uncertain_firing== 82480 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #65719: <==uncertain_firing== 17062 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #72495: <==negation-removal== 31111 (pos)
                    (not (Ba_not_checked_p2))

                    ; #76950: <==negation-removal== 73197 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #79394: <==unclosure== 65719 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #80374: <==unclosure== 60314 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #82771: <==negation-removal== 13528 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89891: <==negation-removal== 44184 (pos)
                    (not (Pc_not_checked_p2))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #12721: <==closure== 58298 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #21486: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #29492: origin
                    (checked_p3)

                    ; #36460: <==closure== 68042 (pos)
                    (Pb_checked_p3)

                    ; #40425: <==commonly_known== 29492 (pos)
                    (Bc_checked_p3)

                    ; #53184: <==closure== 40425 (pos)
                    (Pc_checked_p3)

                    ; #58298: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #68042: <==commonly_known== 29492 (pos)
                    (Bb_checked_p3)

                    ; #69421: <==closure== 91901 (pos)
                    (Pa_checked_p3)

                    ; #91414: <==closure== 21486 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #91901: <==commonly_known== 29492 (pos)
                    (Ba_checked_p3)

                    ; #18450: <==negation-removal== 58298 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #19139: <==negation-removal== 36460 (pos)
                    (not (Bb_not_checked_p3))

                    ; #28027: <==negation-removal== 12721 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #39137: <==negation-removal== 91901 (pos)
                    (not (Pa_not_checked_p3))

                    ; #41175: <==negation-removal== 91414 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #42265: <==uncertain_firing== 21486 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #45789: <==negation-removal== 40425 (pos)
                    (not (Pc_not_checked_p3))

                    ; #46054: <==negation-removal== 29492 (pos)
                    (not (not_checked_p3))

                    ; #46596: <==negation-removal== 68042 (pos)
                    (not (Pb_not_checked_p3))

                    ; #53101: <==negation-removal== 21486 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #54112: <==negation-removal== 69421 (pos)
                    (not (Ba_not_checked_p3))

                    ; #55992: <==uncertain_firing== 58298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #57142: <==unclosure== 42265 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #81847: <==negation-removal== 53184 (pos)
                    (not (Bc_not_checked_p3))

                    ; #98356: <==unclosure== 55992 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #15850: <==closure== 25580 (pos)
                    (Pa_checked_p4)

                    ; #25580: <==commonly_known== 30188 (pos)
                    (Ba_checked_p4)

                    ; #28378: <==closure== 81122 (pos)
                    (Pc_checked_p4)

                    ; #30188: origin
                    (checked_p4)

                    ; #34427: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #49634: <==commonly_known== 30188 (pos)
                    (Bb_checked_p4)

                    ; #54089: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #81122: <==commonly_known== 30188 (pos)
                    (Bc_checked_p4)

                    ; #85862: <==closure== 34427 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #86524: <==closure== 49634 (pos)
                    (Pb_checked_p4)

                    ; #91365: <==closure== 54089 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #18693: <==negation-removal== 81122 (pos)
                    (not (Pc_not_checked_p4))

                    ; #26010: <==negation-removal== 28378 (pos)
                    (not (Bc_not_checked_p4))

                    ; #43196: <==negation-removal== 54089 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #47887: <==negation-removal== 85862 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #53135: <==unclosure== 64396 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #54530: <==uncertain_firing== 34427 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #61402: <==negation-removal== 86524 (pos)
                    (not (Bb_not_checked_p4))

                    ; #61995: <==negation-removal== 15850 (pos)
                    (not (Ba_not_checked_p4))

                    ; #64396: <==uncertain_firing== 54089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #68069: <==negation-removal== 49634 (pos)
                    (not (Pb_not_checked_p4))

                    ; #69026: <==negation-removal== 25580 (pos)
                    (not (Pa_not_checked_p4))

                    ; #71565: <==negation-removal== 34427 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #71736: <==negation-removal== 91365 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #86347: <==negation-removal== 30188 (pos)
                    (not (not_checked_p4))

                    ; #88975: <==unclosure== 54530 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #11021: <==closure== 50421 (pos)
                    (Pa_checked_p5)

                    ; #23757: <==closure== 64131 (pos)
                    (Pc_checked_p5)

                    ; #45757: <==closure== 77503 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #50421: <==commonly_known== 73843 (pos)
                    (Ba_checked_p5)

                    ; #56213: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #64131: <==commonly_known== 73843 (pos)
                    (Bc_checked_p5)

                    ; #73843: origin
                    (checked_p5)

                    ; #77503: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #83681: <==commonly_known== 73843 (pos)
                    (Bb_checked_p5)

                    ; #84950: <==closure== 56213 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #87913: <==closure== 83681 (pos)
                    (Pb_checked_p5)

                    ; #24786: <==negation-removal== 50421 (pos)
                    (not (Pa_not_checked_p5))

                    ; #28997: <==unclosure== 56773 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #44755: <==negation-removal== 73843 (pos)
                    (not (not_checked_p5))

                    ; #47612: <==unclosure== 55207 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #50876: <==negation-removal== 87913 (pos)
                    (not (Bb_not_checked_p5))

                    ; #51773: <==negation-removal== 23757 (pos)
                    (not (Bc_not_checked_p5))

                    ; #55207: <==uncertain_firing== 56213 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #56773: <==uncertain_firing== 77503 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #59856: <==negation-removal== 83681 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74825: <==negation-removal== 56213 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #78936: <==negation-removal== 11021 (pos)
                    (not (Ba_not_checked_p5))

                    ; #79183: <==negation-removal== 45757 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #81815: <==negation-removal== 77503 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #85457: <==negation-removal== 64131 (pos)
                    (not (Pc_not_checked_p5))

                    ; #86489: <==negation-removal== 84950 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #20632: <==commonly_known== 77126 (pos)
                    (Ba_checked_p6)

                    ; #25977: <==closure== 76612 (pos)
                    (Pb_checked_p6)

                    ; #43033: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #45128: <==closure== 67452 (pos)
                    (Pc_checked_p6)

                    ; #46916: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #60788: <==closure== 20632 (pos)
                    (Pa_checked_p6)

                    ; #67452: <==commonly_known== 77126 (pos)
                    (Bc_checked_p6)

                    ; #76612: <==commonly_known== 77126 (pos)
                    (Bb_checked_p6)

                    ; #77126: origin
                    (checked_p6)

                    ; #84452: <==closure== 46916 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #91869: <==closure== 43033 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #13411: <==negation-removal== 84452 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #15766: <==negation-removal== 45128 (pos)
                    (not (Bc_not_checked_p6))

                    ; #19350: <==unclosure== 88146 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #22434: <==negation-removal== 43033 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #26702: <==unclosure== 59207 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #39764: <==negation-removal== 46916 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #45289: <==negation-removal== 67452 (pos)
                    (not (Pc_not_checked_p6))

                    ; #49864: <==negation-removal== 25977 (pos)
                    (not (Bb_not_checked_p6))

                    ; #52523: <==negation-removal== 77126 (pos)
                    (not (not_checked_p6))

                    ; #59207: <==uncertain_firing== 46916 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #61427: <==negation-removal== 60788 (pos)
                    (not (Ba_not_checked_p6))

                    ; #67065: <==negation-removal== 91869 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #69771: <==negation-removal== 20632 (pos)
                    (not (Pa_not_checked_p6))

                    ; #85080: <==negation-removal== 76612 (pos)
                    (not (Pb_not_checked_p6))

                    ; #88146: <==uncertain_firing== 43033 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #16578: <==commonly_known== 70339 (pos)
                    (Bb_checked_p7)

                    ; #22197: <==commonly_known== 70339 (pos)
                    (Bc_checked_p7)

                    ; #31495: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #37537: <==commonly_known== 70339 (pos)
                    (Ba_checked_p7)

                    ; #45985: <==closure== 31495 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #62624: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #70339: origin
                    (checked_p7)

                    ; #80627: <==closure== 37537 (pos)
                    (Pa_checked_p7)

                    ; #87385: <==closure== 62624 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #90653: <==closure== 22197 (pos)
                    (Pc_checked_p7)

                    ; #91896: <==closure== 16578 (pos)
                    (Pb_checked_p7)

                    ; #17946: <==negation-removal== 16578 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31847: <==negation-removal== 87385 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #47004: <==negation-removal== 90653 (pos)
                    (not (Bc_not_checked_p7))

                    ; #50714: <==uncertain_firing== 31495 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56506: <==negation-removal== 62624 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #58005: <==negation-removal== 37537 (pos)
                    (not (Pa_not_checked_p7))

                    ; #67021: <==negation-removal== 22197 (pos)
                    (not (Pc_not_checked_p7))

                    ; #71607: <==negation-removal== 45985 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #74492: <==unclosure== 50714 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #75104: <==negation-removal== 70339 (pos)
                    (not (not_checked_p7))

                    ; #76809: <==uncertain_firing== 62624 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #78762: <==negation-removal== 91896 (pos)
                    (not (Bb_not_checked_p7))

                    ; #86071: <==negation-removal== 31495 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #91063: <==negation-removal== 80627 (pos)
                    (not (Ba_not_checked_p7))

                    ; #91500: <==unclosure== 76809 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #28583: <==commonly_known== 41453 (pos)
                    (Bc_checked_p8)

                    ; #29359: <==closure== 28583 (pos)
                    (Pc_checked_p8)

                    ; #35131: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #39579: <==commonly_known== 41453 (pos)
                    (Ba_checked_p8)

                    ; #41453: origin
                    (checked_p8)

                    ; #42602: <==closure== 39579 (pos)
                    (Pa_checked_p8)

                    ; #44677: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #58439: <==commonly_known== 41453 (pos)
                    (Bb_checked_p8)

                    ; #74598: <==closure== 35131 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #81310: <==closure== 44677 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #82309: <==closure== 58439 (pos)
                    (Pb_checked_p8)

                    ; #14439: <==negation-removal== 74598 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #19608: <==negation-removal== 28583 (pos)
                    (not (Pc_not_checked_p8))

                    ; #26244: <==negation-removal== 39579 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33213: <==unclosure== 35679 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #35561: <==negation-removal== 29359 (pos)
                    (not (Bc_not_checked_p8))

                    ; #35679: <==uncertain_firing== 44677 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #50090: <==unclosure== 85713 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #56774: <==negation-removal== 41453 (pos)
                    (not (not_checked_p8))

                    ; #57631: <==negation-removal== 42602 (pos)
                    (not (Ba_not_checked_p8))

                    ; #60804: <==negation-removal== 44677 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #61178: <==negation-removal== 82309 (pos)
                    (not (Bb_not_checked_p8))

                    ; #64227: <==negation-removal== 35131 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #64889: <==negation-removal== 58439 (pos)
                    (not (Pb_not_checked_p8))

                    ; #85713: <==uncertain_firing== 35131 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #95437: <==negation-removal== 81310 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13582: <==closure== 76626 (pos)
                    (Pc_checked_p9)

                    ; #18594: origin
                    (checked_p9)

                    ; #23626: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #49742: <==commonly_known== 18594 (pos)
                    (Bb_checked_p9)

                    ; #56564: <==closure== 23626 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #57624: <==closure== 76403 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #69594: <==closure== 86591 (pos)
                    (Pa_checked_p9)

                    ; #76403: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #76626: <==commonly_known== 18594 (pos)
                    (Bc_checked_p9)

                    ; #80954: <==closure== 49742 (pos)
                    (Pb_checked_p9)

                    ; #86591: <==commonly_known== 18594 (pos)
                    (Ba_checked_p9)

                    ; #10313: <==negation-removal== 18594 (pos)
                    (not (not_checked_p9))

                    ; #22647: <==unclosure== 60738 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #24904: <==unclosure== 59413 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #44405: <==negation-removal== 80954 (pos)
                    (not (Bb_not_checked_p9))

                    ; #49870: <==negation-removal== 69594 (pos)
                    (not (Ba_not_checked_p9))

                    ; #59413: <==uncertain_firing== 23626 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #60738: <==uncertain_firing== 76403 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #60840: <==negation-removal== 76403 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #66380: <==negation-removal== 57624 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #69059: <==negation-removal== 23626 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #70079: <==negation-removal== 56564 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #77495: <==negation-removal== 13582 (pos)
                    (not (Bc_not_checked_p9))

                    ; #81531: <==negation-removal== 76626 (pos)
                    (not (Pc_not_checked_p9))

                    ; #91819: <==negation-removal== 86591 (pos)
                    (not (Pa_not_checked_p9))

                    ; #92216: <==negation-removal== 49742 (pos)
                    (not (Pb_not_checked_p9))))

)