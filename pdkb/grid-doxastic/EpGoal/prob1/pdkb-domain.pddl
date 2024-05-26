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

    (:action badcomm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #21108: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #42933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #65329: <==closure== 75699 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #68726: <==closure== 42933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #75699: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #89931: <==closure== 21108 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #19433: <==negation-removal== 65329 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #21411: <==negation-removal== 75699 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24298: <==negation-removal== 21108 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #24703: <==negation-removal== 89931 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34201: <==uncertain_firing== 42933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #37218: <==negation-removal== 68726 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #37248: <==unclosure== 34201 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #56037: <==unclosure== 63320 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #59904: <==unclosure== 62069 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #62069: <==uncertain_firing== 75699 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #63320: <==uncertain_firing== 21108 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #74149: <==negation-removal== 42933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #21108: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #42933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #65329: <==closure== 75699 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #68726: <==closure== 42933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #75699: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #89931: <==closure== 21108 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #19433: <==negation-removal== 65329 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #21411: <==negation-removal== 75699 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24298: <==negation-removal== 21108 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #24703: <==negation-removal== 89931 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34201: <==uncertain_firing== 42933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #37218: <==negation-removal== 68726 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #37248: <==unclosure== 34201 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #56037: <==unclosure== 63320 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #59904: <==unclosure== 62069 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #62069: <==uncertain_firing== 75699 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #63320: <==uncertain_firing== 21108 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #74149: <==negation-removal== 42933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #21108: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #42933: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #65329: <==closure== 75699 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #68726: <==closure== 42933 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #75699: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #89931: <==closure== 21108 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #19433: <==negation-removal== 65329 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #21411: <==negation-removal== 75699 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #24298: <==negation-removal== 21108 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #24703: <==negation-removal== 89931 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #34201: <==uncertain_firing== 42933 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #37218: <==negation-removal== 68726 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #37248: <==unclosure== 34201 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #56037: <==unclosure== 63320 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #59904: <==unclosure== 62069 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #62069: <==uncertain_firing== 75699 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #63320: <==uncertain_firing== 21108 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #74149: <==negation-removal== 42933 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #11747: <==closure== 63715 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #34377: <==closure== 55461 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #46408: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #55461: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #63715: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #88127: <==closure== 46408 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #19242: <==negation-removal== 34377 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #21283: <==uncertain_firing== 63715 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #22035: <==uncertain_firing== 55461 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #24591: <==negation-removal== 11747 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27934: <==unclosure== 21283 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30600: <==uncertain_firing== 46408 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #37241: <==negation-removal== 55461 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #44655: <==negation-removal== 46408 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #68570: <==negation-removal== 63715 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #68640: <==unclosure== 22035 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #69230: <==unclosure== 30600 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #73082: <==negation-removal== 88127 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #11747: <==closure== 63715 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #34377: <==closure== 55461 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #46408: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #55461: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #63715: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #88127: <==closure== 46408 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #19242: <==negation-removal== 34377 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #21283: <==uncertain_firing== 63715 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #22035: <==uncertain_firing== 55461 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #24591: <==negation-removal== 11747 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27934: <==unclosure== 21283 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30600: <==uncertain_firing== 46408 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #37241: <==negation-removal== 55461 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #44655: <==negation-removal== 46408 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #68570: <==negation-removal== 63715 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #68640: <==unclosure== 22035 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #69230: <==unclosure== 30600 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #73082: <==negation-removal== 88127 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #11747: <==closure== 63715 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #34377: <==closure== 55461 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #46408: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #55461: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #63715: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #88127: <==closure== 46408 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #19242: <==negation-removal== 34377 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #21283: <==uncertain_firing== 63715 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #22035: <==uncertain_firing== 55461 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #24591: <==negation-removal== 11747 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #27934: <==unclosure== 21283 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #30600: <==uncertain_firing== 46408 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #37241: <==negation-removal== 55461 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #44655: <==negation-removal== 46408 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #68570: <==negation-removal== 63715 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #68640: <==unclosure== 22035 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #69230: <==unclosure== 30600 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #73082: <==negation-removal== 88127 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #18755: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #37634: <==closure== 39078 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #39078: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #40394: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #75021: <==closure== 18755 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #86697: <==closure== 40394 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #15653: <==negation-removal== 39078 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #26252: <==negation-removal== 86697 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #27293: <==unclosure== 40336 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #28048: <==negation-removal== 40394 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #34174: <==negation-removal== 37634 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #40336: <==uncertain_firing== 39078 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #55803: <==uncertain_firing== 18755 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59433: <==uncertain_firing== 40394 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #64139: <==unclosure== 55803 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #84130: <==negation-removal== 18755 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #92005: <==unclosure== 59433 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #97854: <==negation-removal== 75021 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #18755: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #37634: <==closure== 39078 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #39078: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #40394: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #75021: <==closure== 18755 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #86697: <==closure== 40394 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #15653: <==negation-removal== 39078 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #26252: <==negation-removal== 86697 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #27293: <==unclosure== 40336 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #28048: <==negation-removal== 40394 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #34174: <==negation-removal== 37634 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #40336: <==uncertain_firing== 39078 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #55803: <==uncertain_firing== 18755 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59433: <==uncertain_firing== 40394 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #64139: <==unclosure== 55803 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #84130: <==negation-removal== 18755 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #92005: <==unclosure== 59433 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #97854: <==negation-removal== 75021 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #18755: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #37634: <==closure== 39078 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #39078: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #40394: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #75021: <==closure== 18755 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #86697: <==closure== 40394 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #15653: <==negation-removal== 39078 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #26252: <==negation-removal== 86697 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #27293: <==unclosure== 40336 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #28048: <==negation-removal== 40394 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #34174: <==negation-removal== 37634 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #40336: <==uncertain_firing== 39078 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #55803: <==uncertain_firing== 18755 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #59433: <==uncertain_firing== 40394 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #64139: <==unclosure== 55803 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #84130: <==negation-removal== 18755 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #92005: <==unclosure== 59433 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #97854: <==negation-removal== 75021 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #15421: <==closure== 91394 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #19056: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #19794: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #24889: <==closure== 19794 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #28684: <==closure== 19056 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #91394: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #20392: <==negation-removal== 24889 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #23171: <==negation-removal== 19794 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #27439: <==negation-removal== 91394 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #31994: <==uncertain_firing== 19056 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #36839: <==negation-removal== 28684 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #43428: <==unclosure== 55030 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #52282: <==uncertain_firing== 91394 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #55030: <==uncertain_firing== 19794 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #62843: <==unclosure== 31994 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #68042: <==negation-removal== 19056 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69061: <==negation-removal== 15421 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #90302: <==unclosure== 52282 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #15421: <==closure== 91394 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #19056: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #19794: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #24889: <==closure== 19794 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #28684: <==closure== 19056 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #91394: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #20392: <==negation-removal== 24889 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #23171: <==negation-removal== 19794 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #27439: <==negation-removal== 91394 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #31994: <==uncertain_firing== 19056 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #36839: <==negation-removal== 28684 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #43428: <==unclosure== 55030 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #52282: <==uncertain_firing== 91394 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #55030: <==uncertain_firing== 19794 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #62843: <==unclosure== 31994 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #68042: <==negation-removal== 19056 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69061: <==negation-removal== 15421 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #90302: <==unclosure== 52282 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #15421: <==closure== 91394 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #19056: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #19794: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #24889: <==closure== 19794 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #28684: <==closure== 19056 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #91394: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #20392: <==negation-removal== 24889 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #23171: <==negation-removal== 19794 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #27439: <==negation-removal== 91394 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #31994: <==uncertain_firing== 19056 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #36839: <==negation-removal== 28684 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #43428: <==unclosure== 55030 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #52282: <==uncertain_firing== 91394 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #55030: <==uncertain_firing== 19794 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #62843: <==unclosure== 31994 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #68042: <==negation-removal== 19056 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #69061: <==negation-removal== 15421 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #90302: <==unclosure== 52282 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #18410: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #20955: <==closure== 21080 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #21080: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #42972: <==closure== 50093 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #50093: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #81899: <==closure== 18410 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #25997: <==uncertain_firing== 21080 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #31940: <==unclosure== 25997 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #35900: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #48339: <==unclosure== 56757 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #51203: <==unclosure== 61248 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #53311: <==negation-removal== 18410 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #56757: <==uncertain_firing== 50093 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #61248: <==uncertain_firing== 18410 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68105: <==negation-removal== 21080 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #72258: <==negation-removal== 81899 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #77266: <==negation-removal== 50093 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #93385: <==negation-removal== 42972 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #18410: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #20955: <==closure== 21080 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #21080: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #42972: <==closure== 50093 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #50093: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #81899: <==closure== 18410 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #25997: <==uncertain_firing== 21080 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #31940: <==unclosure== 25997 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #35900: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #48339: <==unclosure== 56757 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #51203: <==unclosure== 61248 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #53311: <==negation-removal== 18410 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #56757: <==uncertain_firing== 50093 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #61248: <==uncertain_firing== 18410 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68105: <==negation-removal== 21080 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #72258: <==negation-removal== 81899 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #77266: <==negation-removal== 50093 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #93385: <==negation-removal== 42972 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #18410: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #20955: <==closure== 21080 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #21080: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #42972: <==closure== 50093 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #50093: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #81899: <==closure== 18410 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #25997: <==uncertain_firing== 21080 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #31940: <==unclosure== 25997 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #35900: <==negation-removal== 20955 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #48339: <==unclosure== 56757 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #51203: <==unclosure== 61248 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #53311: <==negation-removal== 18410 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #56757: <==uncertain_firing== 50093 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #61248: <==uncertain_firing== 18410 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #68105: <==negation-removal== 21080 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #72258: <==negation-removal== 81899 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #77266: <==negation-removal== 50093 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #93385: <==negation-removal== 42972 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #25162: <==closure== 83633 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #35194: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #50630: <==closure== 35194 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #54393: <==closure== 84240 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #83633: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #84240: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #18303: <==unclosure== 27965 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #24829: <==unclosure== 65931 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27965: <==uncertain_firing== 35194 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #49523: <==negation-removal== 84240 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #50524: <==uncertain_firing== 83633 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #56671: <==negation-removal== 83633 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #64325: <==negation-removal== 54393 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65931: <==uncertain_firing== 84240 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #66728: <==negation-removal== 25162 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74372: <==negation-removal== 50630 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75502: <==unclosure== 50524 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78768: <==negation-removal== 35194 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #25162: <==closure== 83633 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #35194: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #50630: <==closure== 35194 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #54393: <==closure== 84240 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #83633: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #84240: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #18303: <==unclosure== 27965 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #24829: <==unclosure== 65931 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27965: <==uncertain_firing== 35194 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #49523: <==negation-removal== 84240 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #50524: <==uncertain_firing== 83633 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #56671: <==negation-removal== 83633 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #64325: <==negation-removal== 54393 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65931: <==uncertain_firing== 84240 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #66728: <==negation-removal== 25162 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74372: <==negation-removal== 50630 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75502: <==unclosure== 50524 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78768: <==negation-removal== 35194 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #25162: <==closure== 83633 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #35194: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #50630: <==closure== 35194 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #54393: <==closure== 84240 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #83633: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #84240: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #18303: <==unclosure== 27965 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #24829: <==unclosure== 65931 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #27965: <==uncertain_firing== 35194 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #49523: <==negation-removal== 84240 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #50524: <==uncertain_firing== 83633 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #56671: <==negation-removal== 83633 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #64325: <==negation-removal== 54393 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #65931: <==uncertain_firing== 84240 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #66728: <==negation-removal== 25162 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #74372: <==negation-removal== 50630 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #75502: <==unclosure== 50524 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78768: <==negation-removal== 35194 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #15432: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #37128: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #37281: <==closure== 15432 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #45059: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #55820: <==closure== 45059 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #89627: <==closure== 37128 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #16000: <==uncertain_firing== 37128 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #21017: <==uncertain_firing== 15432 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24088: <==negation-removal== 55820 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #54652: <==negation-removal== 89627 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #55542: <==unclosure== 16000 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #59225: <==negation-removal== 37128 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #66269: <==unclosure== 21017 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #71859: <==negation-removal== 45059 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72745: <==negation-removal== 15432 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75319: <==uncertain_firing== 45059 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #82994: <==negation-removal== 37281 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #88035: <==unclosure== 75319 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #15432: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #37128: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #37281: <==closure== 15432 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #45059: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #55820: <==closure== 45059 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #89627: <==closure== 37128 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #16000: <==uncertain_firing== 37128 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #21017: <==uncertain_firing== 15432 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24088: <==negation-removal== 55820 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #54652: <==negation-removal== 89627 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #55542: <==unclosure== 16000 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #59225: <==negation-removal== 37128 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #66269: <==unclosure== 21017 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #71859: <==negation-removal== 45059 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72745: <==negation-removal== 15432 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75319: <==uncertain_firing== 45059 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #82994: <==negation-removal== 37281 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #88035: <==unclosure== 75319 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #15432: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #37128: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #37281: <==closure== 15432 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #45059: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #55820: <==closure== 45059 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #89627: <==closure== 37128 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #16000: <==uncertain_firing== 37128 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #21017: <==uncertain_firing== 15432 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #24088: <==negation-removal== 55820 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #54652: <==negation-removal== 89627 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #55542: <==unclosure== 16000 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #59225: <==negation-removal== 37128 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #66269: <==unclosure== 21017 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #71859: <==negation-removal== 45059 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72745: <==negation-removal== 15432 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75319: <==uncertain_firing== 45059 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #82994: <==negation-removal== 37281 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #88035: <==unclosure== 75319 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #22361: <==closure== 46546 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #42099: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #42734: <==closure== 65165 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #46546: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #65165: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87402: <==closure== 42099 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #31092: <==negation-removal== 42099 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #31887: <==negation-removal== 22361 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38165: <==uncertain_firing== 46546 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #38763: <==negation-removal== 46546 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #49442: <==unclosure== 58484 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #57179: <==negation-removal== 87402 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #58484: <==uncertain_firing== 42099 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64819: <==negation-removal== 42734 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #69937: <==uncertain_firing== 65165 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #74830: <==negation-removal== 65165 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #77530: <==unclosure== 69937 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #89260: <==unclosure== 38165 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #22361: <==closure== 46546 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #42099: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #42734: <==closure== 65165 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #46546: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #65165: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87402: <==closure== 42099 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #31092: <==negation-removal== 42099 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #31887: <==negation-removal== 22361 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38165: <==uncertain_firing== 46546 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #38763: <==negation-removal== 46546 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #49442: <==unclosure== 58484 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #57179: <==negation-removal== 87402 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #58484: <==uncertain_firing== 42099 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64819: <==negation-removal== 42734 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #69937: <==uncertain_firing== 65165 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #74830: <==negation-removal== 65165 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #77530: <==unclosure== 69937 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #89260: <==unclosure== 38165 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #22361: <==closure== 46546 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #42099: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #42734: <==closure== 65165 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #46546: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #65165: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #87402: <==closure== 42099 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #31092: <==negation-removal== 42099 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #31887: <==negation-removal== 22361 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #38165: <==uncertain_firing== 46546 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #38763: <==negation-removal== 46546 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #49442: <==unclosure== 58484 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #57179: <==negation-removal== 87402 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #58484: <==uncertain_firing== 42099 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64819: <==negation-removal== 42734 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #69937: <==uncertain_firing== 65165 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #74830: <==negation-removal== 65165 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #77530: <==unclosure== 69937 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #89260: <==unclosure== 38165 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #10936: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #21977: <==closure== 56579 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #36237: <==closure== 10936 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42817: <==closure== 46506 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #46506: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #56579: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #10106: <==negation-removal== 21977 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #16989: <==negation-removal== 46506 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #25636: <==uncertain_firing== 10936 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #35276: <==negation-removal== 56579 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #39881: <==uncertain_firing== 56579 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #50119: <==uncertain_firing== 46506 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #55433: <==unclosure== 39881 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #63449: <==unclosure== 25636 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #72506: <==negation-removal== 36237 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #81224: <==unclosure== 50119 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #81308: <==negation-removal== 42817 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #91537: <==negation-removal== 10936 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #10936: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #21977: <==closure== 56579 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #36237: <==closure== 10936 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42817: <==closure== 46506 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #46506: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #56579: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #10106: <==negation-removal== 21977 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #16989: <==negation-removal== 46506 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #25636: <==uncertain_firing== 10936 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #35276: <==negation-removal== 56579 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #39881: <==uncertain_firing== 56579 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #50119: <==uncertain_firing== 46506 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #55433: <==unclosure== 39881 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #63449: <==unclosure== 25636 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #72506: <==negation-removal== 36237 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #81224: <==unclosure== 50119 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #81308: <==negation-removal== 42817 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #91537: <==negation-removal== 10936 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #10936: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #21977: <==closure== 56579 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #36237: <==closure== 10936 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #42817: <==closure== 46506 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #46506: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #56579: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #10106: <==negation-removal== 21977 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #16989: <==negation-removal== 46506 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #25636: <==uncertain_firing== 10936 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #35276: <==negation-removal== 56579 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #39881: <==uncertain_firing== 56579 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #50119: <==uncertain_firing== 46506 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #55433: <==unclosure== 39881 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #63449: <==unclosure== 25636 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #72506: <==negation-removal== 36237 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #81224: <==unclosure== 50119 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #81308: <==negation-removal== 42817 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #91537: <==negation-removal== 10936 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #21510: <==closure== 40242 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40242: origin
                    (Ba_survivorat_s_p1)

                    ; #41741: <==closure== 57299 (pos)
                    (Pb_survivorat_s_p1)

                    ; #57299: origin
                    (Bb_survivorat_s_p1)

                    ; #57603: origin
                    (Bc_survivorat_s_p1)

                    ; #63084: <==closure== 57603 (pos)
                    (Pc_survivorat_s_p1)

                    ; #27073: <==negation-removal== 63084 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #45282: <==negation-removal== 40242 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47412: <==negation-removal== 57603 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #48849: <==negation-removal== 57299 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57952: <==negation-removal== 21510 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #82285: <==negation-removal== 41741 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (at_b_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #21510: <==closure== 40242 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40242: origin
                    (Ba_survivorat_s_p1)

                    ; #41741: <==closure== 57299 (pos)
                    (Pb_survivorat_s_p1)

                    ; #57299: origin
                    (Bb_survivorat_s_p1)

                    ; #57603: origin
                    (Bc_survivorat_s_p1)

                    ; #63084: <==closure== 57603 (pos)
                    (Pc_survivorat_s_p1)

                    ; #27073: <==negation-removal== 63084 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #45282: <==negation-removal== 40242 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47412: <==negation-removal== 57603 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #48849: <==negation-removal== 57299 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57952: <==negation-removal== 21510 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #82285: <==negation-removal== 41741 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #21510: <==closure== 40242 (pos)
                    (Pa_survivorat_s_p1)

                    ; #40242: origin
                    (Ba_survivorat_s_p1)

                    ; #41741: <==closure== 57299 (pos)
                    (Pb_survivorat_s_p1)

                    ; #57299: origin
                    (Bb_survivorat_s_p1)

                    ; #57603: origin
                    (Bc_survivorat_s_p1)

                    ; #63084: <==closure== 57603 (pos)
                    (Pc_survivorat_s_p1)

                    ; #27073: <==negation-removal== 63084 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #45282: <==negation-removal== 40242 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #47412: <==negation-removal== 57603 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #48849: <==negation-removal== 57299 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #57952: <==negation-removal== 21510 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #82285: <==negation-removal== 41741 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #29566: origin
                    (Bc_survivorat_s_p2)

                    ; #42739: <==closure== 29566 (pos)
                    (Pc_survivorat_s_p2)

                    ; #56271: origin
                    (Ba_survivorat_s_p2)

                    ; #60643: <==closure== 62921 (pos)
                    (Pb_survivorat_s_p2)

                    ; #62921: origin
                    (Bb_survivorat_s_p2)

                    ; #88630: <==closure== 56271 (pos)
                    (Pa_survivorat_s_p2)

                    ; #31003: <==negation-removal== 88630 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #44565: <==negation-removal== 60643 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #46917: <==negation-removal== 62921 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63198: <==negation-removal== 29566 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #78474: <==negation-removal== 42739 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #88951: <==negation-removal== 56271 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #29566: origin
                    (Bc_survivorat_s_p2)

                    ; #42739: <==closure== 29566 (pos)
                    (Pc_survivorat_s_p2)

                    ; #56271: origin
                    (Ba_survivorat_s_p2)

                    ; #60643: <==closure== 62921 (pos)
                    (Pb_survivorat_s_p2)

                    ; #62921: origin
                    (Bb_survivorat_s_p2)

                    ; #88630: <==closure== 56271 (pos)
                    (Pa_survivorat_s_p2)

                    ; #31003: <==negation-removal== 88630 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #44565: <==negation-removal== 60643 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #46917: <==negation-removal== 62921 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63198: <==negation-removal== 29566 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #78474: <==negation-removal== 42739 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #88951: <==negation-removal== 56271 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #29566: origin
                    (Bc_survivorat_s_p2)

                    ; #42739: <==closure== 29566 (pos)
                    (Pc_survivorat_s_p2)

                    ; #56271: origin
                    (Ba_survivorat_s_p2)

                    ; #60643: <==closure== 62921 (pos)
                    (Pb_survivorat_s_p2)

                    ; #62921: origin
                    (Bb_survivorat_s_p2)

                    ; #88630: <==closure== 56271 (pos)
                    (Pa_survivorat_s_p2)

                    ; #31003: <==negation-removal== 88630 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #44565: <==negation-removal== 60643 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #46917: <==negation-removal== 62921 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #63198: <==negation-removal== 29566 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #78474: <==negation-removal== 42739 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #88951: <==negation-removal== 56271 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #12479: origin
                    (Bc_survivorat_s_p3)

                    ; #41011: <==closure== 91696 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59701: <==closure== 64101 (pos)
                    (Pb_survivorat_s_p3)

                    ; #64101: origin
                    (Bb_survivorat_s_p3)

                    ; #80559: <==closure== 12479 (pos)
                    (Pc_survivorat_s_p3)

                    ; #91696: origin
                    (Ba_survivorat_s_p3)

                    ; #23408: <==negation-removal== 91696 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37248: <==negation-removal== 41011 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62599: <==negation-removal== 80559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #74752: <==negation-removal== 59701 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #83620: <==negation-removal== 64101 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #84766: <==negation-removal== 12479 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12479: origin
                    (Bc_survivorat_s_p3)

                    ; #41011: <==closure== 91696 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59701: <==closure== 64101 (pos)
                    (Pb_survivorat_s_p3)

                    ; #64101: origin
                    (Bb_survivorat_s_p3)

                    ; #80559: <==closure== 12479 (pos)
                    (Pc_survivorat_s_p3)

                    ; #91696: origin
                    (Ba_survivorat_s_p3)

                    ; #23408: <==negation-removal== 91696 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37248: <==negation-removal== 41011 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62599: <==negation-removal== 80559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #74752: <==negation-removal== 59701 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #83620: <==negation-removal== 64101 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #84766: <==negation-removal== 12479 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #12479: origin
                    (Bc_survivorat_s_p3)

                    ; #41011: <==closure== 91696 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59701: <==closure== 64101 (pos)
                    (Pb_survivorat_s_p3)

                    ; #64101: origin
                    (Bb_survivorat_s_p3)

                    ; #80559: <==closure== 12479 (pos)
                    (Pc_survivorat_s_p3)

                    ; #91696: origin
                    (Ba_survivorat_s_p3)

                    ; #23408: <==negation-removal== 91696 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #37248: <==negation-removal== 41011 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62599: <==negation-removal== 80559 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #74752: <==negation-removal== 59701 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #83620: <==negation-removal== 64101 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #84766: <==negation-removal== 12479 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #33960: <==closure== 86882 (pos)
                    (Pc_survivorat_s_p4)

                    ; #48896: origin
                    (Bb_survivorat_s_p4)

                    ; #75913: origin
                    (Ba_survivorat_s_p4)

                    ; #77028: <==closure== 48896 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86882: origin
                    (Bc_survivorat_s_p4)

                    ; #89317: <==closure== 75913 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12220: <==negation-removal== 33960 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #14707: <==negation-removal== 75913 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36050: <==negation-removal== 89317 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37710: <==negation-removal== 48896 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61585: <==negation-removal== 77028 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66759: <==negation-removal== 86882 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #33960: <==closure== 86882 (pos)
                    (Pc_survivorat_s_p4)

                    ; #48896: origin
                    (Bb_survivorat_s_p4)

                    ; #75913: origin
                    (Ba_survivorat_s_p4)

                    ; #77028: <==closure== 48896 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86882: origin
                    (Bc_survivorat_s_p4)

                    ; #89317: <==closure== 75913 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12220: <==negation-removal== 33960 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #14707: <==negation-removal== 75913 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36050: <==negation-removal== 89317 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37710: <==negation-removal== 48896 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61585: <==negation-removal== 77028 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66759: <==negation-removal== 86882 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #33960: <==closure== 86882 (pos)
                    (Pc_survivorat_s_p4)

                    ; #48896: origin
                    (Bb_survivorat_s_p4)

                    ; #75913: origin
                    (Ba_survivorat_s_p4)

                    ; #77028: <==closure== 48896 (pos)
                    (Pb_survivorat_s_p4)

                    ; #86882: origin
                    (Bc_survivorat_s_p4)

                    ; #89317: <==closure== 75913 (pos)
                    (Pa_survivorat_s_p4)

                    ; #12220: <==negation-removal== 33960 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #14707: <==negation-removal== 75913 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #36050: <==negation-removal== 89317 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #37710: <==negation-removal== 48896 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #61585: <==negation-removal== 77028 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66759: <==negation-removal== 86882 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #21418: origin
                    (Bb_survivorat_s_p5)

                    ; #35526: origin
                    (Ba_survivorat_s_p5)

                    ; #44267: origin
                    (Bc_survivorat_s_p5)

                    ; #46191: <==closure== 35526 (pos)
                    (Pa_survivorat_s_p5)

                    ; #73498: <==closure== 21418 (pos)
                    (Pb_survivorat_s_p5)

                    ; #88942: <==closure== 44267 (pos)
                    (Pc_survivorat_s_p5)

                    ; #11610: <==negation-removal== 21418 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #21816: <==negation-removal== 44267 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #35923: <==negation-removal== 88942 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43175: <==negation-removal== 46191 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #48981: <==negation-removal== 73498 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #76132: <==negation-removal== 35526 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #21418: origin
                    (Bb_survivorat_s_p5)

                    ; #35526: origin
                    (Ba_survivorat_s_p5)

                    ; #44267: origin
                    (Bc_survivorat_s_p5)

                    ; #46191: <==closure== 35526 (pos)
                    (Pa_survivorat_s_p5)

                    ; #73498: <==closure== 21418 (pos)
                    (Pb_survivorat_s_p5)

                    ; #88942: <==closure== 44267 (pos)
                    (Pc_survivorat_s_p5)

                    ; #11610: <==negation-removal== 21418 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #21816: <==negation-removal== 44267 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #35923: <==negation-removal== 88942 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43175: <==negation-removal== 46191 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #48981: <==negation-removal== 73498 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #76132: <==negation-removal== 35526 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #21418: origin
                    (Bb_survivorat_s_p5)

                    ; #35526: origin
                    (Ba_survivorat_s_p5)

                    ; #44267: origin
                    (Bc_survivorat_s_p5)

                    ; #46191: <==closure== 35526 (pos)
                    (Pa_survivorat_s_p5)

                    ; #73498: <==closure== 21418 (pos)
                    (Pb_survivorat_s_p5)

                    ; #88942: <==closure== 44267 (pos)
                    (Pc_survivorat_s_p5)

                    ; #11610: <==negation-removal== 21418 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #21816: <==negation-removal== 44267 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #35923: <==negation-removal== 88942 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43175: <==negation-removal== 46191 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #48981: <==negation-removal== 73498 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #76132: <==negation-removal== 35526 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #62291: origin
                    (Ba_survivorat_s_p6)

                    ; #65768: <==closure== 85324 (pos)
                    (Pc_survivorat_s_p6)

                    ; #71881: <==closure== 79950 (pos)
                    (Pb_survivorat_s_p6)

                    ; #79950: origin
                    (Bb_survivorat_s_p6)

                    ; #85324: origin
                    (Bc_survivorat_s_p6)

                    ; #91431: <==closure== 62291 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14935: <==negation-removal== 79950 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15726: <==negation-removal== 91431 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #25048: <==negation-removal== 85324 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60255: <==negation-removal== 71881 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77778: <==negation-removal== 62291 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86851: <==negation-removal== 65768 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #62291: origin
                    (Ba_survivorat_s_p6)

                    ; #65768: <==closure== 85324 (pos)
                    (Pc_survivorat_s_p6)

                    ; #71881: <==closure== 79950 (pos)
                    (Pb_survivorat_s_p6)

                    ; #79950: origin
                    (Bb_survivorat_s_p6)

                    ; #85324: origin
                    (Bc_survivorat_s_p6)

                    ; #91431: <==closure== 62291 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14935: <==negation-removal== 79950 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15726: <==negation-removal== 91431 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #25048: <==negation-removal== 85324 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60255: <==negation-removal== 71881 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77778: <==negation-removal== 62291 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86851: <==negation-removal== 65768 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #62291: origin
                    (Ba_survivorat_s_p6)

                    ; #65768: <==closure== 85324 (pos)
                    (Pc_survivorat_s_p6)

                    ; #71881: <==closure== 79950 (pos)
                    (Pb_survivorat_s_p6)

                    ; #79950: origin
                    (Bb_survivorat_s_p6)

                    ; #85324: origin
                    (Bc_survivorat_s_p6)

                    ; #91431: <==closure== 62291 (pos)
                    (Pa_survivorat_s_p6)

                    ; #14935: <==negation-removal== 79950 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15726: <==negation-removal== 91431 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #25048: <==negation-removal== 85324 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #60255: <==negation-removal== 71881 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #77778: <==negation-removal== 62291 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #86851: <==negation-removal== 65768 (pos)
                    (not (Bc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #46108: <==closure== 78842 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50539: <==closure== 74924 (pos)
                    (Pa_survivorat_s_p7)

                    ; #74924: origin
                    (Ba_survivorat_s_p7)

                    ; #78842: origin
                    (Bc_survivorat_s_p7)

                    ; #83277: origin
                    (Bb_survivorat_s_p7)

                    ; #88657: <==closure== 83277 (pos)
                    (Pb_survivorat_s_p7)

                    ; #11952: <==negation-removal== 88657 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36147: <==negation-removal== 74924 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #42888: <==negation-removal== 83277 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #45219: <==negation-removal== 50539 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #50106: <==negation-removal== 78842 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82233: <==negation-removal== 46108 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #46108: <==closure== 78842 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50539: <==closure== 74924 (pos)
                    (Pa_survivorat_s_p7)

                    ; #74924: origin
                    (Ba_survivorat_s_p7)

                    ; #78842: origin
                    (Bc_survivorat_s_p7)

                    ; #83277: origin
                    (Bb_survivorat_s_p7)

                    ; #88657: <==closure== 83277 (pos)
                    (Pb_survivorat_s_p7)

                    ; #11952: <==negation-removal== 88657 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36147: <==negation-removal== 74924 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #42888: <==negation-removal== 83277 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #45219: <==negation-removal== 50539 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #50106: <==negation-removal== 78842 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82233: <==negation-removal== 46108 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #46108: <==closure== 78842 (pos)
                    (Pc_survivorat_s_p7)

                    ; #50539: <==closure== 74924 (pos)
                    (Pa_survivorat_s_p7)

                    ; #74924: origin
                    (Ba_survivorat_s_p7)

                    ; #78842: origin
                    (Bc_survivorat_s_p7)

                    ; #83277: origin
                    (Bb_survivorat_s_p7)

                    ; #88657: <==closure== 83277 (pos)
                    (Pb_survivorat_s_p7)

                    ; #11952: <==negation-removal== 88657 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #36147: <==negation-removal== 74924 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #42888: <==negation-removal== 83277 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #45219: <==negation-removal== 50539 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #50106: <==negation-removal== 78842 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #82233: <==negation-removal== 46108 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #20198: origin
                    (Bb_survivorat_s_p8)

                    ; #34119: <==closure== 20198 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46994: <==closure== 59832 (pos)
                    (Pa_survivorat_s_p8)

                    ; #59832: origin
                    (Ba_survivorat_s_p8)

                    ; #60803: origin
                    (Bc_survivorat_s_p8)

                    ; #87496: <==closure== 60803 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37605: <==negation-removal== 87496 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48772: <==negation-removal== 46994 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #50963: <==negation-removal== 20198 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #73588: <==negation-removal== 34119 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85625: <==negation-removal== 60803 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #85920: <==negation-removal== 59832 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #20198: origin
                    (Bb_survivorat_s_p8)

                    ; #34119: <==closure== 20198 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46994: <==closure== 59832 (pos)
                    (Pa_survivorat_s_p8)

                    ; #59832: origin
                    (Ba_survivorat_s_p8)

                    ; #60803: origin
                    (Bc_survivorat_s_p8)

                    ; #87496: <==closure== 60803 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37605: <==negation-removal== 87496 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48772: <==negation-removal== 46994 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #50963: <==negation-removal== 20198 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #73588: <==negation-removal== 34119 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85625: <==negation-removal== 60803 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #85920: <==negation-removal== 59832 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #20198: origin
                    (Bb_survivorat_s_p8)

                    ; #34119: <==closure== 20198 (pos)
                    (Pb_survivorat_s_p8)

                    ; #46994: <==closure== 59832 (pos)
                    (Pa_survivorat_s_p8)

                    ; #59832: origin
                    (Ba_survivorat_s_p8)

                    ; #60803: origin
                    (Bc_survivorat_s_p8)

                    ; #87496: <==closure== 60803 (pos)
                    (Pc_survivorat_s_p8)

                    ; #37605: <==negation-removal== 87496 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #48772: <==negation-removal== 46994 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #50963: <==negation-removal== 20198 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #73588: <==negation-removal== 34119 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #85625: <==negation-removal== 60803 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #85920: <==negation-removal== 59832 (pos)
                    (not (Pa_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #23344: origin
                    (Bc_survivorat_s_p9)

                    ; #41488: <==closure== 87359 (pos)
                    (Pb_survivorat_s_p9)

                    ; #76966: <==closure== 85321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #79724: <==closure== 23344 (pos)
                    (Pc_survivorat_s_p9)

                    ; #85321: origin
                    (Ba_survivorat_s_p9)

                    ; #87359: origin
                    (Bb_survivorat_s_p9)

                    ; #22862: <==negation-removal== 76966 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #24673: <==negation-removal== 87359 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #38611: <==negation-removal== 79724 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #39014: <==negation-removal== 23344 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72759: <==negation-removal== 41488 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #86318: <==negation-removal== 85321 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #23344: origin
                    (Bc_survivorat_s_p9)

                    ; #41488: <==closure== 87359 (pos)
                    (Pb_survivorat_s_p9)

                    ; #76966: <==closure== 85321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #79724: <==closure== 23344 (pos)
                    (Pc_survivorat_s_p9)

                    ; #85321: origin
                    (Ba_survivorat_s_p9)

                    ; #87359: origin
                    (Bb_survivorat_s_p9)

                    ; #22862: <==negation-removal== 76966 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #24673: <==negation-removal== 87359 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #38611: <==negation-removal== 79724 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #39014: <==negation-removal== 23344 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72759: <==negation-removal== 41488 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #86318: <==negation-removal== 85321 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #23344: origin
                    (Bc_survivorat_s_p9)

                    ; #41488: <==closure== 87359 (pos)
                    (Pb_survivorat_s_p9)

                    ; #76966: <==closure== 85321 (pos)
                    (Pa_survivorat_s_p9)

                    ; #79724: <==closure== 23344 (pos)
                    (Pc_survivorat_s_p9)

                    ; #85321: origin
                    (Ba_survivorat_s_p9)

                    ; #87359: origin
                    (Bb_survivorat_s_p9)

                    ; #22862: <==negation-removal== 76966 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #24673: <==negation-removal== 87359 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #38611: <==negation-removal== 79724 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #39014: <==negation-removal== 23344 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #72759: <==negation-removal== 41488 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #86318: <==negation-removal== 85321 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #62595: origin
                    (not_at_a_p1)

                    ; #81427: origin
                    (at_a_p5)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #62595: origin
                    (not_at_a_p1)

                    ; #82673: origin
                    (at_a_p8)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #62595: origin
                    (not_at_a_p1)

                    ; #61434: <==negation-removal== 62595 (pos)
                    (not (at_a_p1))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #64067: origin
                    (not_at_a_p2)

                    ; #81427: origin
                    (at_a_p5)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #64067: origin
                    (not_at_a_p2)

                    ; #82673: origin
                    (at_a_p8)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #64067: origin
                    (not_at_a_p2)

                    ; #60372: <==negation-removal== 64067 (pos)
                    (not (at_a_p2))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #61434: origin
                    (at_a_p1)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #60372: origin
                    (at_a_p2)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #16814: origin
                    (not_at_a_p3)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #62403: origin
                    (at_a_p4)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #81427: origin
                    (at_a_p5)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #62307: origin
                    (at_a_p6)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #55153: origin
                    (at_a_p7)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #82673: origin
                    (at_a_p8)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #16814: origin
                    (not_at_a_p3)

                    ; #22512: origin
                    (at_a_p9)

                    ; #11431: <==negation-removal== 16814 (pos)
                    (not (at_a_p3))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #66552: origin
                    (not_at_a_p4)

                    ; #81427: origin
                    (at_a_p5)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #66552: origin
                    (not_at_a_p4)

                    ; #82673: origin
                    (at_a_p8)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #66552: origin
                    (not_at_a_p4)

                    ; #62403: <==negation-removal== 66552 (pos)
                    (not (at_a_p4))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #61434: origin
                    (at_a_p1)

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #60372: origin
                    (at_a_p2)

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #53956: origin
                    (not_at_a_p5)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #62403: origin
                    (at_a_p4)

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #81427: origin
                    (at_a_p5)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #62307: origin
                    (at_a_p6)

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #55153: origin
                    (at_a_p7)

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #53956: origin
                    (not_at_a_p5)

                    ; #82673: origin
                    (at_a_p8)

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #53956: origin
                    (not_at_a_p5)

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))

                    ; #81427: <==negation-removal== 53956 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #81427: origin
                    (at_a_p5)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #82673: origin
                    (at_a_p8)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #86345: origin
                    (not_at_a_p6)

                    ; #62307: <==negation-removal== 86345 (pos)
                    (not (at_a_p6))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #76157: origin
                    (not_at_a_p7)

                    ; #81427: origin
                    (at_a_p5)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #76157: origin
                    (not_at_a_p7)

                    ; #82673: origin
                    (at_a_p8)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #76157: origin
                    (not_at_a_p7)

                    ; #55153: <==negation-removal== 76157 (pos)
                    (not (at_a_p7))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #81427: origin
                    (at_a_p5)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #82673: origin
                    (at_a_p8)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #83952: origin
                    (not_at_a_p8)

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))

                    ; #82673: <==negation-removal== 83952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #61434: origin
                    (at_a_p1)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #62595: <==negation-removal== 61434 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #60372: origin
                    (at_a_p2)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #64067: <==negation-removal== 60372 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #11431: origin
                    (at_a_p3)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #16814: <==negation-removal== 11431 (pos)
                    (not (not_at_a_p3))

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #62403: origin
                    (at_a_p4)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #66552: <==negation-removal== 62403 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #64637: origin
                    (not_at_a_p9)

                    ; #81427: origin
                    (at_a_p5)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #53956: <==negation-removal== 81427 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #62307: origin
                    (at_a_p6)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #86345: <==negation-removal== 62307 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #55153: origin
                    (at_a_p7)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #76157: <==negation-removal== 55153 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #64637: origin
                    (not_at_a_p9)

                    ; #82673: origin
                    (at_a_p8)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #83952: <==negation-removal== 82673 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #22512: origin
                    (at_a_p9)

                    ; #64637: origin
                    (not_at_a_p9)

                    ; #22512: <==negation-removal== 64637 (pos)
                    (not (at_a_p9))

                    ; #64637: <==negation-removal== 22512 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #54845: origin
                    (not_at_b_p1)

                    ; #87684: origin
                    (at_b_p1)

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #50002: origin
                    (at_b_p2)

                    ; #54845: origin
                    (not_at_b_p1)

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #54845: origin
                    (not_at_b_p1)

                    ; #89036: origin
                    (at_b_p3)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #54845: origin
                    (not_at_b_p1)

                    ; #65286: origin
                    (at_b_p4)

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #54845: origin
                    (not_at_b_p1)

                    ; #69665: origin
                    (at_b_p5)

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #54845: origin
                    (not_at_b_p1)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #54845: origin
                    (not_at_b_p1)

                    ; #62653: origin
                    (at_b_p7)

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #54845: origin
                    (not_at_b_p1)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #50456: origin
                    (at_b_p9)

                    ; #54845: origin
                    (not_at_b_p1)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #87684: <==negation-removal== 54845 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #62257: origin
                    (not_at_b_p2)

                    ; #87684: origin
                    (at_b_p1)

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #50002: origin
                    (at_b_p2)

                    ; #62257: origin
                    (not_at_b_p2)

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #62257: origin
                    (not_at_b_p2)

                    ; #89036: origin
                    (at_b_p3)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #62257: origin
                    (not_at_b_p2)

                    ; #65286: origin
                    (at_b_p4)

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #62257: origin
                    (not_at_b_p2)

                    ; #69665: origin
                    (at_b_p5)

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #62257: origin
                    (not_at_b_p2)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #62257: origin
                    (not_at_b_p2)

                    ; #62653: origin
                    (at_b_p7)

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #62257: origin
                    (not_at_b_p2)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #50456: origin
                    (at_b_p9)

                    ; #62257: origin
                    (not_at_b_p2)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #50002: <==negation-removal== 62257 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #87684: origin
                    (at_b_p1)

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #50002: origin
                    (at_b_p2)

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #89036: origin
                    (at_b_p3)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #65286: origin
                    (at_b_p4)

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #69665: origin
                    (at_b_p5)

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #46849: origin
                    (not_at_b_p3)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #62653: origin
                    (at_b_p7)

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #46849: origin
                    (not_at_b_p3)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #46849: origin
                    (not_at_b_p3)

                    ; #50456: origin
                    (at_b_p9)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #89036: <==negation-removal== 46849 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #87684: origin
                    (at_b_p1)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #50002: origin
                    (at_b_p2)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #89036: origin
                    (at_b_p3)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #65286: origin
                    (at_b_p4)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #69665: origin
                    (at_b_p5)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #62653: origin
                    (at_b_p7)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #50456: origin
                    (at_b_p9)

                    ; #89143: origin
                    (not_at_b_p4)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #65286: <==negation-removal== 89143 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #72907: origin
                    (not_at_b_p5)

                    ; #87684: origin
                    (at_b_p1)

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #50002: origin
                    (at_b_p2)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #72907: origin
                    (not_at_b_p5)

                    ; #89036: origin
                    (at_b_p3)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #65286: origin
                    (at_b_p4)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #69665: origin
                    (at_b_p5)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #62653: origin
                    (at_b_p7)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #50456: origin
                    (at_b_p9)

                    ; #72907: origin
                    (not_at_b_p5)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #69665: <==negation-removal== 72907 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #87684: origin
                    (at_b_p1)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #50002: origin
                    (at_b_p2)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #89036: origin
                    (at_b_p3)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #65286: origin
                    (at_b_p4)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #69665: origin
                    (at_b_p5)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #44652: origin
                    (at_b_p6)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #62653: origin
                    (at_b_p7)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #23782: origin
                    (at_b_p8)

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #19841: origin
                    (not_at_b_p6)

                    ; #50456: origin
                    (at_b_p9)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #44652: <==negation-removal== 19841 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #78993: origin
                    (not_at_b_p7)

                    ; #87684: origin
                    (at_b_p1)

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #50002: origin
                    (at_b_p2)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #78993: origin
                    (not_at_b_p7)

                    ; #89036: origin
                    (at_b_p3)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #65286: origin
                    (at_b_p4)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #69665: origin
                    (at_b_p5)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #62653: origin
                    (at_b_p7)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #50456: origin
                    (at_b_p9)

                    ; #78993: origin
                    (not_at_b_p7)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #62653: <==negation-removal== 78993 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #87684: origin
                    (at_b_p1)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #50002: origin
                    (at_b_p2)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #89036: origin
                    (at_b_p3)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #65286: origin
                    (at_b_p4)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #69665: origin
                    (at_b_p5)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #44652: origin
                    (at_b_p6)

                    ; #49688: origin
                    (not_at_b_p8)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #62653: origin
                    (at_b_p7)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #23782: origin
                    (at_b_p8)

                    ; #49688: origin
                    (not_at_b_p8)

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #49688: origin
                    (not_at_b_p8)

                    ; #50456: origin
                    (at_b_p9)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #23782: <==negation-removal== 49688 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #87684: origin
                    (at_b_p1)

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))

                    ; #54845: <==negation-removal== 87684 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #50002: origin
                    (at_b_p2)

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))

                    ; #62257: <==negation-removal== 50002 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #89036: origin
                    (at_b_p3)

                    ; #46849: <==negation-removal== 89036 (pos)
                    (not (not_at_b_p3))

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #65286: origin
                    (at_b_p4)

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))

                    ; #89143: <==negation-removal== 65286 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #69665: origin
                    (at_b_p5)

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))

                    ; #72907: <==negation-removal== 69665 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #44652: origin
                    (at_b_p6)

                    ; #19841: <==negation-removal== 44652 (pos)
                    (not (not_at_b_p6))

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #62653: origin
                    (at_b_p7)

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))

                    ; #78993: <==negation-removal== 62653 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #23782: origin
                    (at_b_p8)

                    ; #49688: <==negation-removal== 23782 (pos)
                    (not (not_at_b_p8))

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #18059: origin
                    (not_at_b_p9)

                    ; #50456: origin
                    (at_b_p9)

                    ; #18059: <==negation-removal== 50456 (pos)
                    (not (not_at_b_p9))

                    ; #50456: <==negation-removal== 18059 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #36985: origin
                    (at_c_p1)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #47415: origin
                    (at_c_p2)

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #23468: origin
                    (at_c_p3)

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #85985: origin
                    (at_c_p4)

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #63185: origin
                    (at_c_p5)

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #68577: origin
                    (at_c_p6)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #32634: origin
                    (at_c_p7)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #55478: origin
                    (at_c_p8)

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #22351: origin
                    (not_at_c_p1)

                    ; #45942: origin
                    (at_c_p9)

                    ; #36985: <==negation-removal== 22351 (pos)
                    (not (at_c_p1))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #36985: origin
                    (at_c_p1)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #47415: origin
                    (at_c_p2)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #85245: origin
                    (not_at_c_p2)

                    ; #85985: origin
                    (at_c_p4)

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #63185: origin
                    (at_c_p5)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #68577: origin
                    (at_c_p6)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #32634: origin
                    (at_c_p7)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #55478: origin
                    (at_c_p8)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #45942: origin
                    (at_c_p9)

                    ; #85245: origin
                    (not_at_c_p2)

                    ; #47415: <==negation-removal== 85245 (pos)
                    (not (at_c_p2))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #36985: origin
                    (at_c_p1)

                    ; #54743: origin
                    (not_at_c_p3)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #47415: origin
                    (at_c_p2)

                    ; #54743: origin
                    (not_at_c_p3)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #54743: origin
                    (not_at_c_p3)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #54743: origin
                    (not_at_c_p3)

                    ; #85985: origin
                    (at_c_p4)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #54743: origin
                    (not_at_c_p3)

                    ; #63185: origin
                    (at_c_p5)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #54743: origin
                    (not_at_c_p3)

                    ; #68577: origin
                    (at_c_p6)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #32634: origin
                    (at_c_p7)

                    ; #54743: origin
                    (not_at_c_p3)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #54743: origin
                    (not_at_c_p3)

                    ; #55478: origin
                    (at_c_p8)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #45942: origin
                    (at_c_p9)

                    ; #54743: origin
                    (not_at_c_p3)

                    ; #23468: <==negation-removal== 54743 (pos)
                    (not (at_c_p3))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #36985: origin
                    (at_c_p1)

                    ; #58166: origin
                    (not_at_c_p4)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #47415: origin
                    (at_c_p2)

                    ; #58166: origin
                    (not_at_c_p4)

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #58166: origin
                    (not_at_c_p4)

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #58166: origin
                    (not_at_c_p4)

                    ; #85985: origin
                    (at_c_p4)

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #58166: origin
                    (not_at_c_p4)

                    ; #63185: origin
                    (at_c_p5)

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #58166: origin
                    (not_at_c_p4)

                    ; #68577: origin
                    (at_c_p6)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #32634: origin
                    (at_c_p7)

                    ; #58166: origin
                    (not_at_c_p4)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #55478: origin
                    (at_c_p8)

                    ; #58166: origin
                    (not_at_c_p4)

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #45942: origin
                    (at_c_p9)

                    ; #58166: origin
                    (not_at_c_p4)

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))

                    ; #85985: <==negation-removal== 58166 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #36985: origin
                    (at_c_p1)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #47415: origin
                    (at_c_p2)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #84591: origin
                    (not_at_c_p5)

                    ; #85985: origin
                    (at_c_p4)

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #63185: origin
                    (at_c_p5)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #68577: origin
                    (at_c_p6)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #32634: origin
                    (at_c_p7)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #55478: origin
                    (at_c_p8)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #45942: origin
                    (at_c_p9)

                    ; #84591: origin
                    (not_at_c_p5)

                    ; #63185: <==negation-removal== 84591 (pos)
                    (not (at_c_p5))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #36985: origin
                    (at_c_p1)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #47415: origin
                    (at_c_p2)

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #23468: origin
                    (at_c_p3)

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #85985: origin
                    (at_c_p4)

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #63185: origin
                    (at_c_p5)

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #68577: origin
                    (at_c_p6)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #32634: origin
                    (at_c_p7)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #55478: origin
                    (at_c_p8)

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #19785: origin
                    (not_at_c_p6)

                    ; #45942: origin
                    (at_c_p9)

                    ; #68577: <==negation-removal== 19785 (pos)
                    (not (at_c_p6))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #36985: origin
                    (at_c_p1)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #47415: origin
                    (at_c_p2)

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #29734: origin
                    (not_at_c_p7)

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #85985: origin
                    (at_c_p4)

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #63185: origin
                    (at_c_p5)

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #68577: origin
                    (at_c_p6)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #32634: origin
                    (at_c_p7)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #55478: origin
                    (at_c_p8)

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #29734: origin
                    (not_at_c_p7)

                    ; #45942: origin
                    (at_c_p9)

                    ; #32634: <==negation-removal== 29734 (pos)
                    (not (at_c_p7))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #36985: origin
                    (at_c_p1)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #47415: origin
                    (at_c_p2)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #76952: origin
                    (not_at_c_p8)

                    ; #85985: origin
                    (at_c_p4)

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #63185: origin
                    (at_c_p5)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #68577: origin
                    (at_c_p6)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #32634: origin
                    (at_c_p7)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #55478: origin
                    (at_c_p8)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #45942: origin
                    (at_c_p9)

                    ; #76952: origin
                    (not_at_c_p8)

                    ; #55478: <==negation-removal== 76952 (pos)
                    (not (at_c_p8))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #36985: origin
                    (at_c_p1)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #22351: <==negation-removal== 36985 (pos)
                    (not (not_at_c_p1))

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #47415: origin
                    (at_c_p2)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))

                    ; #85245: <==negation-removal== 47415 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #23468: origin
                    (at_c_p3)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))

                    ; #54743: <==negation-removal== 23468 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #72203: origin
                    (not_at_c_p9)

                    ; #85985: origin
                    (at_c_p4)

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))

                    ; #58166: <==negation-removal== 85985 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #63185: origin
                    (at_c_p5)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))

                    ; #84591: <==negation-removal== 63185 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #68577: origin
                    (at_c_p6)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #19785: <==negation-removal== 68577 (pos)
                    (not (not_at_c_p6))

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #32634: origin
                    (at_c_p7)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #29734: <==negation-removal== 32634 (pos)
                    (not (not_at_c_p7))

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #55478: origin
                    (at_c_p8)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))

                    ; #76952: <==negation-removal== 55478 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #45942: origin
                    (at_c_p9)

                    ; #72203: origin
                    (not_at_c_p9)

                    ; #45942: <==negation-removal== 72203 (pos)
                    (not (at_c_p9))

                    ; #72203: <==negation-removal== 45942 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14167: origin
                    (checked_p1)

                    ; #16620: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #28433: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #31409: <==closure== 54117 (pos)
                    (Pc_checked_p1)

                    ; #33394: <==closure== 63905 (pos)
                    (Pb_checked_p1)

                    ; #36873: <==closure== 16620 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #40909: <==commonly_known== 14167 (pos)
                    (Ba_checked_p1)

                    ; #54117: <==commonly_known== 14167 (pos)
                    (Bc_checked_p1)

                    ; #60249: <==closure== 28433 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #63905: <==commonly_known== 14167 (pos)
                    (Bb_checked_p1)

                    ; #89060: <==closure== 40909 (pos)
                    (Pa_checked_p1)

                    ; #21018: <==unclosure== 82590 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #22088: <==unclosure== 73340 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #23453: <==negation-removal== 14167 (pos)
                    (not (not_checked_p1))

                    ; #24213: <==negation-removal== 54117 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24507: <==negation-removal== 40909 (pos)
                    (not (Pa_not_checked_p1))

                    ; #29217: <==negation-removal== 33394 (pos)
                    (not (Bb_not_checked_p1))

                    ; #30332: <==negation-removal== 31409 (pos)
                    (not (Bc_not_checked_p1))

                    ; #53474: <==negation-removal== 16620 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #61110: <==negation-removal== 89060 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68869: <==negation-removal== 36873 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #69593: <==negation-removal== 60249 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #73340: <==uncertain_firing== 16620 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #75213: <==negation-removal== 63905 (pos)
                    (not (Pb_not_checked_p1))

                    ; #82590: <==uncertain_firing== 28433 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #92212: <==negation-removal== 28433 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10729: <==commonly_known== 55379 (pos)
                    (Ba_checked_p2)

                    ; #13760: <==closure== 10729 (pos)
                    (Pa_checked_p2)

                    ; #20848: <==commonly_known== 55379 (pos)
                    (Bb_checked_p2)

                    ; #30169: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #33188: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #33593: <==commonly_known== 55379 (pos)
                    (Bc_checked_p2)

                    ; #44333: <==closure== 30169 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #50321: <==closure== 33188 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #55379: origin
                    (checked_p2)

                    ; #69933: <==closure== 20848 (pos)
                    (Pb_checked_p2)

                    ; #84509: <==closure== 33593 (pos)
                    (Pc_checked_p2)

                    ; #12677: <==unclosure== 79808 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #17214: <==negation-removal== 84509 (pos)
                    (not (Bc_not_checked_p2))

                    ; #28818: <==negation-removal== 10729 (pos)
                    (not (Pa_not_checked_p2))

                    ; #44329: <==uncertain_firing== 33188 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #44650: <==negation-removal== 50321 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #48420: <==negation-removal== 55379 (pos)
                    (not (not_checked_p2))

                    ; #54014: <==negation-removal== 20848 (pos)
                    (not (Pb_not_checked_p2))

                    ; #60921: <==negation-removal== 33188 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #62576: <==negation-removal== 30169 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #67128: <==negation-removal== 33593 (pos)
                    (not (Pc_not_checked_p2))

                    ; #75618: <==negation-removal== 44333 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #79808: <==uncertain_firing== 30169 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #80396: <==unclosure== 44329 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #83373: <==negation-removal== 69933 (pos)
                    (not (Bb_not_checked_p2))

                    ; #91671: <==negation-removal== 13760 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #16319: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #28543: <==commonly_known== 56477 (pos)
                    (Ba_checked_p3)

                    ; #28726: <==closure== 60451 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #56477: origin
                    (checked_p3)

                    ; #60451: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #65897: <==closure== 82566 (pos)
                    (Pb_checked_p3)

                    ; #70223: <==commonly_known== 56477 (pos)
                    (Bc_checked_p3)

                    ; #82566: <==commonly_known== 56477 (pos)
                    (Bb_checked_p3)

                    ; #83078: <==closure== 70223 (pos)
                    (Pc_checked_p3)

                    ; #84745: <==closure== 28543 (pos)
                    (Pa_checked_p3)

                    ; #87268: <==closure== 16319 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #13954: <==negation-removal== 28726 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #14732: <==negation-removal== 60451 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #23969: <==negation-removal== 70223 (pos)
                    (not (Pc_not_checked_p3))

                    ; #28180: <==uncertain_firing== 16319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #29074: <==unclosure== 39077 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #35423: <==negation-removal== 16319 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #39077: <==uncertain_firing== 60451 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #73682: <==negation-removal== 82566 (pos)
                    (not (Pb_not_checked_p3))

                    ; #79754: <==negation-removal== 65897 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82430: <==negation-removal== 84745 (pos)
                    (not (Ba_not_checked_p3))

                    ; #83329: <==negation-removal== 56477 (pos)
                    (not (not_checked_p3))

                    ; #83975: <==unclosure== 28180 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #85922: <==negation-removal== 83078 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86551: <==negation-removal== 28543 (pos)
                    (not (Pa_not_checked_p3))

                    ; #87570: <==negation-removal== 87268 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11156: <==commonly_known== 33509 (pos)
                    (Bc_checked_p4)

                    ; #13031: <==closure== 36797 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #27538: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #33509: origin
                    (checked_p4)

                    ; #36797: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #37642: <==commonly_known== 33509 (pos)
                    (Bb_checked_p4)

                    ; #40418: <==closure== 52704 (pos)
                    (Pa_checked_p4)

                    ; #52704: <==commonly_known== 33509 (pos)
                    (Ba_checked_p4)

                    ; #53822: <==closure== 11156 (pos)
                    (Pc_checked_p4)

                    ; #58296: <==closure== 27538 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #78866: <==closure== 37642 (pos)
                    (Pb_checked_p4)

                    ; #10740: <==negation-removal== 36797 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #18597: <==unclosure== 30556 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #19570: <==negation-removal== 58296 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #28719: <==unclosure== 74137 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #30556: <==uncertain_firing== 27538 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #34920: <==negation-removal== 27538 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #38618: <==negation-removal== 53822 (pos)
                    (not (Bc_not_checked_p4))

                    ; #43764: <==negation-removal== 78866 (pos)
                    (not (Bb_not_checked_p4))

                    ; #46132: <==negation-removal== 52704 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49564: <==negation-removal== 33509 (pos)
                    (not (not_checked_p4))

                    ; #67308: <==negation-removal== 11156 (pos)
                    (not (Pc_not_checked_p4))

                    ; #74137: <==uncertain_firing== 36797 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #80504: <==negation-removal== 40418 (pos)
                    (not (Ba_not_checked_p4))

                    ; #88911: <==negation-removal== 37642 (pos)
                    (not (Pb_not_checked_p4))

                    ; #91124: <==negation-removal== 13031 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14582: <==commonly_known== 69891 (pos)
                    (Bc_checked_p5)

                    ; #14797: <==commonly_known== 69891 (pos)
                    (Ba_checked_p5)

                    ; #14997: <==closure== 46266 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #15528: <==closure== 14797 (pos)
                    (Pa_checked_p5)

                    ; #19927: <==closure== 62584 (pos)
                    (Pb_checked_p5)

                    ; #34863: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #46266: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #62584: <==commonly_known== 69891 (pos)
                    (Bb_checked_p5)

                    ; #65316: <==closure== 14582 (pos)
                    (Pc_checked_p5)

                    ; #69891: origin
                    (checked_p5)

                    ; #84082: <==closure== 34863 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #11397: <==negation-removal== 69891 (pos)
                    (not (not_checked_p5))

                    ; #11893: <==negation-removal== 65316 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14516: <==negation-removal== 14797 (pos)
                    (not (Pa_not_checked_p5))

                    ; #26213: <==negation-removal== 84082 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #30717: <==negation-removal== 19927 (pos)
                    (not (Bb_not_checked_p5))

                    ; #34334: <==negation-removal== 46266 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #38555: <==negation-removal== 62584 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40317: <==uncertain_firing== 34863 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #42101: <==negation-removal== 14997 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #43034: <==negation-removal== 14582 (pos)
                    (not (Pc_not_checked_p5))

                    ; #43561: <==negation-removal== 34863 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #56007: <==unclosure== 40317 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #60448: <==negation-removal== 15528 (pos)
                    (not (Ba_not_checked_p5))

                    ; #70376: <==unclosure== 79924 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #79924: <==uncertain_firing== 46266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13210: <==closure== 82338 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #27354: <==commonly_known== 27376 (pos)
                    (Ba_checked_p6)

                    ; #27376: origin
                    (checked_p6)

                    ; #29464: <==commonly_known== 27376 (pos)
                    (Bb_checked_p6)

                    ; #34053: <==closure== 55732 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #38674: <==closure== 29464 (pos)
                    (Pb_checked_p6)

                    ; #55732: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #70011: <==closure== 82956 (pos)
                    (Pc_checked_p6)

                    ; #70711: <==closure== 27354 (pos)
                    (Pa_checked_p6)

                    ; #82338: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #82956: <==commonly_known== 27376 (pos)
                    (Bc_checked_p6)

                    ; #10150: <==negation-removal== 27376 (pos)
                    (not (not_checked_p6))

                    ; #22503: <==negation-removal== 29464 (pos)
                    (not (Pb_not_checked_p6))

                    ; #22678: <==negation-removal== 55732 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #31995: <==negation-removal== 70011 (pos)
                    (not (Bc_not_checked_p6))

                    ; #36160: <==negation-removal== 34053 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #38994: <==negation-removal== 27354 (pos)
                    (not (Pa_not_checked_p6))

                    ; #46220: <==negation-removal== 82956 (pos)
                    (not (Pc_not_checked_p6))

                    ; #51535: <==uncertain_firing== 82338 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #64193: <==negation-removal== 13210 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #73618: <==unclosure== 74278 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #74278: <==uncertain_firing== 55732 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #76778: <==negation-removal== 82338 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #84833: <==negation-removal== 70711 (pos)
                    (not (Ba_not_checked_p6))

                    ; #89495: <==negation-removal== 38674 (pos)
                    (not (Bb_not_checked_p6))

                    ; #90914: <==unclosure== 51535 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19641: origin
                    (checked_p7)

                    ; #21096: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #39796: <==closure== 83005 (pos)
                    (Pa_checked_p7)

                    ; #44222: <==closure== 21096 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #45908: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #56455: <==closure== 62153 (pos)
                    (Pb_checked_p7)

                    ; #57475: <==closure== 45908 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #62153: <==commonly_known== 19641 (pos)
                    (Bb_checked_p7)

                    ; #66625: <==closure== 69423 (pos)
                    (Pc_checked_p7)

                    ; #69423: <==commonly_known== 19641 (pos)
                    (Bc_checked_p7)

                    ; #83005: <==commonly_known== 19641 (pos)
                    (Ba_checked_p7)

                    ; #16076: <==negation-removal== 83005 (pos)
                    (not (Pa_not_checked_p7))

                    ; #26111: <==negation-removal== 69423 (pos)
                    (not (Pc_not_checked_p7))

                    ; #27397: <==uncertain_firing== 21096 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #45181: <==negation-removal== 66625 (pos)
                    (not (Bc_not_checked_p7))

                    ; #50405: <==negation-removal== 57475 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #55020: <==negation-removal== 21096 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #55116: <==unclosure== 27397 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #56838: <==negation-removal== 56455 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64823: <==negation-removal== 44222 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #72623: <==negation-removal== 19641 (pos)
                    (not (not_checked_p7))

                    ; #79925: <==unclosure== 89493 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #80454: <==negation-removal== 62153 (pos)
                    (not (Pb_not_checked_p7))

                    ; #83630: <==negation-removal== 45908 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #89493: <==uncertain_firing== 45908 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #91448: <==negation-removal== 39796 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #20851: <==closure== 32582 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #32582: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #36428: <==closure== 58774 (pos)
                    (Pc_checked_p8)

                    ; #43776: <==closure== 58954 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #50035: <==closure== 81477 (pos)
                    (Pa_checked_p8)

                    ; #50451: <==closure== 80783 (pos)
                    (Pb_checked_p8)

                    ; #58774: <==commonly_known== 88288 (pos)
                    (Bc_checked_p8)

                    ; #58954: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #80783: <==commonly_known== 88288 (pos)
                    (Bb_checked_p8)

                    ; #81477: <==commonly_known== 88288 (pos)
                    (Ba_checked_p8)

                    ; #88288: origin
                    (checked_p8)

                    ; #13505: <==unclosure== 79452 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #15625: <==negation-removal== 88288 (pos)
                    (not (not_checked_p8))

                    ; #18216: <==negation-removal== 43776 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #19096: <==negation-removal== 32582 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #19509: <==negation-removal== 50035 (pos)
                    (not (Ba_not_checked_p8))

                    ; #24795: <==negation-removal== 58774 (pos)
                    (not (Pc_not_checked_p8))

                    ; #33104: <==negation-removal== 50451 (pos)
                    (not (Bb_not_checked_p8))

                    ; #45408: <==negation-removal== 36428 (pos)
                    (not (Bc_not_checked_p8))

                    ; #52888: <==negation-removal== 20851 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #52913: <==negation-removal== 58954 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #56960: <==negation-removal== 81477 (pos)
                    (not (Pa_not_checked_p8))

                    ; #66658: <==negation-removal== 80783 (pos)
                    (not (Pb_not_checked_p8))

                    ; #75744: <==unclosure== 78060 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #78060: <==uncertain_firing== 32582 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #79452: <==uncertain_firing== 58954 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19056: <==closure== 58029 (pos)
                    (Pa_checked_p9)

                    ; #31453: <==closure== 59204 (pos)
                    (Pb_checked_p9)

                    ; #33137: <==commonly_known== 55492 (pos)
                    (Bc_checked_p9)

                    ; #38519: <==closure== 89255 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #55492: origin
                    (checked_p9)

                    ; #58029: <==commonly_known== 55492 (pos)
                    (Ba_checked_p9)

                    ; #59204: <==commonly_known== 55492 (pos)
                    (Bb_checked_p9)

                    ; #72734: <==closure== 33137 (pos)
                    (Pc_checked_p9)

                    ; #74996: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #84142: <==closure== 74996 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #89255: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #12665: <==negation-removal== 31453 (pos)
                    (not (Bb_not_checked_p9))

                    ; #17597: <==negation-removal== 59204 (pos)
                    (not (Pb_not_checked_p9))

                    ; #19000: <==uncertain_firing== 74996 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #19001: <==unclosure== 21650 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #21650: <==uncertain_firing== 89255 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #27834: <==negation-removal== 38519 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #28324: <==negation-removal== 74996 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #46176: <==unclosure== 19000 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #47647: <==negation-removal== 58029 (pos)
                    (not (Pa_not_checked_p9))

                    ; #49528: <==negation-removal== 84142 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57870: <==negation-removal== 89255 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #64787: <==negation-removal== 33137 (pos)
                    (not (Pc_not_checked_p9))

                    ; #76739: <==negation-removal== 72734 (pos)
                    (not (Bc_not_checked_p9))

                    ; #80273: <==negation-removal== 55492 (pos)
                    (not (not_checked_p9))

                    ; #82837: <==negation-removal== 19056 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14167: origin
                    (checked_p1)

                    ; #23480: <==closure== 87706 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #31409: <==closure== 54117 (pos)
                    (Pc_checked_p1)

                    ; #33394: <==closure== 63905 (pos)
                    (Pb_checked_p1)

                    ; #39157: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #40909: <==commonly_known== 14167 (pos)
                    (Ba_checked_p1)

                    ; #49459: <==closure== 39157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #54117: <==commonly_known== 14167 (pos)
                    (Bc_checked_p1)

                    ; #63905: <==commonly_known== 14167 (pos)
                    (Bb_checked_p1)

                    ; #87706: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #89060: <==closure== 40909 (pos)
                    (Pa_checked_p1)

                    ; #23453: <==negation-removal== 14167 (pos)
                    (not (not_checked_p1))

                    ; #24213: <==negation-removal== 54117 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24507: <==negation-removal== 40909 (pos)
                    (not (Pa_not_checked_p1))

                    ; #25485: <==uncertain_firing== 39157 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #27516: <==unclosure== 83507 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #29217: <==negation-removal== 33394 (pos)
                    (not (Bb_not_checked_p1))

                    ; #30332: <==negation-removal== 31409 (pos)
                    (not (Bc_not_checked_p1))

                    ; #42475: <==unclosure== 25485 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #57729: <==negation-removal== 39157 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #61110: <==negation-removal== 89060 (pos)
                    (not (Ba_not_checked_p1))

                    ; #61195: <==negation-removal== 49459 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #67681: <==negation-removal== 87706 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #75059: <==negation-removal== 23480 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #75213: <==negation-removal== 63905 (pos)
                    (not (Pb_not_checked_p1))

                    ; #83507: <==uncertain_firing== 87706 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10729: <==commonly_known== 55379 (pos)
                    (Ba_checked_p2)

                    ; #13760: <==closure== 10729 (pos)
                    (Pa_checked_p2)

                    ; #20848: <==commonly_known== 55379 (pos)
                    (Bb_checked_p2)

                    ; #24609: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #33593: <==commonly_known== 55379 (pos)
                    (Bc_checked_p2)

                    ; #52279: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #55379: origin
                    (checked_p2)

                    ; #58888: <==closure== 24609 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #69933: <==closure== 20848 (pos)
                    (Pb_checked_p2)

                    ; #76424: <==closure== 52279 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #84509: <==closure== 33593 (pos)
                    (Pc_checked_p2)

                    ; #11721: <==unclosure== 50894 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #17214: <==negation-removal== 84509 (pos)
                    (not (Bc_not_checked_p2))

                    ; #28818: <==negation-removal== 10729 (pos)
                    (not (Pa_not_checked_p2))

                    ; #36033: <==unclosure== 49499 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #48420: <==negation-removal== 55379 (pos)
                    (not (not_checked_p2))

                    ; #49499: <==uncertain_firing== 52279 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #50894: <==uncertain_firing== 24609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #54014: <==negation-removal== 20848 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54091: <==negation-removal== 52279 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #56540: <==negation-removal== 76424 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #58068: <==negation-removal== 58888 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #67128: <==negation-removal== 33593 (pos)
                    (not (Pc_not_checked_p2))

                    ; #67670: <==negation-removal== 24609 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #83373: <==negation-removal== 69933 (pos)
                    (not (Bb_not_checked_p2))

                    ; #91671: <==negation-removal== 13760 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11015: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #28543: <==commonly_known== 56477 (pos)
                    (Ba_checked_p3)

                    ; #34038: <==closure== 11015 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #56477: origin
                    (checked_p3)

                    ; #62922: <==closure== 74624 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #65897: <==closure== 82566 (pos)
                    (Pb_checked_p3)

                    ; #70223: <==commonly_known== 56477 (pos)
                    (Bc_checked_p3)

                    ; #74624: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #82566: <==commonly_known== 56477 (pos)
                    (Bb_checked_p3)

                    ; #83078: <==closure== 70223 (pos)
                    (Pc_checked_p3)

                    ; #84745: <==closure== 28543 (pos)
                    (Pa_checked_p3)

                    ; #15511: <==negation-removal== 62922 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #18301: <==unclosure== 68135 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #23969: <==negation-removal== 70223 (pos)
                    (not (Pc_not_checked_p3))

                    ; #28037: <==unclosure== 35126 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #32151: <==negation-removal== 74624 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #35126: <==uncertain_firing== 11015 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #39974: <==negation-removal== 11015 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #66416: <==negation-removal== 34038 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #68135: <==uncertain_firing== 74624 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #73682: <==negation-removal== 82566 (pos)
                    (not (Pb_not_checked_p3))

                    ; #79754: <==negation-removal== 65897 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82430: <==negation-removal== 84745 (pos)
                    (not (Ba_not_checked_p3))

                    ; #83329: <==negation-removal== 56477 (pos)
                    (not (not_checked_p3))

                    ; #85922: <==negation-removal== 83078 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86551: <==negation-removal== 28543 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11156: <==commonly_known== 33509 (pos)
                    (Bc_checked_p4)

                    ; #33509: origin
                    (checked_p4)

                    ; #37642: <==commonly_known== 33509 (pos)
                    (Bb_checked_p4)

                    ; #40418: <==closure== 52704 (pos)
                    (Pa_checked_p4)

                    ; #47067: <==closure== 68116 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #52704: <==commonly_known== 33509 (pos)
                    (Ba_checked_p4)

                    ; #53822: <==closure== 11156 (pos)
                    (Pc_checked_p4)

                    ; #66223: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #68116: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #78866: <==closure== 37642 (pos)
                    (Pb_checked_p4)

                    ; #88178: <==closure== 66223 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #15102: <==negation-removal== 47067 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #38618: <==negation-removal== 53822 (pos)
                    (not (Bc_not_checked_p4))

                    ; #39397: <==uncertain_firing== 68116 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #39930: <==unclosure== 55905 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #43441: <==negation-removal== 68116 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #43764: <==negation-removal== 78866 (pos)
                    (not (Bb_not_checked_p4))

                    ; #44250: <==negation-removal== 88178 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #46132: <==negation-removal== 52704 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49564: <==negation-removal== 33509 (pos)
                    (not (not_checked_p4))

                    ; #51649: <==unclosure== 39397 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #55905: <==uncertain_firing== 66223 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #67308: <==negation-removal== 11156 (pos)
                    (not (Pc_not_checked_p4))

                    ; #80504: <==negation-removal== 40418 (pos)
                    (not (Ba_not_checked_p4))

                    ; #88911: <==negation-removal== 37642 (pos)
                    (not (Pb_not_checked_p4))

                    ; #91039: <==negation-removal== 66223 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14582: <==commonly_known== 69891 (pos)
                    (Bc_checked_p5)

                    ; #14797: <==commonly_known== 69891 (pos)
                    (Ba_checked_p5)

                    ; #15528: <==closure== 14797 (pos)
                    (Pa_checked_p5)

                    ; #19927: <==closure== 62584 (pos)
                    (Pb_checked_p5)

                    ; #32829: <==closure== 54337 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #47034: <==closure== 49544 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #49544: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #54337: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #62584: <==commonly_known== 69891 (pos)
                    (Bb_checked_p5)

                    ; #65316: <==closure== 14582 (pos)
                    (Pc_checked_p5)

                    ; #69891: origin
                    (checked_p5)

                    ; #11397: <==negation-removal== 69891 (pos)
                    (not (not_checked_p5))

                    ; #11893: <==negation-removal== 65316 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14516: <==negation-removal== 14797 (pos)
                    (not (Pa_not_checked_p5))

                    ; #25153: <==negation-removal== 47034 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #28396: <==uncertain_firing== 49544 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #30717: <==negation-removal== 19927 (pos)
                    (not (Bb_not_checked_p5))

                    ; #32585: <==unclosure== 68091 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #38555: <==negation-removal== 62584 (pos)
                    (not (Pb_not_checked_p5))

                    ; #40144: <==negation-removal== 32829 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #43034: <==negation-removal== 14582 (pos)
                    (not (Pc_not_checked_p5))

                    ; #53213: <==negation-removal== 54337 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #60448: <==negation-removal== 15528 (pos)
                    (not (Ba_not_checked_p5))

                    ; #68091: <==uncertain_firing== 54337 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #73753: <==unclosure== 28396 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #82651: <==negation-removal== 49544 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #25075: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #27354: <==commonly_known== 27376 (pos)
                    (Ba_checked_p6)

                    ; #27376: origin
                    (checked_p6)

                    ; #29464: <==commonly_known== 27376 (pos)
                    (Bb_checked_p6)

                    ; #32449: <==closure== 89019 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #34100: <==closure== 25075 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #38674: <==closure== 29464 (pos)
                    (Pb_checked_p6)

                    ; #70011: <==closure== 82956 (pos)
                    (Pc_checked_p6)

                    ; #70711: <==closure== 27354 (pos)
                    (Pa_checked_p6)

                    ; #82956: <==commonly_known== 27376 (pos)
                    (Bc_checked_p6)

                    ; #89019: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #10150: <==negation-removal== 27376 (pos)
                    (not (not_checked_p6))

                    ; #11189: <==negation-removal== 25075 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #22503: <==negation-removal== 29464 (pos)
                    (not (Pb_not_checked_p6))

                    ; #26667: <==uncertain_firing== 89019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #30239: <==negation-removal== 32449 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #31995: <==negation-removal== 70011 (pos)
                    (not (Bc_not_checked_p6))

                    ; #38994: <==negation-removal== 27354 (pos)
                    (not (Pa_not_checked_p6))

                    ; #45351: <==negation-removal== 89019 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #46220: <==negation-removal== 82956 (pos)
                    (not (Pc_not_checked_p6))

                    ; #61342: <==negation-removal== 34100 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #84833: <==negation-removal== 70711 (pos)
                    (not (Ba_not_checked_p6))

                    ; #89495: <==negation-removal== 38674 (pos)
                    (not (Bb_not_checked_p6))

                    ; #90663: <==unclosure== 26667 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #91832: <==uncertain_firing== 25075 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #98749: <==unclosure== 91832 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11873: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #19641: origin
                    (checked_p7)

                    ; #39796: <==closure== 83005 (pos)
                    (Pa_checked_p7)

                    ; #56455: <==closure== 62153 (pos)
                    (Pb_checked_p7)

                    ; #62153: <==commonly_known== 19641 (pos)
                    (Bb_checked_p7)

                    ; #66625: <==closure== 69423 (pos)
                    (Pc_checked_p7)

                    ; #67817: <==closure== 11873 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #69423: <==commonly_known== 19641 (pos)
                    (Bc_checked_p7)

                    ; #80318: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #81160: <==closure== 80318 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #83005: <==commonly_known== 19641 (pos)
                    (Ba_checked_p7)

                    ; #11375: <==uncertain_firing== 11873 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #12457: <==negation-removal== 80318 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #16076: <==negation-removal== 83005 (pos)
                    (not (Pa_not_checked_p7))

                    ; #24385: <==negation-removal== 81160 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #26111: <==negation-removal== 69423 (pos)
                    (not (Pc_not_checked_p7))

                    ; #26874: <==negation-removal== 11873 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #44365: <==uncertain_firing== 80318 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #45181: <==negation-removal== 66625 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49867: <==unclosure== 11375 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #56838: <==negation-removal== 56455 (pos)
                    (not (Bb_not_checked_p7))

                    ; #72623: <==negation-removal== 19641 (pos)
                    (not (not_checked_p7))

                    ; #78155: <==negation-removal== 67817 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #80454: <==negation-removal== 62153 (pos)
                    (not (Pb_not_checked_p7))

                    ; #80462: <==unclosure== 44365 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #91448: <==negation-removal== 39796 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #33455: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #36428: <==closure== 58774 (pos)
                    (Pc_checked_p8)

                    ; #39567: <==closure== 33455 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #41329: <==closure== 69301 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #50035: <==closure== 81477 (pos)
                    (Pa_checked_p8)

                    ; #50451: <==closure== 80783 (pos)
                    (Pb_checked_p8)

                    ; #58774: <==commonly_known== 88288 (pos)
                    (Bc_checked_p8)

                    ; #69301: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #80783: <==commonly_known== 88288 (pos)
                    (Bb_checked_p8)

                    ; #81477: <==commonly_known== 88288 (pos)
                    (Ba_checked_p8)

                    ; #88288: origin
                    (checked_p8)

                    ; #15625: <==negation-removal== 88288 (pos)
                    (not (not_checked_p8))

                    ; #19509: <==negation-removal== 50035 (pos)
                    (not (Ba_not_checked_p8))

                    ; #24678: <==unclosure== 73501 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24795: <==negation-removal== 58774 (pos)
                    (not (Pc_not_checked_p8))

                    ; #25050: <==negation-removal== 33455 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #27251: <==uncertain_firing== 33455 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #33104: <==negation-removal== 50451 (pos)
                    (not (Bb_not_checked_p8))

                    ; #33582: <==negation-removal== 69301 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45408: <==negation-removal== 36428 (pos)
                    (not (Bc_not_checked_p8))

                    ; #53436: <==negation-removal== 39567 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #56960: <==negation-removal== 81477 (pos)
                    (not (Pa_not_checked_p8))

                    ; #66658: <==negation-removal== 80783 (pos)
                    (not (Pb_not_checked_p8))

                    ; #73501: <==uncertain_firing== 69301 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #78347: <==negation-removal== 41329 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #92046: <==unclosure== 27251 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19056: <==closure== 58029 (pos)
                    (Pa_checked_p9)

                    ; #31453: <==closure== 59204 (pos)
                    (Pb_checked_p9)

                    ; #33137: <==commonly_known== 55492 (pos)
                    (Bc_checked_p9)

                    ; #52574: <==closure== 74792 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #54049: <==closure== 65021 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #55492: origin
                    (checked_p9)

                    ; #58029: <==commonly_known== 55492 (pos)
                    (Ba_checked_p9)

                    ; #59204: <==commonly_known== 55492 (pos)
                    (Bb_checked_p9)

                    ; #65021: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #72734: <==closure== 33137 (pos)
                    (Pc_checked_p9)

                    ; #74792: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #12665: <==negation-removal== 31453 (pos)
                    (not (Bb_not_checked_p9))

                    ; #17597: <==negation-removal== 59204 (pos)
                    (not (Pb_not_checked_p9))

                    ; #35568: <==negation-removal== 65021 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #46083: <==negation-removal== 52574 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #47647: <==negation-removal== 58029 (pos)
                    (not (Pa_not_checked_p9))

                    ; #53745: <==uncertain_firing== 74792 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #62943: <==negation-removal== 54049 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #64787: <==negation-removal== 33137 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69207: <==unclosure== 53745 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #76415: <==uncertain_firing== 65021 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #76739: <==negation-removal== 72734 (pos)
                    (not (Bc_not_checked_p9))

                    ; #80273: <==negation-removal== 55492 (pos)
                    (not (not_checked_p9))

                    ; #82837: <==negation-removal== 19056 (pos)
                    (not (Ba_not_checked_p9))

                    ; #84071: <==unclosure== 76415 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #86921: <==negation-removal== 74792 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14167: origin
                    (checked_p1)

                    ; #28848: <==closure== 46417 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #31409: <==closure== 54117 (pos)
                    (Pc_checked_p1)

                    ; #33394: <==closure== 63905 (pos)
                    (Pb_checked_p1)

                    ; #40909: <==commonly_known== 14167 (pos)
                    (Ba_checked_p1)

                    ; #46417: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #54117: <==commonly_known== 14167 (pos)
                    (Bc_checked_p1)

                    ; #63905: <==commonly_known== 14167 (pos)
                    (Bb_checked_p1)

                    ; #65433: <==closure== 91356 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #89060: <==closure== 40909 (pos)
                    (Pa_checked_p1)

                    ; #91356: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #13709: <==uncertain_firing== 91356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #21064: <==negation-removal== 65433 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #23453: <==negation-removal== 14167 (pos)
                    (not (not_checked_p1))

                    ; #24213: <==negation-removal== 54117 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24507: <==negation-removal== 40909 (pos)
                    (not (Pa_not_checked_p1))

                    ; #29217: <==negation-removal== 33394 (pos)
                    (not (Bb_not_checked_p1))

                    ; #29661: <==unclosure== 31682 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #30332: <==negation-removal== 31409 (pos)
                    (not (Bc_not_checked_p1))

                    ; #31682: <==uncertain_firing== 46417 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #45143: <==negation-removal== 28848 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #45606: <==negation-removal== 46417 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #61110: <==negation-removal== 89060 (pos)
                    (not (Ba_not_checked_p1))

                    ; #68176: <==negation-removal== 91356 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #70776: <==unclosure== 13709 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #75213: <==negation-removal== 63905 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10729: <==commonly_known== 55379 (pos)
                    (Ba_checked_p2)

                    ; #13760: <==closure== 10729 (pos)
                    (Pa_checked_p2)

                    ; #20722: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #20848: <==commonly_known== 55379 (pos)
                    (Bb_checked_p2)

                    ; #33593: <==commonly_known== 55379 (pos)
                    (Bc_checked_p2)

                    ; #55379: origin
                    (checked_p2)

                    ; #66786: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #69933: <==closure== 20848 (pos)
                    (Pb_checked_p2)

                    ; #70819: <==closure== 66786 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #73413: <==closure== 20722 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #84509: <==closure== 33593 (pos)
                    (Pc_checked_p2)

                    ; #17214: <==negation-removal== 84509 (pos)
                    (not (Bc_not_checked_p2))

                    ; #28818: <==negation-removal== 10729 (pos)
                    (not (Pa_not_checked_p2))

                    ; #31623: <==uncertain_firing== 66786 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #37735: <==negation-removal== 20722 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #41349: <==unclosure== 42744 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #42744: <==uncertain_firing== 20722 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #48420: <==negation-removal== 55379 (pos)
                    (not (not_checked_p2))

                    ; #50477: <==negation-removal== 73413 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #54014: <==negation-removal== 20848 (pos)
                    (not (Pb_not_checked_p2))

                    ; #59522: <==unclosure== 31623 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #67128: <==negation-removal== 33593 (pos)
                    (not (Pc_not_checked_p2))

                    ; #80696: <==negation-removal== 70819 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #83373: <==negation-removal== 69933 (pos)
                    (not (Bb_not_checked_p2))

                    ; #88577: <==negation-removal== 66786 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #91671: <==negation-removal== 13760 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #28543: <==commonly_known== 56477 (pos)
                    (Ba_checked_p3)

                    ; #30462: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #56477: origin
                    (checked_p3)

                    ; #62928: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #65897: <==closure== 82566 (pos)
                    (Pb_checked_p3)

                    ; #70223: <==commonly_known== 56477 (pos)
                    (Bc_checked_p3)

                    ; #82566: <==commonly_known== 56477 (pos)
                    (Bb_checked_p3)

                    ; #83078: <==closure== 70223 (pos)
                    (Pc_checked_p3)

                    ; #83560: <==closure== 30462 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #84745: <==closure== 28543 (pos)
                    (Pa_checked_p3)

                    ; #91749: <==closure== 62928 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #15379: <==unclosure== 72895 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19320: <==negation-removal== 30462 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #19488: <==negation-removal== 62928 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #23969: <==negation-removal== 70223 (pos)
                    (not (Pc_not_checked_p3))

                    ; #37072: <==unclosure== 58026 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #58026: <==uncertain_firing== 62928 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #72895: <==uncertain_firing== 30462 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #73682: <==negation-removal== 82566 (pos)
                    (not (Pb_not_checked_p3))

                    ; #76808: <==negation-removal== 91749 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #79754: <==negation-removal== 65897 (pos)
                    (not (Bb_not_checked_p3))

                    ; #80588: <==negation-removal== 83560 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #82430: <==negation-removal== 84745 (pos)
                    (not (Ba_not_checked_p3))

                    ; #83329: <==negation-removal== 56477 (pos)
                    (not (not_checked_p3))

                    ; #85922: <==negation-removal== 83078 (pos)
                    (not (Bc_not_checked_p3))

                    ; #86551: <==negation-removal== 28543 (pos)
                    (not (Pa_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11156: <==commonly_known== 33509 (pos)
                    (Bc_checked_p4)

                    ; #22332: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #33509: origin
                    (checked_p4)

                    ; #37642: <==commonly_known== 33509 (pos)
                    (Bb_checked_p4)

                    ; #40418: <==closure== 52704 (pos)
                    (Pa_checked_p4)

                    ; #52704: <==commonly_known== 33509 (pos)
                    (Ba_checked_p4)

                    ; #53822: <==closure== 11156 (pos)
                    (Pc_checked_p4)

                    ; #64687: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #69502: <==closure== 64687 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #78866: <==closure== 37642 (pos)
                    (Pb_checked_p4)

                    ; #88453: <==closure== 22332 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #20224: <==negation-removal== 64687 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #21349: <==unclosure== 29022 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #29022: <==uncertain_firing== 64687 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #38618: <==negation-removal== 53822 (pos)
                    (not (Bc_not_checked_p4))

                    ; #43764: <==negation-removal== 78866 (pos)
                    (not (Bb_not_checked_p4))

                    ; #46132: <==negation-removal== 52704 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48936: <==negation-removal== 22332 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #49564: <==negation-removal== 33509 (pos)
                    (not (not_checked_p4))

                    ; #67308: <==negation-removal== 11156 (pos)
                    (not (Pc_not_checked_p4))

                    ; #68323: <==negation-removal== 88453 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #72396: <==unclosure== 90118 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #80504: <==negation-removal== 40418 (pos)
                    (not (Ba_not_checked_p4))

                    ; #88748: <==negation-removal== 69502 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #88911: <==negation-removal== 37642 (pos)
                    (not (Pb_not_checked_p4))

                    ; #90118: <==uncertain_firing== 22332 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #14582: <==commonly_known== 69891 (pos)
                    (Bc_checked_p5)

                    ; #14797: <==commonly_known== 69891 (pos)
                    (Ba_checked_p5)

                    ; #15528: <==closure== 14797 (pos)
                    (Pa_checked_p5)

                    ; #17239: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #19927: <==closure== 62584 (pos)
                    (Pb_checked_p5)

                    ; #31675: <==closure== 85753 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #62584: <==commonly_known== 69891 (pos)
                    (Bb_checked_p5)

                    ; #65316: <==closure== 14582 (pos)
                    (Pc_checked_p5)

                    ; #69891: origin
                    (checked_p5)

                    ; #79119: <==closure== 17239 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #85753: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #11397: <==negation-removal== 69891 (pos)
                    (not (not_checked_p5))

                    ; #11893: <==negation-removal== 65316 (pos)
                    (not (Bc_not_checked_p5))

                    ; #14516: <==negation-removal== 14797 (pos)
                    (not (Pa_not_checked_p5))

                    ; #14787: <==negation-removal== 31675 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #28782: <==negation-removal== 85753 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #30717: <==negation-removal== 19927 (pos)
                    (not (Bb_not_checked_p5))

                    ; #34002: <==negation-removal== 17239 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38555: <==negation-removal== 62584 (pos)
                    (not (Pb_not_checked_p5))

                    ; #43034: <==negation-removal== 14582 (pos)
                    (not (Pc_not_checked_p5))

                    ; #44175: <==unclosure== 89100 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #54241: <==unclosure== 59294 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #58414: <==negation-removal== 79119 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #59294: <==uncertain_firing== 85753 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #60448: <==negation-removal== 15528 (pos)
                    (not (Ba_not_checked_p5))

                    ; #89100: <==uncertain_firing== 17239 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #27354: <==commonly_known== 27376 (pos)
                    (Ba_checked_p6)

                    ; #27376: origin
                    (checked_p6)

                    ; #29464: <==commonly_known== 27376 (pos)
                    (Bb_checked_p6)

                    ; #38674: <==closure== 29464 (pos)
                    (Pb_checked_p6)

                    ; #49425: <==closure== 70535 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #52028: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #70011: <==closure== 82956 (pos)
                    (Pc_checked_p6)

                    ; #70535: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #70711: <==closure== 27354 (pos)
                    (Pa_checked_p6)

                    ; #82956: <==commonly_known== 27376 (pos)
                    (Bc_checked_p6)

                    ; #83005: <==closure== 52028 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #10150: <==negation-removal== 27376 (pos)
                    (not (not_checked_p6))

                    ; #22503: <==negation-removal== 29464 (pos)
                    (not (Pb_not_checked_p6))

                    ; #23057: <==negation-removal== 49425 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #27833: <==negation-removal== 52028 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #31995: <==negation-removal== 70011 (pos)
                    (not (Bc_not_checked_p6))

                    ; #38994: <==negation-removal== 27354 (pos)
                    (not (Pa_not_checked_p6))

                    ; #46220: <==negation-removal== 82956 (pos)
                    (not (Pc_not_checked_p6))

                    ; #52368: <==negation-removal== 70535 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #54178: <==unclosure== 87006 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #64831: <==negation-removal== 83005 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #66810: <==unclosure== 83858 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #83858: <==uncertain_firing== 70535 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #84833: <==negation-removal== 70711 (pos)
                    (not (Ba_not_checked_p6))

                    ; #87006: <==uncertain_firing== 52028 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #89495: <==negation-removal== 38674 (pos)
                    (not (Bb_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14983: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #19641: origin
                    (checked_p7)

                    ; #39796: <==closure== 83005 (pos)
                    (Pa_checked_p7)

                    ; #56455: <==closure== 62153 (pos)
                    (Pb_checked_p7)

                    ; #62153: <==commonly_known== 19641 (pos)
                    (Bb_checked_p7)

                    ; #66625: <==closure== 69423 (pos)
                    (Pc_checked_p7)

                    ; #69423: <==commonly_known== 19641 (pos)
                    (Bc_checked_p7)

                    ; #77980: <==closure== 89806 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #83005: <==commonly_known== 19641 (pos)
                    (Ba_checked_p7)

                    ; #89806: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #91272: <==closure== 14983 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #16076: <==negation-removal== 83005 (pos)
                    (not (Pa_not_checked_p7))

                    ; #26111: <==negation-removal== 69423 (pos)
                    (not (Pc_not_checked_p7))

                    ; #29812: <==negation-removal== 89806 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #45181: <==negation-removal== 66625 (pos)
                    (not (Bc_not_checked_p7))

                    ; #45986: <==uncertain_firing== 14983 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #56838: <==negation-removal== 56455 (pos)
                    (not (Bb_not_checked_p7))

                    ; #62146: <==uncertain_firing== 89806 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63616: <==negation-removal== 14983 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #71420: <==unclosure== 45986 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #72623: <==negation-removal== 19641 (pos)
                    (not (not_checked_p7))

                    ; #80454: <==negation-removal== 62153 (pos)
                    (not (Pb_not_checked_p7))

                    ; #85950: <==unclosure== 62146 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #86967: <==negation-removal== 77980 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #87297: <==negation-removal== 91272 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #91448: <==negation-removal== 39796 (pos)
                    (not (Ba_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12714: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #16563: <==closure== 39995 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #36428: <==closure== 58774 (pos)
                    (Pc_checked_p8)

                    ; #39995: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #47549: <==closure== 12714 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #50035: <==closure== 81477 (pos)
                    (Pa_checked_p8)

                    ; #50451: <==closure== 80783 (pos)
                    (Pb_checked_p8)

                    ; #58774: <==commonly_known== 88288 (pos)
                    (Bc_checked_p8)

                    ; #80783: <==commonly_known== 88288 (pos)
                    (Bb_checked_p8)

                    ; #81477: <==commonly_known== 88288 (pos)
                    (Ba_checked_p8)

                    ; #88288: origin
                    (checked_p8)

                    ; #14031: <==negation-removal== 16563 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #15625: <==negation-removal== 88288 (pos)
                    (not (not_checked_p8))

                    ; #18175: <==negation-removal== 39995 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #19509: <==negation-removal== 50035 (pos)
                    (not (Ba_not_checked_p8))

                    ; #24795: <==negation-removal== 58774 (pos)
                    (not (Pc_not_checked_p8))

                    ; #33104: <==negation-removal== 50451 (pos)
                    (not (Bb_not_checked_p8))

                    ; #34800: <==negation-removal== 12714 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #45408: <==negation-removal== 36428 (pos)
                    (not (Bc_not_checked_p8))

                    ; #47154: <==uncertain_firing== 39995 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #54740: <==unclosure== 47154 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #56960: <==negation-removal== 81477 (pos)
                    (not (Pa_not_checked_p8))

                    ; #66119: <==uncertain_firing== 12714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #66658: <==negation-removal== 80783 (pos)
                    (not (Pb_not_checked_p8))

                    ; #88163: <==negation-removal== 47549 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #93165: <==unclosure== 66119 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19056: <==closure== 58029 (pos)
                    (Pa_checked_p9)

                    ; #26372: <==closure== 44268 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #31453: <==closure== 59204 (pos)
                    (Pb_checked_p9)

                    ; #33137: <==commonly_known== 55492 (pos)
                    (Bc_checked_p9)

                    ; #33330: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #44268: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #50923: <==closure== 33330 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #55492: origin
                    (checked_p9)

                    ; #58029: <==commonly_known== 55492 (pos)
                    (Ba_checked_p9)

                    ; #59204: <==commonly_known== 55492 (pos)
                    (Bb_checked_p9)

                    ; #72734: <==closure== 33137 (pos)
                    (Pc_checked_p9)

                    ; #12665: <==negation-removal== 31453 (pos)
                    (not (Bb_not_checked_p9))

                    ; #17597: <==negation-removal== 59204 (pos)
                    (not (Pb_not_checked_p9))

                    ; #29875: <==negation-removal== 50923 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #40970: <==negation-removal== 26372 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #47647: <==negation-removal== 58029 (pos)
                    (not (Pa_not_checked_p9))

                    ; #50126: <==uncertain_firing== 44268 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #64787: <==negation-removal== 33137 (pos)
                    (not (Pc_not_checked_p9))

                    ; #66482: <==uncertain_firing== 33330 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #70358: <==unclosure== 66482 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #76739: <==negation-removal== 72734 (pos)
                    (not (Bc_not_checked_p9))

                    ; #80273: <==negation-removal== 55492 (pos)
                    (not (not_checked_p9))

                    ; #82837: <==negation-removal== 19056 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82911: <==unclosure== 50126 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #90518: <==negation-removal== 44268 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #91626: <==negation-removal== 33330 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)