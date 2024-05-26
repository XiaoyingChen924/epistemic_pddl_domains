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

    (:action comm_p1_a_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (leader_a)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #20088: <==closure== 78606 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78606: origin
                    (Ba_survivorat_s_p1)

                    ; #48751: <==negation-removal== 20088 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #51374: <==negation-removal== 78606 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_a_b_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #37351: <==closure== 74027 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74027: origin
                    (Bb_survivorat_s_p1)

                    ; #23938: <==negation-removal== 74027 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70232: <==negation-removal== 37351 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_a_c_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (leader_c))
        :effect (and
                    ; #27897: origin
                    (Bc_survivorat_s_p1)

                    ; #52740: <==closure== 27897 (pos)
                    (Pc_survivorat_s_p1)

                    ; #13333: <==negation-removal== 52740 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44748: <==negation-removal== 27897 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_b_a_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_a)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #20088: <==closure== 78606 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78606: origin
                    (Ba_survivorat_s_p1)

                    ; #48751: <==negation-removal== 20088 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #51374: <==negation-removal== 78606 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (leader_b))
        :effect (and
                    ; #37351: <==closure== 74027 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74027: origin
                    (Bb_survivorat_s_p1)

                    ; #23938: <==negation-removal== 74027 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70232: <==negation-removal== 37351 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_c_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (leader_c)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #27897: origin
                    (Bc_survivorat_s_p1)

                    ; #52740: <==closure== 27897 (pos)
                    (Pc_survivorat_s_p1)

                    ; #13333: <==negation-removal== 52740 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44748: <==negation-removal== 27897 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p1_c_a_s
        :precondition (and (at_c_p1)
                           (leader_a)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #20088: <==closure== 78606 (pos)
                    (Pa_survivorat_s_p1)

                    ; #78606: origin
                    (Ba_survivorat_s_p1)

                    ; #48751: <==negation-removal== 20088 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #51374: <==negation-removal== 78606 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_b_s
        :precondition (and (at_c_p1)
                           (leader_b)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #37351: <==closure== 74027 (pos)
                    (Pb_survivorat_s_p1)

                    ; #74027: origin
                    (Bb_survivorat_s_p1)

                    ; #23938: <==negation-removal== 74027 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #70232: <==negation-removal== 37351 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_c_s
        :precondition (and (at_c_p1)
                           (leader_c)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #27897: origin
                    (Bc_survivorat_s_p1)

                    ; #52740: <==closure== 27897 (pos)
                    (Pc_survivorat_s_p1)

                    ; #13333: <==negation-removal== 52740 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #44748: <==negation-removal== 27897 (pos)
                    (not (Pc_not_survivorat_s_p1))))

    (:action comm_p2_a_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_a)
                           (at_a_p2))
        :effect (and
                    ; #34986: <==closure== 48182 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48182: origin
                    (Ba_survivorat_s_p2)

                    ; #13835: <==negation-removal== 48182 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65333: <==negation-removal== 34986 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_a_b_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_b)
                           (at_a_p2))
        :effect (and
                    ; #15325: <==closure== 34337 (pos)
                    (Pb_survivorat_s_p2)

                    ; #34337: origin
                    (Bb_survivorat_s_p2)

                    ; #47272: <==negation-removal== 15325 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #81778: <==negation-removal== 34337 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_a_c_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (leader_c)
                           (at_a_p2))
        :effect (and
                    ; #26548: origin
                    (Bc_survivorat_s_p2)

                    ; #65405: <==closure== 26548 (pos)
                    (Pc_survivorat_s_p2)

                    ; #11801: <==negation-removal== 26548 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #25590: <==negation-removal== 65405 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_a_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_a)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #34986: <==closure== 48182 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48182: origin
                    (Ba_survivorat_s_p2)

                    ; #13835: <==negation-removal== 48182 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65333: <==negation-removal== 34986 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_b_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (leader_b)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #15325: <==closure== 34337 (pos)
                    (Pb_survivorat_s_p2)

                    ; #34337: origin
                    (Bb_survivorat_s_p2)

                    ; #47272: <==negation-removal== 15325 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #81778: <==negation-removal== 34337 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #26548: origin
                    (Bc_survivorat_s_p2)

                    ; #65405: <==closure== 26548 (pos)
                    (Pc_survivorat_s_p2)

                    ; #11801: <==negation-removal== 26548 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #25590: <==negation-removal== 65405 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_a_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_a)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #34986: <==closure== 48182 (pos)
                    (Pa_survivorat_s_p2)

                    ; #48182: origin
                    (Ba_survivorat_s_p2)

                    ; #13835: <==negation-removal== 48182 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65333: <==negation-removal== 34986 (pos)
                    (not (Ba_not_survivorat_s_p2))))

    (:action comm_p2_c_b_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_b)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #15325: <==closure== 34337 (pos)
                    (Pb_survivorat_s_p2)

                    ; #34337: origin
                    (Bb_survivorat_s_p2)

                    ; #47272: <==negation-removal== 15325 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #81778: <==negation-removal== 34337 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (leader_c)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #26548: origin
                    (Bc_survivorat_s_p2)

                    ; #65405: <==closure== 26548 (pos)
                    (Pc_survivorat_s_p2)

                    ; #11801: <==negation-removal== 26548 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #25590: <==negation-removal== 65405 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_a))
        :effect (and
                    ; #10675: <==closure== 84314 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84314: origin
                    (Ba_survivorat_s_p3)

                    ; #23178: <==negation-removal== 84314 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64416: <==negation-removal== 10675 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_a_b_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #37857: origin
                    (Bb_survivorat_s_p3)

                    ; #49845: <==closure== 37857 (pos)
                    (Pb_survivorat_s_p3)

                    ; #56587: <==negation-removal== 37857 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #74444: <==negation-removal== 49845 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_a_c_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (leader_c))
        :effect (and
                    ; #64984: origin
                    (Bc_survivorat_s_p3)

                    ; #79355: <==closure== 64984 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22570: <==negation-removal== 64984 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #89393: <==negation-removal== 79355 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_a_s
        :precondition (and (at_b_p3)
                           (leader_a)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #10675: <==closure== 84314 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84314: origin
                    (Ba_survivorat_s_p3)

                    ; #23178: <==negation-removal== 84314 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64416: <==negation-removal== 10675 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (leader_b))
        :effect (and
                    ; #37857: origin
                    (Bb_survivorat_s_p3)

                    ; #49845: <==closure== 37857 (pos)
                    (Pb_survivorat_s_p3)

                    ; #56587: <==negation-removal== 37857 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #74444: <==negation-removal== 49845 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_c_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (leader_c)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #64984: origin
                    (Bc_survivorat_s_p3)

                    ; #79355: <==closure== 64984 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22570: <==negation-removal== 64984 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #89393: <==negation-removal== 79355 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_a_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_a)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #10675: <==closure== 84314 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84314: origin
                    (Ba_survivorat_s_p3)

                    ; #23178: <==negation-removal== 84314 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64416: <==negation-removal== 10675 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_b_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (leader_b)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #37857: origin
                    (Bb_survivorat_s_p3)

                    ; #49845: <==closure== 37857 (pos)
                    (Pb_survivorat_s_p3)

                    ; #56587: <==negation-removal== 37857 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #74444: <==negation-removal== 49845 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_c_s
        :precondition (and (leader_c)
                           (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #64984: origin
                    (Bc_survivorat_s_p3)

                    ; #79355: <==closure== 64984 (pos)
                    (Pc_survivorat_s_p3)

                    ; #22570: <==negation-removal== 64984 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #89393: <==negation-removal== 79355 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_a)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #10402: <==closure== 18209 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18209: origin
                    (Ba_survivorat_s_p4)

                    ; #13102: <==negation-removal== 10402 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #16813: <==negation-removal== 18209 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_a_b_s
        :precondition (and (Ba_survivorat_s_p4)
                           (leader_b)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #16031: origin
                    (Bb_survivorat_s_p4)

                    ; #49692: <==closure== 16031 (pos)
                    (Pb_survivorat_s_p4)

                    ; #12356: <==negation-removal== 49692 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #81678: <==negation-removal== 16031 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_a_c_s
        :precondition (and (leader_c)
                           (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #69875: <==closure== 72866 (pos)
                    (Pc_survivorat_s_p4)

                    ; #72866: origin
                    (Bc_survivorat_s_p4)

                    ; #62548: <==negation-removal== 69875 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #80995: <==negation-removal== 72866 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_a_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (leader_a)
                           (at_b_p4))
        :effect (and
                    ; #10402: <==closure== 18209 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18209: origin
                    (Ba_survivorat_s_p4)

                    ; #13102: <==negation-removal== 10402 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #16813: <==negation-removal== 18209 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (leader_b)
                           (at_b_p4))
        :effect (and
                    ; #16031: origin
                    (Bb_survivorat_s_p4)

                    ; #49692: <==closure== 16031 (pos)
                    (Pb_survivorat_s_p4)

                    ; #12356: <==negation-removal== 49692 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #81678: <==negation-removal== 16031 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_c_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (leader_c)
                           (at_b_p4))
        :effect (and
                    ; #69875: <==closure== 72866 (pos)
                    (Pc_survivorat_s_p4)

                    ; #72866: origin
                    (Bc_survivorat_s_p4)

                    ; #62548: <==negation-removal== 69875 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #80995: <==negation-removal== 72866 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_a_s
        :precondition (and (leader_a)
                           (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #10402: <==closure== 18209 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18209: origin
                    (Ba_survivorat_s_p4)

                    ; #13102: <==negation-removal== 10402 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #16813: <==negation-removal== 18209 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_b_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_b)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #16031: origin
                    (Bb_survivorat_s_p4)

                    ; #49692: <==closure== 16031 (pos)
                    (Pb_survivorat_s_p4)

                    ; #12356: <==negation-removal== 49692 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #81678: <==negation-removal== 16031 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (leader_c)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #69875: <==closure== 72866 (pos)
                    (Pc_survivorat_s_p4)

                    ; #72866: origin
                    (Bc_survivorat_s_p4)

                    ; #62548: <==negation-removal== 69875 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #80995: <==negation-removal== 72866 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_a)
                           (at_a_p5))
        :effect (and
                    ; #38722: origin
                    (Ba_survivorat_s_p5)

                    ; #72600: <==closure== 38722 (pos)
                    (Pa_survivorat_s_p5)

                    ; #53597: <==negation-removal== 38722 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #92004: <==negation-removal== 72600 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_a_b_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_b)
                           (at_a_p5))
        :effect (and
                    ; #60491: <==closure== 69218 (pos)
                    (Pb_survivorat_s_p5)

                    ; #69218: origin
                    (Bb_survivorat_s_p5)

                    ; #56600: <==negation-removal== 69218 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66259: <==negation-removal== 60491 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_a_c_s
        :precondition (and (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5)
                           (leader_c)
                           (at_a_p5))
        :effect (and
                    ; #20365: origin
                    (Bc_survivorat_s_p5)

                    ; #91570: <==closure== 20365 (pos)
                    (Pc_survivorat_s_p5)

                    ; #39504: <==negation-removal== 91570 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #84647: <==negation-removal== 20365 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_a_s
        :precondition (and (at_b_p5)
                           (leader_a)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #38722: origin
                    (Ba_survivorat_s_p5)

                    ; #72600: <==closure== 38722 (pos)
                    (Pa_survivorat_s_p5)

                    ; #53597: <==negation-removal== 38722 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #92004: <==negation-removal== 72600 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_b_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (leader_b)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #60491: <==closure== 69218 (pos)
                    (Pb_survivorat_s_p5)

                    ; #69218: origin
                    (Bb_survivorat_s_p5)

                    ; #56600: <==negation-removal== 69218 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66259: <==negation-removal== 60491 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_c_s
        :precondition (and (at_b_p5)
                           (leader_c)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #20365: origin
                    (Bc_survivorat_s_p5)

                    ; #91570: <==closure== 20365 (pos)
                    (Pc_survivorat_s_p5)

                    ; #39504: <==negation-removal== 91570 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #84647: <==negation-removal== 20365 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_a_s
        :precondition (and (Bc_survivorat_s_p5)
                           (leader_a)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #38722: origin
                    (Ba_survivorat_s_p5)

                    ; #72600: <==closure== 38722 (pos)
                    (Pa_survivorat_s_p5)

                    ; #53597: <==negation-removal== 38722 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #92004: <==negation-removal== 72600 (pos)
                    (not (Ba_not_survivorat_s_p5))))

    (:action comm_p5_c_b_s
        :precondition (and (Bc_survivorat_s_p5)
                           (leader_b)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #60491: <==closure== 69218 (pos)
                    (Pb_survivorat_s_p5)

                    ; #69218: origin
                    (Bb_survivorat_s_p5)

                    ; #56600: <==negation-removal== 69218 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #66259: <==negation-removal== 60491 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_c_s
        :precondition (and (leader_c)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #20365: origin
                    (Bc_survivorat_s_p5)

                    ; #91570: <==closure== 20365 (pos)
                    (Pc_survivorat_s_p5)

                    ; #39504: <==negation-removal== 91570 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #84647: <==negation-removal== 20365 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_a_s
        :precondition (and (leader_a)
                           (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #52135: origin
                    (Ba_survivorat_s_p6)

                    ; #58419: <==closure== 52135 (pos)
                    (Pa_survivorat_s_p6)

                    ; #15218: <==negation-removal== 52135 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #89064: <==negation-removal== 58419 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_a_b_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #81900: origin
                    (Bb_survivorat_s_p6)

                    ; #81968: <==closure== 81900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #33744: <==negation-removal== 81968 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #89436: <==negation-removal== 81900 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_a_c_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (leader_c))
        :effect (and
                    ; #33261: <==closure== 70254 (pos)
                    (Pc_survivorat_s_p6)

                    ; #70254: origin
                    (Bc_survivorat_s_p6)

                    ; #20165: <==negation-removal== 33261 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45849: <==negation-removal== 70254 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_a_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_a)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #52135: origin
                    (Ba_survivorat_s_p6)

                    ; #58419: <==closure== 52135 (pos)
                    (Pa_survivorat_s_p6)

                    ; #15218: <==negation-removal== 52135 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #89064: <==negation-removal== 58419 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_b)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #81900: origin
                    (Bb_survivorat_s_p6)

                    ; #81968: <==closure== 81900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #33744: <==negation-removal== 81968 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #89436: <==negation-removal== 81900 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_c_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (leader_c)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #33261: <==closure== 70254 (pos)
                    (Pc_survivorat_s_p6)

                    ; #70254: origin
                    (Bc_survivorat_s_p6)

                    ; #20165: <==negation-removal== 33261 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45849: <==negation-removal== 70254 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_a_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_a)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #52135: origin
                    (Ba_survivorat_s_p6)

                    ; #58419: <==closure== 52135 (pos)
                    (Pa_survivorat_s_p6)

                    ; #15218: <==negation-removal== 52135 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #89064: <==negation-removal== 58419 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_b_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (leader_b))
        :effect (and
                    ; #81900: origin
                    (Bb_survivorat_s_p6)

                    ; #81968: <==closure== 81900 (pos)
                    (Pb_survivorat_s_p6)

                    ; #33744: <==negation-removal== 81968 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #89436: <==negation-removal== 81900 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (leader_c)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #33261: <==closure== 70254 (pos)
                    (Pc_survivorat_s_p6)

                    ; #70254: origin
                    (Bc_survivorat_s_p6)

                    ; #20165: <==negation-removal== 33261 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #45849: <==negation-removal== 70254 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (leader_a))
        :effect (and
                    ; #20260: origin
                    (Ba_survivorat_s_p7)

                    ; #66370: <==closure== 20260 (pos)
                    (Pa_survivorat_s_p7)

                    ; #32885: <==negation-removal== 20260 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #62353: <==negation-removal== 66370 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_a_b_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (leader_b))
        :effect (and
                    ; #28841: <==closure== 87879 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87879: origin
                    (Bb_survivorat_s_p7)

                    ; #16259: <==negation-removal== 28841 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #18083: <==negation-removal== 87879 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_a_c_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7)
                           (leader_c))
        :effect (and
                    ; #70618: origin
                    (Bc_survivorat_s_p7)

                    ; #75706: <==closure== 70618 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52498: <==negation-removal== 75706 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #61634: <==negation-removal== 70618 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_a_s
        :precondition (and (leader_a)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #20260: origin
                    (Ba_survivorat_s_p7)

                    ; #66370: <==closure== 20260 (pos)
                    (Pa_survivorat_s_p7)

                    ; #32885: <==negation-removal== 20260 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #62353: <==negation-removal== 66370 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_b_s
        :precondition (and (leader_b)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #28841: <==closure== 87879 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87879: origin
                    (Bb_survivorat_s_p7)

                    ; #16259: <==negation-removal== 28841 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #18083: <==negation-removal== 87879 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_c_s
        :precondition (and (leader_c)
                           (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #70618: origin
                    (Bc_survivorat_s_p7)

                    ; #75706: <==closure== 70618 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52498: <==negation-removal== 75706 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #61634: <==negation-removal== 70618 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_a_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_a))
        :effect (and
                    ; #20260: origin
                    (Ba_survivorat_s_p7)

                    ; #66370: <==closure== 20260 (pos)
                    (Pa_survivorat_s_p7)

                    ; #32885: <==negation-removal== 20260 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #62353: <==negation-removal== 66370 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_b_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_b))
        :effect (and
                    ; #28841: <==closure== 87879 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87879: origin
                    (Bb_survivorat_s_p7)

                    ; #16259: <==negation-removal== 28841 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #18083: <==negation-removal== 87879 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (leader_c))
        :effect (and
                    ; #70618: origin
                    (Bc_survivorat_s_p7)

                    ; #75706: <==closure== 70618 (pos)
                    (Pc_survivorat_s_p7)

                    ; #52498: <==negation-removal== 75706 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #61634: <==negation-removal== 70618 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_a)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #42004: <==closure== 70012 (pos)
                    (Pa_survivorat_s_p8)

                    ; #70012: origin
                    (Ba_survivorat_s_p8)

                    ; #20317: <==negation-removal== 42004 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25481: <==negation-removal== 70012 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_a_b_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_b)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #41779: origin
                    (Bb_survivorat_s_p8)

                    ; #45108: <==closure== 41779 (pos)
                    (Pb_survivorat_s_p8)

                    ; #16608: <==negation-removal== 41779 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #69707: <==negation-removal== 45108 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_a_c_s
        :precondition (and (Pa_survivorat_s_p8)
                           (leader_c)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #17018: <==closure== 29921 (pos)
                    (Pc_survivorat_s_p8)

                    ; #29921: origin
                    (Bc_survivorat_s_p8)

                    ; #26782: <==negation-removal== 17018 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #46871: <==negation-removal== 29921 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_a_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_a)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #42004: <==closure== 70012 (pos)
                    (Pa_survivorat_s_p8)

                    ; #70012: origin
                    (Ba_survivorat_s_p8)

                    ; #20317: <==negation-removal== 42004 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25481: <==negation-removal== 70012 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_b)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #41779: origin
                    (Bb_survivorat_s_p8)

                    ; #45108: <==closure== 41779 (pos)
                    (Pb_survivorat_s_p8)

                    ; #16608: <==negation-removal== 41779 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #69707: <==negation-removal== 45108 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_c_s
        :precondition (and (Bb_survivorat_s_p8)
                           (leader_c)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #17018: <==closure== 29921 (pos)
                    (Pc_survivorat_s_p8)

                    ; #29921: origin
                    (Bc_survivorat_s_p8)

                    ; #26782: <==negation-removal== 17018 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #46871: <==negation-removal== 29921 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_a_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_a)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #42004: <==closure== 70012 (pos)
                    (Pa_survivorat_s_p8)

                    ; #70012: origin
                    (Ba_survivorat_s_p8)

                    ; #20317: <==negation-removal== 42004 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #25481: <==negation-removal== 70012 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_b_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (leader_b)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #41779: origin
                    (Bb_survivorat_s_p8)

                    ; #45108: <==closure== 41779 (pos)
                    (Pb_survivorat_s_p8)

                    ; #16608: <==negation-removal== 41779 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #69707: <==negation-removal== 45108 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_c_s
        :precondition (and (leader_c)
                           (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #17018: <==closure== 29921 (pos)
                    (Pc_survivorat_s_p8)

                    ; #29921: origin
                    (Bc_survivorat_s_p8)

                    ; #26782: <==negation-removal== 17018 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #46871: <==negation-removal== 29921 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #47083: origin
                    (Ba_survivorat_s_p9)

                    ; #54167: <==closure== 47083 (pos)
                    (Pa_survivorat_s_p9)

                    ; #52760: <==negation-removal== 47083 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #69466: <==negation-removal== 54167 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_a_b_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #10688: <==closure== 51560 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51560: origin
                    (Bb_survivorat_s_p9)

                    ; #56430: <==negation-removal== 51560 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #70406: <==negation-removal== 10688 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_a_c_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #70912: origin
                    (Bc_survivorat_s_p9)

                    ; #91955: <==closure== 70912 (pos)
                    (Pc_survivorat_s_p9)

                    ; #48705: <==negation-removal== 70912 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #63257: <==negation-removal== 91955 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_a_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_a)
                           (at_b_p9))
        :effect (and
                    ; #47083: origin
                    (Ba_survivorat_s_p9)

                    ; #54167: <==closure== 47083 (pos)
                    (Pa_survivorat_s_p9)

                    ; #52760: <==negation-removal== 47083 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #69466: <==negation-removal== 54167 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_b)
                           (at_b_p9))
        :effect (and
                    ; #10688: <==closure== 51560 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51560: origin
                    (Bb_survivorat_s_p9)

                    ; #56430: <==negation-removal== 51560 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #70406: <==negation-removal== 10688 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_c_s
        :precondition (and (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9)
                           (leader_c)
                           (at_b_p9))
        :effect (and
                    ; #70912: origin
                    (Bc_survivorat_s_p9)

                    ; #91955: <==closure== 70912 (pos)
                    (Pc_survivorat_s_p9)

                    ; #48705: <==negation-removal== 70912 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #63257: <==negation-removal== 91955 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_a_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_a))
        :effect (and
                    ; #47083: origin
                    (Ba_survivorat_s_p9)

                    ; #54167: <==closure== 47083 (pos)
                    (Pa_survivorat_s_p9)

                    ; #52760: <==negation-removal== 47083 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #69466: <==negation-removal== 54167 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_b_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_b))
        :effect (and
                    ; #10688: <==closure== 51560 (pos)
                    (Pb_survivorat_s_p9)

                    ; #51560: origin
                    (Bb_survivorat_s_p9)

                    ; #56430: <==negation-removal== 51560 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #70406: <==negation-removal== 10688 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9)
                           (leader_c))
        :effect (and
                    ; #70912: origin
                    (Bc_survivorat_s_p9)

                    ; #91955: <==closure== 70912 (pos)
                    (Pc_survivorat_s_p9)

                    ; #48705: <==negation-removal== 70912 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #63257: <==negation-removal== 91955 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #57740: origin
                    (not_at_a_p1)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #57740: origin
                    (not_at_a_p1)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #57740: origin
                    (not_at_a_p1)

                    ; #80260: origin
                    (at_a_p3)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #57740: origin
                    (not_at_a_p1)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #57740: origin
                    (not_at_a_p1)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #57740: origin
                    (not_at_a_p1)

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7)
                           (not (leader_a)))
        :effect (and
                    ; #57740: origin
                    (not_at_a_p1)

                    ; #89073: origin
                    (at_a_p7)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #57740: origin
                    (not_at_a_p1)

                    ; #86390: origin
                    (at_a_p8)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #45251: origin
                    (at_a_p9)

                    ; #57740: origin
                    (not_at_a_p1)

                    ; #40555: <==negation-removal== 57740 (pos)
                    (not (at_a_p1))

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #53330: origin
                    (not_at_a_p2)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #53330: origin
                    (not_at_a_p2)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53330: origin
                    (not_at_a_p2)

                    ; #80260: origin
                    (at_a_p3)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53330: origin
                    (not_at_a_p2)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #53330: origin
                    (not_at_a_p2)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #53330: origin
                    (not_at_a_p2)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53330: origin
                    (not_at_a_p2)

                    ; #89073: origin
                    (at_a_p7)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #53330: origin
                    (not_at_a_p2)

                    ; #86390: origin
                    (at_a_p8)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #45251: origin
                    (at_a_p9)

                    ; #53330: origin
                    (not_at_a_p2)

                    ; #23393: <==negation-removal== 53330 (pos)
                    (not (at_a_p2))

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #40700: origin
                    (not_at_a_p3)

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #40700: origin
                    (not_at_a_p3)

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3)
                           (not (leader_a)))
        :effect (and
                    ; #40700: origin
                    (not_at_a_p3)

                    ; #80260: origin
                    (at_a_p3)

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4)
                           (not (leader_a)))
        :effect (and
                    ; #40700: origin
                    (not_at_a_p3)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #40700: origin
                    (not_at_a_p3)

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #40700: origin
                    (not_at_a_p3)

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7)
                           (not (leader_a)))
        :effect (and
                    ; #40700: origin
                    (not_at_a_p3)

                    ; #89073: origin
                    (at_a_p7)

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #40700: origin
                    (not_at_a_p3)

                    ; #86390: origin
                    (at_a_p8)

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9)
                           (not (leader_a)))
        :effect (and
                    ; #40700: origin
                    (not_at_a_p3)

                    ; #45251: origin
                    (at_a_p9)

                    ; #80260: <==negation-removal== 40700 (pos)
                    (not (at_a_p3))

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #40555: origin
                    (at_a_p1)

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #23393: origin
                    (at_a_p2)

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #80260: origin
                    (at_a_p3)

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #22193: origin
                    (not_at_a_p4)

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #25766: origin
                    (at_a_p6)

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #89073: origin
                    (at_a_p7)

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #86390: origin
                    (at_a_p8)

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #22193: origin
                    (not_at_a_p4)

                    ; #45251: origin
                    (at_a_p9)

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))

                    ; #88491: <==negation-removal== 22193 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #60153: origin
                    (not_at_a_p5)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #60153: origin
                    (not_at_a_p5)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #60153: origin
                    (not_at_a_p5)

                    ; #80260: origin
                    (at_a_p3)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #60153: origin
                    (not_at_a_p5)

                    ; #88491: origin
                    (at_a_p4)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #60153: origin
                    (not_at_a_p5)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #60153: origin
                    (not_at_a_p5)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #60153: origin
                    (not_at_a_p5)

                    ; #89073: origin
                    (at_a_p7)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #60153: origin
                    (not_at_a_p5)

                    ; #86390: origin
                    (at_a_p8)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #45251: origin
                    (at_a_p9)

                    ; #60153: origin
                    (not_at_a_p5)

                    ; #14861: <==negation-removal== 60153 (pos)
                    (not (at_a_p5))

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1)
                           (not (leader_a)))
        :effect (and
                    ; #27978: origin
                    (not_at_a_p6)

                    ; #40555: origin
                    (at_a_p1)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #27978: origin
                    (not_at_a_p6)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27978: origin
                    (not_at_a_p6)

                    ; #80260: origin
                    (at_a_p3)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27978: origin
                    (not_at_a_p6)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #27978: origin
                    (not_at_a_p6)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #27978: origin
                    (not_at_a_p6)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27978: origin
                    (not_at_a_p6)

                    ; #89073: origin
                    (at_a_p7)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8)
                           (not (leader_a)))
        :effect (and
                    ; #27978: origin
                    (not_at_a_p6)

                    ; #86390: origin
                    (at_a_p8)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #27978: origin
                    (not_at_a_p6)

                    ; #45251: origin
                    (at_a_p9)

                    ; #25766: <==negation-removal== 27978 (pos)
                    (not (at_a_p6))

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #72010: origin
                    (not_at_a_p7)

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #72010: origin
                    (not_at_a_p7)

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3)
                           (not (leader_a)))
        :effect (and
                    ; #72010: origin
                    (not_at_a_p7)

                    ; #80260: origin
                    (at_a_p3)

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4)
                           (not (leader_a)))
        :effect (and
                    ; #72010: origin
                    (not_at_a_p7)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #72010: origin
                    (not_at_a_p7)

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #72010: origin
                    (not_at_a_p7)

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7)
                           (not (leader_a)))
        :effect (and
                    ; #72010: origin
                    (not_at_a_p7)

                    ; #89073: origin
                    (at_a_p7)

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8)
                           (not (leader_a)))
        :effect (and
                    ; #72010: origin
                    (not_at_a_p7)

                    ; #86390: origin
                    (at_a_p8)

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9)
                           (not (leader_a)))
        :effect (and
                    ; #45251: origin
                    (at_a_p9)

                    ; #72010: origin
                    (not_at_a_p7)

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))

                    ; #89073: <==negation-removal== 72010 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #43200: origin
                    (not_at_a_p8)

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #43200: origin
                    (not_at_a_p8)

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3)
                           (not (leader_a)))
        :effect (and
                    ; #43200: origin
                    (not_at_a_p8)

                    ; #80260: origin
                    (at_a_p3)

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4)
                           (not (leader_a)))
        :effect (and
                    ; #43200: origin
                    (not_at_a_p8)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #43200: origin
                    (not_at_a_p8)

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #43200: origin
                    (not_at_a_p8)

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #43200: origin
                    (not_at_a_p8)

                    ; #89073: origin
                    (at_a_p7)

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #43200: origin
                    (not_at_a_p8)

                    ; #86390: origin
                    (at_a_p8)

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #43200: origin
                    (not_at_a_p8)

                    ; #45251: origin
                    (at_a_p9)

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))

                    ; #86390: <==negation-removal== 43200 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1)
                           (not (leader_a)))
        :effect (and
                    ; #40555: origin
                    (at_a_p1)

                    ; #85624: origin
                    (not_at_a_p9)

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))

                    ; #57740: <==negation-removal== 40555 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #23393: origin
                    (at_a_p2)

                    ; #85624: origin
                    (not_at_a_p9)

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))

                    ; #53330: <==negation-removal== 23393 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3)
                           (not (leader_a)))
        :effect (and
                    ; #80260: origin
                    (at_a_p3)

                    ; #85624: origin
                    (not_at_a_p9)

                    ; #40700: <==negation-removal== 80260 (pos)
                    (not (not_at_a_p3))

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #85624: origin
                    (not_at_a_p9)

                    ; #88491: origin
                    (at_a_p4)

                    ; #22193: <==negation-removal== 88491 (pos)
                    (not (not_at_a_p4))

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5)
                           (not (leader_a)))
        :effect (and
                    ; #14861: origin
                    (at_a_p5)

                    ; #85624: origin
                    (not_at_a_p9)

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))

                    ; #60153: <==negation-removal== 14861 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6)
                           (not (leader_a)))
        :effect (and
                    ; #25766: origin
                    (at_a_p6)

                    ; #85624: origin
                    (not_at_a_p9)

                    ; #27978: <==negation-removal== 25766 (pos)
                    (not (not_at_a_p6))

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7)
                           (not (leader_a)))
        :effect (and
                    ; #85624: origin
                    (not_at_a_p9)

                    ; #89073: origin
                    (at_a_p7)

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))

                    ; #72010: <==negation-removal== 89073 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8)
                           (not (leader_a)))
        :effect (and
                    ; #85624: origin
                    (not_at_a_p9)

                    ; #86390: origin
                    (at_a_p8)

                    ; #43200: <==negation-removal== 86390 (pos)
                    (not (not_at_a_p8))

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #45251: origin
                    (at_a_p9)

                    ; #85624: origin
                    (not_at_a_p9)

                    ; #45251: <==negation-removal== 85624 (pos)
                    (not (at_a_p9))

                    ; #85624: <==negation-removal== 45251 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #29997: origin
                    (at_b_p1)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #31748: origin
                    (at_b_p2)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #30639: origin
                    (at_b_p3)

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #22415: origin
                    (at_b_p4)

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #13470: origin
                    (not_at_b_p1)

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #33168: origin
                    (at_b_p7)

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #38461: origin
                    (at_b_p8)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #13470: origin
                    (not_at_b_p1)

                    ; #79068: origin
                    (at_b_p9)

                    ; #29997: <==negation-removal== 13470 (pos)
                    (not (at_b_p1))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #29997: origin
                    (at_b_p1)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #31748: origin
                    (at_b_p2)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #30639: origin
                    (at_b_p3)

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22415: origin
                    (at_b_p4)

                    ; #22443: origin
                    (not_at_b_p2)

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #22443: origin
                    (not_at_b_p2)

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #33168: origin
                    (at_b_p7)

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #38461: origin
                    (at_b_p8)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #22443: origin
                    (not_at_b_p2)

                    ; #79068: origin
                    (at_b_p9)

                    ; #31748: <==negation-removal== 22443 (pos)
                    (not (at_b_p2))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1)
                           (not (leader_b)))
        :effect (and
                    ; #29997: origin
                    (at_b_p1)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2)
                           (not (leader_b)))
        :effect (and
                    ; #31748: origin
                    (at_b_p2)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3)
                           (not (leader_b)))
        :effect (and
                    ; #30639: origin
                    (at_b_p3)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4)
                           (not (leader_b)))
        :effect (and
                    ; #22415: origin
                    (at_b_p4)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6)
                           (not (leader_b)))
        :effect (and
                    ; #46088: origin
                    (not_at_b_p3)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7)
                           (not (leader_b)))
        :effect (and
                    ; #33168: origin
                    (at_b_p7)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #38461: origin
                    (at_b_p8)

                    ; #46088: origin
                    (not_at_b_p3)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9)
                           (not (leader_b)))
        :effect (and
                    ; #46088: origin
                    (not_at_b_p3)

                    ; #79068: origin
                    (at_b_p9)

                    ; #30639: <==negation-removal== 46088 (pos)
                    (not (at_b_p3))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #29997: origin
                    (at_b_p1)

                    ; #32459: origin
                    (not_at_b_p4)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #31748: origin
                    (at_b_p2)

                    ; #32459: origin
                    (not_at_b_p4)

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #30639: origin
                    (at_b_p3)

                    ; #32459: origin
                    (not_at_b_p4)

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #22415: origin
                    (at_b_p4)

                    ; #32459: origin
                    (not_at_b_p4)

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #32459: origin
                    (not_at_b_p4)

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #32459: origin
                    (not_at_b_p4)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #32459: origin
                    (not_at_b_p4)

                    ; #33168: origin
                    (at_b_p7)

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #32459: origin
                    (not_at_b_p4)

                    ; #38461: origin
                    (at_b_p8)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #32459: origin
                    (not_at_b_p4)

                    ; #79068: origin
                    (at_b_p9)

                    ; #22415: <==negation-removal== 32459 (pos)
                    (not (at_b_p4))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1)
                           (not (leader_b)))
        :effect (and
                    ; #29997: origin
                    (at_b_p1)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2)
                           (not (leader_b)))
        :effect (and
                    ; #31748: origin
                    (at_b_p2)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3)
                           (not (leader_b)))
        :effect (and
                    ; #30639: origin
                    (at_b_p3)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4)
                           (not (leader_b)))
        :effect (and
                    ; #22415: origin
                    (at_b_p4)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6)
                           (not (leader_b)))
        :effect (and
                    ; #67773: origin
                    (at_b_p6)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7)
                           (not (leader_b)))
        :effect (and
                    ; #33168: origin
                    (at_b_p7)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8)
                           (not (leader_b)))
        :effect (and
                    ; #38461: origin
                    (at_b_p8)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9)
                           (not (leader_b)))
        :effect (and
                    ; #79068: origin
                    (at_b_p9)

                    ; #81516: origin
                    (not_at_b_p5)

                    ; #12264: <==negation-removal== 81516 (pos)
                    (not (at_b_p5))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #29997: origin
                    (at_b_p1)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #31748: origin
                    (at_b_p2)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #30639: origin
                    (at_b_p3)

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #22415: origin
                    (at_b_p4)

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #19958: origin
                    (not_at_b_p6)

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #33168: origin
                    (at_b_p7)

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #38461: origin
                    (at_b_p8)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9)
                           (not (leader_b)))
        :effect (and
                    ; #19958: origin
                    (not_at_b_p6)

                    ; #79068: origin
                    (at_b_p9)

                    ; #67773: <==negation-removal== 19958 (pos)
                    (not (at_b_p6))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #29997: origin
                    (at_b_p1)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #31748: origin
                    (at_b_p2)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #30639: origin
                    (at_b_p3)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #22415: origin
                    (at_b_p4)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6)
                           (not (leader_b)))
        :effect (and
                    ; #47179: origin
                    (not_at_b_p7)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7)
                           (not (leader_b)))
        :effect (and
                    ; #33168: origin
                    (at_b_p7)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #38461: origin
                    (at_b_p8)

                    ; #47179: origin
                    (not_at_b_p7)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #47179: origin
                    (not_at_b_p7)

                    ; #79068: origin
                    (at_b_p9)

                    ; #33168: <==negation-removal== 47179 (pos)
                    (not (at_b_p7))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #29997: origin
                    (at_b_p1)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #31748: origin
                    (at_b_p2)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #30639: origin
                    (at_b_p3)

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #22415: origin
                    (at_b_p4)

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #14101: origin
                    (not_at_b_p8)

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #67773: origin
                    (at_b_p6)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #33168: origin
                    (at_b_p7)

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #38461: origin
                    (at_b_p8)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9)
                           (not (leader_b)))
        :effect (and
                    ; #14101: origin
                    (not_at_b_p8)

                    ; #79068: origin
                    (at_b_p9)

                    ; #38461: <==negation-removal== 14101 (pos)
                    (not (at_b_p8))

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #29997: origin
                    (at_b_p1)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #13470: <==negation-removal== 29997 (pos)
                    (not (not_at_b_p1))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #31748: origin
                    (at_b_p2)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #22443: <==negation-removal== 31748 (pos)
                    (not (not_at_b_p2))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #30639: origin
                    (at_b_p3)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #46088: <==negation-removal== 30639 (pos)
                    (not (not_at_b_p3))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #22415: origin
                    (at_b_p4)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #32459: <==negation-removal== 22415 (pos)
                    (not (not_at_b_p4))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #12264: origin
                    (at_b_p5)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))

                    ; #81516: <==negation-removal== 12264 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #67773: origin
                    (at_b_p6)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #19958: <==negation-removal== 67773 (pos)
                    (not (not_at_b_p6))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #33168: origin
                    (at_b_p7)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #47179: <==negation-removal== 33168 (pos)
                    (not (not_at_b_p7))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #38461: origin
                    (at_b_p8)

                    ; #68113: origin
                    (not_at_b_p9)

                    ; #14101: <==negation-removal== 38461 (pos)
                    (not (not_at_b_p8))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #68113: origin
                    (not_at_b_p9)

                    ; #79068: origin
                    (at_b_p9)

                    ; #68113: <==negation-removal== 79068 (pos)
                    (not (not_at_b_p9))

                    ; #79068: <==negation-removal== 68113 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #41293: origin
                    (not_at_c_p1)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #92057: origin
                    (at_c_p2)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #89968: origin
                    (at_c_p3)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #60029: origin
                    (at_c_p4)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #82996: origin
                    (at_c_p5)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #80332: origin
                    (at_c_p6)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40645: origin
                    (at_c_p7)

                    ; #41293: origin
                    (not_at_c_p1)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #49368: origin
                    (at_c_p8)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9)
                           (not (leader_c)))
        :effect (and
                    ; #41293: origin
                    (not_at_c_p1)

                    ; #68374: origin
                    (at_c_p9)

                    ; #10867: <==negation-removal== 41293 (pos)
                    (not (at_c_p1))

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2)
                           (not (leader_c)))
        :effect (and
                    ; #88436: origin
                    (not_at_c_p2)

                    ; #92057: origin
                    (at_c_p2)

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3)
                           (not (leader_c)))
        :effect (and
                    ; #88436: origin
                    (not_at_c_p2)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4)
                           (not (leader_c)))
        :effect (and
                    ; #60029: origin
                    (at_c_p4)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #82996: origin
                    (at_c_p5)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #80332: origin
                    (at_c_p6)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40645: origin
                    (at_c_p7)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8)
                           (not (leader_c)))
        :effect (and
                    ; #49368: origin
                    (at_c_p8)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #68374: origin
                    (at_c_p9)

                    ; #88436: origin
                    (not_at_c_p2)

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))

                    ; #92057: <==negation-removal== 88436 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #19911: origin
                    (not_at_c_p3)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #92057: origin
                    (at_c_p2)

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #60029: origin
                    (at_c_p4)

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #40645: origin
                    (at_c_p7)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #49368: origin
                    (at_c_p8)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9)
                           (not (leader_c)))
        :effect (and
                    ; #19911: origin
                    (not_at_c_p3)

                    ; #68374: origin
                    (at_c_p9)

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))

                    ; #89968: <==negation-removal== 19911 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #70829: origin
                    (not_at_c_p4)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #70829: origin
                    (not_at_c_p4)

                    ; #92057: origin
                    (at_c_p2)

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #70829: origin
                    (not_at_c_p4)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #60029: origin
                    (at_c_p4)

                    ; #70829: origin
                    (not_at_c_p4)

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #70829: origin
                    (not_at_c_p4)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #70829: origin
                    (not_at_c_p4)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #40645: origin
                    (at_c_p7)

                    ; #70829: origin
                    (not_at_c_p4)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #49368: origin
                    (at_c_p8)

                    ; #70829: origin
                    (not_at_c_p4)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #68374: origin
                    (at_c_p9)

                    ; #70829: origin
                    (not_at_c_p4)

                    ; #60029: <==negation-removal== 70829 (pos)
                    (not (at_c_p4))

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #22522: origin
                    (not_at_c_p5)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #92057: origin
                    (at_c_p2)

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #60029: origin
                    (at_c_p4)

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #40645: origin
                    (at_c_p7)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #49368: origin
                    (at_c_p8)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #22522: origin
                    (not_at_c_p5)

                    ; #68374: origin
                    (at_c_p9)

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))

                    ; #82996: <==negation-removal== 22522 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #16792: origin
                    (not_at_c_p6)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #92057: origin
                    (at_c_p2)

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #60029: origin
                    (at_c_p4)

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #40645: origin
                    (at_c_p7)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #49368: origin
                    (at_c_p8)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9)
                           (not (leader_c)))
        :effect (and
                    ; #16792: origin
                    (not_at_c_p6)

                    ; #68374: origin
                    (at_c_p9)

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))

                    ; #80332: <==negation-removal== 16792 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #13757: origin
                    (not_at_c_p7)

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #92057: origin
                    (at_c_p2)

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #60029: origin
                    (at_c_p4)

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #40645: origin
                    (at_c_p7)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #49368: origin
                    (at_c_p8)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9)
                           (not (leader_c)))
        :effect (and
                    ; #13757: origin
                    (not_at_c_p7)

                    ; #68374: origin
                    (at_c_p9)

                    ; #40645: <==negation-removal== 13757 (pos)
                    (not (at_c_p7))

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #37883: origin
                    (not_at_c_p8)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #92057: origin
                    (at_c_p2)

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #60029: origin
                    (at_c_p4)

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #40645: origin
                    (at_c_p7)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #49368: origin
                    (at_c_p8)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9)
                           (not (leader_c)))
        :effect (and
                    ; #37883: origin
                    (not_at_c_p8)

                    ; #68374: origin
                    (at_c_p9)

                    ; #49368: <==negation-removal== 37883 (pos)
                    (not (at_c_p8))

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10867: origin
                    (at_c_p1)

                    ; #78554: origin
                    (not_at_c_p9)

                    ; #41293: <==negation-removal== 10867 (pos)
                    (not (not_at_c_p1))

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2)
                           (not (leader_c)))
        :effect (and
                    ; #78554: origin
                    (not_at_c_p9)

                    ; #92057: origin
                    (at_c_p2)

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))

                    ; #88436: <==negation-removal== 92057 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3)
                           (not (leader_c)))
        :effect (and
                    ; #78554: origin
                    (not_at_c_p9)

                    ; #89968: origin
                    (at_c_p3)

                    ; #19911: <==negation-removal== 89968 (pos)
                    (not (not_at_c_p3))

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4)
                           (not (leader_c)))
        :effect (and
                    ; #60029: origin
                    (at_c_p4)

                    ; #78554: origin
                    (not_at_c_p9)

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))

                    ; #70829: <==negation-removal== 60029 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5)
                           (not (leader_c)))
        :effect (and
                    ; #78554: origin
                    (not_at_c_p9)

                    ; #82996: origin
                    (at_c_p5)

                    ; #22522: <==negation-removal== 82996 (pos)
                    (not (not_at_c_p5))

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6)
                           (not (leader_c)))
        :effect (and
                    ; #78554: origin
                    (not_at_c_p9)

                    ; #80332: origin
                    (at_c_p6)

                    ; #16792: <==negation-removal== 80332 (pos)
                    (not (not_at_c_p6))

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7)
                           (not (leader_c)))
        :effect (and
                    ; #40645: origin
                    (at_c_p7)

                    ; #78554: origin
                    (not_at_c_p9)

                    ; #13757: <==negation-removal== 40645 (pos)
                    (not (not_at_c_p7))

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8)
                           (not (leader_c)))
        :effect (and
                    ; #49368: origin
                    (at_c_p8)

                    ; #78554: origin
                    (not_at_c_p9)

                    ; #37883: <==negation-removal== 49368 (pos)
                    (not (not_at_c_p8))

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #68374: origin
                    (at_c_p9)

                    ; #78554: origin
                    (not_at_c_p9)

                    ; #68374: <==negation-removal== 78554 (pos)
                    (not (at_c_p9))

                    ; #78554: <==negation-removal== 68374 (pos)
                    (not (not_at_c_p9))))

    (:action observe_a_p1_s
        :precondition (and (at_a_p1)
                           (not (leader_a)))
        :effect (and
                    ; #15346: origin
                    (checked_p1)

                    ; #18062: <==closure== 76154 (pos)
                    (Pc_checked_p1)

                    ; #23785: <==commonly_known== 15346 (pos)
                    (Ba_checked_p1)

                    ; #27129: <==closure== 54839 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #34601: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #54665: <==closure== 57118 (pos)
                    (Pb_checked_p1)

                    ; #54839: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #57118: <==commonly_known== 15346 (pos)
                    (Bb_checked_p1)

                    ; #64793: <==closure== 34601 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #65361: <==closure== 23785 (pos)
                    (Pa_checked_p1)

                    ; #76154: <==commonly_known== 15346 (pos)
                    (Bc_checked_p1)

                    ; #11224: <==negation-removal== 54665 (pos)
                    (not (Bb_not_checked_p1))

                    ; #20984: <==negation-removal== 34601 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #21354: <==negation-removal== 23785 (pos)
                    (not (Pa_not_checked_p1))

                    ; #32247: <==unclosure== 56598 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #46793: <==negation-removal== 57118 (pos)
                    (not (Pb_not_checked_p1))

                    ; #51441: <==negation-removal== 76154 (pos)
                    (not (Pc_not_checked_p1))

                    ; #56598: <==uncertain_firing== 54839 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #56854: <==uncertain_firing== 34601 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #62820: <==negation-removal== 65361 (pos)
                    (not (Ba_not_checked_p1))

                    ; #64530: <==negation-removal== 27129 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65400: <==negation-removal== 64793 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #71866: <==negation-removal== 54839 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #76405: <==negation-removal== 15346 (pos)
                    (not (not_checked_p1))

                    ; #78616: <==negation-removal== 18062 (pos)
                    (not (Bc_not_checked_p1))

                    ; #85495: <==unclosure== 56854 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))))

    (:action observe_a_p2_s
        :precondition (and (at_a_p2)
                           (not (leader_a)))
        :effect (and
                    ; #21217: <==closure== 81376 (pos)
                    (Pb_checked_p2)

                    ; #25698: origin
                    (checked_p2)

                    ; #50413: <==closure== 54606 (pos)
                    (Pc_checked_p2)

                    ; #54606: <==commonly_known== 25698 (pos)
                    (Bc_checked_p2)

                    ; #62354: <==closure== 84006 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #64949: <==closure== 77839 (pos)
                    (Pa_checked_p2)

                    ; #77839: <==commonly_known== 25698 (pos)
                    (Ba_checked_p2)

                    ; #81376: <==commonly_known== 25698 (pos)
                    (Bb_checked_p2)

                    ; #81908: <==closure== 91008 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #84006: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #91008: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12855: <==negation-removal== 50413 (pos)
                    (not (Bc_not_checked_p2))

                    ; #16559: <==negation-removal== 62354 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #34748: <==uncertain_firing== 84006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #37234: <==negation-removal== 84006 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #44236: <==negation-removal== 21217 (pos)
                    (not (Bb_not_checked_p2))

                    ; #46300: <==negation-removal== 54606 (pos)
                    (not (Pc_not_checked_p2))

                    ; #53648: <==negation-removal== 91008 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #54493: <==negation-removal== 25698 (pos)
                    (not (not_checked_p2))

                    ; #55680: <==unclosure== 91015 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #68673: <==unclosure== 34748 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #70364: <==negation-removal== 81376 (pos)
                    (not (Pb_not_checked_p2))

                    ; #72476: <==negation-removal== 81908 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #83751: <==negation-removal== 64949 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84965: <==negation-removal== 77839 (pos)
                    (not (Pa_not_checked_p2))

                    ; #91015: <==uncertain_firing== 91008 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action observe_a_p3_s
        :precondition (and (at_a_p3)
                           (not (leader_a)))
        :effect (and
                    ; #28186: <==closure== 58594 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #33057: <==commonly_known== 36214 (pos)
                    (Bb_checked_p3)

                    ; #36214: origin
                    (checked_p3)

                    ; #51658: <==commonly_known== 36214 (pos)
                    (Bc_checked_p3)

                    ; #52455: <==closure== 51658 (pos)
                    (Pc_checked_p3)

                    ; #58525: <==commonly_known== 36214 (pos)
                    (Ba_checked_p3)

                    ; #58594: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #62792: <==closure== 72380 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #71743: <==closure== 58525 (pos)
                    (Pa_checked_p3)

                    ; #72380: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #81739: <==closure== 33057 (pos)
                    (Pb_checked_p3)

                    ; #28934: <==unclosure== 70284 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #30625: <==unclosure== 37956 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #36983: <==negation-removal== 52455 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37956: <==uncertain_firing== 72380 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #38200: <==negation-removal== 62792 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #51698: <==negation-removal== 51658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #55164: <==negation-removal== 33057 (pos)
                    (not (Pb_not_checked_p3))

                    ; #60153: <==negation-removal== 71743 (pos)
                    (not (Ba_not_checked_p3))

                    ; #66153: <==negation-removal== 81739 (pos)
                    (not (Bb_not_checked_p3))

                    ; #66464: <==negation-removal== 72380 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #69061: <==negation-removal== 58525 (pos)
                    (not (Pa_not_checked_p3))

                    ; #70284: <==uncertain_firing== 58594 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #78595: <==negation-removal== 36214 (pos)
                    (not (not_checked_p3))

                    ; #80355: <==negation-removal== 58594 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #87364: <==negation-removal== 28186 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observe_a_p4_s
        :precondition (and (at_a_p4)
                           (not (leader_a)))
        :effect (and
                    ; #18123: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #18695: <==closure== 91384 (pos)
                    (Pb_checked_p4)

                    ; #20878: <==closure== 38826 (pos)
                    (Pa_checked_p4)

                    ; #38826: <==commonly_known== 82697 (pos)
                    (Ba_checked_p4)

                    ; #53099: <==closure== 18123 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #56054: <==closure== 61195 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #61195: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #61344: <==commonly_known== 82697 (pos)
                    (Bc_checked_p4)

                    ; #65966: <==closure== 61344 (pos)
                    (Pc_checked_p4)

                    ; #82697: origin
                    (checked_p4)

                    ; #91384: <==commonly_known== 82697 (pos)
                    (Bb_checked_p4)

                    ; #15295: <==negation-removal== 61195 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #26566: <==negation-removal== 20878 (pos)
                    (not (Ba_not_checked_p4))

                    ; #28083: <==negation-removal== 65966 (pos)
                    (not (Bc_not_checked_p4))

                    ; #32225: <==negation-removal== 38826 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35194: <==unclosure== 55396 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #35929: <==negation-removal== 56054 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #50144: <==negation-removal== 61344 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50408: <==negation-removal== 91384 (pos)
                    (not (Pb_not_checked_p4))

                    ; #50410: <==uncertain_firing== 18123 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #54898: <==negation-removal== 82697 (pos)
                    (not (not_checked_p4))

                    ; #55095: <==unclosure== 50410 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55396: <==uncertain_firing== 61195 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #72825: <==negation-removal== 18123 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #74436: <==negation-removal== 18695 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81043: <==negation-removal== 53099 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observe_a_p5_s
        :precondition (and (at_a_p5)
                           (not (leader_a)))
        :effect (and
                    ; #21653: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #34482: <==closure== 59236 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #59236: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #63478: <==closure== 21653 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #65500: <==closure== 69101 (pos)
                    (Pa_checked_p5)

                    ; #66112: <==commonly_known== 78805 (pos)
                    (Bb_checked_p5)

                    ; #69101: <==commonly_known== 78805 (pos)
                    (Ba_checked_p5)

                    ; #78805: origin
                    (checked_p5)

                    ; #81126: <==commonly_known== 78805 (pos)
                    (Bc_checked_p5)

                    ; #82032: <==closure== 66112 (pos)
                    (Pb_checked_p5)

                    ; #92926: <==closure== 81126 (pos)
                    (Pc_checked_p5)

                    ; #12858: <==uncertain_firing== 59236 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #13761: <==negation-removal== 82032 (pos)
                    (not (Bb_not_checked_p5))

                    ; #25176: <==unclosure== 12858 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #29197: <==uncertain_firing== 21653 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #33365: <==negation-removal== 92926 (pos)
                    (not (Bc_not_checked_p5))

                    ; #46506: <==negation-removal== 78805 (pos)
                    (not (not_checked_p5))

                    ; #67636: <==negation-removal== 69101 (pos)
                    (not (Pa_not_checked_p5))

                    ; #69339: <==negation-removal== 59236 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #71336: <==negation-removal== 21653 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #73281: <==negation-removal== 34482 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #78223: <==negation-removal== 66112 (pos)
                    (not (Pb_not_checked_p5))

                    ; #78860: <==unclosure== 29197 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #85696: <==negation-removal== 65500 (pos)
                    (not (Ba_not_checked_p5))

                    ; #90163: <==negation-removal== 81126 (pos)
                    (not (Pc_not_checked_p5))

                    ; #90212: <==negation-removal== 63478 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observe_a_p6_s
        :precondition (and (at_a_p6)
                           (not (leader_a)))
        :effect (and
                    ; #10453: <==closure== 79539 (pos)
                    (Pa_checked_p6)

                    ; #12495: <==commonly_known== 58328 (pos)
                    (Bb_checked_p6)

                    ; #23850: <==commonly_known== 58328 (pos)
                    (Bc_checked_p6)

                    ; #28669: <==closure== 69045 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #38834: <==closure== 12495 (pos)
                    (Pb_checked_p6)

                    ; #44418: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #48820: <==closure== 23850 (pos)
                    (Pc_checked_p6)

                    ; #58328: origin
                    (checked_p6)

                    ; #61080: <==closure== 44418 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #69045: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #79539: <==commonly_known== 58328 (pos)
                    (Ba_checked_p6)

                    ; #21198: <==negation-removal== 69045 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #22604: <==negation-removal== 12495 (pos)
                    (not (Pb_not_checked_p6))

                    ; #22626: <==unclosure== 69035 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27934: <==uncertain_firing== 69045 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #33532: <==negation-removal== 61080 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #41646: <==negation-removal== 48820 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42173: <==negation-removal== 23850 (pos)
                    (not (Pc_not_checked_p6))

                    ; #43880: <==negation-removal== 44418 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #45847: <==negation-removal== 79539 (pos)
                    (not (Pa_not_checked_p6))

                    ; #48684: <==unclosure== 27934 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #52787: <==negation-removal== 38834 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59557: <==negation-removal== 28669 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60583: <==negation-removal== 58328 (pos)
                    (not (not_checked_p6))

                    ; #65240: <==negation-removal== 10453 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69035: <==uncertain_firing== 44418 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action observe_a_p7_s
        :precondition (and (at_a_p7)
                           (not (leader_a)))
        :effect (and
                    ; #23348: origin
                    (checked_p7)

                    ; #23400: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #36995: <==closure== 57751 (pos)
                    (Pb_checked_p7)

                    ; #49885: <==commonly_known== 23348 (pos)
                    (Ba_checked_p7)

                    ; #57751: <==commonly_known== 23348 (pos)
                    (Bb_checked_p7)

                    ; #72111: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #75854: <==closure== 49885 (pos)
                    (Pa_checked_p7)

                    ; #78511: <==closure== 23400 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #78681: <==commonly_known== 23348 (pos)
                    (Bc_checked_p7)

                    ; #82026: <==closure== 78681 (pos)
                    (Pc_checked_p7)

                    ; #84313: <==closure== 72111 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #17635: <==negation-removal== 72111 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #31419: <==unclosure== 53916 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #37385: <==negation-removal== 78681 (pos)
                    (not (Pc_not_checked_p7))

                    ; #38962: <==uncertain_firing== 72111 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #53916: <==uncertain_firing== 23400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #54183: <==negation-removal== 49885 (pos)
                    (not (Pa_not_checked_p7))

                    ; #54967: <==negation-removal== 57751 (pos)
                    (not (Pb_not_checked_p7))

                    ; #57796: <==negation-removal== 78511 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #59564: <==negation-removal== 23348 (pos)
                    (not (not_checked_p7))

                    ; #67376: <==negation-removal== 36995 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67422: <==negation-removal== 82026 (pos)
                    (not (Bc_not_checked_p7))

                    ; #82494: <==negation-removal== 75854 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82841: <==unclosure== 38962 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #86291: <==negation-removal== 84313 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #90571: <==negation-removal== 23400 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observe_a_p8_s
        :precondition (and (at_a_p8)
                           (not (leader_a)))
        :effect (and
                    ; #22734: <==closure== 44484 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #25709: origin
                    (checked_p8)

                    ; #44484: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #48763: <==commonly_known== 25709 (pos)
                    (Ba_checked_p8)

                    ; #49521: <==closure== 53858 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #52432: <==closure== 52516 (pos)
                    (Pc_checked_p8)

                    ; #52516: <==commonly_known== 25709 (pos)
                    (Bc_checked_p8)

                    ; #53836: <==commonly_known== 25709 (pos)
                    (Bb_checked_p8)

                    ; #53858: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #59876: <==closure== 48763 (pos)
                    (Pa_checked_p8)

                    ; #83176: <==closure== 53836 (pos)
                    (Pb_checked_p8)

                    ; #11906: <==negation-removal== 48763 (pos)
                    (not (Pa_not_checked_p8))

                    ; #37702: <==negation-removal== 25709 (pos)
                    (not (not_checked_p8))

                    ; #42103: <==negation-removal== 59876 (pos)
                    (not (Ba_not_checked_p8))

                    ; #45664: <==uncertain_firing== 44484 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #45720: <==negation-removal== 22734 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #48970: <==negation-removal== 53836 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54049: <==unclosure== 69210 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60039: <==unclosure== 45664 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #61494: <==negation-removal== 52432 (pos)
                    (not (Bc_not_checked_p8))

                    ; #62161: <==negation-removal== 52516 (pos)
                    (not (Pc_not_checked_p8))

                    ; #67735: <==negation-removal== 83176 (pos)
                    (not (Bb_not_checked_p8))

                    ; #69210: <==uncertain_firing== 53858 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #70066: <==negation-removal== 44484 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #75727: <==negation-removal== 53858 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #80468: <==negation-removal== 49521 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observe_a_p9_s
        :precondition (and (at_a_p9)
                           (not (leader_a)))
        :effect (and
                    ; #28519: <==closure== 86910 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #39426: <==closure== 43813 (pos)
                    (Pc_checked_p9)

                    ; #39552: <==closure== 71756 (pos)
                    (Pa_checked_p9)

                    ; #43813: <==commonly_known== 91693 (pos)
                    (Bc_checked_p9)

                    ; #55171: <==closure== 82551 (pos)
                    (Pb_checked_p9)

                    ; #70668: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #71756: <==commonly_known== 91693 (pos)
                    (Ba_checked_p9)

                    ; #82551: <==commonly_known== 91693 (pos)
                    (Bb_checked_p9)

                    ; #86910: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #91693: origin
                    (checked_p9)

                    ; #98542: <==closure== 70668 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #11913: <==uncertain_firing== 70668 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #16125: <==negation-removal== 39552 (pos)
                    (not (Ba_not_checked_p9))

                    ; #17199: <==negation-removal== 98542 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #24086: <==negation-removal== 55171 (pos)
                    (not (Bb_not_checked_p9))

                    ; #25754: <==negation-removal== 39426 (pos)
                    (not (Bc_not_checked_p9))

                    ; #29308: <==negation-removal== 91693 (pos)
                    (not (not_checked_p9))

                    ; #40786: <==negation-removal== 70668 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #43156: <==unclosure== 72419 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #49802: <==negation-removal== 82551 (pos)
                    (not (Pb_not_checked_p9))

                    ; #55320: <==negation-removal== 43813 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63988: <==negation-removal== 71756 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72419: <==uncertain_firing== 86910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #73107: <==negation-removal== 28519 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #81936: <==negation-removal== 86910 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #89741: <==unclosure== 11913 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))))

    (:action observe_b_p1_s
        :precondition (and (at_b_p1)
                           (not (leader_b)))
        :effect (and
                    ; #15346: origin
                    (checked_p1)

                    ; #18062: <==closure== 76154 (pos)
                    (Pc_checked_p1)

                    ; #19204: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #23785: <==commonly_known== 15346 (pos)
                    (Ba_checked_p1)

                    ; #30191: <==closure== 19204 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #54079: <==closure== 75263 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #54665: <==closure== 57118 (pos)
                    (Pb_checked_p1)

                    ; #57118: <==commonly_known== 15346 (pos)
                    (Bb_checked_p1)

                    ; #65361: <==closure== 23785 (pos)
                    (Pa_checked_p1)

                    ; #75263: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #76154: <==commonly_known== 15346 (pos)
                    (Bc_checked_p1)

                    ; #11224: <==negation-removal== 54665 (pos)
                    (not (Bb_not_checked_p1))

                    ; #21354: <==negation-removal== 23785 (pos)
                    (not (Pa_not_checked_p1))

                    ; #22702: <==uncertain_firing== 19204 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #27300: <==unclosure== 22702 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #37241: <==negation-removal== 19204 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40610: <==unclosure== 47546 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #46793: <==negation-removal== 57118 (pos)
                    (not (Pb_not_checked_p1))

                    ; #47546: <==uncertain_firing== 75263 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #49791: <==negation-removal== 75263 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #51441: <==negation-removal== 76154 (pos)
                    (not (Pc_not_checked_p1))

                    ; #51733: <==negation-removal== 30191 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #62820: <==negation-removal== 65361 (pos)
                    (not (Ba_not_checked_p1))

                    ; #76405: <==negation-removal== 15346 (pos)
                    (not (not_checked_p1))

                    ; #76879: <==negation-removal== 54079 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #78616: <==negation-removal== 18062 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observe_b_p2_s
        :precondition (and (at_b_p2)
                           (not (leader_b)))
        :effect (and
                    ; #18855: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #21217: <==closure== 81376 (pos)
                    (Pb_checked_p2)

                    ; #25698: origin
                    (checked_p2)

                    ; #26659: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #36551: <==closure== 26659 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #50413: <==closure== 54606 (pos)
                    (Pc_checked_p2)

                    ; #54606: <==commonly_known== 25698 (pos)
                    (Bc_checked_p2)

                    ; #64949: <==closure== 77839 (pos)
                    (Pa_checked_p2)

                    ; #71615: <==closure== 18855 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #77839: <==commonly_known== 25698 (pos)
                    (Ba_checked_p2)

                    ; #81376: <==commonly_known== 25698 (pos)
                    (Bb_checked_p2)

                    ; #11961: <==unclosure== 76947 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #12855: <==negation-removal== 50413 (pos)
                    (not (Bc_not_checked_p2))

                    ; #34378: <==negation-removal== 71615 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #44236: <==negation-removal== 21217 (pos)
                    (not (Bb_not_checked_p2))

                    ; #46300: <==negation-removal== 54606 (pos)
                    (not (Pc_not_checked_p2))

                    ; #54493: <==negation-removal== 25698 (pos)
                    (not (not_checked_p2))

                    ; #56559: <==uncertain_firing== 26659 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #61988: <==negation-removal== 18855 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #67218: <==unclosure== 56559 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #70364: <==negation-removal== 81376 (pos)
                    (not (Pb_not_checked_p2))

                    ; #76947: <==uncertain_firing== 18855 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #80849: <==negation-removal== 26659 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #83751: <==negation-removal== 64949 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84965: <==negation-removal== 77839 (pos)
                    (not (Pa_not_checked_p2))

                    ; #88546: <==negation-removal== 36551 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observe_b_p3_s
        :precondition (and (at_b_p3)
                           (not (leader_b)))
        :effect (and
                    ; #12522: <==closure== 57977 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #26064: <==closure== 74959 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #33057: <==commonly_known== 36214 (pos)
                    (Bb_checked_p3)

                    ; #36214: origin
                    (checked_p3)

                    ; #51658: <==commonly_known== 36214 (pos)
                    (Bc_checked_p3)

                    ; #52455: <==closure== 51658 (pos)
                    (Pc_checked_p3)

                    ; #57977: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #58525: <==commonly_known== 36214 (pos)
                    (Ba_checked_p3)

                    ; #71743: <==closure== 58525 (pos)
                    (Pa_checked_p3)

                    ; #74959: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #81739: <==closure== 33057 (pos)
                    (Pb_checked_p3)

                    ; #19022: <==unclosure== 52001 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #26527: <==uncertain_firing== 57977 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #36983: <==negation-removal== 52455 (pos)
                    (not (Bc_not_checked_p3))

                    ; #51698: <==negation-removal== 51658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #52001: <==uncertain_firing== 74959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #55164: <==negation-removal== 33057 (pos)
                    (not (Pb_not_checked_p3))

                    ; #60132: <==negation-removal== 74959 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #60153: <==negation-removal== 71743 (pos)
                    (not (Ba_not_checked_p3))

                    ; #63830: <==negation-removal== 26064 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #66153: <==negation-removal== 81739 (pos)
                    (not (Bb_not_checked_p3))

                    ; #69061: <==negation-removal== 58525 (pos)
                    (not (Pa_not_checked_p3))

                    ; #78595: <==negation-removal== 36214 (pos)
                    (not (not_checked_p3))

                    ; #82056: <==unclosure== 26527 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #88164: <==negation-removal== 12522 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #92051: <==negation-removal== 57977 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))))

    (:action observe_b_p4_s
        :precondition (and (at_b_p4)
                           (not (leader_b)))
        :effect (and
                    ; #18695: <==closure== 91384 (pos)
                    (Pb_checked_p4)

                    ; #20878: <==closure== 38826 (pos)
                    (Pa_checked_p4)

                    ; #24315: <==closure== 65459 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #38826: <==commonly_known== 82697 (pos)
                    (Ba_checked_p4)

                    ; #45640: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #61344: <==commonly_known== 82697 (pos)
                    (Bc_checked_p4)

                    ; #65459: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #65966: <==closure== 61344 (pos)
                    (Pc_checked_p4)

                    ; #82697: origin
                    (checked_p4)

                    ; #88962: <==closure== 45640 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #91384: <==commonly_known== 82697 (pos)
                    (Bb_checked_p4)

                    ; #19376: <==uncertain_firing== 65459 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #26566: <==negation-removal== 20878 (pos)
                    (not (Ba_not_checked_p4))

                    ; #28083: <==negation-removal== 65966 (pos)
                    (not (Bc_not_checked_p4))

                    ; #29541: <==unclosure== 51995 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #30777: <==negation-removal== 45640 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #32225: <==negation-removal== 38826 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35138: <==unclosure== 19376 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #38852: <==negation-removal== 24315 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #50144: <==negation-removal== 61344 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50408: <==negation-removal== 91384 (pos)
                    (not (Pb_not_checked_p4))

                    ; #51995: <==uncertain_firing== 45640 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #54898: <==negation-removal== 82697 (pos)
                    (not (not_checked_p4))

                    ; #55190: <==negation-removal== 65459 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #74436: <==negation-removal== 18695 (pos)
                    (not (Bb_not_checked_p4))

                    ; #93553: <==negation-removal== 88962 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observe_b_p5_s
        :precondition (and (at_b_p5)
                           (not (leader_b)))
        :effect (and
                    ; #13225: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #25887: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #36003: <==closure== 13225 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #45679: <==closure== 25887 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #65500: <==closure== 69101 (pos)
                    (Pa_checked_p5)

                    ; #66112: <==commonly_known== 78805 (pos)
                    (Bb_checked_p5)

                    ; #69101: <==commonly_known== 78805 (pos)
                    (Ba_checked_p5)

                    ; #78805: origin
                    (checked_p5)

                    ; #81126: <==commonly_known== 78805 (pos)
                    (Bc_checked_p5)

                    ; #82032: <==closure== 66112 (pos)
                    (Pb_checked_p5)

                    ; #92926: <==closure== 81126 (pos)
                    (Pc_checked_p5)

                    ; #13690: <==negation-removal== 45679 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #13761: <==negation-removal== 82032 (pos)
                    (not (Bb_not_checked_p5))

                    ; #15035: <==uncertain_firing== 25887 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #33365: <==negation-removal== 92926 (pos)
                    (not (Bc_not_checked_p5))

                    ; #36707: <==unclosure== 82042 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #37555: <==negation-removal== 13225 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42379: <==negation-removal== 25887 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #43250: <==negation-removal== 36003 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #46506: <==negation-removal== 78805 (pos)
                    (not (not_checked_p5))

                    ; #67636: <==negation-removal== 69101 (pos)
                    (not (Pa_not_checked_p5))

                    ; #78223: <==negation-removal== 66112 (pos)
                    (not (Pb_not_checked_p5))

                    ; #80678: <==unclosure== 15035 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #82042: <==uncertain_firing== 13225 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #85696: <==negation-removal== 65500 (pos)
                    (not (Ba_not_checked_p5))

                    ; #90163: <==negation-removal== 81126 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observe_b_p6_s
        :precondition (and (at_b_p6)
                           (not (leader_b)))
        :effect (and
                    ; #10453: <==closure== 79539 (pos)
                    (Pa_checked_p6)

                    ; #12256: <==closure== 43344 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #12495: <==commonly_known== 58328 (pos)
                    (Bb_checked_p6)

                    ; #23850: <==commonly_known== 58328 (pos)
                    (Bc_checked_p6)

                    ; #27708: <==closure== 40890 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #38834: <==closure== 12495 (pos)
                    (Pb_checked_p6)

                    ; #40890: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #43344: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #48820: <==closure== 23850 (pos)
                    (Pc_checked_p6)

                    ; #58328: origin
                    (checked_p6)

                    ; #79539: <==commonly_known== 58328 (pos)
                    (Ba_checked_p6)

                    ; #14131: <==unclosure== 41087 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #16347: <==negation-removal== 40890 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #22604: <==negation-removal== 12495 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28201: <==unclosure== 58394 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #41087: <==uncertain_firing== 43344 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #41646: <==negation-removal== 48820 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42173: <==negation-removal== 23850 (pos)
                    (not (Pc_not_checked_p6))

                    ; #45847: <==negation-removal== 79539 (pos)
                    (not (Pa_not_checked_p6))

                    ; #52787: <==negation-removal== 38834 (pos)
                    (not (Bb_not_checked_p6))

                    ; #58394: <==uncertain_firing== 40890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60583: <==negation-removal== 58328 (pos)
                    (not (not_checked_p6))

                    ; #65240: <==negation-removal== 10453 (pos)
                    (not (Ba_not_checked_p6))

                    ; #65561: <==negation-removal== 12256 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74279: <==negation-removal== 43344 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #78322: <==negation-removal== 27708 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))))

    (:action observe_b_p7_s
        :precondition (and (at_b_p7)
                           (not (leader_b)))
        :effect (and
                    ; #12031: <==closure== 63679 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #23348: origin
                    (checked_p7)

                    ; #36995: <==closure== 57751 (pos)
                    (Pb_checked_p7)

                    ; #41279: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #49885: <==commonly_known== 23348 (pos)
                    (Ba_checked_p7)

                    ; #57751: <==commonly_known== 23348 (pos)
                    (Bb_checked_p7)

                    ; #63679: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #75854: <==closure== 49885 (pos)
                    (Pa_checked_p7)

                    ; #78681: <==commonly_known== 23348 (pos)
                    (Bc_checked_p7)

                    ; #82026: <==closure== 78681 (pos)
                    (Pc_checked_p7)

                    ; #89164: <==closure== 41279 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #13972: <==negation-removal== 12031 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #26679: <==unclosure== 75599 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #34120: <==unclosure== 46780 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #37385: <==negation-removal== 78681 (pos)
                    (not (Pc_not_checked_p7))

                    ; #46780: <==uncertain_firing== 41279 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #48032: <==negation-removal== 63679 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #53480: <==negation-removal== 89164 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #54183: <==negation-removal== 49885 (pos)
                    (not (Pa_not_checked_p7))

                    ; #54967: <==negation-removal== 57751 (pos)
                    (not (Pb_not_checked_p7))

                    ; #59564: <==negation-removal== 23348 (pos)
                    (not (not_checked_p7))

                    ; #67376: <==negation-removal== 36995 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67422: <==negation-removal== 82026 (pos)
                    (not (Bc_not_checked_p7))

                    ; #75599: <==uncertain_firing== 63679 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #82494: <==negation-removal== 75854 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84111: <==negation-removal== 41279 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observe_b_p8_s
        :precondition (and (at_b_p8)
                           (not (leader_b)))
        :effect (and
                    ; #14772: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #23297: <==closure== 39846 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #25709: origin
                    (checked_p8)

                    ; #39846: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #48763: <==commonly_known== 25709 (pos)
                    (Ba_checked_p8)

                    ; #52432: <==closure== 52516 (pos)
                    (Pc_checked_p8)

                    ; #52516: <==commonly_known== 25709 (pos)
                    (Bc_checked_p8)

                    ; #53836: <==commonly_known== 25709 (pos)
                    (Bb_checked_p8)

                    ; #59876: <==closure== 48763 (pos)
                    (Pa_checked_p8)

                    ; #83176: <==closure== 53836 (pos)
                    (Pb_checked_p8)

                    ; #83666: <==closure== 14772 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #11906: <==negation-removal== 48763 (pos)
                    (not (Pa_not_checked_p8))

                    ; #20539: <==negation-removal== 14772 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #21848: <==negation-removal== 83666 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #29374: <==uncertain_firing== 39846 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #37702: <==negation-removal== 25709 (pos)
                    (not (not_checked_p8))

                    ; #42103: <==negation-removal== 59876 (pos)
                    (not (Ba_not_checked_p8))

                    ; #47412: <==unclosure== 29374 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #48970: <==negation-removal== 53836 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54664: <==negation-removal== 39846 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #61494: <==negation-removal== 52432 (pos)
                    (not (Bc_not_checked_p8))

                    ; #62161: <==negation-removal== 52516 (pos)
                    (not (Pc_not_checked_p8))

                    ; #67735: <==negation-removal== 83176 (pos)
                    (not (Bb_not_checked_p8))

                    ; #73677: <==unclosure== 77496 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #77496: <==uncertain_firing== 14772 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #81060: <==negation-removal== 23297 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))))

    (:action observe_b_p9_s
        :precondition (and (at_b_p9)
                           (not (leader_b)))
        :effect (and
                    ; #27575: <==closure== 67346 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #39426: <==closure== 43813 (pos)
                    (Pc_checked_p9)

                    ; #39552: <==closure== 71756 (pos)
                    (Pa_checked_p9)

                    ; #43813: <==commonly_known== 91693 (pos)
                    (Bc_checked_p9)

                    ; #55171: <==closure== 82551 (pos)
                    (Pb_checked_p9)

                    ; #67346: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #71756: <==commonly_known== 91693 (pos)
                    (Ba_checked_p9)

                    ; #76914: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #82551: <==commonly_known== 91693 (pos)
                    (Bb_checked_p9)

                    ; #91693: origin
                    (checked_p9)

                    ; #94122: <==closure== 76914 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #12274: <==negation-removal== 27575 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #13291: <==negation-removal== 76914 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #16125: <==negation-removal== 39552 (pos)
                    (not (Ba_not_checked_p9))

                    ; #17082: <==negation-removal== 67346 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #24086: <==negation-removal== 55171 (pos)
                    (not (Bb_not_checked_p9))

                    ; #24481: <==unclosure== 49465 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #25754: <==negation-removal== 39426 (pos)
                    (not (Bc_not_checked_p9))

                    ; #27524: <==unclosure== 82649 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #29308: <==negation-removal== 91693 (pos)
                    (not (not_checked_p9))

                    ; #49465: <==uncertain_firing== 67346 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #49802: <==negation-removal== 82551 (pos)
                    (not (Pb_not_checked_p9))

                    ; #55320: <==negation-removal== 43813 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63988: <==negation-removal== 71756 (pos)
                    (not (Pa_not_checked_p9))

                    ; #66886: <==negation-removal== 94122 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #82649: <==uncertain_firing== 76914 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observe_c_p1_s
        :precondition (and (at_c_p1)
                           (not (leader_c)))
        :effect (and
                    ; #10444: <==closure== 77846 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #15346: origin
                    (checked_p1)

                    ; #18062: <==closure== 76154 (pos)
                    (Pc_checked_p1)

                    ; #23785: <==commonly_known== 15346 (pos)
                    (Ba_checked_p1)

                    ; #31047: <==closure== 78849 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #54665: <==closure== 57118 (pos)
                    (Pb_checked_p1)

                    ; #57118: <==commonly_known== 15346 (pos)
                    (Bb_checked_p1)

                    ; #65361: <==closure== 23785 (pos)
                    (Pa_checked_p1)

                    ; #76154: <==commonly_known== 15346 (pos)
                    (Bc_checked_p1)

                    ; #77846: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #78849: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #11224: <==negation-removal== 54665 (pos)
                    (not (Bb_not_checked_p1))

                    ; #13925: <==negation-removal== 77846 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #18629: <==unclosure== 50883 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #21354: <==negation-removal== 23785 (pos)
                    (not (Pa_not_checked_p1))

                    ; #23039: <==negation-removal== 31047 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #26389: <==unclosure== 70780 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #46793: <==negation-removal== 57118 (pos)
                    (not (Pb_not_checked_p1))

                    ; #50883: <==uncertain_firing== 77846 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #51441: <==negation-removal== 76154 (pos)
                    (not (Pc_not_checked_p1))

                    ; #62820: <==negation-removal== 65361 (pos)
                    (not (Ba_not_checked_p1))

                    ; #70780: <==uncertain_firing== 78849 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #72751: <==negation-removal== 78849 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #76405: <==negation-removal== 15346 (pos)
                    (not (not_checked_p1))

                    ; #78616: <==negation-removal== 18062 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81980: <==negation-removal== 10444 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))))

    (:action observe_c_p2_s
        :precondition (and (at_c_p2)
                           (not (leader_c)))
        :effect (and
                    ; #21217: <==closure== 81376 (pos)
                    (Pb_checked_p2)

                    ; #24943: <==closure== 67812 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #25698: origin
                    (checked_p2)

                    ; #50413: <==closure== 54606 (pos)
                    (Pc_checked_p2)

                    ; #54606: <==commonly_known== 25698 (pos)
                    (Bc_checked_p2)

                    ; #58753: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #64949: <==closure== 77839 (pos)
                    (Pa_checked_p2)

                    ; #65883: <==closure== 58753 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #67812: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #77839: <==commonly_known== 25698 (pos)
                    (Ba_checked_p2)

                    ; #81376: <==commonly_known== 25698 (pos)
                    (Bb_checked_p2)

                    ; #12855: <==negation-removal== 50413 (pos)
                    (not (Bc_not_checked_p2))

                    ; #44236: <==negation-removal== 21217 (pos)
                    (not (Bb_not_checked_p2))

                    ; #46300: <==negation-removal== 54606 (pos)
                    (not (Pc_not_checked_p2))

                    ; #47300: <==negation-removal== 58753 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #54493: <==negation-removal== 25698 (pos)
                    (not (not_checked_p2))

                    ; #56228: <==negation-removal== 24943 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #67307: <==unclosure== 79446 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #70364: <==negation-removal== 81376 (pos)
                    (not (Pb_not_checked_p2))

                    ; #79446: <==uncertain_firing== 58753 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #81767: <==negation-removal== 67812 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #83062: <==uncertain_firing== 67812 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #83751: <==negation-removal== 64949 (pos)
                    (not (Ba_not_checked_p2))

                    ; #84965: <==negation-removal== 77839 (pos)
                    (not (Pa_not_checked_p2))

                    ; #90471: <==negation-removal== 65883 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #99338: <==unclosure== 83062 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action observe_c_p3_s
        :precondition (and (at_c_p3)
                           (not (leader_c)))
        :effect (and
                    ; #27111: <==closure== 54760 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #33057: <==commonly_known== 36214 (pos)
                    (Bb_checked_p3)

                    ; #36214: origin
                    (checked_p3)

                    ; #47428: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #51658: <==commonly_known== 36214 (pos)
                    (Bc_checked_p3)

                    ; #52455: <==closure== 51658 (pos)
                    (Pc_checked_p3)

                    ; #54760: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #58525: <==commonly_known== 36214 (pos)
                    (Ba_checked_p3)

                    ; #71743: <==closure== 58525 (pos)
                    (Pa_checked_p3)

                    ; #75759: <==closure== 47428 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #81739: <==closure== 33057 (pos)
                    (Pb_checked_p3)

                    ; #13010: <==unclosure== 35458 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #13622: <==uncertain_firing== 54760 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #25463: <==negation-removal== 75759 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #35458: <==uncertain_firing== 47428 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #36983: <==negation-removal== 52455 (pos)
                    (not (Bc_not_checked_p3))

                    ; #40264: <==negation-removal== 47428 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #51698: <==negation-removal== 51658 (pos)
                    (not (Pc_not_checked_p3))

                    ; #53425: <==negation-removal== 54760 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #55164: <==negation-removal== 33057 (pos)
                    (not (Pb_not_checked_p3))

                    ; #60153: <==negation-removal== 71743 (pos)
                    (not (Ba_not_checked_p3))

                    ; #63730: <==unclosure== 13622 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #66153: <==negation-removal== 81739 (pos)
                    (not (Bb_not_checked_p3))

                    ; #69061: <==negation-removal== 58525 (pos)
                    (not (Pa_not_checked_p3))

                    ; #78595: <==negation-removal== 36214 (pos)
                    (not (not_checked_p3))

                    ; #78790: <==negation-removal== 27111 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))))

    (:action observe_c_p4_s
        :precondition (and (at_c_p4)
                           (not (leader_c)))
        :effect (and
                    ; #14828: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #17298: <==closure== 77914 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #18695: <==closure== 91384 (pos)
                    (Pb_checked_p4)

                    ; #20878: <==closure== 38826 (pos)
                    (Pa_checked_p4)

                    ; #38826: <==commonly_known== 82697 (pos)
                    (Ba_checked_p4)

                    ; #61344: <==commonly_known== 82697 (pos)
                    (Bc_checked_p4)

                    ; #65966: <==closure== 61344 (pos)
                    (Pc_checked_p4)

                    ; #77914: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #82697: origin
                    (checked_p4)

                    ; #91384: <==commonly_known== 82697 (pos)
                    (Bb_checked_p4)

                    ; #91855: <==closure== 14828 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #15038: <==negation-removal== 91855 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #26566: <==negation-removal== 20878 (pos)
                    (not (Ba_not_checked_p4))

                    ; #27574: <==negation-removal== 77914 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28083: <==negation-removal== 65966 (pos)
                    (not (Bc_not_checked_p4))

                    ; #32225: <==negation-removal== 38826 (pos)
                    (not (Pa_not_checked_p4))

                    ; #37073: <==negation-removal== 17298 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #43805: <==unclosure== 75856 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #50144: <==negation-removal== 61344 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50408: <==negation-removal== 91384 (pos)
                    (not (Pb_not_checked_p4))

                    ; #54898: <==negation-removal== 82697 (pos)
                    (not (not_checked_p4))

                    ; #57229: <==negation-removal== 14828 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #70760: <==unclosure== 84698 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #74436: <==negation-removal== 18695 (pos)
                    (not (Bb_not_checked_p4))

                    ; #75856: <==uncertain_firing== 14828 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #84698: <==uncertain_firing== 77914 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observe_c_p5_s
        :precondition (and (at_c_p5)
                           (not (leader_c)))
        :effect (and
                    ; #10114: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #40693: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #65010: <==closure== 10114 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #65500: <==closure== 69101 (pos)
                    (Pa_checked_p5)

                    ; #66112: <==commonly_known== 78805 (pos)
                    (Bb_checked_p5)

                    ; #69101: <==commonly_known== 78805 (pos)
                    (Ba_checked_p5)

                    ; #73131: <==closure== 40693 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #78805: origin
                    (checked_p5)

                    ; #81126: <==commonly_known== 78805 (pos)
                    (Bc_checked_p5)

                    ; #82032: <==closure== 66112 (pos)
                    (Pb_checked_p5)

                    ; #92926: <==closure== 81126 (pos)
                    (Pc_checked_p5)

                    ; #13761: <==negation-removal== 82032 (pos)
                    (not (Bb_not_checked_p5))

                    ; #16225: <==negation-removal== 65010 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #33365: <==negation-removal== 92926 (pos)
                    (not (Bc_not_checked_p5))

                    ; #45062: <==negation-removal== 10114 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #46506: <==negation-removal== 78805 (pos)
                    (not (not_checked_p5))

                    ; #61806: <==negation-removal== 73131 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #67636: <==negation-removal== 69101 (pos)
                    (not (Pa_not_checked_p5))

                    ; #69354: <==negation-removal== 40693 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #72955: <==unclosure== 83530 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #75414: <==unclosure== 81025 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #78223: <==negation-removal== 66112 (pos)
                    (not (Pb_not_checked_p5))

                    ; #81025: <==uncertain_firing== 40693 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #83530: <==uncertain_firing== 10114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #85696: <==negation-removal== 65500 (pos)
                    (not (Ba_not_checked_p5))

                    ; #90163: <==negation-removal== 81126 (pos)
                    (not (Pc_not_checked_p5))))

    (:action observe_c_p6_s
        :precondition (and (at_c_p6)
                           (not (leader_c)))
        :effect (and
                    ; #10453: <==closure== 79539 (pos)
                    (Pa_checked_p6)

                    ; #12495: <==commonly_known== 58328 (pos)
                    (Bb_checked_p6)

                    ; #23822: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #23850: <==commonly_known== 58328 (pos)
                    (Bc_checked_p6)

                    ; #32365: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #38834: <==closure== 12495 (pos)
                    (Pb_checked_p6)

                    ; #48820: <==closure== 23850 (pos)
                    (Pc_checked_p6)

                    ; #58328: origin
                    (checked_p6)

                    ; #60563: <==closure== 23822 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #79539: <==commonly_known== 58328 (pos)
                    (Ba_checked_p6)

                    ; #83093: <==closure== 32365 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #19300: <==negation-removal== 83093 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #22604: <==negation-removal== 12495 (pos)
                    (not (Pb_not_checked_p6))

                    ; #30800: <==uncertain_firing== 32365 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #37667: <==unclosure== 30800 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #41646: <==negation-removal== 48820 (pos)
                    (not (Bc_not_checked_p6))

                    ; #42173: <==negation-removal== 23850 (pos)
                    (not (Pc_not_checked_p6))

                    ; #45847: <==negation-removal== 79539 (pos)
                    (not (Pa_not_checked_p6))

                    ; #52787: <==negation-removal== 38834 (pos)
                    (not (Bb_not_checked_p6))

                    ; #54453: <==unclosure== 64251 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #55528: <==negation-removal== 32365 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #60583: <==negation-removal== 58328 (pos)
                    (not (not_checked_p6))

                    ; #64251: <==uncertain_firing== 23822 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64359: <==negation-removal== 60563 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #65240: <==negation-removal== 10453 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90180: <==negation-removal== 23822 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))))

    (:action observe_c_p7_s
        :precondition (and (at_c_p7)
                           (not (leader_c)))
        :effect (and
                    ; #10187: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #23348: origin
                    (checked_p7)

                    ; #33584: <==closure== 10187 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #36995: <==closure== 57751 (pos)
                    (Pb_checked_p7)

                    ; #49885: <==commonly_known== 23348 (pos)
                    (Ba_checked_p7)

                    ; #57751: <==commonly_known== 23348 (pos)
                    (Bb_checked_p7)

                    ; #59415: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #75854: <==closure== 49885 (pos)
                    (Pa_checked_p7)

                    ; #78681: <==commonly_known== 23348 (pos)
                    (Bc_checked_p7)

                    ; #82026: <==closure== 78681 (pos)
                    (Pc_checked_p7)

                    ; #83957: <==closure== 59415 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #21745: <==negation-removal== 33584 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #37385: <==negation-removal== 78681 (pos)
                    (not (Pc_not_checked_p7))

                    ; #41446: <==unclosure== 43568 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #43568: <==uncertain_firing== 59415 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #45225: <==unclosure== 58255 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54183: <==negation-removal== 49885 (pos)
                    (not (Pa_not_checked_p7))

                    ; #54967: <==negation-removal== 57751 (pos)
                    (not (Pb_not_checked_p7))

                    ; #58255: <==uncertain_firing== 10187 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #59564: <==negation-removal== 23348 (pos)
                    (not (not_checked_p7))

                    ; #67376: <==negation-removal== 36995 (pos)
                    (not (Bb_not_checked_p7))

                    ; #67422: <==negation-removal== 82026 (pos)
                    (not (Bc_not_checked_p7))

                    ; #69525: <==negation-removal== 83957 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #71527: <==negation-removal== 10187 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #80135: <==negation-removal== 59415 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #82494: <==negation-removal== 75854 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observe_c_p8_s
        :precondition (and (at_c_p8)
                           (not (leader_c)))
        :effect (and
                    ; #23499: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #25709: origin
                    (checked_p8)

                    ; #37145: <==closure== 23499 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #48763: <==commonly_known== 25709 (pos)
                    (Ba_checked_p8)

                    ; #52432: <==closure== 52516 (pos)
                    (Pc_checked_p8)

                    ; #52516: <==commonly_known== 25709 (pos)
                    (Bc_checked_p8)

                    ; #53836: <==commonly_known== 25709 (pos)
                    (Bb_checked_p8)

                    ; #59876: <==closure== 48763 (pos)
                    (Pa_checked_p8)

                    ; #61089: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #62098: <==closure== 61089 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #83176: <==closure== 53836 (pos)
                    (Pb_checked_p8)

                    ; #11906: <==negation-removal== 48763 (pos)
                    (not (Pa_not_checked_p8))

                    ; #12130: <==uncertain_firing== 23499 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #37702: <==negation-removal== 25709 (pos)
                    (not (not_checked_p8))

                    ; #42103: <==negation-removal== 59876 (pos)
                    (not (Ba_not_checked_p8))

                    ; #44139: <==unclosure== 50699 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #48970: <==negation-removal== 53836 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50699: <==uncertain_firing== 61089 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #51074: <==unclosure== 12130 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #59360: <==negation-removal== 62098 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #61494: <==negation-removal== 52432 (pos)
                    (not (Bc_not_checked_p8))

                    ; #62161: <==negation-removal== 52516 (pos)
                    (not (Pc_not_checked_p8))

                    ; #67735: <==negation-removal== 83176 (pos)
                    (not (Bb_not_checked_p8))

                    ; #82542: <==negation-removal== 23499 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #83600: <==negation-removal== 61089 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #86709: <==negation-removal== 37145 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))))

    (:action observe_c_p9_s
        :precondition (and (at_c_p9)
                           (not (leader_c)))
        :effect (and
                    ; #24621: <==closure== 94394 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #39426: <==closure== 43813 (pos)
                    (Pc_checked_p9)

                    ; #39552: <==closure== 71756 (pos)
                    (Pa_checked_p9)

                    ; #43813: <==commonly_known== 91693 (pos)
                    (Bc_checked_p9)

                    ; #55171: <==closure== 82551 (pos)
                    (Pb_checked_p9)

                    ; #63496: <==closure== 73296 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #71756: <==commonly_known== 91693 (pos)
                    (Ba_checked_p9)

                    ; #73296: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #82551: <==commonly_known== 91693 (pos)
                    (Bb_checked_p9)

                    ; #91693: origin
                    (checked_p9)

                    ; #94394: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #16125: <==negation-removal== 39552 (pos)
                    (not (Ba_not_checked_p9))

                    ; #24086: <==negation-removal== 55171 (pos)
                    (not (Bb_not_checked_p9))

                    ; #25754: <==negation-removal== 39426 (pos)
                    (not (Bc_not_checked_p9))

                    ; #29308: <==negation-removal== 91693 (pos)
                    (not (not_checked_p9))

                    ; #29868: <==negation-removal== 94394 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #35157: <==unclosure== 66853 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #49802: <==negation-removal== 82551 (pos)
                    (not (Pb_not_checked_p9))

                    ; #49985: <==negation-removal== 73296 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #55320: <==negation-removal== 43813 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63988: <==negation-removal== 71756 (pos)
                    (not (Pa_not_checked_p9))

                    ; #64967: <==negation-removal== 63496 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #66853: <==uncertain_firing== 73296 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #68924: <==unclosure== 71888 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #71888: <==uncertain_firing== 94394 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #76298: <==negation-removal== 24621 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))))

)