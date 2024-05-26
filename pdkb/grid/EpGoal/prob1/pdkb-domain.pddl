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

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #40525: <==closure== 62021 (pos)
                    (Pa_survivorat_s_p1)

                    ; #55117: origin
                    (Bb_survivorat_s_p1)

                    ; #62021: origin
                    (Ba_survivorat_s_p1)

                    ; #70450: <==closure== 88759 (pos)
                    (Pc_survivorat_s_p1)

                    ; #83476: <==closure== 55117 (pos)
                    (Pb_survivorat_s_p1)

                    ; #88759: origin
                    (Bc_survivorat_s_p1)

                    ; #19628: <==negation-removal== 70450 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #23310: <==negation-removal== 88759 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #44223: <==negation-removal== 83476 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50769: <==negation-removal== 55117 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66922: <==negation-removal== 62021 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #69891: <==negation-removal== 40525 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #40525: <==closure== 62021 (pos)
                    (Pa_survivorat_s_p1)

                    ; #55117: origin
                    (Bb_survivorat_s_p1)

                    ; #62021: origin
                    (Ba_survivorat_s_p1)

                    ; #70450: <==closure== 88759 (pos)
                    (Pc_survivorat_s_p1)

                    ; #83476: <==closure== 55117 (pos)
                    (Pb_survivorat_s_p1)

                    ; #88759: origin
                    (Bc_survivorat_s_p1)

                    ; #19628: <==negation-removal== 70450 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #23310: <==negation-removal== 88759 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #44223: <==negation-removal== 83476 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50769: <==negation-removal== 55117 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66922: <==negation-removal== 62021 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #69891: <==negation-removal== 40525 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #40525: <==closure== 62021 (pos)
                    (Pa_survivorat_s_p1)

                    ; #55117: origin
                    (Bb_survivorat_s_p1)

                    ; #62021: origin
                    (Ba_survivorat_s_p1)

                    ; #70450: <==closure== 88759 (pos)
                    (Pc_survivorat_s_p1)

                    ; #83476: <==closure== 55117 (pos)
                    (Pb_survivorat_s_p1)

                    ; #88759: origin
                    (Bc_survivorat_s_p1)

                    ; #19628: <==negation-removal== 70450 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #23310: <==negation-removal== 88759 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #44223: <==negation-removal== 83476 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50769: <==negation-removal== 55117 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #66922: <==negation-removal== 62021 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #69891: <==negation-removal== 40525 (pos)
                    (not (Ba_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (Ba_survivorat_s_p2)
                           (at_a_p2))
        :effect (and
                    ; #26656: <==closure== 89111 (pos)
                    (Pb_survivorat_s_p2)

                    ; #29782: <==closure== 78047 (pos)
                    (Pa_survivorat_s_p2)

                    ; #39872: origin
                    (Bc_survivorat_s_p2)

                    ; #50323: <==closure== 39872 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78047: origin
                    (Ba_survivorat_s_p2)

                    ; #89111: origin
                    (Bb_survivorat_s_p2)

                    ; #34663: <==negation-removal== 29782 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49382: <==negation-removal== 50323 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #54376: <==negation-removal== 89111 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61779: <==negation-removal== 26656 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84308: <==negation-removal== 78047 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84433: <==negation-removal== 39872 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (at_b_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #26656: <==closure== 89111 (pos)
                    (Pb_survivorat_s_p2)

                    ; #29782: <==closure== 78047 (pos)
                    (Pa_survivorat_s_p2)

                    ; #39872: origin
                    (Bc_survivorat_s_p2)

                    ; #50323: <==closure== 39872 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78047: origin
                    (Ba_survivorat_s_p2)

                    ; #89111: origin
                    (Bb_survivorat_s_p2)

                    ; #34663: <==negation-removal== 29782 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49382: <==negation-removal== 50323 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #54376: <==negation-removal== 89111 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61779: <==negation-removal== 26656 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84308: <==negation-removal== 78047 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84433: <==negation-removal== 39872 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (at_c_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #26656: <==closure== 89111 (pos)
                    (Pb_survivorat_s_p2)

                    ; #29782: <==closure== 78047 (pos)
                    (Pa_survivorat_s_p2)

                    ; #39872: origin
                    (Bc_survivorat_s_p2)

                    ; #50323: <==closure== 39872 (pos)
                    (Pc_survivorat_s_p2)

                    ; #78047: origin
                    (Ba_survivorat_s_p2)

                    ; #89111: origin
                    (Bb_survivorat_s_p2)

                    ; #34663: <==negation-removal== 29782 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #49382: <==negation-removal== 50323 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #54376: <==negation-removal== 89111 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #61779: <==negation-removal== 26656 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #84308: <==negation-removal== 78047 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #84433: <==negation-removal== 39872 (pos)
                    (not (Pc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #26403: <==closure== 67437 (pos)
                    (Pa_survivorat_s_p3)

                    ; #28417: origin
                    (Bb_survivorat_s_p3)

                    ; #57837: <==closure== 28417 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60432: origin
                    (Bc_survivorat_s_p3)

                    ; #67437: origin
                    (Ba_survivorat_s_p3)

                    ; #67927: <==closure== 60432 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29910: <==negation-removal== 67437 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #44401: <==negation-removal== 67927 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59310: <==negation-removal== 60432 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68391: <==negation-removal== 26403 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81465: <==negation-removal== 28417 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #83637: <==negation-removal== 57837 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #26403: <==closure== 67437 (pos)
                    (Pa_survivorat_s_p3)

                    ; #28417: origin
                    (Bb_survivorat_s_p3)

                    ; #57837: <==closure== 28417 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60432: origin
                    (Bc_survivorat_s_p3)

                    ; #67437: origin
                    (Ba_survivorat_s_p3)

                    ; #67927: <==closure== 60432 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29910: <==negation-removal== 67437 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #44401: <==negation-removal== 67927 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59310: <==negation-removal== 60432 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68391: <==negation-removal== 26403 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81465: <==negation-removal== 28417 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #83637: <==negation-removal== 57837 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #26403: <==closure== 67437 (pos)
                    (Pa_survivorat_s_p3)

                    ; #28417: origin
                    (Bb_survivorat_s_p3)

                    ; #57837: <==closure== 28417 (pos)
                    (Pb_survivorat_s_p3)

                    ; #60432: origin
                    (Bc_survivorat_s_p3)

                    ; #67437: origin
                    (Ba_survivorat_s_p3)

                    ; #67927: <==closure== 60432 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29910: <==negation-removal== 67437 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #44401: <==negation-removal== 67927 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #59310: <==negation-removal== 60432 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68391: <==negation-removal== 26403 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81465: <==negation-removal== 28417 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #83637: <==negation-removal== 57837 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #28449: origin
                    (Bc_survivorat_s_p4)

                    ; #29521: <==closure== 28449 (pos)
                    (Pc_survivorat_s_p4)

                    ; #37387: <==closure== 40168 (pos)
                    (Pb_survivorat_s_p4)

                    ; #40168: origin
                    (Bb_survivorat_s_p4)

                    ; #44587: <==closure== 65573 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65573: origin
                    (Ba_survivorat_s_p4)

                    ; #24105: <==negation-removal== 40168 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #26334: <==negation-removal== 29521 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28520: <==negation-removal== 44587 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #77741: <==negation-removal== 65573 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #80518: <==negation-removal== 37387 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #80744: <==negation-removal== 28449 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #28449: origin
                    (Bc_survivorat_s_p4)

                    ; #29521: <==closure== 28449 (pos)
                    (Pc_survivorat_s_p4)

                    ; #37387: <==closure== 40168 (pos)
                    (Pb_survivorat_s_p4)

                    ; #40168: origin
                    (Bb_survivorat_s_p4)

                    ; #44587: <==closure== 65573 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65573: origin
                    (Ba_survivorat_s_p4)

                    ; #24105: <==negation-removal== 40168 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #26334: <==negation-removal== 29521 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28520: <==negation-removal== 44587 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #77741: <==negation-removal== 65573 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #80518: <==negation-removal== 37387 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #80744: <==negation-removal== 28449 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #28449: origin
                    (Bc_survivorat_s_p4)

                    ; #29521: <==closure== 28449 (pos)
                    (Pc_survivorat_s_p4)

                    ; #37387: <==closure== 40168 (pos)
                    (Pb_survivorat_s_p4)

                    ; #40168: origin
                    (Bb_survivorat_s_p4)

                    ; #44587: <==closure== 65573 (pos)
                    (Pa_survivorat_s_p4)

                    ; #65573: origin
                    (Ba_survivorat_s_p4)

                    ; #24105: <==negation-removal== 40168 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #26334: <==negation-removal== 29521 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #28520: <==negation-removal== 44587 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #77741: <==negation-removal== 65573 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #80518: <==negation-removal== 37387 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #80744: <==negation-removal== 28449 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (at_a_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #16032: <==closure== 56692 (pos)
                    (Pa_survivorat_s_p5)

                    ; #43028: origin
                    (Bb_survivorat_s_p5)

                    ; #46941: origin
                    (Bc_survivorat_s_p5)

                    ; #49009: <==closure== 46941 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56692: origin
                    (Ba_survivorat_s_p5)

                    ; #80585: <==closure== 43028 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18911: <==negation-removal== 46941 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #39520: <==negation-removal== 43028 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #65865: <==negation-removal== 16032 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69060: <==negation-removal== 80585 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #75559: <==negation-removal== 49009 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #86408: <==negation-removal== 56692 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #16032: <==closure== 56692 (pos)
                    (Pa_survivorat_s_p5)

                    ; #43028: origin
                    (Bb_survivorat_s_p5)

                    ; #46941: origin
                    (Bc_survivorat_s_p5)

                    ; #49009: <==closure== 46941 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56692: origin
                    (Ba_survivorat_s_p5)

                    ; #80585: <==closure== 43028 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18911: <==negation-removal== 46941 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #39520: <==negation-removal== 43028 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #65865: <==negation-removal== 16032 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69060: <==negation-removal== 80585 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #75559: <==negation-removal== 49009 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #86408: <==negation-removal== 56692 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #16032: <==closure== 56692 (pos)
                    (Pa_survivorat_s_p5)

                    ; #43028: origin
                    (Bb_survivorat_s_p5)

                    ; #46941: origin
                    (Bc_survivorat_s_p5)

                    ; #49009: <==closure== 46941 (pos)
                    (Pc_survivorat_s_p5)

                    ; #56692: origin
                    (Ba_survivorat_s_p5)

                    ; #80585: <==closure== 43028 (pos)
                    (Pb_survivorat_s_p5)

                    ; #18911: <==negation-removal== 46941 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #39520: <==negation-removal== 43028 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #65865: <==negation-removal== 16032 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #69060: <==negation-removal== 80585 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #75559: <==negation-removal== 49009 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #86408: <==negation-removal== 56692 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #19829: origin
                    (Ba_survivorat_s_p6)

                    ; #41866: origin
                    (Bb_survivorat_s_p6)

                    ; #50076: <==closure== 41866 (pos)
                    (Pb_survivorat_s_p6)

                    ; #74523: <==closure== 19829 (pos)
                    (Pa_survivorat_s_p6)

                    ; #80705: <==closure== 81481 (pos)
                    (Pc_survivorat_s_p6)

                    ; #81481: origin
                    (Bc_survivorat_s_p6)

                    ; #23744: <==negation-removal== 80705 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #31636: <==negation-removal== 41866 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #31725: <==negation-removal== 50076 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59583: <==negation-removal== 19829 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #63085: <==negation-removal== 81481 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77686: <==negation-removal== 74523 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #19829: origin
                    (Ba_survivorat_s_p6)

                    ; #41866: origin
                    (Bb_survivorat_s_p6)

                    ; #50076: <==closure== 41866 (pos)
                    (Pb_survivorat_s_p6)

                    ; #74523: <==closure== 19829 (pos)
                    (Pa_survivorat_s_p6)

                    ; #80705: <==closure== 81481 (pos)
                    (Pc_survivorat_s_p6)

                    ; #81481: origin
                    (Bc_survivorat_s_p6)

                    ; #23744: <==negation-removal== 80705 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #31636: <==negation-removal== 41866 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #31725: <==negation-removal== 50076 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59583: <==negation-removal== 19829 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #63085: <==negation-removal== 81481 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77686: <==negation-removal== 74523 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #19829: origin
                    (Ba_survivorat_s_p6)

                    ; #41866: origin
                    (Bb_survivorat_s_p6)

                    ; #50076: <==closure== 41866 (pos)
                    (Pb_survivorat_s_p6)

                    ; #74523: <==closure== 19829 (pos)
                    (Pa_survivorat_s_p6)

                    ; #80705: <==closure== 81481 (pos)
                    (Pc_survivorat_s_p6)

                    ; #81481: origin
                    (Bc_survivorat_s_p6)

                    ; #23744: <==negation-removal== 80705 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #31636: <==negation-removal== 41866 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #31725: <==negation-removal== 50076 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #59583: <==negation-removal== 19829 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #63085: <==negation-removal== 81481 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #77686: <==negation-removal== 74523 (pos)
                    (not (Ba_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #50469: origin
                    (Bb_survivorat_s_p7)

                    ; #57400: <==closure== 50469 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78789: <==closure== 85421 (pos)
                    (Pa_survivorat_s_p7)

                    ; #81676: <==closure== 87968 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85421: origin
                    (Ba_survivorat_s_p7)

                    ; #87968: origin
                    (Bc_survivorat_s_p7)

                    ; #29943: <==negation-removal== 78789 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #38653: <==negation-removal== 85421 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #38740: <==negation-removal== 87968 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #44132: <==negation-removal== 57400 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #64014: <==negation-removal== 81676 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74019: <==negation-removal== 50469 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #50469: origin
                    (Bb_survivorat_s_p7)

                    ; #57400: <==closure== 50469 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78789: <==closure== 85421 (pos)
                    (Pa_survivorat_s_p7)

                    ; #81676: <==closure== 87968 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85421: origin
                    (Ba_survivorat_s_p7)

                    ; #87968: origin
                    (Bc_survivorat_s_p7)

                    ; #29943: <==negation-removal== 78789 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #38653: <==negation-removal== 85421 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #38740: <==negation-removal== 87968 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #44132: <==negation-removal== 57400 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #64014: <==negation-removal== 81676 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74019: <==negation-removal== 50469 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #50469: origin
                    (Bb_survivorat_s_p7)

                    ; #57400: <==closure== 50469 (pos)
                    (Pb_survivorat_s_p7)

                    ; #78789: <==closure== 85421 (pos)
                    (Pa_survivorat_s_p7)

                    ; #81676: <==closure== 87968 (pos)
                    (Pc_survivorat_s_p7)

                    ; #85421: origin
                    (Ba_survivorat_s_p7)

                    ; #87968: origin
                    (Bc_survivorat_s_p7)

                    ; #29943: <==negation-removal== 78789 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #38653: <==negation-removal== 85421 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #38740: <==negation-removal== 87968 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #44132: <==negation-removal== 57400 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #64014: <==negation-removal== 81676 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #74019: <==negation-removal== 50469 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #20237: <==closure== 40900 (pos)
                    (Pa_survivorat_s_p8)

                    ; #40900: origin
                    (Ba_survivorat_s_p8)

                    ; #48602: origin
                    (Bb_survivorat_s_p8)

                    ; #66580: <==closure== 48602 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71789: <==closure== 78471 (pos)
                    (Pc_survivorat_s_p8)

                    ; #78471: origin
                    (Bc_survivorat_s_p8)

                    ; #25546: <==negation-removal== 66580 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51193: <==negation-removal== 40900 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #63349: <==negation-removal== 71789 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #67479: <==negation-removal== 78471 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #78952: <==negation-removal== 20237 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #79733: <==negation-removal== 48602 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Bb_survivorat_s_p8)
                           (at_b_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #20237: <==closure== 40900 (pos)
                    (Pa_survivorat_s_p8)

                    ; #40900: origin
                    (Ba_survivorat_s_p8)

                    ; #48602: origin
                    (Bb_survivorat_s_p8)

                    ; #66580: <==closure== 48602 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71789: <==closure== 78471 (pos)
                    (Pc_survivorat_s_p8)

                    ; #78471: origin
                    (Bc_survivorat_s_p8)

                    ; #25546: <==negation-removal== 66580 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51193: <==negation-removal== 40900 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #63349: <==negation-removal== 71789 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #67479: <==negation-removal== 78471 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #78952: <==negation-removal== 20237 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #79733: <==negation-removal== 48602 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #20237: <==closure== 40900 (pos)
                    (Pa_survivorat_s_p8)

                    ; #40900: origin
                    (Ba_survivorat_s_p8)

                    ; #48602: origin
                    (Bb_survivorat_s_p8)

                    ; #66580: <==closure== 48602 (pos)
                    (Pb_survivorat_s_p8)

                    ; #71789: <==closure== 78471 (pos)
                    (Pc_survivorat_s_p8)

                    ; #78471: origin
                    (Bc_survivorat_s_p8)

                    ; #25546: <==negation-removal== 66580 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #51193: <==negation-removal== 40900 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #63349: <==negation-removal== 71789 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #67479: <==negation-removal== 78471 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #78952: <==negation-removal== 20237 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #79733: <==negation-removal== 48602 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #10541: origin
                    (Bb_survivorat_s_p9)

                    ; #56354: <==closure== 10541 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65398: <==closure== 67307 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67307: origin
                    (Ba_survivorat_s_p9)

                    ; #68622: origin
                    (Bc_survivorat_s_p9)

                    ; #86426: <==closure== 68622 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14483: <==negation-removal== 68622 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #36327: <==negation-removal== 65398 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53882: <==negation-removal== 67307 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62002: <==negation-removal== 56354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #71300: <==negation-removal== 10541 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #84044: <==negation-removal== 86426 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #10541: origin
                    (Bb_survivorat_s_p9)

                    ; #56354: <==closure== 10541 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65398: <==closure== 67307 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67307: origin
                    (Ba_survivorat_s_p9)

                    ; #68622: origin
                    (Bc_survivorat_s_p9)

                    ; #86426: <==closure== 68622 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14483: <==negation-removal== 68622 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #36327: <==negation-removal== 65398 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53882: <==negation-removal== 67307 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62002: <==negation-removal== 56354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #71300: <==negation-removal== 10541 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #84044: <==negation-removal== 86426 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #10541: origin
                    (Bb_survivorat_s_p9)

                    ; #56354: <==closure== 10541 (pos)
                    (Pb_survivorat_s_p9)

                    ; #65398: <==closure== 67307 (pos)
                    (Pa_survivorat_s_p9)

                    ; #67307: origin
                    (Ba_survivorat_s_p9)

                    ; #68622: origin
                    (Bc_survivorat_s_p9)

                    ; #86426: <==closure== 68622 (pos)
                    (Pc_survivorat_s_p9)

                    ; #14483: <==negation-removal== 68622 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #36327: <==negation-removal== 65398 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #53882: <==negation-removal== 67307 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #62002: <==negation-removal== 56354 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #71300: <==negation-removal== 10541 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #84044: <==negation-removal== 86426 (pos)
                    (not (Bc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #36889: origin
                    (at_a_p1)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #62713: origin
                    (at_a_p2)

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #28297: origin
                    (at_a_p3)

                    ; #29644: origin
                    (not_at_a_p1)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #35392: origin
                    (at_a_p4)

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #43878: origin
                    (at_a_p5)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #40797: origin
                    (at_a_p6)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #90524: origin
                    (at_a_p7)

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #76562: origin
                    (at_a_p8)

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #29644: origin
                    (not_at_a_p1)

                    ; #48047: origin
                    (at_a_p9)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #36889: <==negation-removal== 29644 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #36889: origin
                    (at_a_p1)

                    ; #55903: origin
                    (not_at_a_p2)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #55903: origin
                    (not_at_a_p2)

                    ; #62713: origin
                    (at_a_p2)

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #28297: origin
                    (at_a_p3)

                    ; #55903: origin
                    (not_at_a_p2)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #35392: origin
                    (at_a_p4)

                    ; #55903: origin
                    (not_at_a_p2)

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #43878: origin
                    (at_a_p5)

                    ; #55903: origin
                    (not_at_a_p2)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #40797: origin
                    (at_a_p6)

                    ; #55903: origin
                    (not_at_a_p2)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #55903: origin
                    (not_at_a_p2)

                    ; #90524: origin
                    (at_a_p7)

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #55903: origin
                    (not_at_a_p2)

                    ; #76562: origin
                    (at_a_p8)

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #48047: origin
                    (at_a_p9)

                    ; #55903: origin
                    (not_at_a_p2)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #62713: <==negation-removal== 55903 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #36889: origin
                    (at_a_p1)

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #62713: origin
                    (at_a_p2)

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #28297: origin
                    (at_a_p3)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #35392: origin
                    (at_a_p4)

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #43878: origin
                    (at_a_p5)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #40797: origin
                    (at_a_p6)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #90524: origin
                    (at_a_p7)

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #76562: origin
                    (at_a_p8)

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #18018: origin
                    (not_at_a_p3)

                    ; #48047: origin
                    (at_a_p9)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #28297: <==negation-removal== 18018 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #36889: origin
                    (at_a_p1)

                    ; #53646: origin
                    (not_at_a_p4)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #53646: origin
                    (not_at_a_p4)

                    ; #62713: origin
                    (at_a_p2)

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #28297: origin
                    (at_a_p3)

                    ; #53646: origin
                    (not_at_a_p4)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #35392: origin
                    (at_a_p4)

                    ; #53646: origin
                    (not_at_a_p4)

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #43878: origin
                    (at_a_p5)

                    ; #53646: origin
                    (not_at_a_p4)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #40797: origin
                    (at_a_p6)

                    ; #53646: origin
                    (not_at_a_p4)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #53646: origin
                    (not_at_a_p4)

                    ; #90524: origin
                    (at_a_p7)

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #53646: origin
                    (not_at_a_p4)

                    ; #76562: origin
                    (at_a_p8)

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #48047: origin
                    (at_a_p9)

                    ; #53646: origin
                    (not_at_a_p4)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #35392: <==negation-removal== 53646 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #36889: origin
                    (at_a_p1)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #62713: origin
                    (at_a_p2)

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #28297: origin
                    (at_a_p3)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #35392: origin
                    (at_a_p4)

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #43878: origin
                    (at_a_p5)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #40797: origin
                    (at_a_p6)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #90524: origin
                    (at_a_p7)

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #76562: origin
                    (at_a_p8)

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #21789: origin
                    (not_at_a_p5)

                    ; #48047: origin
                    (at_a_p9)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #43878: <==negation-removal== 21789 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #36889: origin
                    (at_a_p1)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #62713: origin
                    (at_a_p2)

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #28297: origin
                    (at_a_p3)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #35392: origin
                    (at_a_p4)

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #43878: origin
                    (at_a_p5)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #40797: origin
                    (at_a_p6)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #90524: origin
                    (at_a_p7)

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #76562: origin
                    (at_a_p8)

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #23625: origin
                    (not_at_a_p6)

                    ; #48047: origin
                    (at_a_p9)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #40797: <==negation-removal== 23625 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #36889: origin
                    (at_a_p1)

                    ; #37369: origin
                    (not_at_a_p7)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #37369: origin
                    (not_at_a_p7)

                    ; #62713: origin
                    (at_a_p2)

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #28297: origin
                    (at_a_p3)

                    ; #37369: origin
                    (not_at_a_p7)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #35392: origin
                    (at_a_p4)

                    ; #37369: origin
                    (not_at_a_p7)

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #37369: origin
                    (not_at_a_p7)

                    ; #43878: origin
                    (at_a_p5)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #37369: origin
                    (not_at_a_p7)

                    ; #40797: origin
                    (at_a_p6)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #37369: origin
                    (not_at_a_p7)

                    ; #90524: origin
                    (at_a_p7)

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #37369: origin
                    (not_at_a_p7)

                    ; #76562: origin
                    (at_a_p8)

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #37369: origin
                    (not_at_a_p7)

                    ; #48047: origin
                    (at_a_p9)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #90524: <==negation-removal== 37369 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #36889: origin
                    (at_a_p1)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #62713: origin
                    (at_a_p2)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #28297: origin
                    (at_a_p3)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #35392: origin
                    (at_a_p4)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #43878: origin
                    (at_a_p5)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #40797: origin
                    (at_a_p6)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #81432: origin
                    (not_at_a_p8)

                    ; #90524: origin
                    (at_a_p7)

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #76562: origin
                    (at_a_p8)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #48047: origin
                    (at_a_p9)

                    ; #81432: origin
                    (not_at_a_p8)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #76562: <==negation-removal== 81432 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #36889: origin
                    (at_a_p1)

                    ; #29644: <==negation-removal== 36889 (pos)
                    (not (not_at_a_p1))

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #62713: origin
                    (at_a_p2)

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))

                    ; #55903: <==negation-removal== 62713 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #28297: origin
                    (at_a_p3)

                    ; #18018: <==negation-removal== 28297 (pos)
                    (not (not_at_a_p3))

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #35392: origin
                    (at_a_p4)

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))

                    ; #53646: <==negation-removal== 35392 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #43878: origin
                    (at_a_p5)

                    ; #21789: <==negation-removal== 43878 (pos)
                    (not (not_at_a_p5))

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #40797: origin
                    (at_a_p6)

                    ; #23625: <==negation-removal== 40797 (pos)
                    (not (not_at_a_p6))

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #90524: origin
                    (at_a_p7)

                    ; #37369: <==negation-removal== 90524 (pos)
                    (not (not_at_a_p7))

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #76562: origin
                    (at_a_p8)

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))

                    ; #81432: <==negation-removal== 76562 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #18206: origin
                    (not_at_a_p9)

                    ; #48047: origin
                    (at_a_p9)

                    ; #18206: <==negation-removal== 48047 (pos)
                    (not (not_at_a_p9))

                    ; #48047: <==negation-removal== 18206 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #59728: origin
                    (at_b_p1)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #54471: origin
                    (at_b_p2)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #43451: origin
                    (at_b_p3)

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #43482: origin
                    (at_b_p4)

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #72023: origin
                    (at_b_p5)

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #38744: origin
                    (at_b_p6)

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #35120: origin
                    (at_b_p7)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #19093: origin
                    (not_at_b_p1)

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #19093: origin
                    (not_at_b_p1)

                    ; #22391: origin
                    (at_b_p9)

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))

                    ; #59728: <==negation-removal== 19093 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #59728: origin
                    (at_b_p1)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #54471: origin
                    (at_b_p2)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #43451: origin
                    (at_b_p3)

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #43482: origin
                    (at_b_p4)

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #72023: origin
                    (at_b_p5)

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #38744: origin
                    (at_b_p6)

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #27201: origin
                    (not_at_b_p2)

                    ; #35120: origin
                    (at_b_p7)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #27201: origin
                    (not_at_b_p2)

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #27201: origin
                    (not_at_b_p2)

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))

                    ; #54471: <==negation-removal== 27201 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #59728: origin
                    (at_b_p1)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #54471: origin
                    (at_b_p2)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #43451: origin
                    (at_b_p3)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #43482: origin
                    (at_b_p4)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #65679: origin
                    (not_at_b_p3)

                    ; #72023: origin
                    (at_b_p5)

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #38744: origin
                    (at_b_p6)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #35120: origin
                    (at_b_p7)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #65679: origin
                    (not_at_b_p3)

                    ; #43451: <==negation-removal== 65679 (pos)
                    (not (at_b_p3))

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #59728: origin
                    (at_b_p1)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #54471: origin
                    (at_b_p2)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #43451: origin
                    (at_b_p3)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #43482: origin
                    (at_b_p4)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #70966: origin
                    (not_at_b_p4)

                    ; #72023: origin
                    (at_b_p5)

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #38744: origin
                    (at_b_p6)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #35120: origin
                    (at_b_p7)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #70966: origin
                    (not_at_b_p4)

                    ; #43482: <==negation-removal== 70966 (pos)
                    (not (at_b_p4))

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #59728: origin
                    (at_b_p1)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #54471: origin
                    (at_b_p2)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #43451: origin
                    (at_b_p3)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #43482: origin
                    (at_b_p4)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #61203: origin
                    (not_at_b_p5)

                    ; #72023: origin
                    (at_b_p5)

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #38744: origin
                    (at_b_p6)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #35120: origin
                    (at_b_p7)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #61203: origin
                    (not_at_b_p5)

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))

                    ; #72023: <==negation-removal== 61203 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #59728: origin
                    (at_b_p1)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #54471: origin
                    (at_b_p2)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #43451: origin
                    (at_b_p3)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #43482: origin
                    (at_b_p4)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #72023: origin
                    (at_b_p5)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #38744: origin
                    (at_b_p6)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #35120: origin
                    (at_b_p7)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #89603: origin
                    (not_at_b_p6)

                    ; #38744: <==negation-removal== 89603 (pos)
                    (not (at_b_p6))

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #59728: origin
                    (at_b_p1)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #54471: origin
                    (at_b_p2)

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #43451: origin
                    (at_b_p3)

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #43482: origin
                    (at_b_p4)

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #72023: origin
                    (at_b_p5)

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #38744: origin
                    (at_b_p6)

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #35120: origin
                    (at_b_p7)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #16917: origin
                    (at_b_p8)

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #14638: origin
                    (not_at_b_p7)

                    ; #22391: origin
                    (at_b_p9)

                    ; #35120: <==negation-removal== 14638 (pos)
                    (not (at_b_p7))

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #46373: origin
                    (not_at_b_p8)

                    ; #59728: origin
                    (at_b_p1)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #46373: origin
                    (not_at_b_p8)

                    ; #54471: origin
                    (at_b_p2)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #43451: origin
                    (at_b_p3)

                    ; #46373: origin
                    (not_at_b_p8)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #43482: origin
                    (at_b_p4)

                    ; #46373: origin
                    (not_at_b_p8)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #46373: origin
                    (not_at_b_p8)

                    ; #72023: origin
                    (at_b_p5)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #38744: origin
                    (at_b_p6)

                    ; #46373: origin
                    (not_at_b_p8)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #35120: origin
                    (at_b_p7)

                    ; #46373: origin
                    (not_at_b_p8)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #46373: origin
                    (not_at_b_p8)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #46373: origin
                    (not_at_b_p8)

                    ; #16917: <==negation-removal== 46373 (pos)
                    (not (at_b_p8))

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #53499: origin
                    (not_at_b_p9)

                    ; #59728: origin
                    (at_b_p1)

                    ; #19093: <==negation-removal== 59728 (pos)
                    (not (not_at_b_p1))

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #53499: origin
                    (not_at_b_p9)

                    ; #54471: origin
                    (at_b_p2)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #27201: <==negation-removal== 54471 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #43451: origin
                    (at_b_p3)

                    ; #53499: origin
                    (not_at_b_p9)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #65679: <==negation-removal== 43451 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #43482: origin
                    (at_b_p4)

                    ; #53499: origin
                    (not_at_b_p9)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #70966: <==negation-removal== 43482 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #53499: origin
                    (not_at_b_p9)

                    ; #72023: origin
                    (at_b_p5)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #61203: <==negation-removal== 72023 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #38744: origin
                    (at_b_p6)

                    ; #53499: origin
                    (not_at_b_p9)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #89603: <==negation-removal== 38744 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #35120: origin
                    (at_b_p7)

                    ; #53499: origin
                    (not_at_b_p9)

                    ; #14638: <==negation-removal== 35120 (pos)
                    (not (not_at_b_p7))

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #16917: origin
                    (at_b_p8)

                    ; #53499: origin
                    (not_at_b_p9)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #46373: <==negation-removal== 16917 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #22391: origin
                    (at_b_p9)

                    ; #53499: origin
                    (not_at_b_p9)

                    ; #22391: <==negation-removal== 53499 (pos)
                    (not (at_b_p9))

                    ; #53499: <==negation-removal== 22391 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #52423: origin
                    (at_c_p1)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #42115: origin
                    (at_c_p2)

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #52811: origin
                    (at_c_p3)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #60740: origin
                    (at_c_p4)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #46944: origin
                    (at_c_p5)

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #15443: origin
                    (not_at_c_p1)

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #88843: origin
                    (at_c_p8)

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #15443: origin
                    (not_at_c_p1)

                    ; #75002: origin
                    (at_c_p9)

                    ; #52423: <==negation-removal== 15443 (pos)
                    (not (at_c_p1))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #52423: origin
                    (at_c_p1)

                    ; #70759: origin
                    (not_at_c_p2)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #42115: origin
                    (at_c_p2)

                    ; #70759: origin
                    (not_at_c_p2)

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #52811: origin
                    (at_c_p3)

                    ; #70759: origin
                    (not_at_c_p2)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #60740: origin
                    (at_c_p4)

                    ; #70759: origin
                    (not_at_c_p2)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #46944: origin
                    (at_c_p5)

                    ; #70759: origin
                    (not_at_c_p2)

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #70759: origin
                    (not_at_c_p2)

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #70759: origin
                    (not_at_c_p2)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #70759: origin
                    (not_at_c_p2)

                    ; #88843: origin
                    (at_c_p8)

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #70759: origin
                    (not_at_c_p2)

                    ; #75002: origin
                    (at_c_p9)

                    ; #42115: <==negation-removal== 70759 (pos)
                    (not (at_c_p2))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #52423: origin
                    (at_c_p1)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #42115: origin
                    (at_c_p2)

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #52811: origin
                    (at_c_p3)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #60740: origin
                    (at_c_p4)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #46944: origin
                    (at_c_p5)

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #20209: origin
                    (not_at_c_p3)

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #88843: origin
                    (at_c_p8)

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #20209: origin
                    (not_at_c_p3)

                    ; #75002: origin
                    (at_c_p9)

                    ; #52811: <==negation-removal== 20209 (pos)
                    (not (at_c_p3))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #52423: origin
                    (at_c_p1)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #42115: origin
                    (at_c_p2)

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #52811: origin
                    (at_c_p3)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #60740: origin
                    (at_c_p4)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #46944: origin
                    (at_c_p5)

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #22210: origin
                    (not_at_c_p4)

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #88843: origin
                    (at_c_p8)

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #22210: origin
                    (not_at_c_p4)

                    ; #75002: origin
                    (at_c_p9)

                    ; #60740: <==negation-removal== 22210 (pos)
                    (not (at_c_p4))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #52423: origin
                    (at_c_p1)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #42115: origin
                    (at_c_p2)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #52811: origin
                    (at_c_p3)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #60740: origin
                    (at_c_p4)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #46944: origin
                    (at_c_p5)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #80836: origin
                    (not_at_c_p5)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #80836: origin
                    (not_at_c_p5)

                    ; #88843: origin
                    (at_c_p8)

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #75002: origin
                    (at_c_p9)

                    ; #80836: origin
                    (not_at_c_p5)

                    ; #46944: <==negation-removal== 80836 (pos)
                    (not (at_c_p5))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #52423: origin
                    (at_c_p1)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #42115: origin
                    (at_c_p2)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #52811: origin
                    (at_c_p3)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #60740: origin
                    (at_c_p4)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #46944: origin
                    (at_c_p5)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #84004: origin
                    (at_c_p7)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #88843: origin
                    (at_c_p8)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #75002: origin
                    (at_c_p9)

                    ; #88886: origin
                    (not_at_c_p6)

                    ; #12011: <==negation-removal== 88886 (pos)
                    (not (at_c_p6))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #52423: origin
                    (at_c_p1)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #42115: origin
                    (at_c_p2)

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #52811: origin
                    (at_c_p3)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #60740: origin
                    (at_c_p4)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #46944: origin
                    (at_c_p5)

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #14092: origin
                    (not_at_c_p7)

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #88843: origin
                    (at_c_p8)

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #14092: origin
                    (not_at_c_p7)

                    ; #75002: origin
                    (at_c_p9)

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))

                    ; #84004: <==negation-removal== 14092 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #52423: origin
                    (at_c_p1)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #42115: origin
                    (at_c_p2)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #52811: origin
                    (at_c_p3)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #60740: origin
                    (at_c_p4)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #46944: origin
                    (at_c_p5)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #75392: origin
                    (not_at_c_p8)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #75392: origin
                    (not_at_c_p8)

                    ; #88843: origin
                    (at_c_p8)

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #75002: origin
                    (at_c_p9)

                    ; #75392: origin
                    (not_at_c_p8)

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))

                    ; #88843: <==negation-removal== 75392 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #52423: origin
                    (at_c_p1)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #15443: <==negation-removal== 52423 (pos)
                    (not (not_at_c_p1))

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #42115: origin
                    (at_c_p2)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #70759: <==negation-removal== 42115 (pos)
                    (not (not_at_c_p2))

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #52811: origin
                    (at_c_p3)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #20209: <==negation-removal== 52811 (pos)
                    (not (not_at_c_p3))

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #60740: origin
                    (at_c_p4)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #22210: <==negation-removal== 60740 (pos)
                    (not (not_at_c_p4))

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #46944: origin
                    (at_c_p5)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))

                    ; #80836: <==negation-removal== 46944 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #12011: origin
                    (at_c_p6)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))

                    ; #88886: <==negation-removal== 12011 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #80736: origin
                    (not_at_c_p9)

                    ; #84004: origin
                    (at_c_p7)

                    ; #14092: <==negation-removal== 84004 (pos)
                    (not (not_at_c_p7))

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #80736: origin
                    (not_at_c_p9)

                    ; #88843: origin
                    (at_c_p8)

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))

                    ; #75392: <==negation-removal== 88843 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #75002: origin
                    (at_c_p9)

                    ; #80736: origin
                    (not_at_c_p9)

                    ; #75002: <==negation-removal== 80736 (pos)
                    (not (at_c_p9))

                    ; #80736: <==negation-removal== 75002 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #13242: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #14502: <==commonly_known== 83150 (pos)
                    (Bb_checked_p1)

                    ; #18581: <==closure== 75175 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #20344: <==closure== 14502 (pos)
                    (Pb_checked_p1)

                    ; #25307: <==commonly_known== 83150 (pos)
                    (Bc_checked_p1)

                    ; #34198: <==closure== 25307 (pos)
                    (Pc_checked_p1)

                    ; #55794: <==closure== 13242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #57965: <==closure== 72339 (pos)
                    (Pa_checked_p1)

                    ; #72339: <==commonly_known== 83150 (pos)
                    (Ba_checked_p1)

                    ; #75175: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #83150: origin
                    (checked_p1)

                    ; #12186: <==unclosure== 87340 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #20776: <==negation-removal== 13242 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #21587: <==negation-removal== 14502 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29414: <==negation-removal== 34198 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29728: <==negation-removal== 57965 (pos)
                    (not (Ba_not_checked_p1))

                    ; #33115: <==negation-removal== 25307 (pos)
                    (not (Pc_not_checked_p1))

                    ; #33620: <==negation-removal== 18581 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #42666: <==negation-removal== 72339 (pos)
                    (not (Pa_not_checked_p1))

                    ; #44727: <==negation-removal== 75175 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #46766: <==negation-removal== 20344 (pos)
                    (not (Bb_not_checked_p1))

                    ; #57085: <==unclosure== 75159 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #75159: <==uncertain_firing== 13242 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #79369: <==negation-removal== 55794 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #87340: <==uncertain_firing== 75175 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #87642: <==negation-removal== 83150 (pos)
                    (not (not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12931: <==commonly_known== 31489 (pos)
                    (Ba_checked_p2)

                    ; #16686: <==closure== 88918 (pos)
                    (Pb_checked_p2)

                    ; #31489: origin
                    (checked_p2)

                    ; #37542: <==closure== 79726 (pos)
                    (Pc_checked_p2)

                    ; #55483: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #57482: <==closure== 12931 (pos)
                    (Pa_checked_p2)

                    ; #66670: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #79726: <==commonly_known== 31489 (pos)
                    (Bc_checked_p2)

                    ; #81667: <==closure== 55483 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #84906: <==closure== 66670 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #88918: <==commonly_known== 31489 (pos)
                    (Bb_checked_p2)

                    ; #12162: <==negation-removal== 37542 (pos)
                    (not (Bc_not_checked_p2))

                    ; #21466: <==negation-removal== 81667 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #30318: <==uncertain_firing== 66670 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #40874: <==negation-removal== 55483 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #41742: <==negation-removal== 16686 (pos)
                    (not (Bb_not_checked_p2))

                    ; #44896: <==negation-removal== 84906 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #47782: <==uncertain_firing== 55483 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #49750: <==negation-removal== 57482 (pos)
                    (not (Ba_not_checked_p2))

                    ; #60013: <==negation-removal== 12931 (pos)
                    (not (Pa_not_checked_p2))

                    ; #61781: <==unclosure== 30318 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #64274: <==negation-removal== 88918 (pos)
                    (not (Pb_not_checked_p2))

                    ; #70111: <==unclosure== 47782 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #71264: <==negation-removal== 79726 (pos)
                    (not (Pc_not_checked_p2))

                    ; #72207: <==negation-removal== 31489 (pos)
                    (not (not_checked_p2))

                    ; #90642: <==negation-removal== 66670 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22344: <==commonly_known== 31002 (pos)
                    (Ba_checked_p3)

                    ; #31002: origin
                    (checked_p3)

                    ; #37608: <==closure== 55303 (pos)
                    (Pc_checked_p3)

                    ; #45831: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #47290: <==closure== 22344 (pos)
                    (Pa_checked_p3)

                    ; #53131: <==closure== 66956 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #55303: <==commonly_known== 31002 (pos)
                    (Bc_checked_p3)

                    ; #59024: <==commonly_known== 31002 (pos)
                    (Bb_checked_p3)

                    ; #66956: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #81585: <==closure== 59024 (pos)
                    (Pb_checked_p3)

                    ; #86191: <==closure== 45831 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #10699: <==unclosure== 57839 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #12632: <==negation-removal== 53131 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #16128: <==unclosure== 89936 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #33004: <==negation-removal== 31002 (pos)
                    (not (not_checked_p3))

                    ; #34345: <==negation-removal== 66956 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #38820: <==negation-removal== 47290 (pos)
                    (not (Ba_not_checked_p3))

                    ; #48529: <==negation-removal== 45831 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #50427: <==negation-removal== 86191 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #51719: <==negation-removal== 37608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #57839: <==uncertain_firing== 45831 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #61181: <==negation-removal== 55303 (pos)
                    (not (Pc_not_checked_p3))

                    ; #63403: <==negation-removal== 81585 (pos)
                    (not (Bb_not_checked_p3))

                    ; #70030: <==negation-removal== 22344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #88023: <==negation-removal== 59024 (pos)
                    (not (Pb_not_checked_p3))

                    ; #89936: <==uncertain_firing== 66956 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11517: <==closure== 56173 (pos)
                    (Pc_checked_p4)

                    ; #18524: <==closure== 87732 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #25784: <==closure== 66781 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #41273: origin
                    (checked_p4)

                    ; #55722: <==commonly_known== 41273 (pos)
                    (Bb_checked_p4)

                    ; #56173: <==commonly_known== 41273 (pos)
                    (Bc_checked_p4)

                    ; #66781: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #70474: <==closure== 89492 (pos)
                    (Pa_checked_p4)

                    ; #75815: <==closure== 55722 (pos)
                    (Pb_checked_p4)

                    ; #87732: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #89492: <==commonly_known== 41273 (pos)
                    (Ba_checked_p4)

                    ; #14884: <==negation-removal== 89492 (pos)
                    (not (Pa_not_checked_p4))

                    ; #19519: <==uncertain_firing== 66781 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #38711: <==unclosure== 19519 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #39763: <==negation-removal== 41273 (pos)
                    (not (not_checked_p4))

                    ; #48648: <==negation-removal== 70474 (pos)
                    (not (Ba_not_checked_p4))

                    ; #50024: <==uncertain_firing== 87732 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #62743: <==negation-removal== 75815 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65397: <==negation-removal== 87732 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #65620: <==unclosure== 50024 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #67523: <==negation-removal== 25784 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #70279: <==negation-removal== 66781 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #72480: <==negation-removal== 11517 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72529: <==negation-removal== 55722 (pos)
                    (not (Pb_not_checked_p4))

                    ; #81289: <==negation-removal== 56173 (pos)
                    (not (Pc_not_checked_p4))

                    ; #91135: <==negation-removal== 18524 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #25248: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #55486: <==closure== 90148 (pos)
                    (Pa_checked_p5)

                    ; #55632: <==closure== 63870 (pos)
                    (Pc_checked_p5)

                    ; #63870: <==commonly_known== 86261 (pos)
                    (Bc_checked_p5)

                    ; #65889: <==closure== 88705 (pos)
                    (Pb_checked_p5)

                    ; #69549: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #77875: <==closure== 25248 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #84228: <==closure== 69549 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #86261: origin
                    (checked_p5)

                    ; #88705: <==commonly_known== 86261 (pos)
                    (Bb_checked_p5)

                    ; #90148: <==commonly_known== 86261 (pos)
                    (Ba_checked_p5)

                    ; #19223: <==negation-removal== 77875 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #24972: <==negation-removal== 65889 (pos)
                    (not (Bb_not_checked_p5))

                    ; #27378: <==negation-removal== 84228 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #28174: <==uncertain_firing== 69549 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #45354: <==negation-removal== 88705 (pos)
                    (not (Pb_not_checked_p5))

                    ; #47031: <==negation-removal== 86261 (pos)
                    (not (not_checked_p5))

                    ; #49123: <==negation-removal== 55486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #49673: <==negation-removal== 55632 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57326: <==negation-removal== 25248 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #58418: <==unclosure== 28174 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #59243: <==negation-removal== 63870 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59958: <==negation-removal== 90148 (pos)
                    (not (Pa_not_checked_p5))

                    ; #64682: <==unclosure== 91256 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67457: <==negation-removal== 69549 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #91256: <==uncertain_firing== 25248 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11507: <==closure== 79683 (pos)
                    (Pc_checked_p6)

                    ; #12867: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #39216: <==closure== 84601 (pos)
                    (Pa_checked_p6)

                    ; #40505: <==closure== 43053 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #42658: <==closure== 12867 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #43053: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #44934: origin
                    (checked_p6)

                    ; #63417: <==commonly_known== 44934 (pos)
                    (Bb_checked_p6)

                    ; #79683: <==commonly_known== 44934 (pos)
                    (Bc_checked_p6)

                    ; #80792: <==closure== 63417 (pos)
                    (Pb_checked_p6)

                    ; #84601: <==commonly_known== 44934 (pos)
                    (Ba_checked_p6)

                    ; #18540: <==uncertain_firing== 12867 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #20148: <==negation-removal== 79683 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22333: <==negation-removal== 40505 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #24541: <==negation-removal== 80792 (pos)
                    (not (Bb_not_checked_p6))

                    ; #29806: <==uncertain_firing== 43053 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #60241: <==unclosure== 18540 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #64538: <==negation-removal== 43053 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #66277: <==negation-removal== 84601 (pos)
                    (not (Pa_not_checked_p6))

                    ; #67206: <==negation-removal== 12867 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #68173: <==negation-removal== 44934 (pos)
                    (not (not_checked_p6))

                    ; #69128: <==negation-removal== 42658 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #77091: <==negation-removal== 63417 (pos)
                    (not (Pb_not_checked_p6))

                    ; #79326: <==negation-removal== 11507 (pos)
                    (not (Bc_not_checked_p6))

                    ; #87499: <==unclosure== 29806 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #92018: <==negation-removal== 39216 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19694: <==closure== 29859 (pos)
                    (Pb_checked_p7)

                    ; #29859: <==commonly_known== 48478 (pos)
                    (Bb_checked_p7)

                    ; #35487: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #42037: <==commonly_known== 48478 (pos)
                    (Bc_checked_p7)

                    ; #48478: origin
                    (checked_p7)

                    ; #56986: <==closure== 62508 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #62508: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #65858: <==closure== 73371 (pos)
                    (Pa_checked_p7)

                    ; #73371: <==commonly_known== 48478 (pos)
                    (Ba_checked_p7)

                    ; #78807: <==closure== 35487 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #83308: <==closure== 42037 (pos)
                    (Pc_checked_p7)

                    ; #14609: <==negation-removal== 62508 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #29466: <==negation-removal== 19694 (pos)
                    (not (Bb_not_checked_p7))

                    ; #32960: <==negation-removal== 56986 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #35927: <==negation-removal== 48478 (pos)
                    (not (not_checked_p7))

                    ; #39629: <==unclosure== 57614 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #40189: <==unclosure== 80791 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #56489: <==negation-removal== 73371 (pos)
                    (not (Pa_not_checked_p7))

                    ; #57614: <==uncertain_firing== 35487 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #59524: <==negation-removal== 78807 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #60233: <==negation-removal== 29859 (pos)
                    (not (Pb_not_checked_p7))

                    ; #66446: <==negation-removal== 65858 (pos)
                    (not (Ba_not_checked_p7))

                    ; #67986: <==negation-removal== 35487 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #74051: <==negation-removal== 42037 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76874: <==negation-removal== 83308 (pos)
                    (not (Bc_not_checked_p7))

                    ; #80791: <==uncertain_firing== 62508 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14326: <==commonly_known== 61041 (pos)
                    (Ba_checked_p8)

                    ; #22305: <==closure== 14326 (pos)
                    (Pa_checked_p8)

                    ; #31505: <==commonly_known== 61041 (pos)
                    (Bc_checked_p8)

                    ; #34771: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #35209: <==closure== 46911 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #46911: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #59054: <==closure== 77972 (pos)
                    (Pb_checked_p8)

                    ; #59248: <==closure== 31505 (pos)
                    (Pc_checked_p8)

                    ; #61041: origin
                    (checked_p8)

                    ; #77972: <==commonly_known== 61041 (pos)
                    (Bb_checked_p8)

                    ; #82952: <==closure== 34771 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #12036: <==negation-removal== 22305 (pos)
                    (not (Ba_not_checked_p8))

                    ; #14239: <==negation-removal== 35209 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #19979: <==negation-removal== 31505 (pos)
                    (not (Pc_not_checked_p8))

                    ; #26500: <==negation-removal== 46911 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #30272: <==negation-removal== 61041 (pos)
                    (not (not_checked_p8))

                    ; #32874: <==uncertain_firing== 46911 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #33333: <==negation-removal== 34771 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #47942: <==unclosure== 79587 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #48435: <==unclosure== 32874 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #49862: <==negation-removal== 77972 (pos)
                    (not (Pb_not_checked_p8))

                    ; #62235: <==negation-removal== 82952 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #72397: <==negation-removal== 14326 (pos)
                    (not (Pa_not_checked_p8))

                    ; #79587: <==uncertain_firing== 34771 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #83987: <==negation-removal== 59248 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84919: <==negation-removal== 59054 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21376: <==commonly_known== 74003 (pos)
                    (Bc_checked_p9)

                    ; #36685: <==closure== 54329 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #43914: <==commonly_known== 74003 (pos)
                    (Ba_checked_p9)

                    ; #44570: <==closure== 43914 (pos)
                    (Pa_checked_p9)

                    ; #53289: <==closure== 87433 (pos)
                    (Pb_checked_p9)

                    ; #54329: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #71830: <==closure== 87788 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #72488: <==closure== 21376 (pos)
                    (Pc_checked_p9)

                    ; #74003: origin
                    (checked_p9)

                    ; #87433: <==commonly_known== 74003 (pos)
                    (Bb_checked_p9)

                    ; #87788: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #14699: <==negation-removal== 36685 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #20340: <==unclosure== 60040 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #23337: <==negation-removal== 72488 (pos)
                    (not (Bc_not_checked_p9))

                    ; #31157: <==negation-removal== 74003 (pos)
                    (not (not_checked_p9))

                    ; #35095: <==uncertain_firing== 87788 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #43245: <==negation-removal== 53289 (pos)
                    (not (Bb_not_checked_p9))

                    ; #47899: <==negation-removal== 54329 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #55789: <==negation-removal== 21376 (pos)
                    (not (Pc_not_checked_p9))

                    ; #58248: <==negation-removal== 87788 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #60040: <==uncertain_firing== 54329 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #60764: <==negation-removal== 71830 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #66469: <==negation-removal== 44570 (pos)
                    (not (Ba_not_checked_p9))

                    ; #74095: <==unclosure== 35095 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #76993: <==negation-removal== 43914 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77640: <==negation-removal== 87433 (pos)
                    (not (Pb_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14502: <==commonly_known== 83150 (pos)
                    (Bb_checked_p1)

                    ; #20344: <==closure== 14502 (pos)
                    (Pb_checked_p1)

                    ; #22697: <==closure== 28429 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #25307: <==commonly_known== 83150 (pos)
                    (Bc_checked_p1)

                    ; #28429: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #34198: <==closure== 25307 (pos)
                    (Pc_checked_p1)

                    ; #46648: <==closure== 56852 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #56852: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #57965: <==closure== 72339 (pos)
                    (Pa_checked_p1)

                    ; #72339: <==commonly_known== 83150 (pos)
                    (Ba_checked_p1)

                    ; #83150: origin
                    (checked_p1)

                    ; #10551: <==negation-removal== 56852 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #21587: <==negation-removal== 14502 (pos)
                    (not (Pb_not_checked_p1))

                    ; #25357: <==uncertain_firing== 56852 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #29414: <==negation-removal== 34198 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29728: <==negation-removal== 57965 (pos)
                    (not (Ba_not_checked_p1))

                    ; #29780: <==negation-removal== 46648 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #33115: <==negation-removal== 25307 (pos)
                    (not (Pc_not_checked_p1))

                    ; #37307: <==unclosure== 25357 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #39584: <==negation-removal== 28429 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #42666: <==negation-removal== 72339 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46766: <==negation-removal== 20344 (pos)
                    (not (Bb_not_checked_p1))

                    ; #49113: <==unclosure== 75435 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #75435: <==uncertain_firing== 28429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #79247: <==negation-removal== 22697 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #87642: <==negation-removal== 83150 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12931: <==commonly_known== 31489 (pos)
                    (Ba_checked_p2)

                    ; #16686: <==closure== 88918 (pos)
                    (Pb_checked_p2)

                    ; #25121: <==closure== 47994 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #28091: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #31489: origin
                    (checked_p2)

                    ; #37542: <==closure== 79726 (pos)
                    (Pc_checked_p2)

                    ; #38646: <==closure== 28091 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #47994: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #57482: <==closure== 12931 (pos)
                    (Pa_checked_p2)

                    ; #79726: <==commonly_known== 31489 (pos)
                    (Bc_checked_p2)

                    ; #88918: <==commonly_known== 31489 (pos)
                    (Bb_checked_p2)

                    ; #12162: <==negation-removal== 37542 (pos)
                    (not (Bc_not_checked_p2))

                    ; #13433: <==uncertain_firing== 28091 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #25119: <==negation-removal== 28091 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #36907: <==unclosure== 13433 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #41742: <==negation-removal== 16686 (pos)
                    (not (Bb_not_checked_p2))

                    ; #43059: <==negation-removal== 25121 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46742: <==negation-removal== 47994 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #49750: <==negation-removal== 57482 (pos)
                    (not (Ba_not_checked_p2))

                    ; #51857: <==negation-removal== 38646 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #60013: <==negation-removal== 12931 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64274: <==negation-removal== 88918 (pos)
                    (not (Pb_not_checked_p2))

                    ; #68086: <==uncertain_firing== 47994 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #70425: <==unclosure== 68086 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #71264: <==negation-removal== 79726 (pos)
                    (not (Pc_not_checked_p2))

                    ; #72207: <==negation-removal== 31489 (pos)
                    (not (not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #22344: <==commonly_known== 31002 (pos)
                    (Ba_checked_p3)

                    ; #31002: origin
                    (checked_p3)

                    ; #37608: <==closure== 55303 (pos)
                    (Pc_checked_p3)

                    ; #46277: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #47290: <==closure== 22344 (pos)
                    (Pa_checked_p3)

                    ; #48614: <==closure== 46277 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #55303: <==commonly_known== 31002 (pos)
                    (Bc_checked_p3)

                    ; #55376: <==closure== 67899 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #59024: <==commonly_known== 31002 (pos)
                    (Bb_checked_p3)

                    ; #67899: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #81585: <==closure== 59024 (pos)
                    (Pb_checked_p3)

                    ; #31240: <==negation-removal== 67899 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #33004: <==negation-removal== 31002 (pos)
                    (not (not_checked_p3))

                    ; #35614: <==unclosure== 49292 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #36839: <==negation-removal== 48614 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #38820: <==negation-removal== 47290 (pos)
                    (not (Ba_not_checked_p3))

                    ; #39253: <==uncertain_firing== 67899 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #44038: <==negation-removal== 46277 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #49292: <==uncertain_firing== 46277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #51719: <==negation-removal== 37608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #61181: <==negation-removal== 55303 (pos)
                    (not (Pc_not_checked_p3))

                    ; #63403: <==negation-removal== 81585 (pos)
                    (not (Bb_not_checked_p3))

                    ; #70030: <==negation-removal== 22344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85864: <==negation-removal== 55376 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #86266: <==unclosure== 39253 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #88023: <==negation-removal== 59024 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11517: <==closure== 56173 (pos)
                    (Pc_checked_p4)

                    ; #31890: <==closure== 46244 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #41273: origin
                    (checked_p4)

                    ; #46244: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #55722: <==commonly_known== 41273 (pos)
                    (Bb_checked_p4)

                    ; #56173: <==commonly_known== 41273 (pos)
                    (Bc_checked_p4)

                    ; #70474: <==closure== 89492 (pos)
                    (Pa_checked_p4)

                    ; #73530: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #75815: <==closure== 55722 (pos)
                    (Pb_checked_p4)

                    ; #79864: <==closure== 73530 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #89492: <==commonly_known== 41273 (pos)
                    (Ba_checked_p4)

                    ; #13179: <==unclosure== 84792 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #14884: <==negation-removal== 89492 (pos)
                    (not (Pa_not_checked_p4))

                    ; #29971: <==negation-removal== 79864 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #39429: <==uncertain_firing== 73530 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #39763: <==negation-removal== 41273 (pos)
                    (not (not_checked_p4))

                    ; #41818: <==negation-removal== 31890 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #45820: <==unclosure== 39429 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #48648: <==negation-removal== 70474 (pos)
                    (not (Ba_not_checked_p4))

                    ; #49418: <==negation-removal== 73530 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #62743: <==negation-removal== 75815 (pos)
                    (not (Bb_not_checked_p4))

                    ; #64576: <==negation-removal== 46244 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #72480: <==negation-removal== 11517 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72529: <==negation-removal== 55722 (pos)
                    (not (Pb_not_checked_p4))

                    ; #81289: <==negation-removal== 56173 (pos)
                    (not (Pc_not_checked_p4))

                    ; #84792: <==uncertain_firing== 46244 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #31005: <==closure== 54471 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #48208: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #54471: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #55486: <==closure== 90148 (pos)
                    (Pa_checked_p5)

                    ; #55632: <==closure== 63870 (pos)
                    (Pc_checked_p5)

                    ; #63870: <==commonly_known== 86261 (pos)
                    (Bc_checked_p5)

                    ; #65889: <==closure== 88705 (pos)
                    (Pb_checked_p5)

                    ; #86261: origin
                    (checked_p5)

                    ; #87559: <==closure== 48208 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #88705: <==commonly_known== 86261 (pos)
                    (Bb_checked_p5)

                    ; #90148: <==commonly_known== 86261 (pos)
                    (Ba_checked_p5)

                    ; #12793: <==negation-removal== 87559 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #18782: <==unclosure== 47469 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #24972: <==negation-removal== 65889 (pos)
                    (not (Bb_not_checked_p5))

                    ; #30485: <==negation-removal== 48208 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42436: <==uncertain_firing== 54471 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #45354: <==negation-removal== 88705 (pos)
                    (not (Pb_not_checked_p5))

                    ; #47031: <==negation-removal== 86261 (pos)
                    (not (not_checked_p5))

                    ; #47469: <==uncertain_firing== 48208 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49123: <==negation-removal== 55486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #49673: <==negation-removal== 55632 (pos)
                    (not (Bc_not_checked_p5))

                    ; #59243: <==negation-removal== 63870 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59958: <==negation-removal== 90148 (pos)
                    (not (Pa_not_checked_p5))

                    ; #76296: <==negation-removal== 54471 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #86993: <==negation-removal== 31005 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #89525: <==unclosure== 42436 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11440: <==closure== 62517 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #11507: <==closure== 79683 (pos)
                    (Pc_checked_p6)

                    ; #39216: <==closure== 84601 (pos)
                    (Pa_checked_p6)

                    ; #44934: origin
                    (checked_p6)

                    ; #62517: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #63417: <==commonly_known== 44934 (pos)
                    (Bb_checked_p6)

                    ; #70806: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #79683: <==commonly_known== 44934 (pos)
                    (Bc_checked_p6)

                    ; #80792: <==closure== 63417 (pos)
                    (Pb_checked_p6)

                    ; #84601: <==commonly_known== 44934 (pos)
                    (Ba_checked_p6)

                    ; #91184: <==closure== 70806 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #11625: <==negation-removal== 70806 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #12138: <==unclosure== 80212 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #20069: <==unclosure== 37745 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #20148: <==negation-removal== 79683 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24541: <==negation-removal== 80792 (pos)
                    (not (Bb_not_checked_p6))

                    ; #25379: <==negation-removal== 91184 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #37745: <==uncertain_firing== 62517 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #38822: <==negation-removal== 11440 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #66277: <==negation-removal== 84601 (pos)
                    (not (Pa_not_checked_p6))

                    ; #68173: <==negation-removal== 44934 (pos)
                    (not (not_checked_p6))

                    ; #77091: <==negation-removal== 63417 (pos)
                    (not (Pb_not_checked_p6))

                    ; #79326: <==negation-removal== 11507 (pos)
                    (not (Bc_not_checked_p6))

                    ; #80212: <==uncertain_firing== 70806 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #89096: <==negation-removal== 62517 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #92018: <==negation-removal== 39216 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19694: <==closure== 29859 (pos)
                    (Pb_checked_p7)

                    ; #29859: <==commonly_known== 48478 (pos)
                    (Bb_checked_p7)

                    ; #36536: <==closure== 73778 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #42037: <==commonly_known== 48478 (pos)
                    (Bc_checked_p7)

                    ; #47838: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #48478: origin
                    (checked_p7)

                    ; #65858: <==closure== 73371 (pos)
                    (Pa_checked_p7)

                    ; #73371: <==commonly_known== 48478 (pos)
                    (Ba_checked_p7)

                    ; #73778: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #77540: <==closure== 47838 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #83308: <==closure== 42037 (pos)
                    (Pc_checked_p7)

                    ; #21377: <==unclosure== 24803 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #24803: <==uncertain_firing== 73778 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #27145: <==negation-removal== 73778 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #29466: <==negation-removal== 19694 (pos)
                    (not (Bb_not_checked_p7))

                    ; #35927: <==negation-removal== 48478 (pos)
                    (not (not_checked_p7))

                    ; #37164: <==uncertain_firing== 47838 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #39798: <==negation-removal== 36536 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #51682: <==negation-removal== 47838 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #56148: <==unclosure== 37164 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #56489: <==negation-removal== 73371 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60233: <==negation-removal== 29859 (pos)
                    (not (Pb_not_checked_p7))

                    ; #66446: <==negation-removal== 65858 (pos)
                    (not (Ba_not_checked_p7))

                    ; #74051: <==negation-removal== 42037 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76874: <==negation-removal== 83308 (pos)
                    (not (Bc_not_checked_p7))

                    ; #91232: <==negation-removal== 77540 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14326: <==commonly_known== 61041 (pos)
                    (Ba_checked_p8)

                    ; #22305: <==closure== 14326 (pos)
                    (Pa_checked_p8)

                    ; #30555: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #31505: <==commonly_known== 61041 (pos)
                    (Bc_checked_p8)

                    ; #39729: <==closure== 30555 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #49577: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #59054: <==closure== 77972 (pos)
                    (Pb_checked_p8)

                    ; #59248: <==closure== 31505 (pos)
                    (Pc_checked_p8)

                    ; #61041: origin
                    (checked_p8)

                    ; #71232: <==closure== 49577 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #77972: <==commonly_known== 61041 (pos)
                    (Bb_checked_p8)

                    ; #12036: <==negation-removal== 22305 (pos)
                    (not (Ba_not_checked_p8))

                    ; #18240: <==uncertain_firing== 49577 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #19979: <==negation-removal== 31505 (pos)
                    (not (Pc_not_checked_p8))

                    ; #30272: <==negation-removal== 61041 (pos)
                    (not (not_checked_p8))

                    ; #40317: <==negation-removal== 39729 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #41455: <==negation-removal== 71232 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #49862: <==negation-removal== 77972 (pos)
                    (not (Pb_not_checked_p8))

                    ; #55141: <==negation-removal== 30555 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #61180: <==unclosure== 61814 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #61814: <==uncertain_firing== 30555 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #71795: <==negation-removal== 49577 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #72397: <==negation-removal== 14326 (pos)
                    (not (Pa_not_checked_p8))

                    ; #79172: <==unclosure== 18240 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #83987: <==negation-removal== 59248 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84919: <==negation-removal== 59054 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21376: <==commonly_known== 74003 (pos)
                    (Bc_checked_p9)

                    ; #29065: <==closure== 58560 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #43914: <==commonly_known== 74003 (pos)
                    (Ba_checked_p9)

                    ; #44570: <==closure== 43914 (pos)
                    (Pa_checked_p9)

                    ; #53289: <==closure== 87433 (pos)
                    (Pb_checked_p9)

                    ; #58560: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #65236: <==closure== 85408 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #72488: <==closure== 21376 (pos)
                    (Pc_checked_p9)

                    ; #74003: origin
                    (checked_p9)

                    ; #85408: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #87433: <==commonly_known== 74003 (pos)
                    (Bb_checked_p9)

                    ; #19375: <==negation-removal== 29065 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #21770: <==negation-removal== 85408 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #23337: <==negation-removal== 72488 (pos)
                    (not (Bc_not_checked_p9))

                    ; #31157: <==negation-removal== 74003 (pos)
                    (not (not_checked_p9))

                    ; #43245: <==negation-removal== 53289 (pos)
                    (not (Bb_not_checked_p9))

                    ; #43295: <==uncertain_firing== 85408 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #53766: <==negation-removal== 58560 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #55789: <==negation-removal== 21376 (pos)
                    (not (Pc_not_checked_p9))

                    ; #66469: <==negation-removal== 44570 (pos)
                    (not (Ba_not_checked_p9))

                    ; #68358: <==uncertain_firing== 58560 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #73070: <==unclosure== 68358 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #75570: <==unclosure== 43295 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #76993: <==negation-removal== 43914 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77640: <==negation-removal== 87433 (pos)
                    (not (Pb_not_checked_p9))

                    ; #80724: <==negation-removal== 65236 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #14502: <==commonly_known== 83150 (pos)
                    (Bb_checked_p1)

                    ; #19002: <==closure== 35591 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #20344: <==closure== 14502 (pos)
                    (Pb_checked_p1)

                    ; #25307: <==commonly_known== 83150 (pos)
                    (Bc_checked_p1)

                    ; #34198: <==closure== 25307 (pos)
                    (Pc_checked_p1)

                    ; #35591: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #54959: <==closure== 82545 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #57965: <==closure== 72339 (pos)
                    (Pa_checked_p1)

                    ; #72339: <==commonly_known== 83150 (pos)
                    (Ba_checked_p1)

                    ; #82545: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #83150: origin
                    (checked_p1)

                    ; #12452: <==negation-removal== 19002 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #21587: <==negation-removal== 14502 (pos)
                    (not (Pb_not_checked_p1))

                    ; #29414: <==negation-removal== 34198 (pos)
                    (not (Bc_not_checked_p1))

                    ; #29728: <==negation-removal== 57965 (pos)
                    (not (Ba_not_checked_p1))

                    ; #33115: <==negation-removal== 25307 (pos)
                    (not (Pc_not_checked_p1))

                    ; #42666: <==negation-removal== 72339 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46766: <==negation-removal== 20344 (pos)
                    (not (Bb_not_checked_p1))

                    ; #66732: <==unclosure== 76049 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #74244: <==negation-removal== 35591 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #76049: <==uncertain_firing== 35591 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #76117: <==negation-removal== 54959 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #81436: <==negation-removal== 82545 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #83483: <==uncertain_firing== 82545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #87642: <==negation-removal== 83150 (pos)
                    (not (not_checked_p1))

                    ; #92145: <==unclosure== 83483 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12931: <==commonly_known== 31489 (pos)
                    (Ba_checked_p2)

                    ; #16686: <==closure== 88918 (pos)
                    (Pb_checked_p2)

                    ; #20311: <==closure== 54551 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #25804: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #31489: origin
                    (checked_p2)

                    ; #37542: <==closure== 79726 (pos)
                    (Pc_checked_p2)

                    ; #54551: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #55994: <==closure== 25804 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #57482: <==closure== 12931 (pos)
                    (Pa_checked_p2)

                    ; #79726: <==commonly_known== 31489 (pos)
                    (Bc_checked_p2)

                    ; #88918: <==commonly_known== 31489 (pos)
                    (Bb_checked_p2)

                    ; #12162: <==negation-removal== 37542 (pos)
                    (not (Bc_not_checked_p2))

                    ; #14453: <==uncertain_firing== 54551 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #38508: <==negation-removal== 25804 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #41742: <==negation-removal== 16686 (pos)
                    (not (Bb_not_checked_p2))

                    ; #43487: <==negation-removal== 55994 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #43921: <==negation-removal== 54551 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #49750: <==negation-removal== 57482 (pos)
                    (not (Ba_not_checked_p2))

                    ; #60013: <==negation-removal== 12931 (pos)
                    (not (Pa_not_checked_p2))

                    ; #64274: <==negation-removal== 88918 (pos)
                    (not (Pb_not_checked_p2))

                    ; #65605: <==uncertain_firing== 25804 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #71264: <==negation-removal== 79726 (pos)
                    (not (Pc_not_checked_p2))

                    ; #72207: <==negation-removal== 31489 (pos)
                    (not (not_checked_p2))

                    ; #79126: <==negation-removal== 20311 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #83856: <==unclosure== 14453 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #86540: <==unclosure== 65605 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12385: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #22344: <==commonly_known== 31002 (pos)
                    (Ba_checked_p3)

                    ; #23886: <==closure== 47252 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #31002: origin
                    (checked_p3)

                    ; #37608: <==closure== 55303 (pos)
                    (Pc_checked_p3)

                    ; #47252: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #47290: <==closure== 22344 (pos)
                    (Pa_checked_p3)

                    ; #55303: <==commonly_known== 31002 (pos)
                    (Bc_checked_p3)

                    ; #59024: <==commonly_known== 31002 (pos)
                    (Bb_checked_p3)

                    ; #81585: <==closure== 59024 (pos)
                    (Pb_checked_p3)

                    ; #91978: <==closure== 12385 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #10632: <==negation-removal== 91978 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #20517: <==uncertain_firing== 12385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #23778: <==negation-removal== 47252 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #27787: <==uncertain_firing== 47252 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #33004: <==negation-removal== 31002 (pos)
                    (not (not_checked_p3))

                    ; #38820: <==negation-removal== 47290 (pos)
                    (not (Ba_not_checked_p3))

                    ; #39835: <==negation-removal== 23886 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #51719: <==negation-removal== 37608 (pos)
                    (not (Bc_not_checked_p3))

                    ; #61181: <==negation-removal== 55303 (pos)
                    (not (Pc_not_checked_p3))

                    ; #61602: <==unclosure== 20517 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #63403: <==negation-removal== 81585 (pos)
                    (not (Bb_not_checked_p3))

                    ; #63979: <==negation-removal== 12385 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #70030: <==negation-removal== 22344 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71055: <==unclosure== 27787 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #88023: <==negation-removal== 59024 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11517: <==closure== 56173 (pos)
                    (Pc_checked_p4)

                    ; #12073: <==closure== 14608 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #14608: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #30790: <==closure== 37900 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #37900: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #41273: origin
                    (checked_p4)

                    ; #55722: <==commonly_known== 41273 (pos)
                    (Bb_checked_p4)

                    ; #56173: <==commonly_known== 41273 (pos)
                    (Bc_checked_p4)

                    ; #70474: <==closure== 89492 (pos)
                    (Pa_checked_p4)

                    ; #75815: <==closure== 55722 (pos)
                    (Pb_checked_p4)

                    ; #89492: <==commonly_known== 41273 (pos)
                    (Ba_checked_p4)

                    ; #14884: <==negation-removal== 89492 (pos)
                    (not (Pa_not_checked_p4))

                    ; #27299: <==negation-removal== 14608 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29678: <==negation-removal== 12073 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #37712: <==negation-removal== 30790 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #39763: <==negation-removal== 41273 (pos)
                    (not (not_checked_p4))

                    ; #40430: <==uncertain_firing== 37900 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #48648: <==negation-removal== 70474 (pos)
                    (not (Ba_not_checked_p4))

                    ; #62743: <==negation-removal== 75815 (pos)
                    (not (Bb_not_checked_p4))

                    ; #68201: <==negation-removal== 37900 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #72480: <==negation-removal== 11517 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72529: <==negation-removal== 55722 (pos)
                    (not (Pb_not_checked_p4))

                    ; #72860: <==unclosure== 82290 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #79865: <==unclosure== 40430 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #81289: <==negation-removal== 56173 (pos)
                    (not (Pc_not_checked_p4))

                    ; #82290: <==uncertain_firing== 14608 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #16369: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #53744: <==closure== 16369 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #55486: <==closure== 90148 (pos)
                    (Pa_checked_p5)

                    ; #55632: <==closure== 63870 (pos)
                    (Pc_checked_p5)

                    ; #59189: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #63870: <==commonly_known== 86261 (pos)
                    (Bc_checked_p5)

                    ; #65889: <==closure== 88705 (pos)
                    (Pb_checked_p5)

                    ; #86261: origin
                    (checked_p5)

                    ; #88705: <==commonly_known== 86261 (pos)
                    (Bb_checked_p5)

                    ; #90148: <==commonly_known== 86261 (pos)
                    (Ba_checked_p5)

                    ; #90423: <==closure== 59189 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #24972: <==negation-removal== 65889 (pos)
                    (not (Bb_not_checked_p5))

                    ; #31042: <==unclosure== 74387 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #34835: <==negation-removal== 59189 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #36835: <==negation-removal== 16369 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #45354: <==negation-removal== 88705 (pos)
                    (not (Pb_not_checked_p5))

                    ; #47031: <==negation-removal== 86261 (pos)
                    (not (not_checked_p5))

                    ; #49123: <==negation-removal== 55486 (pos)
                    (not (Ba_not_checked_p5))

                    ; #49673: <==negation-removal== 55632 (pos)
                    (not (Bc_not_checked_p5))

                    ; #57453: <==unclosure== 73248 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #59243: <==negation-removal== 63870 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59958: <==negation-removal== 90148 (pos)
                    (not (Pa_not_checked_p5))

                    ; #73248: <==uncertain_firing== 16369 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #74387: <==uncertain_firing== 59189 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #75255: <==negation-removal== 53744 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #75783: <==negation-removal== 90423 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11507: <==closure== 79683 (pos)
                    (Pc_checked_p6)

                    ; #39216: <==closure== 84601 (pos)
                    (Pa_checked_p6)

                    ; #44934: origin
                    (checked_p6)

                    ; #57112: <==closure== 90690 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #63417: <==commonly_known== 44934 (pos)
                    (Bb_checked_p6)

                    ; #73580: <==closure== 85385 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #79683: <==commonly_known== 44934 (pos)
                    (Bc_checked_p6)

                    ; #80792: <==closure== 63417 (pos)
                    (Pb_checked_p6)

                    ; #84601: <==commonly_known== 44934 (pos)
                    (Ba_checked_p6)

                    ; #85385: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #90690: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #15500: <==uncertain_firing== 85385 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #16987: <==negation-removal== 57112 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #17975: <==negation-removal== 90690 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #20148: <==negation-removal== 79683 (pos)
                    (not (Pc_not_checked_p6))

                    ; #24541: <==negation-removal== 80792 (pos)
                    (not (Bb_not_checked_p6))

                    ; #41428: <==negation-removal== 73580 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #56450: <==uncertain_firing== 90690 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #66277: <==negation-removal== 84601 (pos)
                    (not (Pa_not_checked_p6))

                    ; #68173: <==negation-removal== 44934 (pos)
                    (not (not_checked_p6))

                    ; #76454: <==unclosure== 56450 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #77091: <==negation-removal== 63417 (pos)
                    (not (Pb_not_checked_p6))

                    ; #79326: <==negation-removal== 11507 (pos)
                    (not (Bc_not_checked_p6))

                    ; #80726: <==unclosure== 15500 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90223: <==negation-removal== 85385 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #92018: <==negation-removal== 39216 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19694: <==closure== 29859 (pos)
                    (Pb_checked_p7)

                    ; #20663: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #24410: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #29859: <==commonly_known== 48478 (pos)
                    (Bb_checked_p7)

                    ; #42037: <==commonly_known== 48478 (pos)
                    (Bc_checked_p7)

                    ; #43916: <==closure== 24410 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #46860: <==closure== 20663 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #48478: origin
                    (checked_p7)

                    ; #65858: <==closure== 73371 (pos)
                    (Pa_checked_p7)

                    ; #73371: <==commonly_known== 48478 (pos)
                    (Ba_checked_p7)

                    ; #83308: <==closure== 42037 (pos)
                    (Pc_checked_p7)

                    ; #20721: <==negation-removal== 46860 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #24417: <==negation-removal== 24410 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #28353: <==negation-removal== 43916 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #29466: <==negation-removal== 19694 (pos)
                    (not (Bb_not_checked_p7))

                    ; #35927: <==negation-removal== 48478 (pos)
                    (not (not_checked_p7))

                    ; #46933: <==uncertain_firing== 24410 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #51095: <==unclosure== 46933 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #56489: <==negation-removal== 73371 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60233: <==negation-removal== 29859 (pos)
                    (not (Pb_not_checked_p7))

                    ; #66446: <==negation-removal== 65858 (pos)
                    (not (Ba_not_checked_p7))

                    ; #71088: <==negation-removal== 20663 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #72384: <==uncertain_firing== 20663 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #74051: <==negation-removal== 42037 (pos)
                    (not (Pc_not_checked_p7))

                    ; #76874: <==negation-removal== 83308 (pos)
                    (not (Bc_not_checked_p7))

                    ; #76879: <==unclosure== 72384 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14326: <==commonly_known== 61041 (pos)
                    (Ba_checked_p8)

                    ; #22305: <==closure== 14326 (pos)
                    (Pa_checked_p8)

                    ; #22446: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #31505: <==commonly_known== 61041 (pos)
                    (Bc_checked_p8)

                    ; #45461: <==closure== 22446 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #59054: <==closure== 77972 (pos)
                    (Pb_checked_p8)

                    ; #59248: <==closure== 31505 (pos)
                    (Pc_checked_p8)

                    ; #61041: origin
                    (checked_p8)

                    ; #77972: <==commonly_known== 61041 (pos)
                    (Bb_checked_p8)

                    ; #77974: <==closure== 90161 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #90161: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #12036: <==negation-removal== 22305 (pos)
                    (not (Ba_not_checked_p8))

                    ; #18521: <==uncertain_firing== 90161 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #19979: <==negation-removal== 31505 (pos)
                    (not (Pc_not_checked_p8))

                    ; #30272: <==negation-removal== 61041 (pos)
                    (not (not_checked_p8))

                    ; #43512: <==negation-removal== 77974 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #49862: <==negation-removal== 77972 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50995: <==negation-removal== 90161 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #62264: <==unclosure== 77506 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #64850: <==negation-removal== 22446 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #72397: <==negation-removal== 14326 (pos)
                    (not (Pa_not_checked_p8))

                    ; #77506: <==uncertain_firing== 22446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #79772: <==negation-removal== 45461 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #83987: <==negation-removal== 59248 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84919: <==negation-removal== 59054 (pos)
                    (not (Bb_not_checked_p8))

                    ; #88620: <==unclosure== 18521 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21097: <==closure== 83668 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #21376: <==commonly_known== 74003 (pos)
                    (Bc_checked_p9)

                    ; #43914: <==commonly_known== 74003 (pos)
                    (Ba_checked_p9)

                    ; #44570: <==closure== 43914 (pos)
                    (Pa_checked_p9)

                    ; #50297: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #53289: <==closure== 87433 (pos)
                    (Pb_checked_p9)

                    ; #64117: <==closure== 50297 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #72488: <==closure== 21376 (pos)
                    (Pc_checked_p9)

                    ; #74003: origin
                    (checked_p9)

                    ; #83668: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #87433: <==commonly_known== 74003 (pos)
                    (Bb_checked_p9)

                    ; #13053: <==unclosure== 58610 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #23337: <==negation-removal== 72488 (pos)
                    (not (Bc_not_checked_p9))

                    ; #24445: <==uncertain_firing== 50297 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #31157: <==negation-removal== 74003 (pos)
                    (not (not_checked_p9))

                    ; #35469: <==negation-removal== 21097 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43245: <==negation-removal== 53289 (pos)
                    (not (Bb_not_checked_p9))

                    ; #43369: <==negation-removal== 64117 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #55789: <==negation-removal== 21376 (pos)
                    (not (Pc_not_checked_p9))

                    ; #58610: <==uncertain_firing== 83668 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #66469: <==negation-removal== 44570 (pos)
                    (not (Ba_not_checked_p9))

                    ; #76993: <==negation-removal== 43914 (pos)
                    (not (Pa_not_checked_p9))

                    ; #77640: <==negation-removal== 87433 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77865: <==negation-removal== 50297 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #89317: <==unclosure== 24445 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #90162: <==negation-removal== 83668 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)