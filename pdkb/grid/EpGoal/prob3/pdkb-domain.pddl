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
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #15206: origin
                    (Bb_survivorat_s_p1)

                    ; #47619: origin
                    (Ba_survivorat_s_p1)

                    ; #53005: <==closure== 47619 (pos)
                    (Pa_survivorat_s_p1)

                    ; #58400: <==closure== 15206 (pos)
                    (Pb_survivorat_s_p1)

                    ; #73890: <==closure== 78172 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78172: origin
                    (Bc_survivorat_s_p1)

                    ; #35194: <==negation-removal== 53005 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #37740: <==negation-removal== 58400 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50018: <==negation-removal== 73890 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63026: <==negation-removal== 78172 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66106: <==negation-removal== 15206 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #82421: <==negation-removal== 47619 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #15206: origin
                    (Bb_survivorat_s_p1)

                    ; #47619: origin
                    (Ba_survivorat_s_p1)

                    ; #53005: <==closure== 47619 (pos)
                    (Pa_survivorat_s_p1)

                    ; #58400: <==closure== 15206 (pos)
                    (Pb_survivorat_s_p1)

                    ; #73890: <==closure== 78172 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78172: origin
                    (Bc_survivorat_s_p1)

                    ; #35194: <==negation-removal== 53005 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #37740: <==negation-removal== 58400 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50018: <==negation-removal== 73890 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63026: <==negation-removal== 78172 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66106: <==negation-removal== 15206 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #82421: <==negation-removal== 47619 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #15206: origin
                    (Bb_survivorat_s_p1)

                    ; #47619: origin
                    (Ba_survivorat_s_p1)

                    ; #53005: <==closure== 47619 (pos)
                    (Pa_survivorat_s_p1)

                    ; #58400: <==closure== 15206 (pos)
                    (Pb_survivorat_s_p1)

                    ; #73890: <==closure== 78172 (pos)
                    (Pc_survivorat_s_p1)

                    ; #78172: origin
                    (Bc_survivorat_s_p1)

                    ; #35194: <==negation-removal== 53005 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #37740: <==negation-removal== 58400 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #50018: <==negation-removal== 73890 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #63026: <==negation-removal== 78172 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #66106: <==negation-removal== 15206 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #82421: <==negation-removal== 47619 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #21155: origin
                    (Bc_survivorat_s_p2)

                    ; #25565: <==closure== 44567 (pos)
                    (Pb_survivorat_s_p2)

                    ; #42379: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44567: origin
                    (Bb_survivorat_s_p2)

                    ; #60411: origin
                    (Ba_survivorat_s_p2)

                    ; #75421: <==closure== 60411 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15795: <==negation-removal== 25565 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #46296: <==negation-removal== 60411 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59383: <==negation-removal== 42379 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61625: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #67369: <==negation-removal== 75421 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #70643: <==negation-removal== 44567 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #21155: origin
                    (Bc_survivorat_s_p2)

                    ; #25565: <==closure== 44567 (pos)
                    (Pb_survivorat_s_p2)

                    ; #42379: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44567: origin
                    (Bb_survivorat_s_p2)

                    ; #60411: origin
                    (Ba_survivorat_s_p2)

                    ; #75421: <==closure== 60411 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15795: <==negation-removal== 25565 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #46296: <==negation-removal== 60411 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59383: <==negation-removal== 42379 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61625: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #67369: <==negation-removal== 75421 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #70643: <==negation-removal== 44567 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #21155: origin
                    (Bc_survivorat_s_p2)

                    ; #25565: <==closure== 44567 (pos)
                    (Pb_survivorat_s_p2)

                    ; #42379: <==closure== 21155 (pos)
                    (Pc_survivorat_s_p2)

                    ; #44567: origin
                    (Bb_survivorat_s_p2)

                    ; #60411: origin
                    (Ba_survivorat_s_p2)

                    ; #75421: <==closure== 60411 (pos)
                    (Pa_survivorat_s_p2)

                    ; #15795: <==negation-removal== 25565 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #46296: <==negation-removal== 60411 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #59383: <==negation-removal== 42379 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #61625: <==negation-removal== 21155 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #67369: <==negation-removal== 75421 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #70643: <==negation-removal== 44567 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (at_a_p3)
                           (Pa_survivorat_s_p3))
        :effect (and
                    ; #28873: <==closure== 36757 (pos)
                    (Pa_survivorat_s_p3)

                    ; #36757: origin
                    (Ba_survivorat_s_p3)

                    ; #58060: <==closure== 81486 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70705: origin
                    (Bb_survivorat_s_p3)

                    ; #81486: origin
                    (Bc_survivorat_s_p3)

                    ; #94311: <==closure== 70705 (pos)
                    (Pb_survivorat_s_p3)

                    ; #25821: <==negation-removal== 81486 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #26014: <==negation-removal== 36757 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #46981: <==negation-removal== 28873 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #48719: <==negation-removal== 94311 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #59611: <==negation-removal== 70705 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80844: <==negation-removal== 58060 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #28873: <==closure== 36757 (pos)
                    (Pa_survivorat_s_p3)

                    ; #36757: origin
                    (Ba_survivorat_s_p3)

                    ; #58060: <==closure== 81486 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70705: origin
                    (Bb_survivorat_s_p3)

                    ; #81486: origin
                    (Bc_survivorat_s_p3)

                    ; #94311: <==closure== 70705 (pos)
                    (Pb_survivorat_s_p3)

                    ; #25821: <==negation-removal== 81486 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #26014: <==negation-removal== 36757 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #46981: <==negation-removal== 28873 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #48719: <==negation-removal== 94311 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #59611: <==negation-removal== 70705 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80844: <==negation-removal== 58060 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #28873: <==closure== 36757 (pos)
                    (Pa_survivorat_s_p3)

                    ; #36757: origin
                    (Ba_survivorat_s_p3)

                    ; #58060: <==closure== 81486 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70705: origin
                    (Bb_survivorat_s_p3)

                    ; #81486: origin
                    (Bc_survivorat_s_p3)

                    ; #94311: <==closure== 70705 (pos)
                    (Pb_survivorat_s_p3)

                    ; #25821: <==negation-removal== 81486 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #26014: <==negation-removal== 36757 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #46981: <==negation-removal== 28873 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #48719: <==negation-removal== 94311 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #59611: <==negation-removal== 70705 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #80844: <==negation-removal== 58060 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #15683: <==closure== 45635 (pos)
                    (Pb_survivorat_s_p4)

                    ; #33645: <==closure== 68485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #45635: origin
                    (Bb_survivorat_s_p4)

                    ; #68485: origin
                    (Bc_survivorat_s_p4)

                    ; #68695: <==closure== 73012 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73012: origin
                    (Ba_survivorat_s_p4)

                    ; #22230: <==negation-removal== 73012 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #24419: <==negation-removal== 68485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27574: <==negation-removal== 68695 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34346: <==negation-removal== 45635 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #65918: <==negation-removal== 15683 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66857: <==negation-removal== 33645 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #15683: <==closure== 45635 (pos)
                    (Pb_survivorat_s_p4)

                    ; #33645: <==closure== 68485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #45635: origin
                    (Bb_survivorat_s_p4)

                    ; #68485: origin
                    (Bc_survivorat_s_p4)

                    ; #68695: <==closure== 73012 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73012: origin
                    (Ba_survivorat_s_p4)

                    ; #22230: <==negation-removal== 73012 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #24419: <==negation-removal== 68485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27574: <==negation-removal== 68695 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34346: <==negation-removal== 45635 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #65918: <==negation-removal== 15683 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66857: <==negation-removal== 33645 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #15683: <==closure== 45635 (pos)
                    (Pb_survivorat_s_p4)

                    ; #33645: <==closure== 68485 (pos)
                    (Pc_survivorat_s_p4)

                    ; #45635: origin
                    (Bb_survivorat_s_p4)

                    ; #68485: origin
                    (Bc_survivorat_s_p4)

                    ; #68695: <==closure== 73012 (pos)
                    (Pa_survivorat_s_p4)

                    ; #73012: origin
                    (Ba_survivorat_s_p4)

                    ; #22230: <==negation-removal== 73012 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #24419: <==negation-removal== 68485 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #27574: <==negation-removal== 68695 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #34346: <==negation-removal== 45635 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #65918: <==negation-removal== 15683 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #66857: <==negation-removal== 33645 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #10912: origin
                    (Ba_survivorat_s_p5)

                    ; #15826: origin
                    (Bb_survivorat_s_p5)

                    ; #36229: <==closure== 55160 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55160: origin
                    (Bc_survivorat_s_p5)

                    ; #62566: <==closure== 15826 (pos)
                    (Pb_survivorat_s_p5)

                    ; #76180: <==closure== 10912 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16467: <==negation-removal== 62566 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #30719: <==negation-removal== 15826 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #33085: <==negation-removal== 36229 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #63566: <==negation-removal== 10912 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72579: <==negation-removal== 76180 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82072: <==negation-removal== 55160 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #10912: origin
                    (Ba_survivorat_s_p5)

                    ; #15826: origin
                    (Bb_survivorat_s_p5)

                    ; #36229: <==closure== 55160 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55160: origin
                    (Bc_survivorat_s_p5)

                    ; #62566: <==closure== 15826 (pos)
                    (Pb_survivorat_s_p5)

                    ; #76180: <==closure== 10912 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16467: <==negation-removal== 62566 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #30719: <==negation-removal== 15826 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #33085: <==negation-removal== 36229 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #63566: <==negation-removal== 10912 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72579: <==negation-removal== 76180 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82072: <==negation-removal== 55160 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #10912: origin
                    (Ba_survivorat_s_p5)

                    ; #15826: origin
                    (Bb_survivorat_s_p5)

                    ; #36229: <==closure== 55160 (pos)
                    (Pc_survivorat_s_p5)

                    ; #55160: origin
                    (Bc_survivorat_s_p5)

                    ; #62566: <==closure== 15826 (pos)
                    (Pb_survivorat_s_p5)

                    ; #76180: <==closure== 10912 (pos)
                    (Pa_survivorat_s_p5)

                    ; #16467: <==negation-removal== 62566 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #30719: <==negation-removal== 15826 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #33085: <==negation-removal== 36229 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #63566: <==negation-removal== 10912 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #72579: <==negation-removal== 76180 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #82072: <==negation-removal== 55160 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #18398: origin
                    (Ba_survivorat_s_p6)

                    ; #36946: origin
                    (Bc_survivorat_s_p6)

                    ; #45222: <==closure== 36946 (pos)
                    (Pc_survivorat_s_p6)

                    ; #45585: <==closure== 79529 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54034: <==closure== 18398 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79529: origin
                    (Bb_survivorat_s_p6)

                    ; #11881: <==negation-removal== 36946 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #39326: <==negation-removal== 45222 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #64931: <==negation-removal== 79529 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76858: <==negation-removal== 18398 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88174: <==negation-removal== 54034 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #91295: <==negation-removal== 45585 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #18398: origin
                    (Ba_survivorat_s_p6)

                    ; #36946: origin
                    (Bc_survivorat_s_p6)

                    ; #45222: <==closure== 36946 (pos)
                    (Pc_survivorat_s_p6)

                    ; #45585: <==closure== 79529 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54034: <==closure== 18398 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79529: origin
                    (Bb_survivorat_s_p6)

                    ; #11881: <==negation-removal== 36946 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #39326: <==negation-removal== 45222 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #64931: <==negation-removal== 79529 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76858: <==negation-removal== 18398 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88174: <==negation-removal== 54034 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #91295: <==negation-removal== 45585 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #18398: origin
                    (Ba_survivorat_s_p6)

                    ; #36946: origin
                    (Bc_survivorat_s_p6)

                    ; #45222: <==closure== 36946 (pos)
                    (Pc_survivorat_s_p6)

                    ; #45585: <==closure== 79529 (pos)
                    (Pb_survivorat_s_p6)

                    ; #54034: <==closure== 18398 (pos)
                    (Pa_survivorat_s_p6)

                    ; #79529: origin
                    (Bb_survivorat_s_p6)

                    ; #11881: <==negation-removal== 36946 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #39326: <==negation-removal== 45222 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #64931: <==negation-removal== 79529 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #76858: <==negation-removal== 18398 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #88174: <==negation-removal== 54034 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #91295: <==negation-removal== 45585 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #29685: <==closure== 57663 (pos)
                    (Pc_survivorat_s_p7)

                    ; #44477: origin
                    (Bb_survivorat_s_p7)

                    ; #57663: origin
                    (Bc_survivorat_s_p7)

                    ; #63592: <==closure== 85931 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82489: <==closure== 44477 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85931: origin
                    (Ba_survivorat_s_p7)

                    ; #28089: <==negation-removal== 63592 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45355: <==negation-removal== 85931 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #46912: <==negation-removal== 29685 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #47967: <==negation-removal== 57663 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #66451: <==negation-removal== 44477 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #83491: <==negation-removal== 82489 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #29685: <==closure== 57663 (pos)
                    (Pc_survivorat_s_p7)

                    ; #44477: origin
                    (Bb_survivorat_s_p7)

                    ; #57663: origin
                    (Bc_survivorat_s_p7)

                    ; #63592: <==closure== 85931 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82489: <==closure== 44477 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85931: origin
                    (Ba_survivorat_s_p7)

                    ; #28089: <==negation-removal== 63592 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45355: <==negation-removal== 85931 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #46912: <==negation-removal== 29685 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #47967: <==negation-removal== 57663 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #66451: <==negation-removal== 44477 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #83491: <==negation-removal== 82489 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #29685: <==closure== 57663 (pos)
                    (Pc_survivorat_s_p7)

                    ; #44477: origin
                    (Bb_survivorat_s_p7)

                    ; #57663: origin
                    (Bc_survivorat_s_p7)

                    ; #63592: <==closure== 85931 (pos)
                    (Pa_survivorat_s_p7)

                    ; #82489: <==closure== 44477 (pos)
                    (Pb_survivorat_s_p7)

                    ; #85931: origin
                    (Ba_survivorat_s_p7)

                    ; #28089: <==negation-removal== 63592 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #45355: <==negation-removal== 85931 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #46912: <==negation-removal== 29685 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #47967: <==negation-removal== 57663 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #66451: <==negation-removal== 44477 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #83491: <==negation-removal== 82489 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #14253: <==closure== 17467 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17467: origin
                    (Bb_survivorat_s_p8)

                    ; #27229: origin
                    (Bc_survivorat_s_p8)

                    ; #45938: <==closure== 90619 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88639: <==closure== 27229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90619: origin
                    (Ba_survivorat_s_p8)

                    ; #31797: <==negation-removal== 27229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #33826: <==negation-removal== 90619 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #51509: <==negation-removal== 45938 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #54484: <==negation-removal== 14253 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #71461: <==negation-removal== 17467 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #72560: <==negation-removal== 88639 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #14253: <==closure== 17467 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17467: origin
                    (Bb_survivorat_s_p8)

                    ; #27229: origin
                    (Bc_survivorat_s_p8)

                    ; #45938: <==closure== 90619 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88639: <==closure== 27229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90619: origin
                    (Ba_survivorat_s_p8)

                    ; #31797: <==negation-removal== 27229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #33826: <==negation-removal== 90619 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #51509: <==negation-removal== 45938 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #54484: <==negation-removal== 14253 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #71461: <==negation-removal== 17467 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #72560: <==negation-removal== 88639 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #14253: <==closure== 17467 (pos)
                    (Pb_survivorat_s_p8)

                    ; #17467: origin
                    (Bb_survivorat_s_p8)

                    ; #27229: origin
                    (Bc_survivorat_s_p8)

                    ; #45938: <==closure== 90619 (pos)
                    (Pa_survivorat_s_p8)

                    ; #88639: <==closure== 27229 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90619: origin
                    (Ba_survivorat_s_p8)

                    ; #31797: <==negation-removal== 27229 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #33826: <==negation-removal== 90619 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #51509: <==negation-removal== 45938 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #54484: <==negation-removal== 14253 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #71461: <==negation-removal== 17467 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #72560: <==negation-removal== 88639 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #18140: origin
                    (Bc_survivorat_s_p9)

                    ; #50999: <==closure== 54343 (pos)
                    (Pa_survivorat_s_p9)

                    ; #54343: origin
                    (Ba_survivorat_s_p9)

                    ; #76609: <==closure== 18140 (pos)
                    (Pc_survivorat_s_p9)

                    ; #77770: <==closure== 83719 (pos)
                    (Pb_survivorat_s_p9)

                    ; #83719: origin
                    (Bb_survivorat_s_p9)

                    ; #10576: <==negation-removal== 54343 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #19447: <==negation-removal== 76609 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #27961: <==negation-removal== 83719 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45276: <==negation-removal== 50999 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46341: <==negation-removal== 77770 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #85759: <==negation-removal== 18140 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Pb_survivorat_s_p9)
                           (at_b_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #18140: origin
                    (Bc_survivorat_s_p9)

                    ; #50999: <==closure== 54343 (pos)
                    (Pa_survivorat_s_p9)

                    ; #54343: origin
                    (Ba_survivorat_s_p9)

                    ; #76609: <==closure== 18140 (pos)
                    (Pc_survivorat_s_p9)

                    ; #77770: <==closure== 83719 (pos)
                    (Pb_survivorat_s_p9)

                    ; #83719: origin
                    (Bb_survivorat_s_p9)

                    ; #10576: <==negation-removal== 54343 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #19447: <==negation-removal== 76609 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #27961: <==negation-removal== 83719 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45276: <==negation-removal== 50999 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46341: <==negation-removal== 77770 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #85759: <==negation-removal== 18140 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #18140: origin
                    (Bc_survivorat_s_p9)

                    ; #50999: <==closure== 54343 (pos)
                    (Pa_survivorat_s_p9)

                    ; #54343: origin
                    (Ba_survivorat_s_p9)

                    ; #76609: <==closure== 18140 (pos)
                    (Pc_survivorat_s_p9)

                    ; #77770: <==closure== 83719 (pos)
                    (Pb_survivorat_s_p9)

                    ; #83719: origin
                    (Bb_survivorat_s_p9)

                    ; #10576: <==negation-removal== 54343 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #19447: <==negation-removal== 76609 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #27961: <==negation-removal== 83719 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #45276: <==negation-removal== 50999 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #46341: <==negation-removal== 77770 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #85759: <==negation-removal== 18140 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #70172: origin
                    (not_at_a_p1)

                    ; #79841: origin
                    (at_a_p1)

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #70172: origin
                    (not_at_a_p1)

                    ; #80426: origin
                    (at_a_p2)

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #70172: origin
                    (not_at_a_p1)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #70172: origin
                    (not_at_a_p1)

                    ; #87739: origin
                    (at_a_p4)

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #70172: origin
                    (not_at_a_p1)

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #70172: origin
                    (not_at_a_p1)

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #70172: origin
                    (not_at_a_p1)

                    ; #89812: origin
                    (at_a_p7)

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #70172: origin
                    (not_at_a_p1)

                    ; #85694: origin
                    (at_a_p8)

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #65314: origin
                    (at_a_p9)

                    ; #70172: origin
                    (not_at_a_p1)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #79841: <==negation-removal== 70172 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #77305: origin
                    (not_at_a_p2)

                    ; #79841: origin
                    (at_a_p1)

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #77305: origin
                    (not_at_a_p2)

                    ; #80426: origin
                    (at_a_p2)

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #77305: origin
                    (not_at_a_p2)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #77305: origin
                    (not_at_a_p2)

                    ; #87739: origin
                    (at_a_p4)

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #77305: origin
                    (not_at_a_p2)

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #77305: origin
                    (not_at_a_p2)

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #77305: origin
                    (not_at_a_p2)

                    ; #89812: origin
                    (at_a_p7)

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #77305: origin
                    (not_at_a_p2)

                    ; #85694: origin
                    (at_a_p8)

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #65314: origin
                    (at_a_p9)

                    ; #77305: origin
                    (not_at_a_p2)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #80426: <==negation-removal== 77305 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #79841: origin
                    (at_a_p1)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #80426: origin
                    (at_a_p2)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #39231: origin
                    (at_a_p3)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #87739: origin
                    (at_a_p4)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #33470: origin
                    (not_at_a_p3)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #40056: origin
                    (at_a_p6)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #89812: origin
                    (at_a_p7)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #85694: origin
                    (at_a_p8)

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #33470: origin
                    (not_at_a_p3)

                    ; #65314: origin
                    (at_a_p9)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #39231: <==negation-removal== 33470 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #54700: origin
                    (not_at_a_p4)

                    ; #79841: origin
                    (at_a_p1)

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #54700: origin
                    (not_at_a_p4)

                    ; #80426: origin
                    (at_a_p2)

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #54700: origin
                    (not_at_a_p4)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #54700: origin
                    (not_at_a_p4)

                    ; #87739: origin
                    (at_a_p4)

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #54700: origin
                    (not_at_a_p4)

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #54700: origin
                    (not_at_a_p4)

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #54700: origin
                    (not_at_a_p4)

                    ; #89812: origin
                    (at_a_p7)

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #54700: origin
                    (not_at_a_p4)

                    ; #85694: origin
                    (at_a_p8)

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #54700: origin
                    (not_at_a_p4)

                    ; #65314: origin
                    (at_a_p9)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #87739: <==negation-removal== 54700 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #72987: origin
                    (not_at_a_p5)

                    ; #79841: origin
                    (at_a_p1)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #72987: origin
                    (not_at_a_p5)

                    ; #80426: origin
                    (at_a_p2)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #72987: origin
                    (not_at_a_p5)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #72987: origin
                    (not_at_a_p5)

                    ; #87739: origin
                    (at_a_p4)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #72987: origin
                    (not_at_a_p5)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #72987: origin
                    (not_at_a_p5)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #72987: origin
                    (not_at_a_p5)

                    ; #89812: origin
                    (at_a_p7)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #72987: origin
                    (not_at_a_p5)

                    ; #85694: origin
                    (at_a_p8)

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #65314: origin
                    (at_a_p9)

                    ; #72987: origin
                    (not_at_a_p5)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #14066: <==negation-removal== 72987 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #66423: origin
                    (not_at_a_p6)

                    ; #79841: origin
                    (at_a_p1)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #66423: origin
                    (not_at_a_p6)

                    ; #80426: origin
                    (at_a_p2)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #66423: origin
                    (not_at_a_p6)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #66423: origin
                    (not_at_a_p6)

                    ; #87739: origin
                    (at_a_p4)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #66423: origin
                    (not_at_a_p6)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #66423: origin
                    (not_at_a_p6)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #66423: origin
                    (not_at_a_p6)

                    ; #89812: origin
                    (at_a_p7)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #66423: origin
                    (not_at_a_p6)

                    ; #85694: origin
                    (at_a_p8)

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #65314: origin
                    (at_a_p9)

                    ; #66423: origin
                    (not_at_a_p6)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #40056: <==negation-removal== 66423 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #78566: origin
                    (not_at_a_p7)

                    ; #79841: origin
                    (at_a_p1)

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #78566: origin
                    (not_at_a_p7)

                    ; #80426: origin
                    (at_a_p2)

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #78566: origin
                    (not_at_a_p7)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #78566: origin
                    (not_at_a_p7)

                    ; #87739: origin
                    (at_a_p4)

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #78566: origin
                    (not_at_a_p7)

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #78566: origin
                    (not_at_a_p7)

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #78566: origin
                    (not_at_a_p7)

                    ; #89812: origin
                    (at_a_p7)

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #78566: origin
                    (not_at_a_p7)

                    ; #85694: origin
                    (at_a_p8)

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_a_p7))
        :effect (and
                    ; #65314: origin
                    (at_a_p9)

                    ; #78566: origin
                    (not_at_a_p7)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #89812: <==negation-removal== 78566 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #60158: origin
                    (not_at_a_p8)

                    ; #79841: origin
                    (at_a_p1)

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #60158: origin
                    (not_at_a_p8)

                    ; #80426: origin
                    (at_a_p2)

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #39231: origin
                    (at_a_p3)

                    ; #60158: origin
                    (not_at_a_p8)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #60158: origin
                    (not_at_a_p8)

                    ; #87739: origin
                    (at_a_p4)

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #14066: origin
                    (at_a_p5)

                    ; #60158: origin
                    (not_at_a_p8)

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #40056: origin
                    (at_a_p6)

                    ; #60158: origin
                    (not_at_a_p8)

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #60158: origin
                    (not_at_a_p8)

                    ; #89812: origin
                    (at_a_p7)

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #60158: origin
                    (not_at_a_p8)

                    ; #85694: origin
                    (at_a_p8)

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #60158: origin
                    (not_at_a_p8)

                    ; #65314: origin
                    (at_a_p9)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #85694: <==negation-removal== 60158 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #79841: origin
                    (at_a_p1)

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))

                    ; #70172: <==negation-removal== 79841 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #80426: origin
                    (at_a_p2)

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))

                    ; #77305: <==negation-removal== 80426 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #39231: origin
                    (at_a_p3)

                    ; #33470: <==negation-removal== 39231 (pos)
                    (not (not_at_a_p3))

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #87739: origin
                    (at_a_p4)

                    ; #54700: <==negation-removal== 87739 (pos)
                    (not (not_at_a_p4))

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #14066: origin
                    (at_a_p5)

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))

                    ; #72987: <==negation-removal== 14066 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #40056: origin
                    (at_a_p6)

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))

                    ; #66423: <==negation-removal== 40056 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #89812: origin
                    (at_a_p7)

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))

                    ; #78566: <==negation-removal== 89812 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #85694: origin
                    (at_a_p8)

                    ; #60158: <==negation-removal== 85694 (pos)
                    (not (not_at_a_p8))

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #13595: origin
                    (not_at_a_p9)

                    ; #65314: origin
                    (at_a_p9)

                    ; #13595: <==negation-removal== 65314 (pos)
                    (not (not_at_a_p9))

                    ; #65314: <==negation-removal== 13595 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #36635: origin
                    (not_at_b_p1)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #36635: origin
                    (not_at_b_p1)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #36635: origin
                    (not_at_b_p1)

                    ; #74770: origin
                    (at_b_p3)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #36635: origin
                    (not_at_b_p1)

                    ; #47442: origin
                    (at_b_p4)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #36635: origin
                    (not_at_b_p1)

                    ; #89776: origin
                    (at_b_p5)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #36635: origin
                    (not_at_b_p1)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #36635: origin
                    (not_at_b_p1)

                    ; #97503: origin
                    (at_b_p7)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #36635: origin
                    (not_at_b_p1)

                    ; #46758: origin
                    (at_b_p8)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #36635: origin
                    (not_at_b_p1)

                    ; #42250: origin
                    (at_b_p9)

                    ; #18372: <==negation-removal== 36635 (pos)
                    (not (at_b_p1))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #57994: origin
                    (not_at_b_p2)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #57994: origin
                    (not_at_b_p2)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #57994: origin
                    (not_at_b_p2)

                    ; #74770: origin
                    (at_b_p3)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #47442: origin
                    (at_b_p4)

                    ; #57994: origin
                    (not_at_b_p2)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #57994: origin
                    (not_at_b_p2)

                    ; #89776: origin
                    (at_b_p5)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #57994: origin
                    (not_at_b_p2)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #57994: origin
                    (not_at_b_p2)

                    ; #97503: origin
                    (at_b_p7)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #46758: origin
                    (at_b_p8)

                    ; #57994: origin
                    (not_at_b_p2)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #42250: origin
                    (at_b_p9)

                    ; #57994: origin
                    (not_at_b_p2)

                    ; #28741: <==negation-removal== 57994 (pos)
                    (not (at_b_p2))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #74770: origin
                    (at_b_p3)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #47442: origin
                    (at_b_p4)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #89776: origin
                    (at_b_p5)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #90230: origin
                    (not_at_b_p3)

                    ; #97503: origin
                    (at_b_p7)

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #46758: origin
                    (at_b_p8)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #42250: origin
                    (at_b_p9)

                    ; #90230: origin
                    (not_at_b_p3)

                    ; #74770: <==negation-removal== 90230 (pos)
                    (not (at_b_p3))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #73483: origin
                    (not_at_b_p4)

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #73483: origin
                    (not_at_b_p4)

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #73483: origin
                    (not_at_b_p4)

                    ; #74770: origin
                    (at_b_p3)

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #47442: origin
                    (at_b_p4)

                    ; #73483: origin
                    (not_at_b_p4)

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #73483: origin
                    (not_at_b_p4)

                    ; #89776: origin
                    (at_b_p5)

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #73483: origin
                    (not_at_b_p4)

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #73483: origin
                    (not_at_b_p4)

                    ; #97503: origin
                    (at_b_p7)

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #46758: origin
                    (at_b_p8)

                    ; #73483: origin
                    (not_at_b_p4)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #42250: origin
                    (at_b_p9)

                    ; #73483: origin
                    (not_at_b_p4)

                    ; #47442: <==negation-removal== 73483 (pos)
                    (not (at_b_p4))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #30687: origin
                    (not_at_b_p5)

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #30687: origin
                    (not_at_b_p5)

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #30687: origin
                    (not_at_b_p5)

                    ; #74770: origin
                    (at_b_p3)

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #30687: origin
                    (not_at_b_p5)

                    ; #47442: origin
                    (at_b_p4)

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #30687: origin
                    (not_at_b_p5)

                    ; #89776: origin
                    (at_b_p5)

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #30687: origin
                    (not_at_b_p5)

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #30687: origin
                    (not_at_b_p5)

                    ; #97503: origin
                    (at_b_p7)

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #30687: origin
                    (not_at_b_p5)

                    ; #46758: origin
                    (at_b_p8)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #30687: origin
                    (not_at_b_p5)

                    ; #42250: origin
                    (at_b_p9)

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))

                    ; #89776: <==negation-removal== 30687 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #57584: origin
                    (not_at_b_p6)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #57584: origin
                    (not_at_b_p6)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #57584: origin
                    (not_at_b_p6)

                    ; #74770: origin
                    (at_b_p3)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #47442: origin
                    (at_b_p4)

                    ; #57584: origin
                    (not_at_b_p6)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #57584: origin
                    (not_at_b_p6)

                    ; #89776: origin
                    (at_b_p5)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #57584: origin
                    (not_at_b_p6)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #57584: origin
                    (not_at_b_p6)

                    ; #97503: origin
                    (at_b_p7)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #46758: origin
                    (at_b_p8)

                    ; #57584: origin
                    (not_at_b_p6)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #42250: origin
                    (at_b_p9)

                    ; #57584: origin
                    (not_at_b_p6)

                    ; #21551: <==negation-removal== 57584 (pos)
                    (not (at_b_p6))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #74770: origin
                    (at_b_p3)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #47442: origin
                    (at_b_p4)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #79561: origin
                    (not_at_b_p7)

                    ; #89776: origin
                    (at_b_p5)

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #79561: origin
                    (not_at_b_p7)

                    ; #97503: origin
                    (at_b_p7)

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #46758: origin
                    (at_b_p8)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #42250: origin
                    (at_b_p9)

                    ; #79561: origin
                    (not_at_b_p7)

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))

                    ; #97503: <==negation-removal== 79561 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #18372: origin
                    (at_b_p1)

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #28741: origin
                    (at_b_p2)

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #74770: origin
                    (at_b_p3)

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #47442: origin
                    (at_b_p4)

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #89776: origin
                    (at_b_p5)

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #21551: origin
                    (at_b_p6)

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #97503: origin
                    (at_b_p7)

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #46758: origin
                    (at_b_p8)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #15834: origin
                    (not_at_b_p8)

                    ; #42250: origin
                    (at_b_p9)

                    ; #46758: <==negation-removal== 15834 (pos)
                    (not (at_b_p8))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #18372: origin
                    (at_b_p1)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #36635: <==negation-removal== 18372 (pos)
                    (not (not_at_b_p1))

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #28741: origin
                    (at_b_p2)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))

                    ; #57994: <==negation-removal== 28741 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #74770: origin
                    (at_b_p3)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))

                    ; #90230: <==negation-removal== 74770 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #47442: origin
                    (at_b_p4)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))

                    ; #73483: <==negation-removal== 47442 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #82165: origin
                    (not_at_b_p9)

                    ; #89776: origin
                    (at_b_p5)

                    ; #30687: <==negation-removal== 89776 (pos)
                    (not (not_at_b_p5))

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #21551: origin
                    (at_b_p6)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))

                    ; #57584: <==negation-removal== 21551 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #82165: origin
                    (not_at_b_p9)

                    ; #97503: origin
                    (at_b_p7)

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))

                    ; #79561: <==negation-removal== 97503 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #46758: origin
                    (at_b_p8)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #15834: <==negation-removal== 46758 (pos)
                    (not (not_at_b_p8))

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #42250: origin
                    (at_b_p9)

                    ; #82165: origin
                    (not_at_b_p9)

                    ; #42250: <==negation-removal== 82165 (pos)
                    (not (at_b_p9))

                    ; #82165: <==negation-removal== 42250 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #49956: origin
                    (at_c_p1)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #75034: origin
                    (not_at_c_p1)

                    ; #76836: origin
                    (at_c_p2)

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #24991: origin
                    (at_c_p3)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #28129: origin
                    (at_c_p4)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #75034: origin
                    (not_at_c_p1)

                    ; #85669: origin
                    (at_c_p5)

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #25900: origin
                    (at_c_p6)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #56356: origin
                    (at_c_p7)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #28006: origin
                    (at_c_p9)

                    ; #75034: origin
                    (not_at_c_p1)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #49956: <==negation-removal== 75034 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #49956: origin
                    (at_c_p1)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #73286: origin
                    (not_at_c_p2)

                    ; #76836: origin
                    (at_c_p2)

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #24991: origin
                    (at_c_p3)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #28129: origin
                    (at_c_p4)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #73286: origin
                    (not_at_c_p2)

                    ; #85669: origin
                    (at_c_p5)

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #25900: origin
                    (at_c_p6)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #56356: origin
                    (at_c_p7)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #28006: origin
                    (at_c_p9)

                    ; #73286: origin
                    (not_at_c_p2)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #76836: <==negation-removal== 73286 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #49956: origin
                    (at_c_p1)

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #76836: origin
                    (at_c_p2)

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #24991: origin
                    (at_c_p3)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #28129: origin
                    (at_c_p4)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #85669: origin
                    (at_c_p5)

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #25900: origin
                    (at_c_p6)

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #56356: origin
                    (at_c_p7)

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #16294: origin
                    (at_c_p8)

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #16262: origin
                    (not_at_c_p3)

                    ; #28006: origin
                    (at_c_p9)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #24991: <==negation-removal== 16262 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #49956: origin
                    (at_c_p1)

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #76836: origin
                    (at_c_p2)

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #24991: origin
                    (at_c_p3)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #28129: origin
                    (at_c_p4)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #85669: origin
                    (at_c_p5)

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #25900: origin
                    (at_c_p6)

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #56356: origin
                    (at_c_p7)

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #23273: origin
                    (not_at_c_p4)

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #23273: origin
                    (not_at_c_p4)

                    ; #28006: origin
                    (at_c_p9)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #28129: <==negation-removal== 23273 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #49956: origin
                    (at_c_p1)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #69355: origin
                    (not_at_c_p5)

                    ; #76836: origin
                    (at_c_p2)

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #24991: origin
                    (at_c_p3)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #28129: origin
                    (at_c_p4)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #69355: origin
                    (not_at_c_p5)

                    ; #85669: origin
                    (at_c_p5)

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #25900: origin
                    (at_c_p6)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #56356: origin
                    (at_c_p7)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #28006: origin
                    (at_c_p9)

                    ; #69355: origin
                    (not_at_c_p5)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #85669: <==negation-removal== 69355 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #31223: origin
                    (not_at_c_p6)

                    ; #49956: origin
                    (at_c_p1)

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #31223: origin
                    (not_at_c_p6)

                    ; #76836: origin
                    (at_c_p2)

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #24991: origin
                    (at_c_p3)

                    ; #31223: origin
                    (not_at_c_p6)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #28129: origin
                    (at_c_p4)

                    ; #31223: origin
                    (not_at_c_p6)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #31223: origin
                    (not_at_c_p6)

                    ; #85669: origin
                    (at_c_p5)

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (at_c_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #25900: origin
                    (at_c_p6)

                    ; #31223: origin
                    (not_at_c_p6)

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #31223: origin
                    (not_at_c_p6)

                    ; #56356: origin
                    (at_c_p7)

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #31223: origin
                    (not_at_c_p6)

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #28006: origin
                    (at_c_p9)

                    ; #31223: origin
                    (not_at_c_p6)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #25900: <==negation-removal== 31223 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #29905: origin
                    (not_at_c_p7)

                    ; #49956: origin
                    (at_c_p1)

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #29905: origin
                    (not_at_c_p7)

                    ; #76836: origin
                    (at_c_p2)

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #24991: origin
                    (at_c_p3)

                    ; #29905: origin
                    (not_at_c_p7)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #28129: origin
                    (at_c_p4)

                    ; #29905: origin
                    (not_at_c_p7)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #29905: origin
                    (not_at_c_p7)

                    ; #85669: origin
                    (at_c_p5)

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #25900: origin
                    (at_c_p6)

                    ; #29905: origin
                    (not_at_c_p7)

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #29905: origin
                    (not_at_c_p7)

                    ; #56356: origin
                    (at_c_p7)

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #29905: origin
                    (not_at_c_p7)

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #28006: origin
                    (at_c_p9)

                    ; #29905: origin
                    (not_at_c_p7)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #56356: <==negation-removal== 29905 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #49956: origin
                    (at_c_p1)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #65646: origin
                    (not_at_c_p8)

                    ; #76836: origin
                    (at_c_p2)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #24991: origin
                    (at_c_p3)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #28129: origin
                    (at_c_p4)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #65646: origin
                    (not_at_c_p8)

                    ; #85669: origin
                    (at_c_p5)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #25900: origin
                    (at_c_p6)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #56356: origin
                    (at_c_p7)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #16294: origin
                    (at_c_p8)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #28006: origin
                    (at_c_p9)

                    ; #65646: origin
                    (not_at_c_p8)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #16294: <==negation-removal== 65646 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #49956: origin
                    (at_c_p1)

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))

                    ; #75034: <==negation-removal== 49956 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #76836: origin
                    (at_c_p2)

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))

                    ; #73286: <==negation-removal== 76836 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #24991: origin
                    (at_c_p3)

                    ; #16262: <==negation-removal== 24991 (pos)
                    (not (not_at_c_p3))

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #28129: origin
                    (at_c_p4)

                    ; #23273: <==negation-removal== 28129 (pos)
                    (not (not_at_c_p4))

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #85669: origin
                    (at_c_p5)

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))

                    ; #69355: <==negation-removal== 85669 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #25900: origin
                    (at_c_p6)

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))

                    ; #31223: <==negation-removal== 25900 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #56356: origin
                    (at_c_p7)

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))

                    ; #29905: <==negation-removal== 56356 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #16294: origin
                    (at_c_p8)

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))

                    ; #65646: <==negation-removal== 16294 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #10885: origin
                    (not_at_c_p9)

                    ; #28006: origin
                    (at_c_p9)

                    ; #10885: <==negation-removal== 28006 (pos)
                    (not (not_at_c_p9))

                    ; #28006: <==negation-removal== 10885 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12649: <==closure== 97351 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #15856: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #17228: <==commonly_known== 87377 (pos)
                    (Bc_checked_p1)

                    ; #29342: <==closure== 36811 (pos)
                    (Pa_checked_p1)

                    ; #36811: <==commonly_known== 87377 (pos)
                    (Ba_checked_p1)

                    ; #53308: <==closure== 15856 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #61164: <==commonly_known== 87377 (pos)
                    (Bb_checked_p1)

                    ; #65186: <==closure== 17228 (pos)
                    (Pc_checked_p1)

                    ; #75683: <==closure== 61164 (pos)
                    (Pb_checked_p1)

                    ; #87377: origin
                    (checked_p1)

                    ; #97351: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #14670: <==negation-removal== 36811 (pos)
                    (not (Pa_not_checked_p1))

                    ; #20457: <==negation-removal== 97351 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #26002: <==negation-removal== 65186 (pos)
                    (not (Bc_not_checked_p1))

                    ; #37127: <==uncertain_firing== 97351 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #40857: <==negation-removal== 75683 (pos)
                    (not (Bb_not_checked_p1))

                    ; #44875: <==negation-removal== 87377 (pos)
                    (not (not_checked_p1))

                    ; #48756: <==negation-removal== 53308 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #52411: <==negation-removal== 17228 (pos)
                    (not (Pc_not_checked_p1))

                    ; #58503: <==uncertain_firing== 15856 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #62726: <==negation-removal== 15856 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #63570: <==negation-removal== 12649 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #73052: <==negation-removal== 29342 (pos)
                    (not (Ba_not_checked_p1))

                    ; #81923: <==unclosure== 58503 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #81957: <==unclosure== 37127 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #91048: <==negation-removal== 61164 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18845: origin
                    (checked_p2)

                    ; #21363: <==commonly_known== 18845 (pos)
                    (Ba_checked_p2)

                    ; #28439: <==closure== 89805 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #31143: <==closure== 21363 (pos)
                    (Pa_checked_p2)

                    ; #47270: <==commonly_known== 18845 (pos)
                    (Bc_checked_p2)

                    ; #50630: <==closure== 47270 (pos)
                    (Pc_checked_p2)

                    ; #59107: <==commonly_known== 18845 (pos)
                    (Bb_checked_p2)

                    ; #63898: <==closure== 79964 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #79964: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #85586: <==closure== 59107 (pos)
                    (Pb_checked_p2)

                    ; #89805: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #13595: <==negation-removal== 18845 (pos)
                    (not (not_checked_p2))

                    ; #13817: <==negation-removal== 79964 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #15854: <==negation-removal== 85586 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19021: <==negation-removal== 59107 (pos)
                    (not (Pb_not_checked_p2))

                    ; #37943: <==negation-removal== 47270 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38105: <==negation-removal== 31143 (pos)
                    (not (Ba_not_checked_p2))

                    ; #43088: <==negation-removal== 63898 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #43176: <==negation-removal== 28439 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #44083: <==negation-removal== 21363 (pos)
                    (not (Pa_not_checked_p2))

                    ; #45590: <==negation-removal== 50630 (pos)
                    (not (Bc_not_checked_p2))

                    ; #49651: <==uncertain_firing== 79964 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #51286: <==uncertain_firing== 89805 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #55286: <==unclosure== 49651 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #67595: <==unclosure== 51286 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #94191: <==negation-removal== 89805 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11437: <==commonly_known== 86894 (pos)
                    (Ba_checked_p3)

                    ; #23075: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #34837: <==closure== 11437 (pos)
                    (Pa_checked_p3)

                    ; #42609: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #57703: <==commonly_known== 86894 (pos)
                    (Bc_checked_p3)

                    ; #63280: <==closure== 23075 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #63440: <==closure== 79770 (pos)
                    (Pb_checked_p3)

                    ; #71215: <==closure== 57703 (pos)
                    (Pc_checked_p3)

                    ; #79770: <==commonly_known== 86894 (pos)
                    (Bb_checked_p3)

                    ; #82877: <==closure== 42609 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #86894: origin
                    (checked_p3)

                    ; #10897: <==negation-removal== 71215 (pos)
                    (not (Bc_not_checked_p3))

                    ; #22631: <==negation-removal== 23075 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #34227: <==negation-removal== 86894 (pos)
                    (not (not_checked_p3))

                    ; #50857: <==negation-removal== 34837 (pos)
                    (not (Ba_not_checked_p3))

                    ; #52674: <==unclosure== 82442 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #59355: <==negation-removal== 42609 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69852: <==negation-removal== 57703 (pos)
                    (not (Pc_not_checked_p3))

                    ; #72592: <==uncertain_firing== 42609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #75850: <==negation-removal== 82877 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #82123: <==negation-removal== 63440 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82442: <==uncertain_firing== 23075 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #85875: <==unclosure== 72592 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #88703: <==negation-removal== 63280 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #90384: <==negation-removal== 11437 (pos)
                    (not (Pa_not_checked_p3))

                    ; #98191: <==negation-removal== 79770 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10355: <==commonly_known== 55508 (pos)
                    (Ba_checked_p4)

                    ; #20888: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #25735: <==commonly_known== 55508 (pos)
                    (Bc_checked_p4)

                    ; #55508: origin
                    (checked_p4)

                    ; #63729: <==closure== 20888 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #63956: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #75219: <==closure== 10355 (pos)
                    (Pa_checked_p4)

                    ; #83151: <==closure== 25735 (pos)
                    (Pc_checked_p4)

                    ; #85394: <==closure== 92735 (pos)
                    (Pb_checked_p4)

                    ; #89739: <==closure== 63956 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #92735: <==commonly_known== 55508 (pos)
                    (Bb_checked_p4)

                    ; #26123: <==negation-removal== 20888 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #31430: <==negation-removal== 25735 (pos)
                    (not (Pc_not_checked_p4))

                    ; #33151: <==negation-removal== 63956 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #43927: <==negation-removal== 89739 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #45085: <==negation-removal== 10355 (pos)
                    (not (Pa_not_checked_p4))

                    ; #47126: <==unclosure== 57889 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #52564: <==negation-removal== 75219 (pos)
                    (not (Ba_not_checked_p4))

                    ; #54858: <==unclosure== 76423 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #57889: <==uncertain_firing== 20888 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #59098: <==negation-removal== 55508 (pos)
                    (not (not_checked_p4))

                    ; #63099: <==negation-removal== 92735 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68415: <==negation-removal== 83151 (pos)
                    (not (Bc_not_checked_p4))

                    ; #76423: <==uncertain_firing== 63956 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #81404: <==negation-removal== 85394 (pos)
                    (not (Bb_not_checked_p4))

                    ; #83930: <==negation-removal== 63729 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #28029: <==closure== 48982 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #29359: <==closure== 83335 (pos)
                    (Pc_checked_p5)

                    ; #44185: <==commonly_known== 50303 (pos)
                    (Bb_checked_p5)

                    ; #46601: <==closure== 77050 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #48982: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #50303: origin
                    (checked_p5)

                    ; #56741: <==closure== 44185 (pos)
                    (Pb_checked_p5)

                    ; #75469: <==closure== 84299 (pos)
                    (Pa_checked_p5)

                    ; #77050: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #83335: <==commonly_known== 50303 (pos)
                    (Bc_checked_p5)

                    ; #84299: <==commonly_known== 50303 (pos)
                    (Ba_checked_p5)

                    ; #10273: <==negation-removal== 29359 (pos)
                    (not (Bc_not_checked_p5))

                    ; #30040: <==negation-removal== 48982 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #39013: <==negation-removal== 28029 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #43522: <==negation-removal== 56741 (pos)
                    (not (Bb_not_checked_p5))

                    ; #43687: <==unclosure== 79011 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #44592: <==negation-removal== 83335 (pos)
                    (not (Pc_not_checked_p5))

                    ; #45420: <==negation-removal== 46601 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #54511: <==negation-removal== 75469 (pos)
                    (not (Ba_not_checked_p5))

                    ; #62777: <==negation-removal== 77050 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #67130: <==unclosure== 86866 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #75706: <==negation-removal== 44185 (pos)
                    (not (Pb_not_checked_p5))

                    ; #79011: <==uncertain_firing== 48982 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #83487: <==negation-removal== 84299 (pos)
                    (not (Pa_not_checked_p5))

                    ; #86560: <==negation-removal== 50303 (pos)
                    (not (not_checked_p5))

                    ; #86866: <==uncertain_firing== 77050 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12035: <==commonly_known== 80368 (pos)
                    (Bb_checked_p6)

                    ; #19951: <==closure== 12035 (pos)
                    (Pb_checked_p6)

                    ; #23514: <==closure== 84253 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #30073: <==closure== 45979 (pos)
                    (Pc_checked_p6)

                    ; #36629: <==closure== 58741 (pos)
                    (Pa_checked_p6)

                    ; #45979: <==commonly_known== 80368 (pos)
                    (Bc_checked_p6)

                    ; #58741: <==commonly_known== 80368 (pos)
                    (Ba_checked_p6)

                    ; #59448: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #71648: <==closure== 59448 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #80368: origin
                    (checked_p6)

                    ; #84253: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #11785: <==uncertain_firing== 59448 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21535: <==negation-removal== 59448 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21535: <==negation-removal== 80368 (pos)
                    (not (not_checked_p6))

                    ; #22444: <==unclosure== 11785 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #28309: <==negation-removal== 36629 (pos)
                    (not (Ba_not_checked_p6))

                    ; #35620: <==negation-removal== 19951 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37425: <==negation-removal== 12035 (pos)
                    (not (Pb_not_checked_p6))

                    ; #43280: <==negation-removal== 71648 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #65978: <==unclosure== 73927 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #66471: <==negation-removal== 58741 (pos)
                    (not (Pa_not_checked_p6))

                    ; #68076: <==negation-removal== 84253 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #73927: <==uncertain_firing== 84253 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #75121: <==negation-removal== 23514 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #90948: <==negation-removal== 30073 (pos)
                    (not (Bc_not_checked_p6))

                    ; #91062: <==negation-removal== 45979 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14310: origin
                    (checked_p7)

                    ; #14357: <==closure== 54931 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #20976: <==closure== 25583 (pos)
                    (Pb_checked_p7)

                    ; #24363: <==commonly_known== 14310 (pos)
                    (Ba_checked_p7)

                    ; #25583: <==commonly_known== 14310 (pos)
                    (Bb_checked_p7)

                    ; #37469: <==closure== 81166 (pos)
                    (Pc_checked_p7)

                    ; #43068: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #54931: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #71698: <==closure== 43068 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #81166: <==commonly_known== 14310 (pos)
                    (Bc_checked_p7)

                    ; #81613: <==closure== 24363 (pos)
                    (Pa_checked_p7)

                    ; #14112: <==negation-removal== 20976 (pos)
                    (not (Bb_not_checked_p7))

                    ; #15150: <==unclosure== 53479 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #25972: <==negation-removal== 81166 (pos)
                    (not (Pc_not_checked_p7))

                    ; #26369: <==negation-removal== 14310 (pos)
                    (not (not_checked_p7))

                    ; #34432: <==negation-removal== 54931 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #42192: <==negation-removal== 24363 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45827: <==unclosure== 76302 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #49476: <==negation-removal== 71698 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #53479: <==uncertain_firing== 43068 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #58878: <==negation-removal== 14357 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #59223: <==negation-removal== 81613 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60695: <==negation-removal== 37469 (pos)
                    (not (Bc_not_checked_p7))

                    ; #75275: <==negation-removal== 25583 (pos)
                    (not (Pb_not_checked_p7))

                    ; #76302: <==uncertain_firing== 54931 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #86383: <==negation-removal== 43068 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12900: <==closure== 25611 (pos)
                    (Pc_checked_p8)

                    ; #25611: <==commonly_known== 29885 (pos)
                    (Bc_checked_p8)

                    ; #29885: origin
                    (checked_p8)

                    ; #34741: <==closure== 87912 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #36961: <==closure== 42180 (pos)
                    (Pa_checked_p8)

                    ; #42180: <==commonly_known== 29885 (pos)
                    (Ba_checked_p8)

                    ; #44456: <==commonly_known== 29885 (pos)
                    (Bb_checked_p8)

                    ; #55278: <==closure== 56535 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #56535: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #78316: <==closure== 44456 (pos)
                    (Pb_checked_p8)

                    ; #87912: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #13539: <==negation-removal== 25611 (pos)
                    (not (Pc_not_checked_p8))

                    ; #23525: <==negation-removal== 87912 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #33813: <==unclosure== 50172 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #45739: <==negation-removal== 55278 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #49782: <==negation-removal== 42180 (pos)
                    (not (Pa_not_checked_p8))

                    ; #50172: <==uncertain_firing== 56535 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #50517: <==negation-removal== 78316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #53012: <==unclosure== 87945 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #56519: <==negation-removal== 29885 (pos)
                    (not (not_checked_p8))

                    ; #68264: <==negation-removal== 56535 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #76227: <==negation-removal== 12900 (pos)
                    (not (Bc_not_checked_p8))

                    ; #84255: <==negation-removal== 34741 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #86556: <==negation-removal== 44456 (pos)
                    (not (Pb_not_checked_p8))

                    ; #87945: <==uncertain_firing== 87912 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #90015: <==negation-removal== 36961 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17863: <==closure== 90126 (pos)
                    (Pa_checked_p9)

                    ; #23218: <==closure== 59976 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #35387: <==commonly_known== 73957 (pos)
                    (Bc_checked_p9)

                    ; #41620: <==closure== 65924 (pos)
                    (Pb_checked_p9)

                    ; #59976: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #65924: <==commonly_known== 73957 (pos)
                    (Bb_checked_p9)

                    ; #73957: origin
                    (checked_p9)

                    ; #76399: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #85667: <==closure== 76399 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #87214: <==closure== 35387 (pos)
                    (Pc_checked_p9)

                    ; #90126: <==commonly_known== 73957 (pos)
                    (Ba_checked_p9)

                    ; #20593: <==uncertain_firing== 59976 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #32965: <==negation-removal== 76399 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #45603: <==unclosure== 20593 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #47953: <==uncertain_firing== 76399 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #49202: <==negation-removal== 17863 (pos)
                    (not (Ba_not_checked_p9))

                    ; #54069: <==negation-removal== 59976 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #54660: <==negation-removal== 90126 (pos)
                    (not (Pa_not_checked_p9))

                    ; #54920: <==negation-removal== 85667 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #56337: <==negation-removal== 35387 (pos)
                    (not (Pc_not_checked_p9))

                    ; #71040: <==negation-removal== 73957 (pos)
                    (not (not_checked_p9))

                    ; #71049: <==unclosure== 47953 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #72411: <==negation-removal== 65924 (pos)
                    (not (Pb_not_checked_p9))

                    ; #74179: <==negation-removal== 41620 (pos)
                    (not (Bb_not_checked_p9))

                    ; #84364: <==negation-removal== 23218 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #86749: <==negation-removal== 87214 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #16385: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #17228: <==commonly_known== 87377 (pos)
                    (Bc_checked_p1)

                    ; #26404: <==closure== 81761 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #29342: <==closure== 36811 (pos)
                    (Pa_checked_p1)

                    ; #36811: <==commonly_known== 87377 (pos)
                    (Ba_checked_p1)

                    ; #61164: <==commonly_known== 87377 (pos)
                    (Bb_checked_p1)

                    ; #65186: <==closure== 17228 (pos)
                    (Pc_checked_p1)

                    ; #65252: <==closure== 16385 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #75683: <==closure== 61164 (pos)
                    (Pb_checked_p1)

                    ; #81761: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #87377: origin
                    (checked_p1)

                    ; #14670: <==negation-removal== 36811 (pos)
                    (not (Pa_not_checked_p1))

                    ; #15778: <==negation-removal== 81761 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #17024: <==uncertain_firing== 16385 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #26002: <==negation-removal== 65186 (pos)
                    (not (Bc_not_checked_p1))

                    ; #35607: <==uncertain_firing== 81761 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #40857: <==negation-removal== 75683 (pos)
                    (not (Bb_not_checked_p1))

                    ; #44367: <==negation-removal== 65252 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #44875: <==negation-removal== 87377 (pos)
                    (not (not_checked_p1))

                    ; #52411: <==negation-removal== 17228 (pos)
                    (not (Pc_not_checked_p1))

                    ; #53324: <==unclosure== 35607 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55136: <==negation-removal== 16385 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #67245: <==negation-removal== 26404 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #67413: <==unclosure== 17024 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #73052: <==negation-removal== 29342 (pos)
                    (not (Ba_not_checked_p1))

                    ; #91048: <==negation-removal== 61164 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18845: origin
                    (checked_p2)

                    ; #21363: <==commonly_known== 18845 (pos)
                    (Ba_checked_p2)

                    ; #31143: <==closure== 21363 (pos)
                    (Pa_checked_p2)

                    ; #45918: <==closure== 68060 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #47270: <==commonly_known== 18845 (pos)
                    (Bc_checked_p2)

                    ; #50630: <==closure== 47270 (pos)
                    (Pc_checked_p2)

                    ; #59107: <==commonly_known== 18845 (pos)
                    (Bb_checked_p2)

                    ; #67902: <==closure== 71798 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #68060: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #71798: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #85586: <==closure== 59107 (pos)
                    (Pb_checked_p2)

                    ; #13595: <==negation-removal== 18845 (pos)
                    (not (not_checked_p2))

                    ; #15854: <==negation-removal== 85586 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19021: <==negation-removal== 59107 (pos)
                    (not (Pb_not_checked_p2))

                    ; #20568: <==unclosure== 85624 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #29302: <==negation-removal== 71798 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #37943: <==negation-removal== 47270 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38105: <==negation-removal== 31143 (pos)
                    (not (Ba_not_checked_p2))

                    ; #44083: <==negation-removal== 21363 (pos)
                    (not (Pa_not_checked_p2))

                    ; #45590: <==negation-removal== 50630 (pos)
                    (not (Bc_not_checked_p2))

                    ; #45908: <==unclosure== 69155 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #58087: <==negation-removal== 67902 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #66401: <==negation-removal== 68060 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #69155: <==uncertain_firing== 68060 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #85624: <==uncertain_firing== 71798 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #91779: <==negation-removal== 45918 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11437: <==commonly_known== 86894 (pos)
                    (Ba_checked_p3)

                    ; #34837: <==closure== 11437 (pos)
                    (Pa_checked_p3)

                    ; #57703: <==commonly_known== 86894 (pos)
                    (Bc_checked_p3)

                    ; #63440: <==closure== 79770 (pos)
                    (Pb_checked_p3)

                    ; #64658: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #67034: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #71215: <==closure== 57703 (pos)
                    (Pc_checked_p3)

                    ; #79770: <==commonly_known== 86894 (pos)
                    (Bb_checked_p3)

                    ; #85175: <==closure== 67034 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #86894: origin
                    (checked_p3)

                    ; #90993: <==closure== 64658 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #10897: <==negation-removal== 71215 (pos)
                    (not (Bc_not_checked_p3))

                    ; #29185: <==negation-removal== 90993 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #34227: <==negation-removal== 86894 (pos)
                    (not (not_checked_p3))

                    ; #35057: <==uncertain_firing== 64658 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #50857: <==negation-removal== 34837 (pos)
                    (not (Ba_not_checked_p3))

                    ; #57606: <==uncertain_firing== 67034 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #62439: <==negation-removal== 85175 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #69852: <==negation-removal== 57703 (pos)
                    (not (Pc_not_checked_p3))

                    ; #71696: <==unclosure== 57606 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #82123: <==negation-removal== 63440 (pos)
                    (not (Bb_not_checked_p3))

                    ; #84194: <==negation-removal== 64658 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #85899: <==negation-removal== 67034 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #90384: <==negation-removal== 11437 (pos)
                    (not (Pa_not_checked_p3))

                    ; #91223: <==unclosure== 35057 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #98191: <==negation-removal== 79770 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10355: <==commonly_known== 55508 (pos)
                    (Ba_checked_p4)

                    ; #25735: <==commonly_known== 55508 (pos)
                    (Bc_checked_p4)

                    ; #33629: <==closure== 40441 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #37695: <==closure== 50547 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #40441: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #50547: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #55508: origin
                    (checked_p4)

                    ; #75219: <==closure== 10355 (pos)
                    (Pa_checked_p4)

                    ; #83151: <==closure== 25735 (pos)
                    (Pc_checked_p4)

                    ; #85394: <==closure== 92735 (pos)
                    (Pb_checked_p4)

                    ; #92735: <==commonly_known== 55508 (pos)
                    (Bb_checked_p4)

                    ; #11853: <==unclosure== 91133 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #31430: <==negation-removal== 25735 (pos)
                    (not (Pc_not_checked_p4))

                    ; #31829: <==uncertain_firing== 40441 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #45085: <==negation-removal== 10355 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49452: <==negation-removal== 50547 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #52564: <==negation-removal== 75219 (pos)
                    (not (Ba_not_checked_p4))

                    ; #52719: <==negation-removal== 40441 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #59098: <==negation-removal== 55508 (pos)
                    (not (not_checked_p4))

                    ; #63099: <==negation-removal== 92735 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68415: <==negation-removal== 83151 (pos)
                    (not (Bc_not_checked_p4))

                    ; #72216: <==negation-removal== 33629 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #77005: <==negation-removal== 37695 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #81404: <==negation-removal== 85394 (pos)
                    (not (Bb_not_checked_p4))

                    ; #91046: <==unclosure== 31829 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91133: <==uncertain_firing== 50547 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #18226: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #18725: <==closure== 18226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #29359: <==closure== 83335 (pos)
                    (Pc_checked_p5)

                    ; #44185: <==commonly_known== 50303 (pos)
                    (Bb_checked_p5)

                    ; #45593: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #50303: origin
                    (checked_p5)

                    ; #51921: <==closure== 45593 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #56741: <==closure== 44185 (pos)
                    (Pb_checked_p5)

                    ; #75469: <==closure== 84299 (pos)
                    (Pa_checked_p5)

                    ; #83335: <==commonly_known== 50303 (pos)
                    (Bc_checked_p5)

                    ; #84299: <==commonly_known== 50303 (pos)
                    (Ba_checked_p5)

                    ; #10273: <==negation-removal== 29359 (pos)
                    (not (Bc_not_checked_p5))

                    ; #29655: <==unclosure== 87917 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #41498: <==unclosure== 66186 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #43522: <==negation-removal== 56741 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44592: <==negation-removal== 83335 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54511: <==negation-removal== 75469 (pos)
                    (not (Ba_not_checked_p5))

                    ; #55993: <==negation-removal== 51921 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #58172: <==negation-removal== 18226 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #61877: <==negation-removal== 45593 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #66186: <==uncertain_firing== 18226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #75706: <==negation-removal== 44185 (pos)
                    (not (Pb_not_checked_p5))

                    ; #83487: <==negation-removal== 84299 (pos)
                    (not (Pa_not_checked_p5))

                    ; #84820: <==negation-removal== 18725 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #86560: <==negation-removal== 50303 (pos)
                    (not (not_checked_p5))

                    ; #87917: <==uncertain_firing== 45593 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12035: <==commonly_known== 80368 (pos)
                    (Bb_checked_p6)

                    ; #19951: <==closure== 12035 (pos)
                    (Pb_checked_p6)

                    ; #30073: <==closure== 45979 (pos)
                    (Pc_checked_p6)

                    ; #36629: <==closure== 58741 (pos)
                    (Pa_checked_p6)

                    ; #45979: <==commonly_known== 80368 (pos)
                    (Bc_checked_p6)

                    ; #51044: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #58741: <==commonly_known== 80368 (pos)
                    (Ba_checked_p6)

                    ; #62809: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #72030: <==closure== 62809 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #74401: <==closure== 51044 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #80368: origin
                    (checked_p6)

                    ; #10395: <==negation-removal== 72030 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #21535: <==negation-removal== 80368 (pos)
                    (not (not_checked_p6))

                    ; #28309: <==negation-removal== 36629 (pos)
                    (not (Ba_not_checked_p6))

                    ; #33065: <==negation-removal== 51044 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #35620: <==negation-removal== 19951 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37425: <==negation-removal== 12035 (pos)
                    (not (Pb_not_checked_p6))

                    ; #52371: <==negation-removal== 62809 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #63516: <==unclosure== 81905 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #66471: <==negation-removal== 58741 (pos)
                    (not (Pa_not_checked_p6))

                    ; #69272: <==uncertain_firing== 51044 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #81244: <==negation-removal== 74401 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #81249: <==unclosure== 69272 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #81905: <==uncertain_firing== 62809 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #90948: <==negation-removal== 30073 (pos)
                    (not (Bc_not_checked_p6))

                    ; #91062: <==negation-removal== 45979 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14310: origin
                    (checked_p7)

                    ; #20976: <==closure== 25583 (pos)
                    (Pb_checked_p7)

                    ; #24363: <==commonly_known== 14310 (pos)
                    (Ba_checked_p7)

                    ; #25583: <==commonly_known== 14310 (pos)
                    (Bb_checked_p7)

                    ; #37469: <==closure== 81166 (pos)
                    (Pc_checked_p7)

                    ; #42272: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #53354: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #81166: <==commonly_known== 14310 (pos)
                    (Bc_checked_p7)

                    ; #81613: <==closure== 24363 (pos)
                    (Pa_checked_p7)

                    ; #86513: <==closure== 53354 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #89096: <==closure== 42272 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #14112: <==negation-removal== 20976 (pos)
                    (not (Bb_not_checked_p7))

                    ; #25491: <==uncertain_firing== 53354 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #25972: <==negation-removal== 81166 (pos)
                    (not (Pc_not_checked_p7))

                    ; #26369: <==negation-removal== 14310 (pos)
                    (not (not_checked_p7))

                    ; #42192: <==negation-removal== 24363 (pos)
                    (not (Pa_not_checked_p7))

                    ; #52974: <==unclosure== 25491 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #53386: <==unclosure== 61006 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #59223: <==negation-removal== 81613 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60695: <==negation-removal== 37469 (pos)
                    (not (Bc_not_checked_p7))

                    ; #61006: <==uncertain_firing== 42272 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #61090: <==negation-removal== 86513 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #73845: <==negation-removal== 89096 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75275: <==negation-removal== 25583 (pos)
                    (not (Pb_not_checked_p7))

                    ; #85219: <==negation-removal== 42272 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #97027: <==negation-removal== 53354 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12900: <==closure== 25611 (pos)
                    (Pc_checked_p8)

                    ; #25611: <==commonly_known== 29885 (pos)
                    (Bc_checked_p8)

                    ; #29885: origin
                    (checked_p8)

                    ; #29959: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #36961: <==closure== 42180 (pos)
                    (Pa_checked_p8)

                    ; #42180: <==commonly_known== 29885 (pos)
                    (Ba_checked_p8)

                    ; #44456: <==commonly_known== 29885 (pos)
                    (Bb_checked_p8)

                    ; #58186: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #68459: <==closure== 29959 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #71143: <==closure== 58186 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #78316: <==closure== 44456 (pos)
                    (Pb_checked_p8)

                    ; #11919: <==unclosure== 76488 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #13539: <==negation-removal== 25611 (pos)
                    (not (Pc_not_checked_p8))

                    ; #15217: <==negation-removal== 29959 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #26866: <==unclosure== 54553 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36563: <==negation-removal== 68459 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #41675: <==negation-removal== 58186 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #49782: <==negation-removal== 42180 (pos)
                    (not (Pa_not_checked_p8))

                    ; #50517: <==negation-removal== 78316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #54553: <==uncertain_firing== 58186 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #55295: <==negation-removal== 71143 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #56519: <==negation-removal== 29885 (pos)
                    (not (not_checked_p8))

                    ; #76227: <==negation-removal== 12900 (pos)
                    (not (Bc_not_checked_p8))

                    ; #76488: <==uncertain_firing== 29959 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #86556: <==negation-removal== 44456 (pos)
                    (not (Pb_not_checked_p8))

                    ; #90015: <==negation-removal== 36961 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10488: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #12666: <==closure== 64116 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #17863: <==closure== 90126 (pos)
                    (Pa_checked_p9)

                    ; #35387: <==commonly_known== 73957 (pos)
                    (Bc_checked_p9)

                    ; #41620: <==closure== 65924 (pos)
                    (Pb_checked_p9)

                    ; #42623: <==closure== 10488 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #64116: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #65924: <==commonly_known== 73957 (pos)
                    (Bb_checked_p9)

                    ; #73957: origin
                    (checked_p9)

                    ; #87214: <==closure== 35387 (pos)
                    (Pc_checked_p9)

                    ; #90126: <==commonly_known== 73957 (pos)
                    (Ba_checked_p9)

                    ; #12453: <==negation-removal== 12666 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #25404: <==unclosure== 85348 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #49202: <==negation-removal== 17863 (pos)
                    (not (Ba_not_checked_p9))

                    ; #52465: <==negation-removal== 42623 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #54660: <==negation-removal== 90126 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56337: <==negation-removal== 35387 (pos)
                    (not (Pc_not_checked_p9))

                    ; #66530: <==negation-removal== 10488 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68384: <==uncertain_firing== 10488 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #71040: <==negation-removal== 73957 (pos)
                    (not (not_checked_p9))

                    ; #72411: <==negation-removal== 65924 (pos)
                    (not (Pb_not_checked_p9))

                    ; #74179: <==negation-removal== 41620 (pos)
                    (not (Bb_not_checked_p9))

                    ; #79975: <==unclosure== 68384 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #85348: <==uncertain_firing== 64116 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #86749: <==negation-removal== 87214 (pos)
                    (not (Bc_not_checked_p9))

                    ; #99604: <==negation-removal== 64116 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17228: <==commonly_known== 87377 (pos)
                    (Bc_checked_p1)

                    ; #29342: <==closure== 36811 (pos)
                    (Pa_checked_p1)

                    ; #36811: <==commonly_known== 87377 (pos)
                    (Ba_checked_p1)

                    ; #50617: <==closure== 52396 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #52396: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #61164: <==commonly_known== 87377 (pos)
                    (Bb_checked_p1)

                    ; #65186: <==closure== 17228 (pos)
                    (Pc_checked_p1)

                    ; #66286: <==closure== 86031 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #75683: <==closure== 61164 (pos)
                    (Pb_checked_p1)

                    ; #86031: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #87377: origin
                    (checked_p1)

                    ; #12793: <==negation-removal== 86031 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #14670: <==negation-removal== 36811 (pos)
                    (not (Pa_not_checked_p1))

                    ; #24027: <==negation-removal== 66286 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #26002: <==negation-removal== 65186 (pos)
                    (not (Bc_not_checked_p1))

                    ; #33741: <==unclosure== 41967 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #35801: <==unclosure== 75818 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #40857: <==negation-removal== 75683 (pos)
                    (not (Bb_not_checked_p1))

                    ; #41967: <==uncertain_firing== 86031 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #44875: <==negation-removal== 87377 (pos)
                    (not (not_checked_p1))

                    ; #50344: <==negation-removal== 52396 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #52411: <==negation-removal== 17228 (pos)
                    (not (Pc_not_checked_p1))

                    ; #73052: <==negation-removal== 29342 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75818: <==uncertain_firing== 52396 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #88680: <==negation-removal== 50617 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #91048: <==negation-removal== 61164 (pos)
                    (not (Pb_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18845: origin
                    (checked_p2)

                    ; #20668: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #21363: <==commonly_known== 18845 (pos)
                    (Ba_checked_p2)

                    ; #27440: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #31143: <==closure== 21363 (pos)
                    (Pa_checked_p2)

                    ; #47270: <==commonly_known== 18845 (pos)
                    (Bc_checked_p2)

                    ; #47486: <==closure== 20668 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #50630: <==closure== 47270 (pos)
                    (Pc_checked_p2)

                    ; #53086: <==closure== 27440 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #59107: <==commonly_known== 18845 (pos)
                    (Bb_checked_p2)

                    ; #85586: <==closure== 59107 (pos)
                    (Pb_checked_p2)

                    ; #13595: <==negation-removal== 18845 (pos)
                    (not (not_checked_p2))

                    ; #15854: <==negation-removal== 85586 (pos)
                    (not (Bb_not_checked_p2))

                    ; #19021: <==negation-removal== 59107 (pos)
                    (not (Pb_not_checked_p2))

                    ; #31419: <==negation-removal== 20668 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #36500: <==unclosure== 81185 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #37943: <==negation-removal== 47270 (pos)
                    (not (Pc_not_checked_p2))

                    ; #38105: <==negation-removal== 31143 (pos)
                    (not (Ba_not_checked_p2))

                    ; #44083: <==negation-removal== 21363 (pos)
                    (not (Pa_not_checked_p2))

                    ; #45590: <==negation-removal== 50630 (pos)
                    (not (Bc_not_checked_p2))

                    ; #50143: <==unclosure== 58305 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #51462: <==negation-removal== 47486 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #58305: <==uncertain_firing== 20668 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #59513: <==negation-removal== 53086 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #78310: <==negation-removal== 27440 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #81185: <==uncertain_firing== 27440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11437: <==commonly_known== 86894 (pos)
                    (Ba_checked_p3)

                    ; #12653: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #34837: <==closure== 11437 (pos)
                    (Pa_checked_p3)

                    ; #43634: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #57703: <==commonly_known== 86894 (pos)
                    (Bc_checked_p3)

                    ; #60689: <==closure== 12653 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #63440: <==closure== 79770 (pos)
                    (Pb_checked_p3)

                    ; #71215: <==closure== 57703 (pos)
                    (Pc_checked_p3)

                    ; #79675: <==closure== 43634 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #79770: <==commonly_known== 86894 (pos)
                    (Bb_checked_p3)

                    ; #86894: origin
                    (checked_p3)

                    ; #10897: <==negation-removal== 71215 (pos)
                    (not (Bc_not_checked_p3))

                    ; #12856: <==unclosure== 57028 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #14262: <==unclosure== 55104 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #34227: <==negation-removal== 86894 (pos)
                    (not (not_checked_p3))

                    ; #45634: <==negation-removal== 60689 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #50857: <==negation-removal== 34837 (pos)
                    (not (Ba_not_checked_p3))

                    ; #52963: <==negation-removal== 79675 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #55104: <==uncertain_firing== 12653 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #57028: <==uncertain_firing== 43634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69852: <==negation-removal== 57703 (pos)
                    (not (Pc_not_checked_p3))

                    ; #74430: <==negation-removal== 43634 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #82123: <==negation-removal== 63440 (pos)
                    (not (Bb_not_checked_p3))

                    ; #82255: <==negation-removal== 12653 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #90384: <==negation-removal== 11437 (pos)
                    (not (Pa_not_checked_p3))

                    ; #98191: <==negation-removal== 79770 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10355: <==commonly_known== 55508 (pos)
                    (Ba_checked_p4)

                    ; #25735: <==commonly_known== 55508 (pos)
                    (Bc_checked_p4)

                    ; #34542: <==closure== 70634 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #55433: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #55508: origin
                    (checked_p4)

                    ; #70063: <==closure== 55433 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #70634: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #75219: <==closure== 10355 (pos)
                    (Pa_checked_p4)

                    ; #83151: <==closure== 25735 (pos)
                    (Pc_checked_p4)

                    ; #85394: <==closure== 92735 (pos)
                    (Pb_checked_p4)

                    ; #92735: <==commonly_known== 55508 (pos)
                    (Bb_checked_p4)

                    ; #20698: <==negation-removal== 55433 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #23587: <==uncertain_firing== 70634 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #27697: <==negation-removal== 70063 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #30075: <==negation-removal== 34542 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #31430: <==negation-removal== 25735 (pos)
                    (not (Pc_not_checked_p4))

                    ; #34905: <==unclosure== 63659 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #45085: <==negation-removal== 10355 (pos)
                    (not (Pa_not_checked_p4))

                    ; #48048: <==unclosure== 23587 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #52564: <==negation-removal== 75219 (pos)
                    (not (Ba_not_checked_p4))

                    ; #59098: <==negation-removal== 55508 (pos)
                    (not (not_checked_p4))

                    ; #61025: <==negation-removal== 70634 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #63099: <==negation-removal== 92735 (pos)
                    (not (Pb_not_checked_p4))

                    ; #63659: <==uncertain_firing== 55433 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #68415: <==negation-removal== 83151 (pos)
                    (not (Bc_not_checked_p4))

                    ; #81404: <==negation-removal== 85394 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #29359: <==closure== 83335 (pos)
                    (Pc_checked_p5)

                    ; #34748: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #39956: <==closure== 34748 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #44185: <==commonly_known== 50303 (pos)
                    (Bb_checked_p5)

                    ; #50303: origin
                    (checked_p5)

                    ; #51731: <==closure== 52855 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #52855: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #56741: <==closure== 44185 (pos)
                    (Pb_checked_p5)

                    ; #75469: <==closure== 84299 (pos)
                    (Pa_checked_p5)

                    ; #83335: <==commonly_known== 50303 (pos)
                    (Bc_checked_p5)

                    ; #84299: <==commonly_known== 50303 (pos)
                    (Ba_checked_p5)

                    ; #10273: <==negation-removal== 29359 (pos)
                    (not (Bc_not_checked_p5))

                    ; #11975: <==negation-removal== 51731 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #15108: <==uncertain_firing== 52855 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #24043: <==unclosure== 15108 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #25401: <==negation-removal== 52855 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #36237: <==negation-removal== 39956 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #43522: <==negation-removal== 56741 (pos)
                    (not (Bb_not_checked_p5))

                    ; #44592: <==negation-removal== 83335 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54511: <==negation-removal== 75469 (pos)
                    (not (Ba_not_checked_p5))

                    ; #64042: <==negation-removal== 34748 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #71424: <==uncertain_firing== 34748 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #75706: <==negation-removal== 44185 (pos)
                    (not (Pb_not_checked_p5))

                    ; #83487: <==negation-removal== 84299 (pos)
                    (not (Pa_not_checked_p5))

                    ; #86034: <==unclosure== 71424 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #86560: <==negation-removal== 50303 (pos)
                    (not (not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10629: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #12035: <==commonly_known== 80368 (pos)
                    (Bb_checked_p6)

                    ; #19951: <==closure== 12035 (pos)
                    (Pb_checked_p6)

                    ; #22898: <==closure== 52173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #30073: <==closure== 45979 (pos)
                    (Pc_checked_p6)

                    ; #36629: <==closure== 58741 (pos)
                    (Pa_checked_p6)

                    ; #45979: <==commonly_known== 80368 (pos)
                    (Bc_checked_p6)

                    ; #52173: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #58741: <==commonly_known== 80368 (pos)
                    (Ba_checked_p6)

                    ; #80368: origin
                    (checked_p6)

                    ; #88831: <==closure== 10629 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #13180: <==uncertain_firing== 52173 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #16595: <==unclosure== 55603 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #21535: <==negation-removal== 80368 (pos)
                    (not (not_checked_p6))

                    ; #28309: <==negation-removal== 36629 (pos)
                    (not (Ba_not_checked_p6))

                    ; #35620: <==negation-removal== 19951 (pos)
                    (not (Bb_not_checked_p6))

                    ; #37425: <==negation-removal== 12035 (pos)
                    (not (Pb_not_checked_p6))

                    ; #55603: <==uncertain_firing== 10629 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #66471: <==negation-removal== 58741 (pos)
                    (not (Pa_not_checked_p6))

                    ; #70670: <==negation-removal== 88831 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #76844: <==unclosure== 13180 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #76909: <==negation-removal== 52173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #87908: <==negation-removal== 10629 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #89449: <==negation-removal== 22898 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #90948: <==negation-removal== 30073 (pos)
                    (not (Bc_not_checked_p6))

                    ; #91062: <==negation-removal== 45979 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #14310: origin
                    (checked_p7)

                    ; #20976: <==closure== 25583 (pos)
                    (Pb_checked_p7)

                    ; #24363: <==commonly_known== 14310 (pos)
                    (Ba_checked_p7)

                    ; #25583: <==commonly_known== 14310 (pos)
                    (Bb_checked_p7)

                    ; #37469: <==closure== 81166 (pos)
                    (Pc_checked_p7)

                    ; #41250: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #42089: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #50184: <==closure== 41250 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #50533: <==closure== 42089 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #81166: <==commonly_known== 14310 (pos)
                    (Bc_checked_p7)

                    ; #81613: <==closure== 24363 (pos)
                    (Pa_checked_p7)

                    ; #14112: <==negation-removal== 20976 (pos)
                    (not (Bb_not_checked_p7))

                    ; #16095: <==negation-removal== 42089 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #18232: <==negation-removal== 50533 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #22645: <==uncertain_firing== 41250 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #24990: <==negation-removal== 50184 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #25972: <==negation-removal== 81166 (pos)
                    (not (Pc_not_checked_p7))

                    ; #26369: <==negation-removal== 14310 (pos)
                    (not (not_checked_p7))

                    ; #42192: <==negation-removal== 24363 (pos)
                    (not (Pa_not_checked_p7))

                    ; #45735: <==uncertain_firing== 42089 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #59223: <==negation-removal== 81613 (pos)
                    (not (Ba_not_checked_p7))

                    ; #60695: <==negation-removal== 37469 (pos)
                    (not (Bc_not_checked_p7))

                    ; #67996: <==unclosure== 45735 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #74723: <==negation-removal== 41250 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #75275: <==negation-removal== 25583 (pos)
                    (not (Pb_not_checked_p7))

                    ; #87057: <==unclosure== 22645 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12900: <==closure== 25611 (pos)
                    (Pc_checked_p8)

                    ; #23844: <==closure== 59017 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #25611: <==commonly_known== 29885 (pos)
                    (Bc_checked_p8)

                    ; #29885: origin
                    (checked_p8)

                    ; #34373: <==closure== 87511 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #36961: <==closure== 42180 (pos)
                    (Pa_checked_p8)

                    ; #42180: <==commonly_known== 29885 (pos)
                    (Ba_checked_p8)

                    ; #44456: <==commonly_known== 29885 (pos)
                    (Bb_checked_p8)

                    ; #59017: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #78316: <==closure== 44456 (pos)
                    (Pb_checked_p8)

                    ; #87511: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #13539: <==negation-removal== 25611 (pos)
                    (not (Pc_not_checked_p8))

                    ; #49782: <==negation-removal== 42180 (pos)
                    (not (Pa_not_checked_p8))

                    ; #50517: <==negation-removal== 78316 (pos)
                    (not (Bb_not_checked_p8))

                    ; #51259: <==negation-removal== 59017 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #56519: <==negation-removal== 29885 (pos)
                    (not (not_checked_p8))

                    ; #66245: <==uncertain_firing== 87511 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #72123: <==negation-removal== 87511 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #75909: <==negation-removal== 34373 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #76227: <==negation-removal== 12900 (pos)
                    (not (Bc_not_checked_p8))

                    ; #79861: <==unclosure== 87621 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86116: <==negation-removal== 23844 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #86556: <==negation-removal== 44456 (pos)
                    (not (Pb_not_checked_p8))

                    ; #86701: <==unclosure== 66245 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #87621: <==uncertain_firing== 59017 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90015: <==negation-removal== 36961 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17863: <==closure== 90126 (pos)
                    (Pa_checked_p9)

                    ; #29973: <==closure== 51101 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #35387: <==commonly_known== 73957 (pos)
                    (Bc_checked_p9)

                    ; #41620: <==closure== 65924 (pos)
                    (Pb_checked_p9)

                    ; #51101: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64054: <==closure== 74882 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #65924: <==commonly_known== 73957 (pos)
                    (Bb_checked_p9)

                    ; #73957: origin
                    (checked_p9)

                    ; #74882: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #87214: <==closure== 35387 (pos)
                    (Pc_checked_p9)

                    ; #90126: <==commonly_known== 73957 (pos)
                    (Ba_checked_p9)

                    ; #21611: <==uncertain_firing== 51101 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #35188: <==negation-removal== 64054 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43109: <==negation-removal== 51101 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #49202: <==negation-removal== 17863 (pos)
                    (not (Ba_not_checked_p9))

                    ; #54660: <==negation-removal== 90126 (pos)
                    (not (Pa_not_checked_p9))

                    ; #56337: <==negation-removal== 35387 (pos)
                    (not (Pc_not_checked_p9))

                    ; #69166: <==uncertain_firing== 74882 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #71040: <==negation-removal== 73957 (pos)
                    (not (not_checked_p9))

                    ; #72411: <==negation-removal== 65924 (pos)
                    (not (Pb_not_checked_p9))

                    ; #74179: <==negation-removal== 41620 (pos)
                    (not (Bb_not_checked_p9))

                    ; #82895: <==unclosure== 21611 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #86749: <==negation-removal== 87214 (pos)
                    (not (Bc_not_checked_p9))

                    ; #86820: <==negation-removal== 29973 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #87910: <==negation-removal== 74882 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #90161: <==unclosure== 69166 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))))

)