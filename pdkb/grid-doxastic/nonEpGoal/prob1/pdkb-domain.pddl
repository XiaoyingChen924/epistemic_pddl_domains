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
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #27684: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #30784: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #36923: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #58907: <==closure== 30784 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #60057: <==closure== 27684 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #79671: <==closure== 36923 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #19748: <==negation-removal== 60057 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20626: <==negation-removal== 58907 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #42255: <==negation-removal== 30784 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #49922: <==unclosure== 52384 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52384: <==uncertain_firing== 36923 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #55308: <==negation-removal== 27684 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60133: <==unclosure== 67864 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65112: <==uncertain_firing== 30784 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #67864: <==uncertain_firing== 27684 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #69023: <==negation-removal== 79671 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #76949: <==unclosure== 65112 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #79848: <==negation-removal== 36923 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #27684: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #30784: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #36923: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #58907: <==closure== 30784 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #60057: <==closure== 27684 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #79671: <==closure== 36923 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #19748: <==negation-removal== 60057 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20626: <==negation-removal== 58907 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #42255: <==negation-removal== 30784 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #49922: <==unclosure== 52384 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52384: <==uncertain_firing== 36923 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #55308: <==negation-removal== 27684 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60133: <==unclosure== 67864 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65112: <==uncertain_firing== 30784 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #67864: <==uncertain_firing== 27684 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #69023: <==negation-removal== 79671 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #76949: <==unclosure== 65112 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #79848: <==negation-removal== 36923 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #27684: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #30784: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #36923: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #58907: <==closure== 30784 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #60057: <==closure== 27684 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #79671: <==closure== 36923 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #19748: <==negation-removal== 60057 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20626: <==negation-removal== 58907 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #42255: <==negation-removal== 30784 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #49922: <==unclosure== 52384 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52384: <==uncertain_firing== 36923 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #55308: <==negation-removal== 27684 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #60133: <==unclosure== 67864 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #65112: <==uncertain_firing== 30784 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #67864: <==uncertain_firing== 27684 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #69023: <==negation-removal== 79671 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #76949: <==unclosure== 65112 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #79848: <==negation-removal== 36923 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #13094: <==closure== 33652 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #26057: <==closure== 32397 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #32397: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #33652: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #48259: <==closure== 69285 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #69285: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #21747: <==unclosure== 43912 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #41353: <==negation-removal== 48259 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #42312: <==unclosure== 77489 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #42569: <==uncertain_firing== 32397 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #42723: <==negation-removal== 13094 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43912: <==uncertain_firing== 69285 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #64971: <==negation-removal== 32397 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #65801: <==negation-removal== 26057 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #72720: <==negation-removal== 33652 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77489: <==uncertain_firing== 33652 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #79562: <==negation-removal== 69285 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89274: <==unclosure== 42569 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #13094: <==closure== 33652 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #26057: <==closure== 32397 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #32397: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #33652: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #48259: <==closure== 69285 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #69285: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #21747: <==unclosure== 43912 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #41353: <==negation-removal== 48259 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #42312: <==unclosure== 77489 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #42569: <==uncertain_firing== 32397 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #42723: <==negation-removal== 13094 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43912: <==uncertain_firing== 69285 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #64971: <==negation-removal== 32397 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #65801: <==negation-removal== 26057 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #72720: <==negation-removal== 33652 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77489: <==uncertain_firing== 33652 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #79562: <==negation-removal== 69285 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89274: <==unclosure== 42569 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #13094: <==closure== 33652 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #26057: <==closure== 32397 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #32397: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #33652: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #48259: <==closure== 69285 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #69285: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #21747: <==unclosure== 43912 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #41353: <==negation-removal== 48259 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #42312: <==unclosure== 77489 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #42569: <==uncertain_firing== 32397 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #42723: <==negation-removal== 13094 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #43912: <==uncertain_firing== 69285 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #64971: <==negation-removal== 32397 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #65801: <==negation-removal== 26057 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #72720: <==negation-removal== 33652 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #77489: <==uncertain_firing== 33652 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #79562: <==negation-removal== 69285 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #89274: <==unclosure== 42569 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #16986: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #56553: <==closure== 16986 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #65084: <==closure== 84212 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #65274: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #68333: <==closure== 65274 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #84212: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #11219: <==uncertain_firing== 16986 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #16929: <==negation-removal== 56553 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19823: <==uncertain_firing== 65274 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #21998: <==negation-removal== 84212 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34645: <==negation-removal== 65274 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49465: <==negation-removal== 68333 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #58180: <==unclosure== 11219 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #63294: <==negation-removal== 16986 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #70599: <==negation-removal== 65084 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #80947: <==unclosure== 90266 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82284: <==unclosure== 19823 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90266: <==uncertain_firing== 84212 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #16986: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #56553: <==closure== 16986 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #65084: <==closure== 84212 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #65274: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #68333: <==closure== 65274 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #84212: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #11219: <==uncertain_firing== 16986 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #16929: <==negation-removal== 56553 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19823: <==uncertain_firing== 65274 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #21998: <==negation-removal== 84212 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34645: <==negation-removal== 65274 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49465: <==negation-removal== 68333 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #58180: <==unclosure== 11219 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #63294: <==negation-removal== 16986 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #70599: <==negation-removal== 65084 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #80947: <==unclosure== 90266 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82284: <==unclosure== 19823 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90266: <==uncertain_firing== 84212 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #16986: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #56553: <==closure== 16986 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #65084: <==closure== 84212 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #65274: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #68333: <==closure== 65274 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #84212: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #11219: <==uncertain_firing== 16986 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #16929: <==negation-removal== 56553 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #19823: <==uncertain_firing== 65274 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #21998: <==negation-removal== 84212 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #34645: <==negation-removal== 65274 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49465: <==negation-removal== 68333 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #58180: <==unclosure== 11219 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #63294: <==negation-removal== 16986 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #70599: <==negation-removal== 65084 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #80947: <==unclosure== 90266 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82284: <==unclosure== 19823 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #90266: <==uncertain_firing== 84212 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #14915: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #21167: <==closure== 71149 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #44870: <==closure== 49942 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #49942: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #69800: <==closure== 14915 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #71149: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #11623: <==uncertain_firing== 71149 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32340: <==negation-removal== 14915 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #33840: <==negation-removal== 71149 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38628: <==unclosure== 78312 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #39129: <==unclosure== 59185 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45446: <==negation-removal== 21167 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55757: <==negation-removal== 44870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57398: <==unclosure== 11623 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59185: <==uncertain_firing== 14915 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #76223: <==negation-removal== 49942 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #78312: <==uncertain_firing== 49942 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84850: <==negation-removal== 69800 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #14915: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #21167: <==closure== 71149 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #44870: <==closure== 49942 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #49942: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #69800: <==closure== 14915 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #71149: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #11623: <==uncertain_firing== 71149 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32340: <==negation-removal== 14915 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #33840: <==negation-removal== 71149 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38628: <==unclosure== 78312 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #39129: <==unclosure== 59185 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45446: <==negation-removal== 21167 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55757: <==negation-removal== 44870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57398: <==unclosure== 11623 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59185: <==uncertain_firing== 14915 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #76223: <==negation-removal== 49942 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #78312: <==uncertain_firing== 49942 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84850: <==negation-removal== 69800 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #14915: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #21167: <==closure== 71149 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #44870: <==closure== 49942 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #49942: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #69800: <==closure== 14915 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #71149: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #11623: <==uncertain_firing== 71149 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32340: <==negation-removal== 14915 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #33840: <==negation-removal== 71149 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38628: <==unclosure== 78312 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #39129: <==unclosure== 59185 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #45446: <==negation-removal== 21167 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55757: <==negation-removal== 44870 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57398: <==unclosure== 11623 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #59185: <==uncertain_firing== 14915 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #76223: <==negation-removal== 49942 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #78312: <==uncertain_firing== 49942 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #84850: <==negation-removal== 69800 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #17324: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #38160: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #66701: <==closure== 72517 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #69432: <==closure== 38160 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #72517: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #72907: <==closure== 17324 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10814: <==uncertain_firing== 17324 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #17327: <==uncertain_firing== 72517 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #28545: <==negation-removal== 38160 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #36754: <==negation-removal== 17324 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36870: <==unclosure== 17327 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #49202: <==unclosure== 10814 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60800: <==negation-removal== 69432 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62282: <==negation-removal== 72907 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #73212: <==uncertain_firing== 38160 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74059: <==negation-removal== 66701 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #76141: <==unclosure== 73212 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76459: <==negation-removal== 72517 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #17324: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #38160: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #66701: <==closure== 72517 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #69432: <==closure== 38160 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #72517: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #72907: <==closure== 17324 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10814: <==uncertain_firing== 17324 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #17327: <==uncertain_firing== 72517 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #28545: <==negation-removal== 38160 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #36754: <==negation-removal== 17324 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36870: <==unclosure== 17327 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #49202: <==unclosure== 10814 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60800: <==negation-removal== 69432 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62282: <==negation-removal== 72907 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #73212: <==uncertain_firing== 38160 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74059: <==negation-removal== 66701 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #76141: <==unclosure== 73212 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76459: <==negation-removal== 72517 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #17324: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #38160: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #66701: <==closure== 72517 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #69432: <==closure== 38160 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #72517: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #72907: <==closure== 17324 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #10814: <==uncertain_firing== 17324 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #17327: <==uncertain_firing== 72517 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #28545: <==negation-removal== 38160 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #36754: <==negation-removal== 17324 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #36870: <==unclosure== 17327 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #49202: <==unclosure== 10814 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #60800: <==negation-removal== 69432 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #62282: <==negation-removal== 72907 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #73212: <==uncertain_firing== 38160 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74059: <==negation-removal== 66701 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #76141: <==unclosure== 73212 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #76459: <==negation-removal== 72517 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #54390: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #61973: <==closure== 85927 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #63066: <==closure== 54390 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #69942: <==closure== 75233 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #75233: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #85927: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #11419: <==negation-removal== 85927 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27651: <==uncertain_firing== 54390 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28253: <==negation-removal== 75233 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #29558: <==negation-removal== 69942 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #29651: <==uncertain_firing== 85927 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41990: <==unclosure== 80711 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #62156: <==negation-removal== 54390 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #64584: <==negation-removal== 61973 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #69962: <==negation-removal== 63066 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77809: <==unclosure== 27651 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #80711: <==uncertain_firing== 75233 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90355: <==unclosure== 29651 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #54390: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #61973: <==closure== 85927 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #63066: <==closure== 54390 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #69942: <==closure== 75233 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #75233: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #85927: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #11419: <==negation-removal== 85927 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27651: <==uncertain_firing== 54390 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28253: <==negation-removal== 75233 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #29558: <==negation-removal== 69942 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #29651: <==uncertain_firing== 85927 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41990: <==unclosure== 80711 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #62156: <==negation-removal== 54390 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #64584: <==negation-removal== 61973 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #69962: <==negation-removal== 63066 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77809: <==unclosure== 27651 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #80711: <==uncertain_firing== 75233 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90355: <==unclosure== 29651 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #54390: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #61973: <==closure== 85927 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #63066: <==closure== 54390 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #69942: <==closure== 75233 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #75233: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #85927: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #11419: <==negation-removal== 85927 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #27651: <==uncertain_firing== 54390 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #28253: <==negation-removal== 75233 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #29558: <==negation-removal== 69942 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #29651: <==uncertain_firing== 85927 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #41990: <==unclosure== 80711 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #62156: <==negation-removal== 54390 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #64584: <==negation-removal== 61973 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #69962: <==negation-removal== 63066 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #77809: <==unclosure== 27651 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #80711: <==uncertain_firing== 75233 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90355: <==unclosure== 29651 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #10677: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #15651: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #57323: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #68005: <==closure== 10677 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #69002: <==closure== 57323 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #75821: <==closure== 15651 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #29113: <==negation-removal== 15651 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #32470: <==negation-removal== 69002 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #33599: <==negation-removal== 10677 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34080: <==unclosure== 49452 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #42588: <==unclosure== 63881 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44957: <==uncertain_firing== 15651 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #49452: <==uncertain_firing== 10677 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #50738: <==negation-removal== 75821 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55280: <==negation-removal== 68005 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63881: <==uncertain_firing== 57323 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68137: <==unclosure== 44957 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #93700: <==negation-removal== 57323 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #10677: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #15651: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #57323: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #68005: <==closure== 10677 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #69002: <==closure== 57323 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #75821: <==closure== 15651 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #29113: <==negation-removal== 15651 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #32470: <==negation-removal== 69002 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #33599: <==negation-removal== 10677 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34080: <==unclosure== 49452 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #42588: <==unclosure== 63881 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44957: <==uncertain_firing== 15651 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #49452: <==uncertain_firing== 10677 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #50738: <==negation-removal== 75821 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55280: <==negation-removal== 68005 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63881: <==uncertain_firing== 57323 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68137: <==unclosure== 44957 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #93700: <==negation-removal== 57323 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #10677: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #15651: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #57323: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #68005: <==closure== 10677 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #69002: <==closure== 57323 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #75821: <==closure== 15651 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #29113: <==negation-removal== 15651 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #32470: <==negation-removal== 69002 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #33599: <==negation-removal== 10677 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34080: <==unclosure== 49452 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #42588: <==unclosure== 63881 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #44957: <==uncertain_firing== 15651 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #49452: <==uncertain_firing== 10677 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #50738: <==negation-removal== 75821 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55280: <==negation-removal== 68005 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #63881: <==uncertain_firing== 57323 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #68137: <==unclosure== 44957 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #93700: <==negation-removal== 57323 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #13912: <==closure== 44788 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44788: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #56430: <==closure== 83171 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72131: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #83171: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92805: <==closure== 72131 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17540: <==unclosure== 85641 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24961: <==uncertain_firing== 44788 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26316: <==negation-removal== 13912 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #40273: <==uncertain_firing== 83171 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #45596: <==unclosure== 24961 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60166: <==negation-removal== 44788 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #68427: <==negation-removal== 83171 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71150: <==negation-removal== 56430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74459: <==unclosure== 40273 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #75039: <==negation-removal== 92805 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85641: <==uncertain_firing== 72131 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #96051: <==negation-removal== 72131 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #13912: <==closure== 44788 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44788: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #56430: <==closure== 83171 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72131: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #83171: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92805: <==closure== 72131 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17540: <==unclosure== 85641 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24961: <==uncertain_firing== 44788 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26316: <==negation-removal== 13912 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #40273: <==uncertain_firing== 83171 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #45596: <==unclosure== 24961 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60166: <==negation-removal== 44788 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #68427: <==negation-removal== 83171 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71150: <==negation-removal== 56430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74459: <==unclosure== 40273 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #75039: <==negation-removal== 92805 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85641: <==uncertain_firing== 72131 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #96051: <==negation-removal== 72131 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #13912: <==closure== 44788 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #44788: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #56430: <==closure== 83171 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #72131: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #83171: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #92805: <==closure== 72131 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #17540: <==unclosure== 85641 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #24961: <==uncertain_firing== 44788 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #26316: <==negation-removal== 13912 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #40273: <==uncertain_firing== 83171 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #45596: <==unclosure== 24961 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60166: <==negation-removal== 44788 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #68427: <==negation-removal== 83171 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #71150: <==negation-removal== 56430 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #74459: <==unclosure== 40273 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #75039: <==negation-removal== 92805 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #85641: <==uncertain_firing== 72131 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #96051: <==negation-removal== 72131 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #14110: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #30516: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #35249: <==closure== 30516 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #45867: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #55503: <==closure== 14110 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #60556: <==closure== 45867 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #14619: <==negation-removal== 35249 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #18296: <==unclosure== 35799 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #26440: <==negation-removal== 55503 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #33762: <==negation-removal== 14110 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #34293: <==uncertain_firing== 45867 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35799: <==uncertain_firing== 30516 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #44540: <==unclosure== 55438 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #52137: <==negation-removal== 30516 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55438: <==uncertain_firing== 14110 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #69397: <==unclosure== 34293 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73280: <==negation-removal== 45867 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #74586: <==negation-removal== 60556 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #14110: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #30516: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #35249: <==closure== 30516 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #45867: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #55503: <==closure== 14110 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #60556: <==closure== 45867 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #14619: <==negation-removal== 35249 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #18296: <==unclosure== 35799 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #26440: <==negation-removal== 55503 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #33762: <==negation-removal== 14110 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #34293: <==uncertain_firing== 45867 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35799: <==uncertain_firing== 30516 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #44540: <==unclosure== 55438 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #52137: <==negation-removal== 30516 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55438: <==uncertain_firing== 14110 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #69397: <==unclosure== 34293 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73280: <==negation-removal== 45867 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #74586: <==negation-removal== 60556 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #14110: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #30516: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #35249: <==closure== 30516 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #45867: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #55503: <==closure== 14110 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #60556: <==closure== 45867 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #14619: <==negation-removal== 35249 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #18296: <==unclosure== 35799 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #26440: <==negation-removal== 55503 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #33762: <==negation-removal== 14110 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #34293: <==uncertain_firing== 45867 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #35799: <==uncertain_firing== 30516 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #44540: <==unclosure== 55438 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #52137: <==negation-removal== 30516 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #55438: <==uncertain_firing== 14110 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #69397: <==unclosure== 34293 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #73280: <==negation-removal== 45867 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #74586: <==negation-removal== 60556 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #48744: origin
                    (Ba_survivorat_s_p1)

                    ; #50102: <==closure== 82104 (pos)
                    (Pb_survivorat_s_p1)

                    ; #58807: <==closure== 48744 (pos)
                    (Pa_survivorat_s_p1)

                    ; #59189: origin
                    (Bc_survivorat_s_p1)

                    ; #74157: <==closure== 59189 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82104: origin
                    (Bb_survivorat_s_p1)

                    ; #30187: <==negation-removal== 82104 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #33683: <==negation-removal== 48744 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #55278: <==negation-removal== 50102 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73178: <==negation-removal== 59189 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #76493: <==negation-removal== 74157 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #82129: <==negation-removal== 58807 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #48744: origin
                    (Ba_survivorat_s_p1)

                    ; #50102: <==closure== 82104 (pos)
                    (Pb_survivorat_s_p1)

                    ; #58807: <==closure== 48744 (pos)
                    (Pa_survivorat_s_p1)

                    ; #59189: origin
                    (Bc_survivorat_s_p1)

                    ; #74157: <==closure== 59189 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82104: origin
                    (Bb_survivorat_s_p1)

                    ; #30187: <==negation-removal== 82104 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #33683: <==negation-removal== 48744 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #55278: <==negation-removal== 50102 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73178: <==negation-removal== 59189 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #76493: <==negation-removal== 74157 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #82129: <==negation-removal== 58807 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #48744: origin
                    (Ba_survivorat_s_p1)

                    ; #50102: <==closure== 82104 (pos)
                    (Pb_survivorat_s_p1)

                    ; #58807: <==closure== 48744 (pos)
                    (Pa_survivorat_s_p1)

                    ; #59189: origin
                    (Bc_survivorat_s_p1)

                    ; #74157: <==closure== 59189 (pos)
                    (Pc_survivorat_s_p1)

                    ; #82104: origin
                    (Bb_survivorat_s_p1)

                    ; #30187: <==negation-removal== 82104 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #33683: <==negation-removal== 48744 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #55278: <==negation-removal== 50102 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #73178: <==negation-removal== 59189 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #76493: <==negation-removal== 74157 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #82129: <==negation-removal== 58807 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #36842: <==closure== 38719 (pos)
                    (Pb_survivorat_s_p2)

                    ; #38719: origin
                    (Bb_survivorat_s_p2)

                    ; #39863: <==closure== 57271 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48162: origin
                    (Ba_survivorat_s_p2)

                    ; #57271: origin
                    (Bc_survivorat_s_p2)

                    ; #58983: <==closure== 48162 (pos)
                    (Pa_survivorat_s_p2)

                    ; #29426: <==negation-removal== 58983 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #31770: <==negation-removal== 48162 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #32359: <==negation-removal== 38719 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #48087: <==negation-removal== 36842 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #56919: <==negation-removal== 57271 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #79273: <==negation-removal== 39863 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #36842: <==closure== 38719 (pos)
                    (Pb_survivorat_s_p2)

                    ; #38719: origin
                    (Bb_survivorat_s_p2)

                    ; #39863: <==closure== 57271 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48162: origin
                    (Ba_survivorat_s_p2)

                    ; #57271: origin
                    (Bc_survivorat_s_p2)

                    ; #58983: <==closure== 48162 (pos)
                    (Pa_survivorat_s_p2)

                    ; #29426: <==negation-removal== 58983 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #31770: <==negation-removal== 48162 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #32359: <==negation-removal== 38719 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #48087: <==negation-removal== 36842 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #56919: <==negation-removal== 57271 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #79273: <==negation-removal== 39863 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #36842: <==closure== 38719 (pos)
                    (Pb_survivorat_s_p2)

                    ; #38719: origin
                    (Bb_survivorat_s_p2)

                    ; #39863: <==closure== 57271 (pos)
                    (Pc_survivorat_s_p2)

                    ; #48162: origin
                    (Ba_survivorat_s_p2)

                    ; #57271: origin
                    (Bc_survivorat_s_p2)

                    ; #58983: <==closure== 48162 (pos)
                    (Pa_survivorat_s_p2)

                    ; #29426: <==negation-removal== 58983 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #31770: <==negation-removal== 48162 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #32359: <==negation-removal== 38719 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #48087: <==negation-removal== 36842 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #56919: <==negation-removal== 57271 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #79273: <==negation-removal== 39863 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #12592: origin
                    (Bc_survivorat_s_p3)

                    ; #26581: origin
                    (Ba_survivorat_s_p3)

                    ; #49720: <==closure== 80966 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60834: <==closure== 12592 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67542: <==closure== 26581 (pos)
                    (Pa_survivorat_s_p3)

                    ; #80966: origin
                    (Bb_survivorat_s_p3)

                    ; #12717: <==negation-removal== 60834 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #29456: <==negation-removal== 49720 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #49186: <==negation-removal== 26581 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #56141: <==negation-removal== 67542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62089: <==negation-removal== 80966 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #65935: <==negation-removal== 12592 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #12592: origin
                    (Bc_survivorat_s_p3)

                    ; #26581: origin
                    (Ba_survivorat_s_p3)

                    ; #49720: <==closure== 80966 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60834: <==closure== 12592 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67542: <==closure== 26581 (pos)
                    (Pa_survivorat_s_p3)

                    ; #80966: origin
                    (Bb_survivorat_s_p3)

                    ; #12717: <==negation-removal== 60834 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #29456: <==negation-removal== 49720 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #49186: <==negation-removal== 26581 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #56141: <==negation-removal== 67542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62089: <==negation-removal== 80966 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #65935: <==negation-removal== 12592 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (at_c_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #12592: origin
                    (Bc_survivorat_s_p3)

                    ; #26581: origin
                    (Ba_survivorat_s_p3)

                    ; #49720: <==closure== 80966 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60834: <==closure== 12592 (pos)
                    (Pc_survivorat_s_p3)

                    ; #67542: <==closure== 26581 (pos)
                    (Pa_survivorat_s_p3)

                    ; #80966: origin
                    (Bb_survivorat_s_p3)

                    ; #12717: <==negation-removal== 60834 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #29456: <==negation-removal== 49720 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #49186: <==negation-removal== 26581 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #56141: <==negation-removal== 67542 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #62089: <==negation-removal== 80966 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #65935: <==negation-removal== 12592 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #58741: <==closure== 63545 (pos)
                    (Pb_survivorat_s_p4)

                    ; #63545: origin
                    (Bb_survivorat_s_p4)

                    ; #64488: origin
                    (Ba_survivorat_s_p4)

                    ; #74634: origin
                    (Bc_survivorat_s_p4)

                    ; #86755: <==closure== 64488 (pos)
                    (Pa_survivorat_s_p4)

                    ; #91509: <==closure== 74634 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13555: <==negation-removal== 64488 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #17743: <==negation-removal== 74634 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59759: <==negation-removal== 91509 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #61062: <==negation-removal== 86755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67439: <==negation-removal== 58741 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75111: <==negation-removal== 63545 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #58741: <==closure== 63545 (pos)
                    (Pb_survivorat_s_p4)

                    ; #63545: origin
                    (Bb_survivorat_s_p4)

                    ; #64488: origin
                    (Ba_survivorat_s_p4)

                    ; #74634: origin
                    (Bc_survivorat_s_p4)

                    ; #86755: <==closure== 64488 (pos)
                    (Pa_survivorat_s_p4)

                    ; #91509: <==closure== 74634 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13555: <==negation-removal== 64488 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #17743: <==negation-removal== 74634 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59759: <==negation-removal== 91509 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #61062: <==negation-removal== 86755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67439: <==negation-removal== 58741 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75111: <==negation-removal== 63545 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #58741: <==closure== 63545 (pos)
                    (Pb_survivorat_s_p4)

                    ; #63545: origin
                    (Bb_survivorat_s_p4)

                    ; #64488: origin
                    (Ba_survivorat_s_p4)

                    ; #74634: origin
                    (Bc_survivorat_s_p4)

                    ; #86755: <==closure== 64488 (pos)
                    (Pa_survivorat_s_p4)

                    ; #91509: <==closure== 74634 (pos)
                    (Pc_survivorat_s_p4)

                    ; #13555: <==negation-removal== 64488 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #17743: <==negation-removal== 74634 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #59759: <==negation-removal== 91509 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #61062: <==negation-removal== 86755 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #67439: <==negation-removal== 58741 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #75111: <==negation-removal== 63545 (pos)
                    (not (Pb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #29245: <==closure== 83485 (pos)
                    (Pc_survivorat_s_p5)

                    ; #33276: <==closure== 44706 (pos)
                    (Pa_survivorat_s_p5)

                    ; #44706: origin
                    (Ba_survivorat_s_p5)

                    ; #66346: origin
                    (Bb_survivorat_s_p5)

                    ; #83485: origin
                    (Bc_survivorat_s_p5)

                    ; #85260: <==closure== 66346 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11224: <==negation-removal== 66346 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #28413: <==negation-removal== 83485 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32841: <==negation-removal== 44706 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #33007: <==negation-removal== 33276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #50703: <==negation-removal== 85260 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #66026: <==negation-removal== 29245 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #29245: <==closure== 83485 (pos)
                    (Pc_survivorat_s_p5)

                    ; #33276: <==closure== 44706 (pos)
                    (Pa_survivorat_s_p5)

                    ; #44706: origin
                    (Ba_survivorat_s_p5)

                    ; #66346: origin
                    (Bb_survivorat_s_p5)

                    ; #83485: origin
                    (Bc_survivorat_s_p5)

                    ; #85260: <==closure== 66346 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11224: <==negation-removal== 66346 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #28413: <==negation-removal== 83485 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32841: <==negation-removal== 44706 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #33007: <==negation-removal== 33276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #50703: <==negation-removal== 85260 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #66026: <==negation-removal== 29245 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #29245: <==closure== 83485 (pos)
                    (Pc_survivorat_s_p5)

                    ; #33276: <==closure== 44706 (pos)
                    (Pa_survivorat_s_p5)

                    ; #44706: origin
                    (Ba_survivorat_s_p5)

                    ; #66346: origin
                    (Bb_survivorat_s_p5)

                    ; #83485: origin
                    (Bc_survivorat_s_p5)

                    ; #85260: <==closure== 66346 (pos)
                    (Pb_survivorat_s_p5)

                    ; #11224: <==negation-removal== 66346 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #28413: <==negation-removal== 83485 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #32841: <==negation-removal== 44706 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #33007: <==negation-removal== 33276 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #50703: <==negation-removal== 85260 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #66026: <==negation-removal== 29245 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #24462: origin
                    (Bc_survivorat_s_p6)

                    ; #43762: <==closure== 83647 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54545: origin
                    (Ba_survivorat_s_p6)

                    ; #63571: <==closure== 54545 (pos)
                    (Pa_survivorat_s_p6)

                    ; #71928: <==closure== 24462 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83647: origin
                    (Bb_survivorat_s_p6)

                    ; #13247: <==negation-removal== 83647 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15537: <==negation-removal== 43762 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22029: <==negation-removal== 63571 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51356: <==negation-removal== 24462 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #59689: <==negation-removal== 71928 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #90236: <==negation-removal== 54545 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #24462: origin
                    (Bc_survivorat_s_p6)

                    ; #43762: <==closure== 83647 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54545: origin
                    (Ba_survivorat_s_p6)

                    ; #63571: <==closure== 54545 (pos)
                    (Pa_survivorat_s_p6)

                    ; #71928: <==closure== 24462 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83647: origin
                    (Bb_survivorat_s_p6)

                    ; #13247: <==negation-removal== 83647 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15537: <==negation-removal== 43762 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22029: <==negation-removal== 63571 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51356: <==negation-removal== 24462 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #59689: <==negation-removal== 71928 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #90236: <==negation-removal== 54545 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #24462: origin
                    (Bc_survivorat_s_p6)

                    ; #43762: <==closure== 83647 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54545: origin
                    (Ba_survivorat_s_p6)

                    ; #63571: <==closure== 54545 (pos)
                    (Pa_survivorat_s_p6)

                    ; #71928: <==closure== 24462 (pos)
                    (Pc_survivorat_s_p6)

                    ; #83647: origin
                    (Bb_survivorat_s_p6)

                    ; #13247: <==negation-removal== 83647 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15537: <==negation-removal== 43762 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #22029: <==negation-removal== 63571 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #51356: <==negation-removal== 24462 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #59689: <==negation-removal== 71928 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #90236: <==negation-removal== 54545 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #26801: origin
                    (Ba_survivorat_s_p7)

                    ; #27646: origin
                    (Bb_survivorat_s_p7)

                    ; #39487: <==closure== 27646 (pos)
                    (Pb_survivorat_s_p7)

                    ; #40930: <==closure== 42994 (pos)
                    (Pc_survivorat_s_p7)

                    ; #42994: origin
                    (Bc_survivorat_s_p7)

                    ; #66718: <==closure== 26801 (pos)
                    (Pa_survivorat_s_p7)

                    ; #11325: <==negation-removal== 26801 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68049: <==negation-removal== 66718 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69696: <==negation-removal== 27646 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #69753: <==negation-removal== 39487 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71452: <==negation-removal== 42994 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #76119: <==negation-removal== 40930 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #26801: origin
                    (Ba_survivorat_s_p7)

                    ; #27646: origin
                    (Bb_survivorat_s_p7)

                    ; #39487: <==closure== 27646 (pos)
                    (Pb_survivorat_s_p7)

                    ; #40930: <==closure== 42994 (pos)
                    (Pc_survivorat_s_p7)

                    ; #42994: origin
                    (Bc_survivorat_s_p7)

                    ; #66718: <==closure== 26801 (pos)
                    (Pa_survivorat_s_p7)

                    ; #11325: <==negation-removal== 26801 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68049: <==negation-removal== 66718 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69696: <==negation-removal== 27646 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #69753: <==negation-removal== 39487 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71452: <==negation-removal== 42994 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #76119: <==negation-removal== 40930 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #26801: origin
                    (Ba_survivorat_s_p7)

                    ; #27646: origin
                    (Bb_survivorat_s_p7)

                    ; #39487: <==closure== 27646 (pos)
                    (Pb_survivorat_s_p7)

                    ; #40930: <==closure== 42994 (pos)
                    (Pc_survivorat_s_p7)

                    ; #42994: origin
                    (Bc_survivorat_s_p7)

                    ; #66718: <==closure== 26801 (pos)
                    (Pa_survivorat_s_p7)

                    ; #11325: <==negation-removal== 26801 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #68049: <==negation-removal== 66718 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #69696: <==negation-removal== 27646 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #69753: <==negation-removal== 39487 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71452: <==negation-removal== 42994 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #76119: <==negation-removal== 40930 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #46469: <==closure== 68390 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53605: origin
                    (Bc_survivorat_s_p8)

                    ; #53675: <==closure== 92029 (pos)
                    (Pb_survivorat_s_p8)

                    ; #59418: <==closure== 53605 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68390: origin
                    (Ba_survivorat_s_p8)

                    ; #92029: origin
                    (Bb_survivorat_s_p8)

                    ; #11978: <==negation-removal== 46469 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #20855: <==negation-removal== 59418 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #31150: <==negation-removal== 53675 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57595: <==negation-removal== 92029 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #77964: <==negation-removal== 68390 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #99640: <==negation-removal== 53605 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #46469: <==closure== 68390 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53605: origin
                    (Bc_survivorat_s_p8)

                    ; #53675: <==closure== 92029 (pos)
                    (Pb_survivorat_s_p8)

                    ; #59418: <==closure== 53605 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68390: origin
                    (Ba_survivorat_s_p8)

                    ; #92029: origin
                    (Bb_survivorat_s_p8)

                    ; #11978: <==negation-removal== 46469 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #20855: <==negation-removal== 59418 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #31150: <==negation-removal== 53675 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57595: <==negation-removal== 92029 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #77964: <==negation-removal== 68390 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #99640: <==negation-removal== 53605 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #46469: <==closure== 68390 (pos)
                    (Pa_survivorat_s_p8)

                    ; #53605: origin
                    (Bc_survivorat_s_p8)

                    ; #53675: <==closure== 92029 (pos)
                    (Pb_survivorat_s_p8)

                    ; #59418: <==closure== 53605 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68390: origin
                    (Ba_survivorat_s_p8)

                    ; #92029: origin
                    (Bb_survivorat_s_p8)

                    ; #11978: <==negation-removal== 46469 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #20855: <==negation-removal== 59418 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #31150: <==negation-removal== 53675 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57595: <==negation-removal== 92029 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #77964: <==negation-removal== 68390 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #99640: <==negation-removal== 53605 (pos)
                    (not (Pc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #14609: origin
                    (Ba_survivorat_s_p9)

                    ; #31807: origin
                    (Bb_survivorat_s_p9)

                    ; #40545: origin
                    (Bc_survivorat_s_p9)

                    ; #69890: <==closure== 14609 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71488: <==closure== 40545 (pos)
                    (Pc_survivorat_s_p9)

                    ; #89780: <==closure== 31807 (pos)
                    (Pb_survivorat_s_p9)

                    ; #36555: <==negation-removal== 40545 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #51419: <==negation-removal== 14609 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58141: <==negation-removal== 89780 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #66627: <==negation-removal== 71488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70715: <==negation-removal== 31807 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77724: <==negation-removal== 69890 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #14609: origin
                    (Ba_survivorat_s_p9)

                    ; #31807: origin
                    (Bb_survivorat_s_p9)

                    ; #40545: origin
                    (Bc_survivorat_s_p9)

                    ; #69890: <==closure== 14609 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71488: <==closure== 40545 (pos)
                    (Pc_survivorat_s_p9)

                    ; #89780: <==closure== 31807 (pos)
                    (Pb_survivorat_s_p9)

                    ; #36555: <==negation-removal== 40545 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #51419: <==negation-removal== 14609 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58141: <==negation-removal== 89780 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #66627: <==negation-removal== 71488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70715: <==negation-removal== 31807 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77724: <==negation-removal== 69890 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #14609: origin
                    (Ba_survivorat_s_p9)

                    ; #31807: origin
                    (Bb_survivorat_s_p9)

                    ; #40545: origin
                    (Bc_survivorat_s_p9)

                    ; #69890: <==closure== 14609 (pos)
                    (Pa_survivorat_s_p9)

                    ; #71488: <==closure== 40545 (pos)
                    (Pc_survivorat_s_p9)

                    ; #89780: <==closure== 31807 (pos)
                    (Pb_survivorat_s_p9)

                    ; #36555: <==negation-removal== 40545 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #51419: <==negation-removal== 14609 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #58141: <==negation-removal== 89780 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #66627: <==negation-removal== 71488 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #70715: <==negation-removal== 31807 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #77724: <==negation-removal== 69890 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #40227: origin
                    (at_a_p1)

                    ; #44041: origin
                    (not_at_a_p1)

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #44041: origin
                    (not_at_a_p1)

                    ; #81382: origin
                    (at_a_p2)

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #44041: origin
                    (not_at_a_p1)

                    ; #66038: origin
                    (at_a_p3)

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #44041: origin
                    (not_at_a_p1)

                    ; #54652: origin
                    (at_a_p4)

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #44041: origin
                    (not_at_a_p1)

                    ; #55506: origin
                    (at_a_p5)

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #44041: origin
                    (not_at_a_p1)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #44041: origin
                    (not_at_a_p1)

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #44041: origin
                    (not_at_a_p1)

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #44041: origin
                    (not_at_a_p1)

                    ; #40227: <==negation-removal== 44041 (pos)
                    (not (at_a_p1))

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #40227: origin
                    (at_a_p1)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #59126: origin
                    (not_at_a_p2)

                    ; #81382: origin
                    (at_a_p2)

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #59126: origin
                    (not_at_a_p2)

                    ; #66038: origin
                    (at_a_p3)

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #54652: origin
                    (at_a_p4)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #55506: origin
                    (at_a_p5)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #59126: origin
                    (not_at_a_p2)

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))

                    ; #81382: <==negation-removal== 59126 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #40227: origin
                    (at_a_p1)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #81382: origin
                    (at_a_p2)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #66038: origin
                    (at_a_p3)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #54652: origin
                    (at_a_p4)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #55506: origin
                    (at_a_p5)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #85957: origin
                    (not_at_a_p3)

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))

                    ; #66038: <==negation-removal== 85957 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #40215: origin
                    (not_at_a_p4)

                    ; #40227: origin
                    (at_a_p1)

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #40215: origin
                    (not_at_a_p4)

                    ; #81382: origin
                    (at_a_p2)

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #40215: origin
                    (not_at_a_p4)

                    ; #66038: origin
                    (at_a_p3)

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #40215: origin
                    (not_at_a_p4)

                    ; #54652: origin
                    (at_a_p4)

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #40215: origin
                    (not_at_a_p4)

                    ; #55506: origin
                    (at_a_p5)

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #40215: origin
                    (not_at_a_p4)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #40215: origin
                    (not_at_a_p4)

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #40215: origin
                    (not_at_a_p4)

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #40215: origin
                    (not_at_a_p4)

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))

                    ; #54652: <==negation-removal== 40215 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #40227: origin
                    (at_a_p1)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #64631: origin
                    (not_at_a_p5)

                    ; #81382: origin
                    (at_a_p2)

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #64631: origin
                    (not_at_a_p5)

                    ; #66038: origin
                    (at_a_p3)

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #54652: origin
                    (at_a_p4)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #55506: origin
                    (at_a_p5)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #64631: origin
                    (not_at_a_p5)

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))

                    ; #55506: <==negation-removal== 64631 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #40227: origin
                    (at_a_p1)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #81382: origin
                    (at_a_p2)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #66038: origin
                    (at_a_p3)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #54652: origin
                    (at_a_p4)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #55506: origin
                    (at_a_p5)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #23335: origin
                    (not_at_a_p6)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #38221: origin
                    (at_a_p7)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #23335: origin
                    (not_at_a_p6)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #23335: origin
                    (not_at_a_p6)

                    ; #25656: origin
                    (at_a_p9)

                    ; #19052: <==negation-removal== 23335 (pos)
                    (not (at_a_p6))

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #35677: origin
                    (not_at_a_p7)

                    ; #40227: origin
                    (at_a_p1)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #35677: origin
                    (not_at_a_p7)

                    ; #81382: origin
                    (at_a_p2)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #35677: origin
                    (not_at_a_p7)

                    ; #66038: origin
                    (at_a_p3)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #35677: origin
                    (not_at_a_p7)

                    ; #54652: origin
                    (at_a_p4)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #35677: origin
                    (not_at_a_p7)

                    ; #55506: origin
                    (at_a_p5)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #35677: origin
                    (not_at_a_p7)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #35677: origin
                    (not_at_a_p7)

                    ; #38221: origin
                    (at_a_p7)

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #35677: origin
                    (not_at_a_p7)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #35677: origin
                    (not_at_a_p7)

                    ; #38221: <==negation-removal== 35677 (pos)
                    (not (at_a_p7))

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #40227: origin
                    (at_a_p1)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #81382: origin
                    (at_a_p2)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #66038: origin
                    (at_a_p3)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #54652: origin
                    (at_a_p4)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #55506: origin
                    (at_a_p5)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #89376: origin
                    (not_at_a_p8)

                    ; #22255: <==negation-removal== 89376 (pos)
                    (not (at_a_p8))

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #40227: origin
                    (at_a_p1)

                    ; #40376: origin
                    (not_at_a_p9)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #44041: <==negation-removal== 40227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #40376: origin
                    (not_at_a_p9)

                    ; #81382: origin
                    (at_a_p2)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #59126: <==negation-removal== 81382 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #40376: origin
                    (not_at_a_p9)

                    ; #66038: origin
                    (at_a_p3)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #85957: <==negation-removal== 66038 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #40376: origin
                    (not_at_a_p9)

                    ; #54652: origin
                    (at_a_p4)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #40215: <==negation-removal== 54652 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #40376: origin
                    (not_at_a_p9)

                    ; #55506: origin
                    (at_a_p5)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #64631: <==negation-removal== 55506 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #19052: origin
                    (at_a_p6)

                    ; #40376: origin
                    (not_at_a_p9)

                    ; #23335: <==negation-removal== 19052 (pos)
                    (not (not_at_a_p6))

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #38221: origin
                    (at_a_p7)

                    ; #40376: origin
                    (not_at_a_p9)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #35677: <==negation-removal== 38221 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #22255: origin
                    (at_a_p8)

                    ; #40376: origin
                    (not_at_a_p9)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #89376: <==negation-removal== 22255 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #25656: origin
                    (at_a_p9)

                    ; #40376: origin
                    (not_at_a_p9)

                    ; #25656: <==negation-removal== 40376 (pos)
                    (not (at_a_p9))

                    ; #40376: <==negation-removal== 25656 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #73340: origin
                    (at_b_p1)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #82835: origin
                    (at_b_p3)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #69846: origin
                    (at_b_p5)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #86746: origin
                    (not_at_b_p1)

                    ; #91272: origin
                    (at_b_p8)

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #60673: origin
                    (at_b_p9)

                    ; #86746: origin
                    (not_at_b_p1)

                    ; #73340: <==negation-removal== 86746 (pos)
                    (not (at_b_p1))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #42747: origin
                    (not_at_b_p2)

                    ; #73340: origin
                    (at_b_p1)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #42747: origin
                    (not_at_b_p2)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #42747: origin
                    (not_at_b_p2)

                    ; #82835: origin
                    (at_b_p3)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #42747: origin
                    (not_at_b_p2)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #42747: origin
                    (not_at_b_p2)

                    ; #69846: origin
                    (at_b_p5)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #42747: origin
                    (not_at_b_p2)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #42747: origin
                    (not_at_b_p2)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #42747: origin
                    (not_at_b_p2)

                    ; #91272: origin
                    (at_b_p8)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #42747: origin
                    (not_at_b_p2)

                    ; #60673: origin
                    (at_b_p9)

                    ; #15447: <==negation-removal== 42747 (pos)
                    (not (at_b_p2))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #73340: origin
                    (at_b_p1)

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #28682: origin
                    (not_at_b_p3)

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #82835: origin
                    (at_b_p3)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #28682: origin
                    (not_at_b_p3)

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #69846: origin
                    (at_b_p5)

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #40661: origin
                    (at_b_p6)

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #34406: origin
                    (at_b_p7)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #91272: origin
                    (at_b_p8)

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #28682: origin
                    (not_at_b_p3)

                    ; #60673: origin
                    (at_b_p9)

                    ; #82835: <==negation-removal== 28682 (pos)
                    (not (at_b_p3))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #73340: origin
                    (at_b_p1)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #82835: origin
                    (at_b_p3)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #69846: origin
                    (at_b_p5)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #83132: origin
                    (not_at_b_p4)

                    ; #91272: origin
                    (at_b_p8)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #60673: origin
                    (at_b_p9)

                    ; #83132: origin
                    (not_at_b_p4)

                    ; #11689: <==negation-removal== 83132 (pos)
                    (not (at_b_p4))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #64901: origin
                    (not_at_b_p5)

                    ; #73340: origin
                    (at_b_p1)

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #64901: origin
                    (not_at_b_p5)

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #64901: origin
                    (not_at_b_p5)

                    ; #82835: origin
                    (at_b_p3)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #64901: origin
                    (not_at_b_p5)

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #64901: origin
                    (not_at_b_p5)

                    ; #69846: origin
                    (at_b_p5)

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #64901: origin
                    (not_at_b_p5)

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #64901: origin
                    (not_at_b_p5)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #64901: origin
                    (not_at_b_p5)

                    ; #91272: origin
                    (at_b_p8)

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #60673: origin
                    (at_b_p9)

                    ; #64901: origin
                    (not_at_b_p5)

                    ; #69846: <==negation-removal== 64901 (pos)
                    (not (at_b_p5))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #73340: origin
                    (at_b_p1)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #82835: origin
                    (at_b_p3)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #69846: origin
                    (at_b_p5)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #84480: origin
                    (not_at_b_p6)

                    ; #91272: origin
                    (at_b_p8)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #60673: origin
                    (at_b_p9)

                    ; #84480: origin
                    (not_at_b_p6)

                    ; #40661: <==negation-removal== 84480 (pos)
                    (not (at_b_p6))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #73340: origin
                    (at_b_p1)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #15842: origin
                    (not_at_b_p7)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #82835: origin
                    (at_b_p3)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #15842: origin
                    (not_at_b_p7)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #69846: origin
                    (at_b_p5)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #40661: origin
                    (at_b_p6)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #34406: origin
                    (at_b_p7)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #91272: origin
                    (at_b_p8)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #15842: origin
                    (not_at_b_p7)

                    ; #60673: origin
                    (at_b_p9)

                    ; #34406: <==negation-removal== 15842 (pos)
                    (not (at_b_p7))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #55139: origin
                    (not_at_b_p8)

                    ; #73340: origin
                    (at_b_p1)

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #55139: origin
                    (not_at_b_p8)

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #55139: origin
                    (not_at_b_p8)

                    ; #82835: origin
                    (at_b_p3)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #55139: origin
                    (not_at_b_p8)

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #55139: origin
                    (not_at_b_p8)

                    ; #69846: origin
                    (at_b_p5)

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #55139: origin
                    (not_at_b_p8)

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #55139: origin
                    (not_at_b_p8)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #55139: origin
                    (not_at_b_p8)

                    ; #91272: origin
                    (at_b_p8)

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #55139: origin
                    (not_at_b_p8)

                    ; #60673: origin
                    (at_b_p9)

                    ; #91272: <==negation-removal== 55139 (pos)
                    (not (at_b_p8))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #73340: origin
                    (at_b_p1)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))

                    ; #86746: <==negation-removal== 73340 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #15447: origin
                    (at_b_p2)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #42747: <==negation-removal== 15447 (pos)
                    (not (not_at_b_p2))

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #82835: origin
                    (at_b_p3)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #28682: <==negation-removal== 82835 (pos)
                    (not (not_at_b_p3))

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #11689: origin
                    (at_b_p4)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))

                    ; #83132: <==negation-removal== 11689 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #69846: origin
                    (at_b_p5)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))

                    ; #64901: <==negation-removal== 69846 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #40661: origin
                    (at_b_p6)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))

                    ; #84480: <==negation-removal== 40661 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #34406: origin
                    (at_b_p7)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #15842: <==negation-removal== 34406 (pos)
                    (not (not_at_b_p7))

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #91272: origin
                    (at_b_p8)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #55139: <==negation-removal== 91272 (pos)
                    (not (not_at_b_p8))

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #60673: origin
                    (at_b_p9)

                    ; #96936: origin
                    (not_at_b_p9)

                    ; #60673: <==negation-removal== 96936 (pos)
                    (not (at_b_p9))

                    ; #96936: <==negation-removal== 60673 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #74197: origin
                    (at_c_p1)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #83473: origin
                    (not_at_c_p1)

                    ; #85545: origin
                    (at_c_p2)

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #82489: origin
                    (at_c_p7)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #76943: origin
                    (at_c_p8)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #41488: origin
                    (at_c_p9)

                    ; #83473: origin
                    (not_at_c_p1)

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))

                    ; #74197: <==negation-removal== 83473 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #47429: origin
                    (not_at_c_p2)

                    ; #74197: origin
                    (at_c_p1)

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #47429: origin
                    (not_at_c_p2)

                    ; #85545: origin
                    (at_c_p2)

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #47429: origin
                    (not_at_c_p2)

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #47429: origin
                    (not_at_c_p2)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #47429: origin
                    (not_at_c_p2)

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #47429: origin
                    (not_at_c_p2)

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #47429: origin
                    (not_at_c_p2)

                    ; #82489: origin
                    (at_c_p7)

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #47429: origin
                    (not_at_c_p2)

                    ; #76943: origin
                    (at_c_p8)

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #41488: origin
                    (at_c_p9)

                    ; #47429: origin
                    (not_at_c_p2)

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))

                    ; #85545: <==negation-removal== 47429 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #53556: origin
                    (not_at_c_p3)

                    ; #74197: origin
                    (at_c_p1)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #53556: origin
                    (not_at_c_p3)

                    ; #85545: origin
                    (at_c_p2)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #53556: origin
                    (not_at_c_p3)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #53556: origin
                    (not_at_c_p3)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #53556: origin
                    (not_at_c_p3)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #53556: origin
                    (not_at_c_p3)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #53556: origin
                    (not_at_c_p3)

                    ; #82489: origin
                    (at_c_p7)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #53556: origin
                    (not_at_c_p3)

                    ; #76943: origin
                    (at_c_p8)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #41488: origin
                    (at_c_p9)

                    ; #53556: origin
                    (not_at_c_p3)

                    ; #21993: <==negation-removal== 53556 (pos)
                    (not (at_c_p3))

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #74197: origin
                    (at_c_p1)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #85545: origin
                    (at_c_p2)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #22200: origin
                    (not_at_c_p4)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #22200: origin
                    (not_at_c_p4)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #36878: origin
                    (at_c_p5)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #33135: origin
                    (at_c_p6)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #82489: origin
                    (at_c_p7)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #76943: origin
                    (at_c_p8)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #22200: origin
                    (not_at_c_p4)

                    ; #41488: origin
                    (at_c_p9)

                    ; #10665: <==negation-removal== 22200 (pos)
                    (not (at_c_p4))

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #36360: origin
                    (not_at_c_p5)

                    ; #74197: origin
                    (at_c_p1)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #36360: origin
                    (not_at_c_p5)

                    ; #85545: origin
                    (at_c_p2)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #36360: origin
                    (not_at_c_p5)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #36360: origin
                    (not_at_c_p5)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #36360: origin
                    (not_at_c_p5)

                    ; #36878: origin
                    (at_c_p5)

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #36360: origin
                    (not_at_c_p5)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #36360: origin
                    (not_at_c_p5)

                    ; #82489: origin
                    (at_c_p7)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #36360: origin
                    (not_at_c_p5)

                    ; #76943: origin
                    (at_c_p8)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #36360: origin
                    (not_at_c_p5)

                    ; #41488: origin
                    (at_c_p9)

                    ; #36878: <==negation-removal== 36360 (pos)
                    (not (at_c_p5))

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #69437: origin
                    (not_at_c_p6)

                    ; #74197: origin
                    (at_c_p1)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #69437: origin
                    (not_at_c_p6)

                    ; #85545: origin
                    (at_c_p2)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #69437: origin
                    (not_at_c_p6)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #69437: origin
                    (not_at_c_p6)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #69437: origin
                    (not_at_c_p6)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #69437: origin
                    (not_at_c_p6)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #69437: origin
                    (not_at_c_p6)

                    ; #82489: origin
                    (at_c_p7)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #69437: origin
                    (not_at_c_p6)

                    ; #76943: origin
                    (at_c_p8)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #41488: origin
                    (at_c_p9)

                    ; #69437: origin
                    (not_at_c_p6)

                    ; #33135: <==negation-removal== 69437 (pos)
                    (not (at_c_p6))

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #37574: origin
                    (not_at_c_p7)

                    ; #74197: origin
                    (at_c_p1)

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #37574: origin
                    (not_at_c_p7)

                    ; #85545: origin
                    (at_c_p2)

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #37574: origin
                    (not_at_c_p7)

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #37574: origin
                    (not_at_c_p7)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #37574: origin
                    (not_at_c_p7)

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #37574: origin
                    (not_at_c_p7)

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #37574: origin
                    (not_at_c_p7)

                    ; #82489: origin
                    (at_c_p7)

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #37574: origin
                    (not_at_c_p7)

                    ; #76943: origin
                    (at_c_p8)

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #37574: origin
                    (not_at_c_p7)

                    ; #41488: origin
                    (at_c_p9)

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))

                    ; #82489: <==negation-removal== 37574 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #73936: origin
                    (not_at_c_p8)

                    ; #74197: origin
                    (at_c_p1)

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #73936: origin
                    (not_at_c_p8)

                    ; #85545: origin
                    (at_c_p2)

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #73936: origin
                    (not_at_c_p8)

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #73936: origin
                    (not_at_c_p8)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #73936: origin
                    (not_at_c_p8)

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #73936: origin
                    (not_at_c_p8)

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #73936: origin
                    (not_at_c_p8)

                    ; #82489: origin
                    (at_c_p7)

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #73936: origin
                    (not_at_c_p8)

                    ; #76943: origin
                    (at_c_p8)

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #41488: origin
                    (at_c_p9)

                    ; #73936: origin
                    (not_at_c_p8)

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))

                    ; #76943: <==negation-removal== 73936 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #48969: origin
                    (not_at_c_p9)

                    ; #74197: origin
                    (at_c_p1)

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))

                    ; #83473: <==negation-removal== 74197 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #48969: origin
                    (not_at_c_p9)

                    ; #85545: origin
                    (at_c_p2)

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))

                    ; #47429: <==negation-removal== 85545 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #21993: origin
                    (at_c_p3)

                    ; #48969: origin
                    (not_at_c_p9)

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))

                    ; #53556: <==negation-removal== 21993 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #10665: origin
                    (at_c_p4)

                    ; #48969: origin
                    (not_at_c_p9)

                    ; #22200: <==negation-removal== 10665 (pos)
                    (not (not_at_c_p4))

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #36878: origin
                    (at_c_p5)

                    ; #48969: origin
                    (not_at_c_p9)

                    ; #36360: <==negation-removal== 36878 (pos)
                    (not (not_at_c_p5))

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #33135: origin
                    (at_c_p6)

                    ; #48969: origin
                    (not_at_c_p9)

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))

                    ; #69437: <==negation-removal== 33135 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #48969: origin
                    (not_at_c_p9)

                    ; #82489: origin
                    (at_c_p7)

                    ; #37574: <==negation-removal== 82489 (pos)
                    (not (not_at_c_p7))

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #48969: origin
                    (not_at_c_p9)

                    ; #76943: origin
                    (at_c_p8)

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))

                    ; #73936: <==negation-removal== 76943 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #41488: origin
                    (at_c_p9)

                    ; #48969: origin
                    (not_at_c_p9)

                    ; #41488: <==negation-removal== 48969 (pos)
                    (not (at_c_p9))

                    ; #48969: <==negation-removal== 41488 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12506: origin
                    (checked_p1)

                    ; #12973: <==closure== 21215 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #14544: <==commonly_known== 12506 (pos)
                    (Bb_checked_p1)

                    ; #15343: <==commonly_known== 12506 (pos)
                    (Bc_checked_p1)

                    ; #21215: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #21227: <==closure== 15343 (pos)
                    (Pc_checked_p1)

                    ; #23229: <==closure== 55519 (pos)
                    (Pa_checked_p1)

                    ; #26389: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #34471: <==closure== 26389 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #36834: <==closure== 14544 (pos)
                    (Pb_checked_p1)

                    ; #55519: <==commonly_known== 12506 (pos)
                    (Ba_checked_p1)

                    ; #12263: <==negation-removal== 34471 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #12872: <==uncertain_firing== 26389 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #15010: <==negation-removal== 21215 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #25451: <==negation-removal== 55519 (pos)
                    (not (Pa_not_checked_p1))

                    ; #32605: <==unclosure== 12872 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #42140: <==negation-removal== 21227 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49153: <==negation-removal== 14544 (pos)
                    (not (Pb_not_checked_p1))

                    ; #71595: <==uncertain_firing== 21215 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #80418: <==negation-removal== 12973 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #84207: <==negation-removal== 36834 (pos)
                    (not (Bb_not_checked_p1))

                    ; #84421: <==negation-removal== 15343 (pos)
                    (not (Pc_not_checked_p1))

                    ; #84467: <==unclosure== 71595 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #84981: <==negation-removal== 23229 (pos)
                    (not (Ba_not_checked_p1))

                    ; #86598: <==negation-removal== 12506 (pos)
                    (not (not_checked_p1))

                    ; #90098: <==negation-removal== 26389 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #11351: <==closure== 15800 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #15800: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #32780: <==closure== 54777 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #37966: origin
                    (checked_p2)

                    ; #42871: <==commonly_known== 37966 (pos)
                    (Bc_checked_p2)

                    ; #48149: <==closure== 91891 (pos)
                    (Pb_checked_p2)

                    ; #54777: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #84918: <==closure== 42871 (pos)
                    (Pc_checked_p2)

                    ; #86561: <==closure== 91855 (pos)
                    (Pa_checked_p2)

                    ; #91855: <==commonly_known== 37966 (pos)
                    (Ba_checked_p2)

                    ; #91891: <==commonly_known== 37966 (pos)
                    (Bb_checked_p2)

                    ; #22436: <==negation-removal== 86561 (pos)
                    (not (Ba_not_checked_p2))

                    ; #22703: <==negation-removal== 37966 (pos)
                    (not (not_checked_p2))

                    ; #24497: <==negation-removal== 42871 (pos)
                    (not (Pc_not_checked_p2))

                    ; #32131: <==negation-removal== 91855 (pos)
                    (not (Pa_not_checked_p2))

                    ; #48605: <==negation-removal== 91891 (pos)
                    (not (Pb_not_checked_p2))

                    ; #49298: <==negation-removal== 15800 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #54740: <==negation-removal== 11351 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #61605: <==negation-removal== 48149 (pos)
                    (not (Bb_not_checked_p2))

                    ; #66370: <==uncertain_firing== 15800 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #67690: <==negation-removal== 54777 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #68312: <==unclosure== 82963 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #80571: <==negation-removal== 32780 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #81488: <==negation-removal== 84918 (pos)
                    (not (Bc_not_checked_p2))

                    ; #82162: <==unclosure== 66370 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #82963: <==uncertain_firing== 54777 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22606: <==commonly_known== 67053 (pos)
                    (Bc_checked_p3)

                    ; #34763: <==closure== 63437 (pos)
                    (Pb_checked_p3)

                    ; #44060: <==closure== 77712 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #44070: <==closure== 76597 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #60996: <==commonly_known== 67053 (pos)
                    (Ba_checked_p3)

                    ; #62126: <==closure== 60996 (pos)
                    (Pa_checked_p3)

                    ; #63437: <==commonly_known== 67053 (pos)
                    (Bb_checked_p3)

                    ; #67053: origin
                    (checked_p3)

                    ; #76597: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #77712: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #78581: <==closure== 22606 (pos)
                    (Pc_checked_p3)

                    ; #16545: <==negation-removal== 44070 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #25205: <==negation-removal== 34763 (pos)
                    (not (Bb_not_checked_p3))

                    ; #27406: <==unclosure== 73631 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #33065: <==negation-removal== 63437 (pos)
                    (not (Pb_not_checked_p3))

                    ; #34915: <==negation-removal== 60996 (pos)
                    (not (Pa_not_checked_p3))

                    ; #37905: <==negation-removal== 44060 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #38490: <==negation-removal== 76597 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #52929: <==negation-removal== 62126 (pos)
                    (not (Ba_not_checked_p3))

                    ; #60306: <==unclosure== 70323 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #63492: <==negation-removal== 67053 (pos)
                    (not (not_checked_p3))

                    ; #66681: <==negation-removal== 22606 (pos)
                    (not (Pc_not_checked_p3))

                    ; #70323: <==uncertain_firing== 77712 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #73631: <==uncertain_firing== 76597 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #90264: <==negation-removal== 78581 (pos)
                    (not (Bc_not_checked_p3))

                    ; #90593: <==negation-removal== 77712 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11596: <==closure== 27245 (pos)
                    (Pc_checked_p4)

                    ; #15926: <==closure== 69848 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #23609: <==commonly_known== 91330 (pos)
                    (Ba_checked_p4)

                    ; #27245: <==commonly_known== 91330 (pos)
                    (Bc_checked_p4)

                    ; #28339: <==closure== 56465 (pos)
                    (Pb_checked_p4)

                    ; #38562: <==closure== 23609 (pos)
                    (Pa_checked_p4)

                    ; #48972: <==closure== 64001 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #56465: <==commonly_known== 91330 (pos)
                    (Bb_checked_p4)

                    ; #64001: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #69848: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #91330: origin
                    (checked_p4)

                    ; #10825: <==negation-removal== 38562 (pos)
                    (not (Ba_not_checked_p4))

                    ; #11692: <==negation-removal== 23609 (pos)
                    (not (Pa_not_checked_p4))

                    ; #19190: <==negation-removal== 91330 (pos)
                    (not (not_checked_p4))

                    ; #20169: <==negation-removal== 11596 (pos)
                    (not (Bc_not_checked_p4))

                    ; #22151: <==negation-removal== 64001 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #24225: <==unclosure== 76228 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #29617: <==negation-removal== 69848 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #35256: <==negation-removal== 27245 (pos)
                    (not (Pc_not_checked_p4))

                    ; #44959: <==uncertain_firing== 69848 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #45403: <==negation-removal== 56465 (pos)
                    (not (Pb_not_checked_p4))

                    ; #56667: <==unclosure== 44959 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #70694: <==negation-removal== 28339 (pos)
                    (not (Bb_not_checked_p4))

                    ; #76228: <==uncertain_firing== 64001 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #76327: <==negation-removal== 15926 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #85987: <==negation-removal== 48972 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28590: <==closure== 52721 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #35461: <==commonly_known== 71492 (pos)
                    (Ba_checked_p5)

                    ; #40001: <==closure== 46778 (pos)
                    (Pb_checked_p5)

                    ; #46778: <==commonly_known== 71492 (pos)
                    (Bb_checked_p5)

                    ; #52721: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #55878: <==commonly_known== 71492 (pos)
                    (Bc_checked_p5)

                    ; #58259: <==closure== 58965 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #58965: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #71492: origin
                    (checked_p5)

                    ; #80519: <==closure== 55878 (pos)
                    (Pc_checked_p5)

                    ; #81497: <==closure== 35461 (pos)
                    (Pa_checked_p5)

                    ; #11237: <==negation-removal== 28590 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #15908: <==negation-removal== 40001 (pos)
                    (not (Bb_not_checked_p5))

                    ; #18414: <==uncertain_firing== 58965 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #23916: <==negation-removal== 81497 (pos)
                    (not (Ba_not_checked_p5))

                    ; #26298: <==negation-removal== 71492 (pos)
                    (not (not_checked_p5))

                    ; #26913: <==negation-removal== 55878 (pos)
                    (not (Pc_not_checked_p5))

                    ; #39398: <==unclosure== 18414 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #48535: <==unclosure== 62294 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #50452: <==negation-removal== 58965 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #56569: <==negation-removal== 52721 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #62294: <==uncertain_firing== 52721 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #63084: <==negation-removal== 46778 (pos)
                    (not (Pb_not_checked_p5))

                    ; #68242: <==negation-removal== 58259 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #69384: <==negation-removal== 80519 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75950: <==negation-removal== 35461 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18785: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #19058: <==closure== 88638 (pos)
                    (Pa_checked_p6)

                    ; #21795: <==closure== 80475 (pos)
                    (Pc_checked_p6)

                    ; #32672: <==closure== 65502 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #47050: <==closure== 18785 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #48121: <==closure== 88506 (pos)
                    (Pb_checked_p6)

                    ; #65502: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #80475: <==commonly_known== 87901 (pos)
                    (Bc_checked_p6)

                    ; #87901: origin
                    (checked_p6)

                    ; #88506: <==commonly_known== 87901 (pos)
                    (Bb_checked_p6)

                    ; #88638: <==commonly_known== 87901 (pos)
                    (Ba_checked_p6)

                    ; #11721: <==negation-removal== 48121 (pos)
                    (not (Bb_not_checked_p6))

                    ; #12833: <==negation-removal== 47050 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #21017: <==negation-removal== 88638 (pos)
                    (not (Pa_not_checked_p6))

                    ; #22471: <==uncertain_firing== 18785 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #26410: <==negation-removal== 19058 (pos)
                    (not (Ba_not_checked_p6))

                    ; #27049: <==unclosure== 28970 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #28970: <==uncertain_firing== 65502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #36170: <==negation-removal== 65502 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #46118: <==negation-removal== 87901 (pos)
                    (not (not_checked_p6))

                    ; #59033: <==negation-removal== 32672 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #66626: <==negation-removal== 88506 (pos)
                    (not (Pb_not_checked_p6))

                    ; #83686: <==negation-removal== 18785 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #84042: <==negation-removal== 21795 (pos)
                    (not (Bc_not_checked_p6))

                    ; #86184: <==negation-removal== 80475 (pos)
                    (not (Pc_not_checked_p6))

                    ; #89836: <==unclosure== 22471 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11059: <==commonly_known== 13829 (pos)
                    (Bc_checked_p7)

                    ; #13829: origin
                    (checked_p7)

                    ; #20456: <==closure== 11059 (pos)
                    (Pc_checked_p7)

                    ; #30687: <==closure== 80124 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #41052: <==commonly_known== 13829 (pos)
                    (Ba_checked_p7)

                    ; #42234: <==commonly_known== 13829 (pos)
                    (Bb_checked_p7)

                    ; #53375: <==closure== 42234 (pos)
                    (Pb_checked_p7)

                    ; #79610: <==closure== 41052 (pos)
                    (Pa_checked_p7)

                    ; #80124: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #90528: <==closure== 90835 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #90835: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #12054: <==negation-removal== 79610 (pos)
                    (not (Ba_not_checked_p7))

                    ; #14441: <==negation-removal== 90528 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #17057: <==negation-removal== 41052 (pos)
                    (not (Pa_not_checked_p7))

                    ; #19807: <==negation-removal== 90835 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #21431: <==negation-removal== 80124 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #22365: <==negation-removal== 11059 (pos)
                    (not (Pc_not_checked_p7))

                    ; #25367: <==negation-removal== 42234 (pos)
                    (not (Pb_not_checked_p7))

                    ; #30992: <==negation-removal== 13829 (pos)
                    (not (not_checked_p7))

                    ; #33626: <==negation-removal== 30687 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35728: <==negation-removal== 53375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #39923: <==unclosure== 48696 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #48696: <==uncertain_firing== 80124 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #84366: <==unclosure== 88069 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #84643: <==negation-removal== 20456 (pos)
                    (not (Bc_not_checked_p7))

                    ; #88069: <==uncertain_firing== 90835 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #21191: <==commonly_known== 60100 (pos)
                    (Bc_checked_p8)

                    ; #29378: <==closure== 65681 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #36310: <==closure== 89219 (pos)
                    (Pa_checked_p8)

                    ; #40765: <==commonly_known== 60100 (pos)
                    (Bb_checked_p8)

                    ; #50891: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #55301: <==closure== 21191 (pos)
                    (Pc_checked_p8)

                    ; #58725: <==closure== 50891 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #60100: origin
                    (checked_p8)

                    ; #63661: <==closure== 40765 (pos)
                    (Pb_checked_p8)

                    ; #65681: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #89219: <==commonly_known== 60100 (pos)
                    (Ba_checked_p8)

                    ; #10572: <==negation-removal== 40765 (pos)
                    (not (Pb_not_checked_p8))

                    ; #16492: <==unclosure== 90748 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #25391: <==negation-removal== 89219 (pos)
                    (not (Pa_not_checked_p8))

                    ; #36852: <==negation-removal== 60100 (pos)
                    (not (not_checked_p8))

                    ; #37207: <==negation-removal== 58725 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #38657: <==negation-removal== 29378 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #40542: <==uncertain_firing== 65681 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #42982: <==negation-removal== 63661 (pos)
                    (not (Bb_not_checked_p8))

                    ; #61184: <==unclosure== 40542 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #70746: <==negation-removal== 36310 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79284: <==negation-removal== 55301 (pos)
                    (not (Bc_not_checked_p8))

                    ; #79973: <==negation-removal== 50891 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #85079: <==negation-removal== 65681 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #86105: <==negation-removal== 21191 (pos)
                    (not (Pc_not_checked_p8))

                    ; #90748: <==uncertain_firing== 50891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #24470: <==closure== 37497 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #25171: <==closure== 35445 (pos)
                    (Pc_checked_p9)

                    ; #30495: <==closure== 59560 (pos)
                    (Pa_checked_p9)

                    ; #33189: <==closure== 79903 (pos)
                    (Pb_checked_p9)

                    ; #35070: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #35445: <==commonly_known== 84234 (pos)
                    (Bc_checked_p9)

                    ; #37497: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #59560: <==commonly_known== 84234 (pos)
                    (Ba_checked_p9)

                    ; #79903: <==commonly_known== 84234 (pos)
                    (Bb_checked_p9)

                    ; #83358: <==closure== 35070 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #84234: origin
                    (checked_p9)

                    ; #16523: <==negation-removal== 35445 (pos)
                    (not (Pc_not_checked_p9))

                    ; #19228: <==negation-removal== 59560 (pos)
                    (not (Pa_not_checked_p9))

                    ; #28079: <==negation-removal== 35070 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #34694: <==negation-removal== 30495 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42771: <==negation-removal== 33189 (pos)
                    (not (Bb_not_checked_p9))

                    ; #44939: <==uncertain_firing== 35070 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #60415: <==unclosure== 62579 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #62037: <==negation-removal== 84234 (pos)
                    (not (not_checked_p9))

                    ; #62579: <==uncertain_firing== 37497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #69681: <==negation-removal== 37497 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #74689: <==negation-removal== 25171 (pos)
                    (not (Bc_not_checked_p9))

                    ; #76334: <==negation-removal== 24470 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #81023: <==negation-removal== 79903 (pos)
                    (not (Pb_not_checked_p9))

                    ; #89663: <==unclosure== 44939 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #91530: <==negation-removal== 83358 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12506: origin
                    (checked_p1)

                    ; #14544: <==commonly_known== 12506 (pos)
                    (Bb_checked_p1)

                    ; #15343: <==commonly_known== 12506 (pos)
                    (Bc_checked_p1)

                    ; #21227: <==closure== 15343 (pos)
                    (Pc_checked_p1)

                    ; #23229: <==closure== 55519 (pos)
                    (Pa_checked_p1)

                    ; #36834: <==closure== 14544 (pos)
                    (Pb_checked_p1)

                    ; #44332: <==closure== 54220 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #54220: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #54575: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #55519: <==commonly_known== 12506 (pos)
                    (Ba_checked_p1)

                    ; #66969: <==closure== 54575 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #24505: <==uncertain_firing== 54220 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #25451: <==negation-removal== 55519 (pos)
                    (not (Pa_not_checked_p1))

                    ; #35264: <==uncertain_firing== 54575 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #42140: <==negation-removal== 21227 (pos)
                    (not (Bc_not_checked_p1))

                    ; #49153: <==negation-removal== 14544 (pos)
                    (not (Pb_not_checked_p1))

                    ; #51834: <==unclosure== 24505 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #56767: <==negation-removal== 66969 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #77503: <==negation-removal== 54575 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #79207: <==negation-removal== 44332 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #84207: <==negation-removal== 36834 (pos)
                    (not (Bb_not_checked_p1))

                    ; #84421: <==negation-removal== 15343 (pos)
                    (not (Pc_not_checked_p1))

                    ; #84981: <==negation-removal== 23229 (pos)
                    (not (Ba_not_checked_p1))

                    ; #86322: <==negation-removal== 54220 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #86598: <==negation-removal== 12506 (pos)
                    (not (not_checked_p1))

                    ; #88236: <==unclosure== 35264 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #37966: origin
                    (checked_p2)

                    ; #42871: <==commonly_known== 37966 (pos)
                    (Bc_checked_p2)

                    ; #46145: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #47889: <==closure== 46145 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #48149: <==closure== 91891 (pos)
                    (Pb_checked_p2)

                    ; #52249: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #66639: <==closure== 52249 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #84918: <==closure== 42871 (pos)
                    (Pc_checked_p2)

                    ; #86561: <==closure== 91855 (pos)
                    (Pa_checked_p2)

                    ; #91855: <==commonly_known== 37966 (pos)
                    (Ba_checked_p2)

                    ; #91891: <==commonly_known== 37966 (pos)
                    (Bb_checked_p2)

                    ; #10322: <==negation-removal== 66639 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #19555: <==uncertain_firing== 52249 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #22436: <==negation-removal== 86561 (pos)
                    (not (Ba_not_checked_p2))

                    ; #22703: <==negation-removal== 37966 (pos)
                    (not (not_checked_p2))

                    ; #23635: <==unclosure== 19555 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #24497: <==negation-removal== 42871 (pos)
                    (not (Pc_not_checked_p2))

                    ; #27657: <==negation-removal== 52249 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #32131: <==negation-removal== 91855 (pos)
                    (not (Pa_not_checked_p2))

                    ; #33137: <==negation-removal== 46145 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #41858: <==unclosure== 58783 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #43395: <==negation-removal== 47889 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #48605: <==negation-removal== 91891 (pos)
                    (not (Pb_not_checked_p2))

                    ; #58783: <==uncertain_firing== 46145 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #61605: <==negation-removal== 48149 (pos)
                    (not (Bb_not_checked_p2))

                    ; #81488: <==negation-removal== 84918 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12142: <==closure== 70626 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #22606: <==commonly_known== 67053 (pos)
                    (Bc_checked_p3)

                    ; #22963: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #34763: <==closure== 63437 (pos)
                    (Pb_checked_p3)

                    ; #57466: <==closure== 22963 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #60996: <==commonly_known== 67053 (pos)
                    (Ba_checked_p3)

                    ; #62126: <==closure== 60996 (pos)
                    (Pa_checked_p3)

                    ; #63437: <==commonly_known== 67053 (pos)
                    (Bb_checked_p3)

                    ; #67053: origin
                    (checked_p3)

                    ; #70626: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #78581: <==closure== 22606 (pos)
                    (Pc_checked_p3)

                    ; #16120: <==negation-removal== 22963 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #23046: <==uncertain_firing== 22963 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #25205: <==negation-removal== 34763 (pos)
                    (not (Bb_not_checked_p3))

                    ; #33065: <==negation-removal== 63437 (pos)
                    (not (Pb_not_checked_p3))

                    ; #34915: <==negation-removal== 60996 (pos)
                    (not (Pa_not_checked_p3))

                    ; #37766: <==negation-removal== 57466 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #52929: <==negation-removal== 62126 (pos)
                    (not (Ba_not_checked_p3))

                    ; #63492: <==negation-removal== 67053 (pos)
                    (not (not_checked_p3))

                    ; #66681: <==negation-removal== 22606 (pos)
                    (not (Pc_not_checked_p3))

                    ; #74078: <==negation-removal== 12142 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #75650: <==uncertain_firing== 70626 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #81446: <==unclosure== 75650 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #82678: <==unclosure== 23046 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #84483: <==negation-removal== 70626 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90264: <==negation-removal== 78581 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11596: <==closure== 27245 (pos)
                    (Pc_checked_p4)

                    ; #23609: <==commonly_known== 91330 (pos)
                    (Ba_checked_p4)

                    ; #27245: <==commonly_known== 91330 (pos)
                    (Bc_checked_p4)

                    ; #28339: <==closure== 56465 (pos)
                    (Pb_checked_p4)

                    ; #37242: <==closure== 78335 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #38562: <==closure== 23609 (pos)
                    (Pa_checked_p4)

                    ; #54010: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #56465: <==commonly_known== 91330 (pos)
                    (Bb_checked_p4)

                    ; #78335: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #79254: <==closure== 54010 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #91330: origin
                    (checked_p4)

                    ; #10825: <==negation-removal== 38562 (pos)
                    (not (Ba_not_checked_p4))

                    ; #11692: <==negation-removal== 23609 (pos)
                    (not (Pa_not_checked_p4))

                    ; #15951: <==negation-removal== 78335 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #19190: <==negation-removal== 91330 (pos)
                    (not (not_checked_p4))

                    ; #20169: <==negation-removal== 11596 (pos)
                    (not (Bc_not_checked_p4))

                    ; #30844: <==uncertain_firing== 54010 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #35256: <==negation-removal== 27245 (pos)
                    (not (Pc_not_checked_p4))

                    ; #36995: <==negation-removal== 79254 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #45403: <==negation-removal== 56465 (pos)
                    (not (Pb_not_checked_p4))

                    ; #50055: <==negation-removal== 37242 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #64185: <==uncertain_firing== 78335 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #68582: <==unclosure== 30844 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #70694: <==negation-removal== 28339 (pos)
                    (not (Bb_not_checked_p4))

                    ; #81667: <==negation-removal== 54010 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #82265: <==unclosure== 64185 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13719: <==closure== 63460 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #22363: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #27245: <==closure== 22363 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #35461: <==commonly_known== 71492 (pos)
                    (Ba_checked_p5)

                    ; #40001: <==closure== 46778 (pos)
                    (Pb_checked_p5)

                    ; #46778: <==commonly_known== 71492 (pos)
                    (Bb_checked_p5)

                    ; #55878: <==commonly_known== 71492 (pos)
                    (Bc_checked_p5)

                    ; #63460: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #71492: origin
                    (checked_p5)

                    ; #80519: <==closure== 55878 (pos)
                    (Pc_checked_p5)

                    ; #81497: <==closure== 35461 (pos)
                    (Pa_checked_p5)

                    ; #15908: <==negation-removal== 40001 (pos)
                    (not (Bb_not_checked_p5))

                    ; #18782: <==unclosure== 68582 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #23916: <==negation-removal== 81497 (pos)
                    (not (Ba_not_checked_p5))

                    ; #25613: <==negation-removal== 63460 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #26298: <==negation-removal== 71492 (pos)
                    (not (not_checked_p5))

                    ; #26913: <==negation-removal== 55878 (pos)
                    (not (Pc_not_checked_p5))

                    ; #46353: <==negation-removal== 22363 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #51528: <==unclosure== 70678 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #60964: <==negation-removal== 13719 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #63084: <==negation-removal== 46778 (pos)
                    (not (Pb_not_checked_p5))

                    ; #68582: <==uncertain_firing== 63460 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #69384: <==negation-removal== 80519 (pos)
                    (not (Bc_not_checked_p5))

                    ; #70678: <==uncertain_firing== 22363 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #75950: <==negation-removal== 35461 (pos)
                    (not (Pa_not_checked_p5))

                    ; #97669: <==negation-removal== 27245 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #18645: <==closure== 33174 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #19058: <==closure== 88638 (pos)
                    (Pa_checked_p6)

                    ; #21795: <==closure== 80475 (pos)
                    (Pc_checked_p6)

                    ; #33174: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #48121: <==closure== 88506 (pos)
                    (Pb_checked_p6)

                    ; #60173: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #80475: <==commonly_known== 87901 (pos)
                    (Bc_checked_p6)

                    ; #81943: <==closure== 60173 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #87901: origin
                    (checked_p6)

                    ; #88506: <==commonly_known== 87901 (pos)
                    (Bb_checked_p6)

                    ; #88638: <==commonly_known== 87901 (pos)
                    (Ba_checked_p6)

                    ; #11721: <==negation-removal== 48121 (pos)
                    (not (Bb_not_checked_p6))

                    ; #21017: <==negation-removal== 88638 (pos)
                    (not (Pa_not_checked_p6))

                    ; #26410: <==negation-removal== 19058 (pos)
                    (not (Ba_not_checked_p6))

                    ; #39200: <==negation-removal== 60173 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #41764: <==negation-removal== 81943 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #46118: <==negation-removal== 87901 (pos)
                    (not (not_checked_p6))

                    ; #61521: <==negation-removal== 18645 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #66626: <==negation-removal== 88506 (pos)
                    (not (Pb_not_checked_p6))

                    ; #67970: <==uncertain_firing== 33174 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #70409: <==negation-removal== 33174 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #74312: <==unclosure== 82325 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #74597: <==unclosure== 67970 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #82325: <==uncertain_firing== 60173 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #84042: <==negation-removal== 21795 (pos)
                    (not (Bc_not_checked_p6))

                    ; #86184: <==negation-removal== 80475 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11059: <==commonly_known== 13829 (pos)
                    (Bc_checked_p7)

                    ; #13829: origin
                    (checked_p7)

                    ; #13915: <==closure== 25798 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #20456: <==closure== 11059 (pos)
                    (Pc_checked_p7)

                    ; #25798: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #41052: <==commonly_known== 13829 (pos)
                    (Ba_checked_p7)

                    ; #42234: <==commonly_known== 13829 (pos)
                    (Bb_checked_p7)

                    ; #44478: <==closure== 69920 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #53375: <==closure== 42234 (pos)
                    (Pb_checked_p7)

                    ; #69920: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #79610: <==closure== 41052 (pos)
                    (Pa_checked_p7)

                    ; #12054: <==negation-removal== 79610 (pos)
                    (not (Ba_not_checked_p7))

                    ; #16875: <==negation-removal== 44478 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #17057: <==negation-removal== 41052 (pos)
                    (not (Pa_not_checked_p7))

                    ; #22365: <==negation-removal== 11059 (pos)
                    (not (Pc_not_checked_p7))

                    ; #23270: <==uncertain_firing== 69920 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #25367: <==negation-removal== 42234 (pos)
                    (not (Pb_not_checked_p7))

                    ; #30992: <==negation-removal== 13829 (pos)
                    (not (not_checked_p7))

                    ; #35728: <==negation-removal== 53375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41363: <==unclosure== 23270 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #52734: <==negation-removal== 69920 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #58268: <==negation-removal== 25798 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #69277: <==unclosure== 75417 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75417: <==uncertain_firing== 25798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #83486: <==negation-removal== 13915 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #84643: <==negation-removal== 20456 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16386: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #21191: <==commonly_known== 60100 (pos)
                    (Bc_checked_p8)

                    ; #36310: <==closure== 89219 (pos)
                    (Pa_checked_p8)

                    ; #40765: <==commonly_known== 60100 (pos)
                    (Bb_checked_p8)

                    ; #41376: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #45719: <==closure== 41376 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #55301: <==closure== 21191 (pos)
                    (Pc_checked_p8)

                    ; #60100: origin
                    (checked_p8)

                    ; #63661: <==closure== 40765 (pos)
                    (Pb_checked_p8)

                    ; #75109: <==closure== 16386 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #89219: <==commonly_known== 60100 (pos)
                    (Ba_checked_p8)

                    ; #10572: <==negation-removal== 40765 (pos)
                    (not (Pb_not_checked_p8))

                    ; #18274: <==negation-removal== 75109 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #23071: <==negation-removal== 41376 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #23191: <==unclosure== 23484 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #23484: <==uncertain_firing== 16386 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #25391: <==negation-removal== 89219 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26296: <==unclosure== 60479 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36852: <==negation-removal== 60100 (pos)
                    (not (not_checked_p8))

                    ; #42982: <==negation-removal== 63661 (pos)
                    (not (Bb_not_checked_p8))

                    ; #60479: <==uncertain_firing== 41376 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #70746: <==negation-removal== 36310 (pos)
                    (not (Ba_not_checked_p8))

                    ; #79071: <==negation-removal== 45719 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #79284: <==negation-removal== 55301 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84133: <==negation-removal== 16386 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #86105: <==negation-removal== 21191 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17554: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #25171: <==closure== 35445 (pos)
                    (Pc_checked_p9)

                    ; #30495: <==closure== 59560 (pos)
                    (Pa_checked_p9)

                    ; #33189: <==closure== 79903 (pos)
                    (Pb_checked_p9)

                    ; #35445: <==commonly_known== 84234 (pos)
                    (Bc_checked_p9)

                    ; #57841: <==closure== 73077 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #59560: <==commonly_known== 84234 (pos)
                    (Ba_checked_p9)

                    ; #73077: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #79903: <==commonly_known== 84234 (pos)
                    (Bb_checked_p9)

                    ; #84173: <==closure== 17554 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #84234: origin
                    (checked_p9)

                    ; #10924: <==unclosure== 53595 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #16523: <==negation-removal== 35445 (pos)
                    (not (Pc_not_checked_p9))

                    ; #19228: <==negation-removal== 59560 (pos)
                    (not (Pa_not_checked_p9))

                    ; #32425: <==unclosure== 52150 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #34694: <==negation-removal== 30495 (pos)
                    (not (Ba_not_checked_p9))

                    ; #39420: <==negation-removal== 17554 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #40855: <==negation-removal== 57841 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #42771: <==negation-removal== 33189 (pos)
                    (not (Bb_not_checked_p9))

                    ; #51232: <==negation-removal== 73077 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #52150: <==uncertain_firing== 17554 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #53595: <==uncertain_firing== 73077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #62037: <==negation-removal== 84234 (pos)
                    (not (not_checked_p9))

                    ; #74689: <==negation-removal== 25171 (pos)
                    (not (Bc_not_checked_p9))

                    ; #81023: <==negation-removal== 79903 (pos)
                    (not (Pb_not_checked_p9))

                    ; #83679: <==negation-removal== 84173 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12506: origin
                    (checked_p1)

                    ; #13251: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #14544: <==commonly_known== 12506 (pos)
                    (Bb_checked_p1)

                    ; #15343: <==commonly_known== 12506 (pos)
                    (Bc_checked_p1)

                    ; #21227: <==closure== 15343 (pos)
                    (Pc_checked_p1)

                    ; #22074: <==closure== 13251 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #23229: <==closure== 55519 (pos)
                    (Pa_checked_p1)

                    ; #36834: <==closure== 14544 (pos)
                    (Pb_checked_p1)

                    ; #49524: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #55519: <==commonly_known== 12506 (pos)
                    (Ba_checked_p1)

                    ; #57169: <==closure== 49524 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #10937: <==negation-removal== 13251 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #15268: <==unclosure== 47930 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #24784: <==negation-removal== 22074 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25451: <==negation-removal== 55519 (pos)
                    (not (Pa_not_checked_p1))

                    ; #42140: <==negation-removal== 21227 (pos)
                    (not (Bc_not_checked_p1))

                    ; #47930: <==uncertain_firing== 49524 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #49153: <==negation-removal== 14544 (pos)
                    (not (Pb_not_checked_p1))

                    ; #73978: <==negation-removal== 49524 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #75950: <==unclosure== 88832 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76806: <==negation-removal== 57169 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #84207: <==negation-removal== 36834 (pos)
                    (not (Bb_not_checked_p1))

                    ; #84421: <==negation-removal== 15343 (pos)
                    (not (Pc_not_checked_p1))

                    ; #84981: <==negation-removal== 23229 (pos)
                    (not (Ba_not_checked_p1))

                    ; #86598: <==negation-removal== 12506 (pos)
                    (not (not_checked_p1))

                    ; #88832: <==uncertain_firing== 13251 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #34507: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #35052: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #37966: origin
                    (checked_p2)

                    ; #42871: <==commonly_known== 37966 (pos)
                    (Bc_checked_p2)

                    ; #48149: <==closure== 91891 (pos)
                    (Pb_checked_p2)

                    ; #64354: <==closure== 34507 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #72170: <==closure== 35052 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #84918: <==closure== 42871 (pos)
                    (Pc_checked_p2)

                    ; #86561: <==closure== 91855 (pos)
                    (Pa_checked_p2)

                    ; #91855: <==commonly_known== 37966 (pos)
                    (Ba_checked_p2)

                    ; #91891: <==commonly_known== 37966 (pos)
                    (Bb_checked_p2)

                    ; #17167: <==unclosure== 26144 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #22436: <==negation-removal== 86561 (pos)
                    (not (Ba_not_checked_p2))

                    ; #22703: <==negation-removal== 37966 (pos)
                    (not (not_checked_p2))

                    ; #24497: <==negation-removal== 42871 (pos)
                    (not (Pc_not_checked_p2))

                    ; #26144: <==uncertain_firing== 35052 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #32131: <==negation-removal== 91855 (pos)
                    (not (Pa_not_checked_p2))

                    ; #39488: <==negation-removal== 64354 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #44077: <==negation-removal== 34507 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #48605: <==negation-removal== 91891 (pos)
                    (not (Pb_not_checked_p2))

                    ; #49561: <==negation-removal== 35052 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #61605: <==negation-removal== 48149 (pos)
                    (not (Bb_not_checked_p2))

                    ; #76587: <==negation-removal== 72170 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #77074: <==uncertain_firing== 34507 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #80526: <==unclosure== 77074 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #81488: <==negation-removal== 84918 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13116: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #22606: <==commonly_known== 67053 (pos)
                    (Bc_checked_p3)

                    ; #34763: <==closure== 63437 (pos)
                    (Pb_checked_p3)

                    ; #60996: <==commonly_known== 67053 (pos)
                    (Ba_checked_p3)

                    ; #62126: <==closure== 60996 (pos)
                    (Pa_checked_p3)

                    ; #63437: <==commonly_known== 67053 (pos)
                    (Bb_checked_p3)

                    ; #67053: origin
                    (checked_p3)

                    ; #73897: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #78581: <==closure== 22606 (pos)
                    (Pc_checked_p3)

                    ; #79199: <==closure== 73897 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #90883: <==closure== 13116 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #25205: <==negation-removal== 34763 (pos)
                    (not (Bb_not_checked_p3))

                    ; #29364: <==unclosure== 73086 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #33065: <==negation-removal== 63437 (pos)
                    (not (Pb_not_checked_p3))

                    ; #34915: <==negation-removal== 60996 (pos)
                    (not (Pa_not_checked_p3))

                    ; #36450: <==unclosure== 46065 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #39725: <==negation-removal== 90883 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #42074: <==negation-removal== 79199 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #46065: <==uncertain_firing== 73897 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #52929: <==negation-removal== 62126 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62727: <==negation-removal== 13116 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #63492: <==negation-removal== 67053 (pos)
                    (not (not_checked_p3))

                    ; #66681: <==negation-removal== 22606 (pos)
                    (not (Pc_not_checked_p3))

                    ; #73086: <==uncertain_firing== 13116 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #90084: <==negation-removal== 73897 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #90264: <==negation-removal== 78581 (pos)
                    (not (Bc_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11596: <==closure== 27245 (pos)
                    (Pc_checked_p4)

                    ; #18221: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #23609: <==commonly_known== 91330 (pos)
                    (Ba_checked_p4)

                    ; #27245: <==commonly_known== 91330 (pos)
                    (Bc_checked_p4)

                    ; #28339: <==closure== 56465 (pos)
                    (Pb_checked_p4)

                    ; #38562: <==closure== 23609 (pos)
                    (Pa_checked_p4)

                    ; #56465: <==commonly_known== 91330 (pos)
                    (Bb_checked_p4)

                    ; #63233: <==closure== 91438 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #72213: <==closure== 18221 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #91330: origin
                    (checked_p4)

                    ; #91438: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #10271: <==negation-removal== 91438 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #10825: <==negation-removal== 38562 (pos)
                    (not (Ba_not_checked_p4))

                    ; #11692: <==negation-removal== 23609 (pos)
                    (not (Pa_not_checked_p4))

                    ; #18287: <==uncertain_firing== 91438 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #19190: <==negation-removal== 91330 (pos)
                    (not (not_checked_p4))

                    ; #20169: <==negation-removal== 11596 (pos)
                    (not (Bc_not_checked_p4))

                    ; #35256: <==negation-removal== 27245 (pos)
                    (not (Pc_not_checked_p4))

                    ; #42063: <==uncertain_firing== 18221 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #45403: <==negation-removal== 56465 (pos)
                    (not (Pb_not_checked_p4))

                    ; #47570: <==negation-removal== 18221 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #50065: <==negation-removal== 63233 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #70694: <==negation-removal== 28339 (pos)
                    (not (Bb_not_checked_p4))

                    ; #77333: <==unclosure== 42063 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #84158: <==unclosure== 18287 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #90763: <==negation-removal== 72213 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #35461: <==commonly_known== 71492 (pos)
                    (Ba_checked_p5)

                    ; #40001: <==closure== 46778 (pos)
                    (Pb_checked_p5)

                    ; #46778: <==commonly_known== 71492 (pos)
                    (Bb_checked_p5)

                    ; #55337: <==closure== 77910 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #55878: <==commonly_known== 71492 (pos)
                    (Bc_checked_p5)

                    ; #71492: origin
                    (checked_p5)

                    ; #77910: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #80519: <==closure== 55878 (pos)
                    (Pc_checked_p5)

                    ; #81076: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #81497: <==closure== 35461 (pos)
                    (Pa_checked_p5)

                    ; #92071: <==closure== 81076 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #15908: <==negation-removal== 40001 (pos)
                    (not (Bb_not_checked_p5))

                    ; #23916: <==negation-removal== 81497 (pos)
                    (not (Ba_not_checked_p5))

                    ; #26298: <==negation-removal== 71492 (pos)
                    (not (not_checked_p5))

                    ; #26913: <==negation-removal== 55878 (pos)
                    (not (Pc_not_checked_p5))

                    ; #29165: <==negation-removal== 81076 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #30691: <==uncertain_firing== 77910 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #41457: <==negation-removal== 77910 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #47802: <==uncertain_firing== 81076 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #63084: <==negation-removal== 46778 (pos)
                    (not (Pb_not_checked_p5))

                    ; #66971: <==unclosure== 30691 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #68226: <==negation-removal== 92071 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #69384: <==negation-removal== 80519 (pos)
                    (not (Bc_not_checked_p5))

                    ; #75950: <==negation-removal== 35461 (pos)
                    (not (Pa_not_checked_p5))

                    ; #77549: <==unclosure== 47802 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #87755: <==negation-removal== 55337 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14924: <==closure== 40332 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #19058: <==closure== 88638 (pos)
                    (Pa_checked_p6)

                    ; #21795: <==closure== 80475 (pos)
                    (Pc_checked_p6)

                    ; #40332: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #44099: <==closure== 52608 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #48121: <==closure== 88506 (pos)
                    (Pb_checked_p6)

                    ; #52608: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #80475: <==commonly_known== 87901 (pos)
                    (Bc_checked_p6)

                    ; #87901: origin
                    (checked_p6)

                    ; #88506: <==commonly_known== 87901 (pos)
                    (Bb_checked_p6)

                    ; #88638: <==commonly_known== 87901 (pos)
                    (Ba_checked_p6)

                    ; #11721: <==negation-removal== 48121 (pos)
                    (not (Bb_not_checked_p6))

                    ; #17256: <==uncertain_firing== 52608 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #18879: <==negation-removal== 40332 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #21017: <==negation-removal== 88638 (pos)
                    (not (Pa_not_checked_p6))

                    ; #24092: <==negation-removal== 52608 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #26410: <==negation-removal== 19058 (pos)
                    (not (Ba_not_checked_p6))

                    ; #38124: <==negation-removal== 44099 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #41612: <==unclosure== 17256 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #46118: <==negation-removal== 87901 (pos)
                    (not (not_checked_p6))

                    ; #58210: <==unclosure== 81045 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #66626: <==negation-removal== 88506 (pos)
                    (not (Pb_not_checked_p6))

                    ; #78343: <==negation-removal== 14924 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81045: <==uncertain_firing== 40332 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #84042: <==negation-removal== 21795 (pos)
                    (not (Bc_not_checked_p6))

                    ; #86184: <==negation-removal== 80475 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11059: <==commonly_known== 13829 (pos)
                    (Bc_checked_p7)

                    ; #13829: origin
                    (checked_p7)

                    ; #15930: <==closure== 51517 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #20456: <==closure== 11059 (pos)
                    (Pc_checked_p7)

                    ; #30409: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #34722: <==closure== 30409 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #41052: <==commonly_known== 13829 (pos)
                    (Ba_checked_p7)

                    ; #42234: <==commonly_known== 13829 (pos)
                    (Bb_checked_p7)

                    ; #51517: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #53375: <==closure== 42234 (pos)
                    (Pb_checked_p7)

                    ; #79610: <==closure== 41052 (pos)
                    (Pa_checked_p7)

                    ; #12054: <==negation-removal== 79610 (pos)
                    (not (Ba_not_checked_p7))

                    ; #13464: <==negation-removal== 15930 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #17057: <==negation-removal== 41052 (pos)
                    (not (Pa_not_checked_p7))

                    ; #22365: <==negation-removal== 11059 (pos)
                    (not (Pc_not_checked_p7))

                    ; #25367: <==negation-removal== 42234 (pos)
                    (not (Pb_not_checked_p7))

                    ; #26743: <==negation-removal== 51517 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #27378: <==unclosure== 41168 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #30992: <==negation-removal== 13829 (pos)
                    (not (not_checked_p7))

                    ; #35728: <==negation-removal== 53375 (pos)
                    (not (Bb_not_checked_p7))

                    ; #41168: <==uncertain_firing== 51517 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #47789: <==unclosure== 77420 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #71244: <==negation-removal== 30409 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #77420: <==uncertain_firing== 30409 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #84643: <==negation-removal== 20456 (pos)
                    (not (Bc_not_checked_p7))

                    ; #90132: <==negation-removal== 34722 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #21191: <==commonly_known== 60100 (pos)
                    (Bc_checked_p8)

                    ; #28786: <==closure== 89506 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #36310: <==closure== 89219 (pos)
                    (Pa_checked_p8)

                    ; #38016: <==closure== 46444 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #40765: <==commonly_known== 60100 (pos)
                    (Bb_checked_p8)

                    ; #46444: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #55301: <==closure== 21191 (pos)
                    (Pc_checked_p8)

                    ; #60100: origin
                    (checked_p8)

                    ; #63661: <==closure== 40765 (pos)
                    (Pb_checked_p8)

                    ; #89219: <==commonly_known== 60100 (pos)
                    (Ba_checked_p8)

                    ; #89506: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #10572: <==negation-removal== 40765 (pos)
                    (not (Pb_not_checked_p8))

                    ; #20465: <==unclosure== 74925 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #21731: <==unclosure== 74133 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #24522: <==negation-removal== 38016 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #25391: <==negation-removal== 89219 (pos)
                    (not (Pa_not_checked_p8))

                    ; #36852: <==negation-removal== 60100 (pos)
                    (not (not_checked_p8))

                    ; #38132: <==negation-removal== 28786 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #42982: <==negation-removal== 63661 (pos)
                    (not (Bb_not_checked_p8))

                    ; #43040: <==negation-removal== 89506 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #70746: <==negation-removal== 36310 (pos)
                    (not (Ba_not_checked_p8))

                    ; #74133: <==uncertain_firing== 89506 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #74925: <==uncertain_firing== 46444 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #76939: <==negation-removal== 46444 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #79284: <==negation-removal== 55301 (pos)
                    (not (Bc_not_checked_p8))

                    ; #86105: <==negation-removal== 21191 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12626: <==closure== 23949 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #13332: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #23949: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #25171: <==closure== 35445 (pos)
                    (Pc_checked_p9)

                    ; #30495: <==closure== 59560 (pos)
                    (Pa_checked_p9)

                    ; #33189: <==closure== 79903 (pos)
                    (Pb_checked_p9)

                    ; #35445: <==commonly_known== 84234 (pos)
                    (Bc_checked_p9)

                    ; #59560: <==commonly_known== 84234 (pos)
                    (Ba_checked_p9)

                    ; #61073: <==closure== 13332 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #79903: <==commonly_known== 84234 (pos)
                    (Bb_checked_p9)

                    ; #84234: origin
                    (checked_p9)

                    ; #10942: <==uncertain_firing== 23949 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #11975: <==uncertain_firing== 13332 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #16423: <==negation-removal== 23949 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #16523: <==negation-removal== 35445 (pos)
                    (not (Pc_not_checked_p9))

                    ; #19228: <==negation-removal== 59560 (pos)
                    (not (Pa_not_checked_p9))

                    ; #34694: <==negation-removal== 30495 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42771: <==negation-removal== 33189 (pos)
                    (not (Bb_not_checked_p9))

                    ; #59708: <==unclosure== 10942 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #62037: <==negation-removal== 84234 (pos)
                    (not (not_checked_p9))

                    ; #67327: <==negation-removal== 12626 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #70477: <==negation-removal== 13332 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #74689: <==negation-removal== 25171 (pos)
                    (not (Bc_not_checked_p9))

                    ; #81023: <==negation-removal== 79903 (pos)
                    (not (Pb_not_checked_p9))

                    ; #83122: <==negation-removal== 61073 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #98618: <==unclosure== 11975 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))))

)