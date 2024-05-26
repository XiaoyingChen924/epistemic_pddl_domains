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
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #33731: origin
                    (Ba_survivorat_s_p1)

                    ; #70454: origin
                    (Bc_survivorat_s_p1)

                    ; #76116: origin
                    (Bb_survivorat_s_p1)

                    ; #78754: <==closure== 33731 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79603: <==closure== 76116 (pos)
                    (Pb_survivorat_s_p1)

                    ; #83790: <==closure== 70454 (pos)
                    (Pc_survivorat_s_p1)

                    ; #11447: <==negation-removal== 83790 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #24129: <==negation-removal== 78754 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #35571: <==negation-removal== 33731 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #46473: <==negation-removal== 76116 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #53310: <==negation-removal== 70454 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #74418: <==negation-removal== 79603 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (at_b_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #33731: origin
                    (Ba_survivorat_s_p1)

                    ; #70454: origin
                    (Bc_survivorat_s_p1)

                    ; #76116: origin
                    (Bb_survivorat_s_p1)

                    ; #78754: <==closure== 33731 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79603: <==closure== 76116 (pos)
                    (Pb_survivorat_s_p1)

                    ; #83790: <==closure== 70454 (pos)
                    (Pc_survivorat_s_p1)

                    ; #11447: <==negation-removal== 83790 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #24129: <==negation-removal== 78754 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #35571: <==negation-removal== 33731 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #46473: <==negation-removal== 76116 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #53310: <==negation-removal== 70454 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #74418: <==negation-removal== 79603 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Pc_survivorat_s_p1)
                           (at_c_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #33731: origin
                    (Ba_survivorat_s_p1)

                    ; #70454: origin
                    (Bc_survivorat_s_p1)

                    ; #76116: origin
                    (Bb_survivorat_s_p1)

                    ; #78754: <==closure== 33731 (pos)
                    (Pa_survivorat_s_p1)

                    ; #79603: <==closure== 76116 (pos)
                    (Pb_survivorat_s_p1)

                    ; #83790: <==closure== 70454 (pos)
                    (Pc_survivorat_s_p1)

                    ; #11447: <==negation-removal== 83790 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #24129: <==negation-removal== 78754 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #35571: <==negation-removal== 33731 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #46473: <==negation-removal== 76116 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #53310: <==negation-removal== 70454 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #74418: <==negation-removal== 79603 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #43872: origin
                    (Bc_survivorat_s_p2)

                    ; #56700: origin
                    (Ba_survivorat_s_p2)

                    ; #75347: <==closure== 43872 (pos)
                    (Pc_survivorat_s_p2)

                    ; #77133: origin
                    (Bb_survivorat_s_p2)

                    ; #80368: <==closure== 56700 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91012: <==closure== 77133 (pos)
                    (Pb_survivorat_s_p2)

                    ; #44281: <==negation-removal== 75347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #69540: <==negation-removal== 56700 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #78151: <==negation-removal== 43872 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #78423: <==negation-removal== 77133 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #85938: <==negation-removal== 80368 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87228: <==negation-removal== 91012 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #43872: origin
                    (Bc_survivorat_s_p2)

                    ; #56700: origin
                    (Ba_survivorat_s_p2)

                    ; #75347: <==closure== 43872 (pos)
                    (Pc_survivorat_s_p2)

                    ; #77133: origin
                    (Bb_survivorat_s_p2)

                    ; #80368: <==closure== 56700 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91012: <==closure== 77133 (pos)
                    (Pb_survivorat_s_p2)

                    ; #44281: <==negation-removal== 75347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #69540: <==negation-removal== 56700 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #78151: <==negation-removal== 43872 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #78423: <==negation-removal== 77133 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #85938: <==negation-removal== 80368 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87228: <==negation-removal== 91012 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #43872: origin
                    (Bc_survivorat_s_p2)

                    ; #56700: origin
                    (Ba_survivorat_s_p2)

                    ; #75347: <==closure== 43872 (pos)
                    (Pc_survivorat_s_p2)

                    ; #77133: origin
                    (Bb_survivorat_s_p2)

                    ; #80368: <==closure== 56700 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91012: <==closure== 77133 (pos)
                    (Pb_survivorat_s_p2)

                    ; #44281: <==negation-removal== 75347 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #69540: <==negation-removal== 56700 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #78151: <==negation-removal== 43872 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #78423: <==negation-removal== 77133 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #85938: <==negation-removal== 80368 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #87228: <==negation-removal== 91012 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #19752: <==closure== 89955 (pos)
                    (Pb_survivorat_s_p3)

                    ; #47400: origin
                    (Bc_survivorat_s_p3)

                    ; #49756: <==closure== 70507 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59075: <==closure== 47400 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70507: origin
                    (Ba_survivorat_s_p3)

                    ; #89955: origin
                    (Bb_survivorat_s_p3)

                    ; #11707: <==negation-removal== 89955 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #12516: <==negation-removal== 49756 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #14066: <==negation-removal== 19752 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #15009: <==negation-removal== 47400 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #37705: <==negation-removal== 59075 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #50724: <==negation-removal== 70507 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #19752: <==closure== 89955 (pos)
                    (Pb_survivorat_s_p3)

                    ; #47400: origin
                    (Bc_survivorat_s_p3)

                    ; #49756: <==closure== 70507 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59075: <==closure== 47400 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70507: origin
                    (Ba_survivorat_s_p3)

                    ; #89955: origin
                    (Bb_survivorat_s_p3)

                    ; #11707: <==negation-removal== 89955 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #12516: <==negation-removal== 49756 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #14066: <==negation-removal== 19752 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #15009: <==negation-removal== 47400 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #37705: <==negation-removal== 59075 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #50724: <==negation-removal== 70507 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #19752: <==closure== 89955 (pos)
                    (Pb_survivorat_s_p3)

                    ; #47400: origin
                    (Bc_survivorat_s_p3)

                    ; #49756: <==closure== 70507 (pos)
                    (Pa_survivorat_s_p3)

                    ; #59075: <==closure== 47400 (pos)
                    (Pc_survivorat_s_p3)

                    ; #70507: origin
                    (Ba_survivorat_s_p3)

                    ; #89955: origin
                    (Bb_survivorat_s_p3)

                    ; #11707: <==negation-removal== 89955 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #12516: <==negation-removal== 49756 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #14066: <==negation-removal== 19752 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #15009: <==negation-removal== 47400 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #37705: <==negation-removal== 59075 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #50724: <==negation-removal== 70507 (pos)
                    (not (Pa_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #22111: origin
                    (Ba_survivorat_s_p4)

                    ; #31404: origin
                    (Bc_survivorat_s_p4)

                    ; #42581: <==closure== 85991 (pos)
                    (Pb_survivorat_s_p4)

                    ; #66887: <==closure== 31404 (pos)
                    (Pc_survivorat_s_p4)

                    ; #82814: <==closure== 22111 (pos)
                    (Pa_survivorat_s_p4)

                    ; #85991: origin
                    (Bb_survivorat_s_p4)

                    ; #15891: <==negation-removal== 85991 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #28390: <==negation-removal== 66887 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33274: <==negation-removal== 42581 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #35118: <==negation-removal== 22111 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #58227: <==negation-removal== 82814 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87534: <==negation-removal== 31404 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #22111: origin
                    (Ba_survivorat_s_p4)

                    ; #31404: origin
                    (Bc_survivorat_s_p4)

                    ; #42581: <==closure== 85991 (pos)
                    (Pb_survivorat_s_p4)

                    ; #66887: <==closure== 31404 (pos)
                    (Pc_survivorat_s_p4)

                    ; #82814: <==closure== 22111 (pos)
                    (Pa_survivorat_s_p4)

                    ; #85991: origin
                    (Bb_survivorat_s_p4)

                    ; #15891: <==negation-removal== 85991 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #28390: <==negation-removal== 66887 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33274: <==negation-removal== 42581 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #35118: <==negation-removal== 22111 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #58227: <==negation-removal== 82814 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87534: <==negation-removal== 31404 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #22111: origin
                    (Ba_survivorat_s_p4)

                    ; #31404: origin
                    (Bc_survivorat_s_p4)

                    ; #42581: <==closure== 85991 (pos)
                    (Pb_survivorat_s_p4)

                    ; #66887: <==closure== 31404 (pos)
                    (Pc_survivorat_s_p4)

                    ; #82814: <==closure== 22111 (pos)
                    (Pa_survivorat_s_p4)

                    ; #85991: origin
                    (Bb_survivorat_s_p4)

                    ; #15891: <==negation-removal== 85991 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #28390: <==negation-removal== 66887 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #33274: <==negation-removal== 42581 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #35118: <==negation-removal== 22111 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #58227: <==negation-removal== 82814 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #87534: <==negation-removal== 31404 (pos)
                    (not (Pc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #15518: origin
                    (Bb_survivorat_s_p5)

                    ; #18960: origin
                    (Ba_survivorat_s_p5)

                    ; #49679: <==closure== 76222 (pos)
                    (Pc_survivorat_s_p5)

                    ; #68631: <==closure== 18960 (pos)
                    (Pa_survivorat_s_p5)

                    ; #76222: origin
                    (Bc_survivorat_s_p5)

                    ; #82136: <==closure== 15518 (pos)
                    (Pb_survivorat_s_p5)

                    ; #20532: <==negation-removal== 49679 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43757: <==negation-removal== 18960 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #47365: <==negation-removal== 76222 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #67729: <==negation-removal== 68631 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83197: <==negation-removal== 15518 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #87211: <==negation-removal== 82136 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #15518: origin
                    (Bb_survivorat_s_p5)

                    ; #18960: origin
                    (Ba_survivorat_s_p5)

                    ; #49679: <==closure== 76222 (pos)
                    (Pc_survivorat_s_p5)

                    ; #68631: <==closure== 18960 (pos)
                    (Pa_survivorat_s_p5)

                    ; #76222: origin
                    (Bc_survivorat_s_p5)

                    ; #82136: <==closure== 15518 (pos)
                    (Pb_survivorat_s_p5)

                    ; #20532: <==negation-removal== 49679 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43757: <==negation-removal== 18960 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #47365: <==negation-removal== 76222 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #67729: <==negation-removal== 68631 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83197: <==negation-removal== 15518 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #87211: <==negation-removal== 82136 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #15518: origin
                    (Bb_survivorat_s_p5)

                    ; #18960: origin
                    (Ba_survivorat_s_p5)

                    ; #49679: <==closure== 76222 (pos)
                    (Pc_survivorat_s_p5)

                    ; #68631: <==closure== 18960 (pos)
                    (Pa_survivorat_s_p5)

                    ; #76222: origin
                    (Bc_survivorat_s_p5)

                    ; #82136: <==closure== 15518 (pos)
                    (Pb_survivorat_s_p5)

                    ; #20532: <==negation-removal== 49679 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #43757: <==negation-removal== 18960 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #47365: <==negation-removal== 76222 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #67729: <==negation-removal== 68631 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #83197: <==negation-removal== 15518 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #87211: <==negation-removal== 82136 (pos)
                    (not (Bb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (at_a_p6)
                           (Ba_survivorat_s_p6))
        :effect (and
                    ; #29270: origin
                    (Bb_survivorat_s_p6)

                    ; #34743: <==closure== 29270 (pos)
                    (Pb_survivorat_s_p6)

                    ; #49955: <==closure== 85372 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62469: <==closure== 70755 (pos)
                    (Pa_survivorat_s_p6)

                    ; #70755: origin
                    (Ba_survivorat_s_p6)

                    ; #85372: origin
                    (Bc_survivorat_s_p6)

                    ; #30290: <==negation-removal== 62469 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #45275: <==negation-removal== 49955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #52717: <==negation-removal== 34743 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69969: <==negation-removal== 85372 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90628: <==negation-removal== 29270 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #92187: <==negation-removal== 70755 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #29270: origin
                    (Bb_survivorat_s_p6)

                    ; #34743: <==closure== 29270 (pos)
                    (Pb_survivorat_s_p6)

                    ; #49955: <==closure== 85372 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62469: <==closure== 70755 (pos)
                    (Pa_survivorat_s_p6)

                    ; #70755: origin
                    (Ba_survivorat_s_p6)

                    ; #85372: origin
                    (Bc_survivorat_s_p6)

                    ; #30290: <==negation-removal== 62469 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #45275: <==negation-removal== 49955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #52717: <==negation-removal== 34743 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69969: <==negation-removal== 85372 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90628: <==negation-removal== 29270 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #92187: <==negation-removal== 70755 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #29270: origin
                    (Bb_survivorat_s_p6)

                    ; #34743: <==closure== 29270 (pos)
                    (Pb_survivorat_s_p6)

                    ; #49955: <==closure== 85372 (pos)
                    (Pc_survivorat_s_p6)

                    ; #62469: <==closure== 70755 (pos)
                    (Pa_survivorat_s_p6)

                    ; #70755: origin
                    (Ba_survivorat_s_p6)

                    ; #85372: origin
                    (Bc_survivorat_s_p6)

                    ; #30290: <==negation-removal== 62469 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #45275: <==negation-removal== 49955 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #52717: <==negation-removal== 34743 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #69969: <==negation-removal== 85372 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #90628: <==negation-removal== 29270 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #92187: <==negation-removal== 70755 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #18357: origin
                    (Ba_survivorat_s_p7)

                    ; #19426: origin
                    (Bb_survivorat_s_p7)

                    ; #31973: <==closure== 59410 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46447: <==closure== 18357 (pos)
                    (Pa_survivorat_s_p7)

                    ; #55218: <==closure== 19426 (pos)
                    (Pb_survivorat_s_p7)

                    ; #59410: origin
                    (Bc_survivorat_s_p7)

                    ; #27921: <==negation-removal== 46447 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #30164: <==negation-removal== 18357 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #46866: <==negation-removal== 59410 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #52869: <==negation-removal== 19426 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #83415: <==negation-removal== 31973 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #85807: <==negation-removal== 55218 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #18357: origin
                    (Ba_survivorat_s_p7)

                    ; #19426: origin
                    (Bb_survivorat_s_p7)

                    ; #31973: <==closure== 59410 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46447: <==closure== 18357 (pos)
                    (Pa_survivorat_s_p7)

                    ; #55218: <==closure== 19426 (pos)
                    (Pb_survivorat_s_p7)

                    ; #59410: origin
                    (Bc_survivorat_s_p7)

                    ; #27921: <==negation-removal== 46447 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #30164: <==negation-removal== 18357 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #46866: <==negation-removal== 59410 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #52869: <==negation-removal== 19426 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #83415: <==negation-removal== 31973 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #85807: <==negation-removal== 55218 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (at_c_p7)
                           (Pc_survivorat_s_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #18357: origin
                    (Ba_survivorat_s_p7)

                    ; #19426: origin
                    (Bb_survivorat_s_p7)

                    ; #31973: <==closure== 59410 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46447: <==closure== 18357 (pos)
                    (Pa_survivorat_s_p7)

                    ; #55218: <==closure== 19426 (pos)
                    (Pb_survivorat_s_p7)

                    ; #59410: origin
                    (Bc_survivorat_s_p7)

                    ; #27921: <==negation-removal== 46447 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #30164: <==negation-removal== 18357 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #46866: <==negation-removal== 59410 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #52869: <==negation-removal== 19426 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #83415: <==negation-removal== 31973 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #85807: <==negation-removal== 55218 (pos)
                    (not (Bb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #27177: origin
                    (Bb_survivorat_s_p8)

                    ; #43448: <==closure== 27177 (pos)
                    (Pb_survivorat_s_p8)

                    ; #45005: origin
                    (Ba_survivorat_s_p8)

                    ; #61698: <==closure== 83341 (pos)
                    (Pc_survivorat_s_p8)

                    ; #65354: <==closure== 45005 (pos)
                    (Pa_survivorat_s_p8)

                    ; #83341: origin
                    (Bc_survivorat_s_p8)

                    ; #23009: <==negation-removal== 65354 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #29195: <==negation-removal== 61698 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #35266: <==negation-removal== 43448 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #37234: <==negation-removal== 83341 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66602: <==negation-removal== 45005 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #81724: <==negation-removal== 27177 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #27177: origin
                    (Bb_survivorat_s_p8)

                    ; #43448: <==closure== 27177 (pos)
                    (Pb_survivorat_s_p8)

                    ; #45005: origin
                    (Ba_survivorat_s_p8)

                    ; #61698: <==closure== 83341 (pos)
                    (Pc_survivorat_s_p8)

                    ; #65354: <==closure== 45005 (pos)
                    (Pa_survivorat_s_p8)

                    ; #83341: origin
                    (Bc_survivorat_s_p8)

                    ; #23009: <==negation-removal== 65354 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #29195: <==negation-removal== 61698 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #35266: <==negation-removal== 43448 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #37234: <==negation-removal== 83341 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66602: <==negation-removal== 45005 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #81724: <==negation-removal== 27177 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #27177: origin
                    (Bb_survivorat_s_p8)

                    ; #43448: <==closure== 27177 (pos)
                    (Pb_survivorat_s_p8)

                    ; #45005: origin
                    (Ba_survivorat_s_p8)

                    ; #61698: <==closure== 83341 (pos)
                    (Pc_survivorat_s_p8)

                    ; #65354: <==closure== 45005 (pos)
                    (Pa_survivorat_s_p8)

                    ; #83341: origin
                    (Bc_survivorat_s_p8)

                    ; #23009: <==negation-removal== 65354 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #29195: <==negation-removal== 61698 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #35266: <==negation-removal== 43448 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #37234: <==negation-removal== 83341 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #66602: <==negation-removal== 45005 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #81724: <==negation-removal== 27177 (pos)
                    (not (Pb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #29824: <==closure== 69809 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51358: origin
                    (Bb_survivorat_s_p9)

                    ; #55484: <==closure== 64130 (pos)
                    (Pc_survivorat_s_p9)

                    ; #62515: <==closure== 51358 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64130: origin
                    (Bc_survivorat_s_p9)

                    ; #69809: origin
                    (Ba_survivorat_s_p9)

                    ; #36991: <==negation-removal== 29824 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #39330: <==negation-removal== 69809 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #39922: <==negation-removal== 55484 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #42225: <==negation-removal== 62515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #42861: <==negation-removal== 51358 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63955: <==negation-removal== 64130 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #29824: <==closure== 69809 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51358: origin
                    (Bb_survivorat_s_p9)

                    ; #55484: <==closure== 64130 (pos)
                    (Pc_survivorat_s_p9)

                    ; #62515: <==closure== 51358 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64130: origin
                    (Bc_survivorat_s_p9)

                    ; #69809: origin
                    (Ba_survivorat_s_p9)

                    ; #36991: <==negation-removal== 29824 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #39330: <==negation-removal== 69809 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #39922: <==negation-removal== 55484 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #42225: <==negation-removal== 62515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #42861: <==negation-removal== 51358 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63955: <==negation-removal== 64130 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #29824: <==closure== 69809 (pos)
                    (Pa_survivorat_s_p9)

                    ; #51358: origin
                    (Bb_survivorat_s_p9)

                    ; #55484: <==closure== 64130 (pos)
                    (Pc_survivorat_s_p9)

                    ; #62515: <==closure== 51358 (pos)
                    (Pb_survivorat_s_p9)

                    ; #64130: origin
                    (Bc_survivorat_s_p9)

                    ; #69809: origin
                    (Ba_survivorat_s_p9)

                    ; #36991: <==negation-removal== 29824 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #39330: <==negation-removal== 69809 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #39922: <==negation-removal== 55484 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #42225: <==negation-removal== 62515 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #42861: <==negation-removal== 51358 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #63955: <==negation-removal== 64130 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #67152: origin
                    (not_at_a_p1)

                    ; #85753: origin
                    (at_a_p1)

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #67152: origin
                    (not_at_a_p1)

                    ; #72108: origin
                    (at_a_p2)

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #53643: origin
                    (at_a_p3)

                    ; #67152: origin
                    (not_at_a_p1)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #45062: origin
                    (at_a_p4)

                    ; #67152: origin
                    (not_at_a_p1)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #51103: origin
                    (at_a_p5)

                    ; #67152: origin
                    (not_at_a_p1)

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #67152: origin
                    (not_at_a_p1)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #48124: origin
                    (at_a_p7)

                    ; #67152: origin
                    (not_at_a_p1)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #64297: origin
                    (at_a_p8)

                    ; #67152: origin
                    (not_at_a_p1)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #35235: origin
                    (at_a_p9)

                    ; #67152: origin
                    (not_at_a_p1)

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))

                    ; #85753: <==negation-removal== 67152 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #62429: origin
                    (not_at_a_p2)

                    ; #85753: origin
                    (at_a_p1)

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #62429: origin
                    (not_at_a_p2)

                    ; #72108: origin
                    (at_a_p2)

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #53643: origin
                    (at_a_p3)

                    ; #62429: origin
                    (not_at_a_p2)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #45062: origin
                    (at_a_p4)

                    ; #62429: origin
                    (not_at_a_p2)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #51103: origin
                    (at_a_p5)

                    ; #62429: origin
                    (not_at_a_p2)

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #62429: origin
                    (not_at_a_p2)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #48124: origin
                    (at_a_p7)

                    ; #62429: origin
                    (not_at_a_p2)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #62429: origin
                    (not_at_a_p2)

                    ; #64297: origin
                    (at_a_p8)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #35235: origin
                    (at_a_p9)

                    ; #62429: origin
                    (not_at_a_p2)

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))

                    ; #72108: <==negation-removal== 62429 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #85753: origin
                    (at_a_p1)

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #72108: origin
                    (at_a_p2)

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #53643: origin
                    (at_a_p3)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #45062: origin
                    (at_a_p4)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #51103: origin
                    (at_a_p5)

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #48124: origin
                    (at_a_p7)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #64297: origin
                    (at_a_p8)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #18416: origin
                    (not_at_a_p3)

                    ; #35235: origin
                    (at_a_p9)

                    ; #53643: <==negation-removal== 18416 (pos)
                    (not (at_a_p3))

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #85753: origin
                    (at_a_p1)

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #72108: origin
                    (at_a_p2)

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #53643: origin
                    (at_a_p3)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #45062: origin
                    (at_a_p4)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #51103: origin
                    (at_a_p5)

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #48124: origin
                    (at_a_p7)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #64297: origin
                    (at_a_p8)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #25377: origin
                    (not_at_a_p4)

                    ; #35235: origin
                    (at_a_p9)

                    ; #45062: <==negation-removal== 25377 (pos)
                    (not (at_a_p4))

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #85482: origin
                    (not_at_a_p5)

                    ; #85753: origin
                    (at_a_p1)

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #72108: origin
                    (at_a_p2)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #53643: origin
                    (at_a_p3)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #45062: origin
                    (at_a_p4)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #51103: origin
                    (at_a_p5)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #85482: origin
                    (not_at_a_p5)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #48124: origin
                    (at_a_p7)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #64297: origin
                    (at_a_p8)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #35235: origin
                    (at_a_p9)

                    ; #85482: origin
                    (not_at_a_p5)

                    ; #51103: <==negation-removal== 85482 (pos)
                    (not (at_a_p5))

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #85753: origin
                    (at_a_p1)

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #72108: origin
                    (at_a_p2)

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #53643: origin
                    (at_a_p3)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #45062: origin
                    (at_a_p4)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #51103: origin
                    (at_a_p5)

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #48124: origin
                    (at_a_p7)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #64297: origin
                    (at_a_p8)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #11435: origin
                    (not_at_a_p6)

                    ; #35235: origin
                    (at_a_p9)

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))

                    ; #90879: <==negation-removal== 11435 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #85753: origin
                    (at_a_p1)

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #72108: origin
                    (at_a_p2)

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #53643: origin
                    (at_a_p3)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #45062: origin
                    (at_a_p4)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #51103: origin
                    (at_a_p5)

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #48124: origin
                    (at_a_p7)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #64297: origin
                    (at_a_p8)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #15682: origin
                    (not_at_a_p7)

                    ; #35235: origin
                    (at_a_p9)

                    ; #48124: <==negation-removal== 15682 (pos)
                    (not (at_a_p7))

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #85753: origin
                    (at_a_p1)

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #72108: origin
                    (at_a_p2)

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #53643: origin
                    (at_a_p3)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #45062: origin
                    (at_a_p4)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #51103: origin
                    (at_a_p5)

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #48124: origin
                    (at_a_p7)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #43203: origin
                    (not_at_a_p8)

                    ; #64297: origin
                    (at_a_p8)

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #35235: origin
                    (at_a_p9)

                    ; #43203: origin
                    (not_at_a_p8)

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))

                    ; #64297: <==negation-removal== 43203 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #55906: origin
                    (not_at_a_p9)

                    ; #85753: origin
                    (at_a_p1)

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))

                    ; #67152: <==negation-removal== 85753 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #55906: origin
                    (not_at_a_p9)

                    ; #72108: origin
                    (at_a_p2)

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))

                    ; #62429: <==negation-removal== 72108 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #53643: origin
                    (at_a_p3)

                    ; #55906: origin
                    (not_at_a_p9)

                    ; #18416: <==negation-removal== 53643 (pos)
                    (not (not_at_a_p3))

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #45062: origin
                    (at_a_p4)

                    ; #55906: origin
                    (not_at_a_p9)

                    ; #25377: <==negation-removal== 45062 (pos)
                    (not (not_at_a_p4))

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #51103: origin
                    (at_a_p5)

                    ; #55906: origin
                    (not_at_a_p9)

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))

                    ; #85482: <==negation-removal== 51103 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #55906: origin
                    (not_at_a_p9)

                    ; #90879: origin
                    (at_a_p6)

                    ; #11435: <==negation-removal== 90879 (pos)
                    (not (not_at_a_p6))

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #48124: origin
                    (at_a_p7)

                    ; #55906: origin
                    (not_at_a_p9)

                    ; #15682: <==negation-removal== 48124 (pos)
                    (not (not_at_a_p7))

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #55906: origin
                    (not_at_a_p9)

                    ; #64297: origin
                    (at_a_p8)

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))

                    ; #43203: <==negation-removal== 64297 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #35235: origin
                    (at_a_p9)

                    ; #55906: origin
                    (not_at_a_p9)

                    ; #35235: <==negation-removal== 55906 (pos)
                    (not (at_a_p9))

                    ; #55906: <==negation-removal== 35235 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #57285: origin
                    (at_b_p2)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #54981: origin
                    (at_b_p3)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #67217: origin
                    (at_b_p4)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #53149: origin
                    (at_b_p5)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #65430: origin
                    (at_b_p7)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #53642: origin
                    (at_b_p8)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #82023: origin
                    (at_b_p9)

                    ; #89719: origin
                    (not_at_b_p1)

                    ; #26085: <==negation-removal== 89719 (pos)
                    (not (at_b_p1))

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #46552: origin
                    (not_at_b_p2)

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #57285: origin
                    (at_b_p2)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #54981: origin
                    (at_b_p3)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #67217: origin
                    (at_b_p4)

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #53149: origin
                    (at_b_p5)

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #46552: origin
                    (not_at_b_p2)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #65430: origin
                    (at_b_p7)

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #53642: origin
                    (at_b_p8)

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #46552: origin
                    (not_at_b_p2)

                    ; #82023: origin
                    (at_b_p9)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #57285: <==negation-removal== 46552 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #44746: origin
                    (not_at_b_p3)

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #57285: origin
                    (at_b_p2)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #54981: origin
                    (at_b_p3)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #67217: origin
                    (at_b_p4)

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #53149: origin
                    (at_b_p5)

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #44746: origin
                    (not_at_b_p3)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #65430: origin
                    (at_b_p7)

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #53642: origin
                    (at_b_p8)

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #44746: origin
                    (not_at_b_p3)

                    ; #82023: origin
                    (at_b_p9)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #54981: <==negation-removal== 44746 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #57285: origin
                    (at_b_p2)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #54981: origin
                    (at_b_p3)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #67217: origin
                    (at_b_p4)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #53149: origin
                    (at_b_p5)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #65430: origin
                    (at_b_p7)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #53642: origin
                    (at_b_p8)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #82023: origin
                    (at_b_p9)

                    ; #90829: origin
                    (not_at_b_p4)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #67217: <==negation-removal== 90829 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #58288: origin
                    (not_at_b_p5)

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #57285: origin
                    (at_b_p2)

                    ; #58288: origin
                    (not_at_b_p5)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #54981: origin
                    (at_b_p3)

                    ; #58288: origin
                    (not_at_b_p5)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #58288: origin
                    (not_at_b_p5)

                    ; #67217: origin
                    (at_b_p4)

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #53149: origin
                    (at_b_p5)

                    ; #58288: origin
                    (not_at_b_p5)

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #58288: origin
                    (not_at_b_p5)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #58288: origin
                    (not_at_b_p5)

                    ; #65430: origin
                    (at_b_p7)

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #53642: origin
                    (at_b_p8)

                    ; #58288: origin
                    (not_at_b_p5)

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #58288: origin
                    (not_at_b_p5)

                    ; #82023: origin
                    (at_b_p9)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #53149: <==negation-removal== 58288 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #44255: origin
                    (not_at_b_p6)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #57285: origin
                    (at_b_p2)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #54981: origin
                    (at_b_p3)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #67217: origin
                    (at_b_p4)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #53149: origin
                    (at_b_p5)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #44255: origin
                    (not_at_b_p6)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #65430: origin
                    (at_b_p7)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #53642: origin
                    (at_b_p8)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #44255: origin
                    (not_at_b_p6)

                    ; #82023: origin
                    (at_b_p9)

                    ; #21395: <==negation-removal== 44255 (pos)
                    (not (at_b_p6))

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #57285: origin
                    (at_b_p2)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #54981: origin
                    (at_b_p3)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #67217: origin
                    (at_b_p4)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #53149: origin
                    (at_b_p5)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #65430: origin
                    (at_b_p7)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #53642: origin
                    (at_b_p8)

                    ; #80738: origin
                    (not_at_b_p7)

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #80738: origin
                    (not_at_b_p7)

                    ; #82023: origin
                    (at_b_p9)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #65430: <==negation-removal== 80738 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #57285: origin
                    (at_b_p2)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #54981: origin
                    (at_b_p3)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #67217: origin
                    (at_b_p4)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #53149: origin
                    (at_b_p5)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #65430: origin
                    (at_b_p7)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #53642: origin
                    (at_b_p8)

                    ; #69021: origin
                    (not_at_b_p8)

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #69021: origin
                    (not_at_b_p8)

                    ; #82023: origin
                    (at_b_p9)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #53642: <==negation-removal== 69021 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #26085: origin
                    (at_b_p1)

                    ; #47687: origin
                    (not_at_b_p9)

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))

                    ; #89719: <==negation-removal== 26085 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #57285: origin
                    (at_b_p2)

                    ; #46552: <==negation-removal== 57285 (pos)
                    (not (not_at_b_p2))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #54981: origin
                    (at_b_p3)

                    ; #44746: <==negation-removal== 54981 (pos)
                    (not (not_at_b_p3))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #67217: origin
                    (at_b_p4)

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))

                    ; #90829: <==negation-removal== 67217 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #53149: origin
                    (at_b_p5)

                    ; #58288: <==negation-removal== 53149 (pos)
                    (not (not_at_b_p5))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #21395: origin
                    (at_b_p6)

                    ; #47687: origin
                    (not_at_b_p9)

                    ; #44255: <==negation-removal== 21395 (pos)
                    (not (not_at_b_p6))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #65430: origin
                    (at_b_p7)

                    ; #80738: <==negation-removal== 65430 (pos)
                    (not (not_at_b_p7))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #53642: origin
                    (at_b_p8)

                    ; #69021: <==negation-removal== 53642 (pos)
                    (not (not_at_b_p8))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #47687: origin
                    (not_at_b_p9)

                    ; #82023: origin
                    (at_b_p9)

                    ; #47687: <==negation-removal== 82023 (pos)
                    (not (not_at_b_p9))

                    ; #82023: <==negation-removal== 47687 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #80434: origin
                    (at_c_p1)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #72645: origin
                    (at_c_p3)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #85150: origin
                    (at_c_p5)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #73985: origin
                    (at_c_p7)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #92303: origin
                    (not_at_c_p1)

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))

                    ; #80434: <==negation-removal== 92303 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #76895: origin
                    (not_at_c_p2)

                    ; #80434: origin
                    (at_c_p1)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #72645: origin
                    (at_c_p3)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #76895: origin
                    (not_at_c_p2)

                    ; #85150: origin
                    (at_c_p5)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #73985: origin
                    (at_c_p7)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #76895: origin
                    (not_at_c_p2)

                    ; #21293: <==negation-removal== 76895 (pos)
                    (not (at_c_p2))

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #68866: origin
                    (not_at_c_p3)

                    ; #80434: origin
                    (at_c_p1)

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #68866: origin
                    (not_at_c_p3)

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #68866: origin
                    (not_at_c_p3)

                    ; #72645: origin
                    (at_c_p3)

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #68866: origin
                    (not_at_c_p3)

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #68866: origin
                    (not_at_c_p3)

                    ; #85150: origin
                    (at_c_p5)

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #68866: origin
                    (not_at_c_p3)

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #68866: origin
                    (not_at_c_p3)

                    ; #73985: origin
                    (at_c_p7)

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #68866: origin
                    (not_at_c_p3)

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #68866: origin
                    (not_at_c_p3)

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))

                    ; #72645: <==negation-removal== 68866 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #53892: origin
                    (not_at_c_p4)

                    ; #80434: origin
                    (at_c_p1)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #53892: origin
                    (not_at_c_p4)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #53892: origin
                    (not_at_c_p4)

                    ; #72645: origin
                    (at_c_p3)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #53892: origin
                    (not_at_c_p4)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #53892: origin
                    (not_at_c_p4)

                    ; #85150: origin
                    (at_c_p5)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #53892: origin
                    (not_at_c_p4)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #53892: origin
                    (not_at_c_p4)

                    ; #73985: origin
                    (at_c_p7)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #53892: origin
                    (not_at_c_p4)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #53892: origin
                    (not_at_c_p4)

                    ; #27987: <==negation-removal== 53892 (pos)
                    (not (at_c_p4))

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #68789: origin
                    (not_at_c_p5)

                    ; #80434: origin
                    (at_c_p1)

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #68789: origin
                    (not_at_c_p5)

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #68789: origin
                    (not_at_c_p5)

                    ; #72645: origin
                    (at_c_p3)

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #68789: origin
                    (not_at_c_p5)

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #68789: origin
                    (not_at_c_p5)

                    ; #85150: origin
                    (at_c_p5)

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #68789: origin
                    (not_at_c_p5)

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #68789: origin
                    (not_at_c_p5)

                    ; #73985: origin
                    (at_c_p7)

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #68789: origin
                    (not_at_c_p5)

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #68789: origin
                    (not_at_c_p5)

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))

                    ; #85150: <==negation-removal== 68789 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #74212: origin
                    (not_at_c_p6)

                    ; #80434: origin
                    (at_c_p1)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #72645: origin
                    (at_c_p3)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #74212: origin
                    (not_at_c_p6)

                    ; #85150: origin
                    (at_c_p5)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #73985: origin
                    (at_c_p7)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #74212: origin
                    (not_at_c_p6)

                    ; #47022: <==negation-removal== 74212 (pos)
                    (not (at_c_p6))

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #37237: origin
                    (not_at_c_p7)

                    ; #80434: origin
                    (at_c_p1)

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #37237: origin
                    (not_at_c_p7)

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #37237: origin
                    (not_at_c_p7)

                    ; #72645: origin
                    (at_c_p3)

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #37237: origin
                    (not_at_c_p7)

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #37237: origin
                    (not_at_c_p7)

                    ; #85150: origin
                    (at_c_p5)

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #37237: origin
                    (not_at_c_p7)

                    ; #47022: origin
                    (at_c_p6)

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #37237: origin
                    (not_at_c_p7)

                    ; #73985: origin
                    (at_c_p7)

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #37237: origin
                    (not_at_c_p7)

                    ; #49061: origin
                    (at_c_p8)

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #37237: origin
                    (not_at_c_p7)

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))

                    ; #73985: <==negation-removal== 37237 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #80434: origin
                    (at_c_p1)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #72645: origin
                    (at_c_p3)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #85150: origin
                    (at_c_p5)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #73985: origin
                    (at_c_p7)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #86296: origin
                    (not_at_c_p8)

                    ; #49061: <==negation-removal== 86296 (pos)
                    (not (at_c_p8))

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #67877: origin
                    (not_at_c_p9)

                    ; #80434: origin
                    (at_c_p1)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #92303: <==negation-removal== 80434 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #21293: origin
                    (at_c_p2)

                    ; #67877: origin
                    (not_at_c_p9)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #76895: <==negation-removal== 21293 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #67877: origin
                    (not_at_c_p9)

                    ; #72645: origin
                    (at_c_p3)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #68866: <==negation-removal== 72645 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #27987: origin
                    (at_c_p4)

                    ; #67877: origin
                    (not_at_c_p9)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #53892: <==negation-removal== 27987 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #67877: origin
                    (not_at_c_p9)

                    ; #85150: origin
                    (at_c_p5)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #68789: <==negation-removal== 85150 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #47022: origin
                    (at_c_p6)

                    ; #67877: origin
                    (not_at_c_p9)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #74212: <==negation-removal== 47022 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #67877: origin
                    (not_at_c_p9)

                    ; #73985: origin
                    (at_c_p7)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #37237: <==negation-removal== 73985 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #49061: origin
                    (at_c_p8)

                    ; #67877: origin
                    (not_at_c_p9)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #86296: <==negation-removal== 49061 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #20290: origin
                    (at_c_p9)

                    ; #67877: origin
                    (not_at_c_p9)

                    ; #20290: <==negation-removal== 67877 (pos)
                    (not (at_c_p9))

                    ; #67877: <==negation-removal== 20290 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15058: <==commonly_known== 71496 (pos)
                    (Ba_checked_p1)

                    ; #21611: <==commonly_known== 71496 (pos)
                    (Bb_checked_p1)

                    ; #32043: <==closure== 47106 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #35863: <==commonly_known== 71496 (pos)
                    (Bc_checked_p1)

                    ; #39037: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #47106: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #71496: origin
                    (checked_p1)

                    ; #81162: <==closure== 35863 (pos)
                    (Pc_checked_p1)

                    ; #81640: <==closure== 39037 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #90326: <==closure== 21611 (pos)
                    (Pb_checked_p1)

                    ; #96429: <==closure== 15058 (pos)
                    (Pa_checked_p1)

                    ; #17700: <==uncertain_firing== 39037 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #18978: <==negation-removal== 21611 (pos)
                    (not (Pb_not_checked_p1))

                    ; #22700: <==uncertain_firing== 47106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #31980: <==negation-removal== 15058 (pos)
                    (not (Pa_not_checked_p1))

                    ; #34134: <==negation-removal== 71496 (pos)
                    (not (not_checked_p1))

                    ; #43289: <==negation-removal== 35863 (pos)
                    (not (Pc_not_checked_p1))

                    ; #44572: <==negation-removal== 81640 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #47045: <==unclosure== 22700 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #51434: <==negation-removal== 96429 (pos)
                    (not (Ba_not_checked_p1))

                    ; #62312: <==unclosure== 17700 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #71617: <==negation-removal== 90326 (pos)
                    (not (Bb_not_checked_p1))

                    ; #78362: <==negation-removal== 39037 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #80678: <==negation-removal== 81162 (pos)
                    (not (Bc_not_checked_p1))

                    ; #84389: <==negation-removal== 32043 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #88106: <==negation-removal== 47106 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10931: <==commonly_known== 48434 (pos)
                    (Bc_checked_p2)

                    ; #13325: <==closure== 28187 (pos)
                    (Pb_checked_p2)

                    ; #15197: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #28187: <==commonly_known== 48434 (pos)
                    (Bb_checked_p2)

                    ; #30594: <==closure== 70252 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #37194: <==closure== 83074 (pos)
                    (Pa_checked_p2)

                    ; #48434: origin
                    (checked_p2)

                    ; #69243: <==closure== 15197 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #70252: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #79456: <==closure== 10931 (pos)
                    (Pc_checked_p2)

                    ; #83074: <==commonly_known== 48434 (pos)
                    (Ba_checked_p2)

                    ; #10272: <==negation-removal== 83074 (pos)
                    (not (Pa_not_checked_p2))

                    ; #13714: <==negation-removal== 79456 (pos)
                    (not (Bc_not_checked_p2))

                    ; #27100: <==negation-removal== 13325 (pos)
                    (not (Bb_not_checked_p2))

                    ; #30874: <==negation-removal== 70252 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #33951: <==negation-removal== 69243 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #54434: <==negation-removal== 28187 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57245: <==negation-removal== 10931 (pos)
                    (not (Pc_not_checked_p2))

                    ; #61912: <==negation-removal== 15197 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #63161: <==unclosure== 87716 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #64110: <==negation-removal== 37194 (pos)
                    (not (Ba_not_checked_p2))

                    ; #66390: <==negation-removal== 48434 (pos)
                    (not (not_checked_p2))

                    ; #67932: <==uncertain_firing== 70252 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #81770: <==unclosure== 67932 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #87716: <==uncertain_firing== 15197 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #88237: <==negation-removal== 30594 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17885: <==closure== 31124 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #18867: <==closure== 21997 (pos)
                    (Pc_checked_p3)

                    ; #21997: <==commonly_known== 77261 (pos)
                    (Bc_checked_p3)

                    ; #31124: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #33601: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #42969: <==closure== 57536 (pos)
                    (Pa_checked_p3)

                    ; #43810: <==commonly_known== 77261 (pos)
                    (Bb_checked_p3)

                    ; #57536: <==commonly_known== 77261 (pos)
                    (Ba_checked_p3)

                    ; #65393: <==closure== 43810 (pos)
                    (Pb_checked_p3)

                    ; #77261: origin
                    (checked_p3)

                    ; #88113: <==closure== 33601 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #15496: <==uncertain_firing== 31124 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #21725: <==negation-removal== 21997 (pos)
                    (not (Pc_not_checked_p3))

                    ; #22770: <==negation-removal== 17885 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #29523: <==unclosure== 15496 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #31334: <==negation-removal== 18867 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37852: <==unclosure== 39067 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #39067: <==uncertain_firing== 33601 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #42851: <==negation-removal== 88113 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56379: <==negation-removal== 77261 (pos)
                    (not (not_checked_p3))

                    ; #67711: <==negation-removal== 31124 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #68133: <==negation-removal== 33601 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #70338: <==negation-removal== 42969 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74904: <==negation-removal== 65393 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87649: <==negation-removal== 57536 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89714: <==negation-removal== 43810 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11480: <==closure== 35368 (pos)
                    (Pb_checked_p4)

                    ; #24708: <==closure== 89692 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #32316: <==closure== 45062 (pos)
                    (Pa_checked_p4)

                    ; #35368: <==commonly_known== 72857 (pos)
                    (Bb_checked_p4)

                    ; #45062: <==commonly_known== 72857 (pos)
                    (Ba_checked_p4)

                    ; #53533: <==closure== 71238 (pos)
                    (Pc_checked_p4)

                    ; #54937: <==closure== 74687 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #71238: <==commonly_known== 72857 (pos)
                    (Bc_checked_p4)

                    ; #72857: origin
                    (checked_p4)

                    ; #74687: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #89692: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #10916: <==negation-removal== 74687 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #12815: <==negation-removal== 11480 (pos)
                    (not (Bb_not_checked_p4))

                    ; #14508: <==negation-removal== 35368 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19869: <==negation-removal== 53533 (pos)
                    (not (Bc_not_checked_p4))

                    ; #26629: <==negation-removal== 24708 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #28349: <==uncertain_firing== 89692 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #32519: <==uncertain_firing== 74687 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #44107: <==negation-removal== 72857 (pos)
                    (not (not_checked_p4))

                    ; #51862: <==negation-removal== 89692 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #56315: <==negation-removal== 54937 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #57309: <==unclosure== 28349 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #66004: <==negation-removal== 71238 (pos)
                    (not (Pc_not_checked_p4))

                    ; #67721: <==negation-removal== 32316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #72151: <==unclosure== 32519 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #87418: <==negation-removal== 45062 (pos)
                    (not (Pa_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12636: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #13532: origin
                    (checked_p5)

                    ; #30613: <==closure== 60305 (pos)
                    (Pc_checked_p5)

                    ; #36748: <==closure== 12636 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #42055: <==commonly_known== 13532 (pos)
                    (Ba_checked_p5)

                    ; #49667: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #60305: <==commonly_known== 13532 (pos)
                    (Bc_checked_p5)

                    ; #65657: <==closure== 49667 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #80620: <==closure== 42055 (pos)
                    (Pa_checked_p5)

                    ; #82975: <==closure== 90121 (pos)
                    (Pb_checked_p5)

                    ; #90121: <==commonly_known== 13532 (pos)
                    (Bb_checked_p5)

                    ; #13014: <==negation-removal== 13532 (pos)
                    (not (not_checked_p5))

                    ; #15132: <==uncertain_firing== 49667 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #16390: <==negation-removal== 42055 (pos)
                    (not (Pa_not_checked_p5))

                    ; #28920: <==negation-removal== 80620 (pos)
                    (not (Ba_not_checked_p5))

                    ; #31900: <==unclosure== 77285 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #48207: <==negation-removal== 65657 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #49079: <==negation-removal== 60305 (pos)
                    (not (Pc_not_checked_p5))

                    ; #54170: <==negation-removal== 49667 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #55882: <==negation-removal== 30613 (pos)
                    (not (Bc_not_checked_p5))

                    ; #67297: <==negation-removal== 36748 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #67553: <==unclosure== 15132 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #77285: <==uncertain_firing== 12636 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #83387: <==negation-removal== 90121 (pos)
                    (not (Pb_not_checked_p5))

                    ; #85579: <==negation-removal== 82975 (pos)
                    (not (Bb_not_checked_p5))

                    ; #89983: <==negation-removal== 12636 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #25566: <==closure== 78485 (pos)
                    (Pc_checked_p6)

                    ; #30588: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #35309: <==closure== 84580 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #49125: <==commonly_known== 91939 (pos)
                    (Bb_checked_p6)

                    ; #51207: <==closure== 30588 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #52698: <==commonly_known== 91939 (pos)
                    (Ba_checked_p6)

                    ; #73407: <==closure== 49125 (pos)
                    (Pb_checked_p6)

                    ; #78485: <==commonly_known== 91939 (pos)
                    (Bc_checked_p6)

                    ; #80356: <==closure== 52698 (pos)
                    (Pa_checked_p6)

                    ; #84580: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #91939: origin
                    (checked_p6)

                    ; #13118: <==negation-removal== 84580 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #24289: <==negation-removal== 35309 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #25518: <==negation-removal== 73407 (pos)
                    (not (Bb_not_checked_p6))

                    ; #29909: <==unclosure== 35141 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #33710: <==uncertain_firing== 84580 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #34655: <==negation-removal== 51207 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #35141: <==uncertain_firing== 30588 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #36543: <==unclosure== 33710 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #38767: <==negation-removal== 52698 (pos)
                    (not (Pa_not_checked_p6))

                    ; #47893: <==negation-removal== 91939 (pos)
                    (not (not_checked_p6))

                    ; #54749: <==negation-removal== 49125 (pos)
                    (not (Pb_not_checked_p6))

                    ; #61746: <==negation-removal== 30588 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #64464: <==negation-removal== 80356 (pos)
                    (not (Ba_not_checked_p6))

                    ; #72334: <==negation-removal== 78485 (pos)
                    (not (Pc_not_checked_p6))

                    ; #90858: <==negation-removal== 25566 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #33237: <==closure== 58578 (pos)
                    (Pb_checked_p7)

                    ; #41777: <==commonly_known== 47694 (pos)
                    (Bc_checked_p7)

                    ; #47694: origin
                    (checked_p7)

                    ; #48007: <==closure== 50594 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #50291: <==closure== 63259 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #50594: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #58578: <==commonly_known== 47694 (pos)
                    (Bb_checked_p7)

                    ; #63259: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #63716: <==closure== 41777 (pos)
                    (Pc_checked_p7)

                    ; #74548: <==commonly_known== 47694 (pos)
                    (Ba_checked_p7)

                    ; #84238: <==closure== 74548 (pos)
                    (Pa_checked_p7)

                    ; #15073: <==negation-removal== 50594 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #15857: <==uncertain_firing== 63259 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #26756: <==negation-removal== 74548 (pos)
                    (not (Pa_not_checked_p7))

                    ; #39243: <==uncertain_firing== 50594 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #40497: <==negation-removal== 50291 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #45070: <==negation-removal== 84238 (pos)
                    (not (Ba_not_checked_p7))

                    ; #50883: <==negation-removal== 48007 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #54155: <==negation-removal== 47694 (pos)
                    (not (not_checked_p7))

                    ; #56268: <==negation-removal== 41777 (pos)
                    (not (Pc_not_checked_p7))

                    ; #62698: <==negation-removal== 58578 (pos)
                    (not (Pb_not_checked_p7))

                    ; #70529: <==negation-removal== 63259 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #72536: <==negation-removal== 63716 (pos)
                    (not (Bc_not_checked_p7))

                    ; #75937: <==unclosure== 39243 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #76242: <==negation-removal== 33237 (pos)
                    (not (Bb_not_checked_p7))

                    ; #82910: <==unclosure== 15857 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14675: <==commonly_known== 68298 (pos)
                    (Bb_checked_p8)

                    ; #20022: <==commonly_known== 68298 (pos)
                    (Ba_checked_p8)

                    ; #20217: <==closure== 30260 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #23576: <==closure== 14675 (pos)
                    (Pb_checked_p8)

                    ; #30260: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #35388: <==commonly_known== 68298 (pos)
                    (Bc_checked_p8)

                    ; #38011: <==closure== 35388 (pos)
                    (Pc_checked_p8)

                    ; #51224: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #68298: origin
                    (checked_p8)

                    ; #83634: <==closure== 51224 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #90881: <==closure== 20022 (pos)
                    (Pa_checked_p8)

                    ; #12112: <==unclosure== 73791 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #21723: <==negation-removal== 38011 (pos)
                    (not (Bc_not_checked_p8))

                    ; #40350: <==negation-removal== 14675 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40450: <==negation-removal== 68298 (pos)
                    (not (not_checked_p8))

                    ; #42333: <==negation-removal== 83634 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #47554: <==uncertain_firing== 30260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #50691: <==negation-removal== 20022 (pos)
                    (not (Pa_not_checked_p8))

                    ; #59805: <==negation-removal== 23576 (pos)
                    (not (Bb_not_checked_p8))

                    ; #64847: <==unclosure== 47554 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #67291: <==negation-removal== 30260 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #67309: <==negation-removal== 90881 (pos)
                    (not (Ba_not_checked_p8))

                    ; #70965: <==negation-removal== 20217 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #71787: <==negation-removal== 51224 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #73791: <==uncertain_firing== 51224 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #80995: <==negation-removal== 35388 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14593: <==commonly_known== 89021 (pos)
                    (Bb_checked_p9)

                    ; #15359: <==closure== 82060 (pos)
                    (Pc_checked_p9)

                    ; #49611: <==closure== 74522 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #53644: <==commonly_known== 89021 (pos)
                    (Ba_checked_p9)

                    ; #58389: <==closure== 53644 (pos)
                    (Pa_checked_p9)

                    ; #67282: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #74522: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #82060: <==commonly_known== 89021 (pos)
                    (Bc_checked_p9)

                    ; #89021: origin
                    (checked_p9)

                    ; #89069: <==closure== 67282 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #89250: <==closure== 14593 (pos)
                    (Pb_checked_p9)

                    ; #13559: <==negation-removal== 58389 (pos)
                    (not (Ba_not_checked_p9))

                    ; #15971: <==negation-removal== 89069 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #16181: <==negation-removal== 82060 (pos)
                    (not (Pc_not_checked_p9))

                    ; #18556: <==negation-removal== 14593 (pos)
                    (not (Pb_not_checked_p9))

                    ; #19057: <==negation-removal== 67282 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #25316: <==negation-removal== 53644 (pos)
                    (not (Pa_not_checked_p9))

                    ; #46920: <==uncertain_firing== 67282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #55336: <==negation-removal== 49611 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #61753: <==negation-removal== 15359 (pos)
                    (not (Bc_not_checked_p9))

                    ; #75353: <==negation-removal== 89250 (pos)
                    (not (Bb_not_checked_p9))

                    ; #80178: <==negation-removal== 74522 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #81001: <==unclosure== 91612 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #86217: <==unclosure== 46920 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #91612: <==uncertain_firing== 74522 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #91918: <==negation-removal== 89021 (pos)
                    (not (not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15058: <==commonly_known== 71496 (pos)
                    (Ba_checked_p1)

                    ; #21611: <==commonly_known== 71496 (pos)
                    (Bb_checked_p1)

                    ; #24887: <==closure== 47657 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #35863: <==commonly_known== 71496 (pos)
                    (Bc_checked_p1)

                    ; #47657: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #54512: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #69765: <==closure== 54512 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #71496: origin
                    (checked_p1)

                    ; #81162: <==closure== 35863 (pos)
                    (Pc_checked_p1)

                    ; #90326: <==closure== 21611 (pos)
                    (Pb_checked_p1)

                    ; #96429: <==closure== 15058 (pos)
                    (Pa_checked_p1)

                    ; #18978: <==negation-removal== 21611 (pos)
                    (not (Pb_not_checked_p1))

                    ; #26253: <==negation-removal== 47657 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #29496: <==uncertain_firing== 47657 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #31980: <==negation-removal== 15058 (pos)
                    (not (Pa_not_checked_p1))

                    ; #34134: <==negation-removal== 71496 (pos)
                    (not (not_checked_p1))

                    ; #39540: <==negation-removal== 54512 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #43289: <==negation-removal== 35863 (pos)
                    (not (Pc_not_checked_p1))

                    ; #51434: <==negation-removal== 96429 (pos)
                    (not (Ba_not_checked_p1))

                    ; #52528: <==unclosure== 29496 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #60609: <==negation-removal== 69765 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #66046: <==negation-removal== 24887 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #71617: <==negation-removal== 90326 (pos)
                    (not (Bb_not_checked_p1))

                    ; #71798: <==unclosure== 76927 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #76927: <==uncertain_firing== 54512 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #80678: <==negation-removal== 81162 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10931: <==commonly_known== 48434 (pos)
                    (Bc_checked_p2)

                    ; #13325: <==closure== 28187 (pos)
                    (Pb_checked_p2)

                    ; #21959: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #28187: <==commonly_known== 48434 (pos)
                    (Bb_checked_p2)

                    ; #31813: <==closure== 21959 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #37194: <==closure== 83074 (pos)
                    (Pa_checked_p2)

                    ; #48230: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #48434: origin
                    (checked_p2)

                    ; #65335: <==closure== 48230 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #79456: <==closure== 10931 (pos)
                    (Pc_checked_p2)

                    ; #83074: <==commonly_known== 48434 (pos)
                    (Ba_checked_p2)

                    ; #10272: <==negation-removal== 83074 (pos)
                    (not (Pa_not_checked_p2))

                    ; #13714: <==negation-removal== 79456 (pos)
                    (not (Bc_not_checked_p2))

                    ; #24516: <==uncertain_firing== 21959 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #27100: <==negation-removal== 13325 (pos)
                    (not (Bb_not_checked_p2))

                    ; #37982: <==unclosure== 24516 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #41272: <==negation-removal== 48230 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #52942: <==negation-removal== 21959 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #54434: <==negation-removal== 28187 (pos)
                    (not (Pb_not_checked_p2))

                    ; #54797: <==negation-removal== 31813 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #56389: <==unclosure== 73536 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #57245: <==negation-removal== 10931 (pos)
                    (not (Pc_not_checked_p2))

                    ; #64110: <==negation-removal== 37194 (pos)
                    (not (Ba_not_checked_p2))

                    ; #66390: <==negation-removal== 48434 (pos)
                    (not (not_checked_p2))

                    ; #73536: <==uncertain_firing== 48230 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #77368: <==negation-removal== 65335 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #18867: <==closure== 21997 (pos)
                    (Pc_checked_p3)

                    ; #21997: <==commonly_known== 77261 (pos)
                    (Bc_checked_p3)

                    ; #37035: <==closure== 53483 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #42969: <==closure== 57536 (pos)
                    (Pa_checked_p3)

                    ; #43810: <==commonly_known== 77261 (pos)
                    (Bb_checked_p3)

                    ; #47075: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #53483: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #57536: <==commonly_known== 77261 (pos)
                    (Ba_checked_p3)

                    ; #65393: <==closure== 43810 (pos)
                    (Pb_checked_p3)

                    ; #76429: <==closure== 47075 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #77261: origin
                    (checked_p3)

                    ; #10504: <==unclosure== 48407 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #10977: <==uncertain_firing== 47075 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #21725: <==negation-removal== 21997 (pos)
                    (not (Pc_not_checked_p3))

                    ; #25700: <==negation-removal== 47075 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #31334: <==negation-removal== 18867 (pos)
                    (not (Bc_not_checked_p3))

                    ; #34868: <==negation-removal== 76429 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #48407: <==uncertain_firing== 53483 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #48463: <==unclosure== 10977 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #56379: <==negation-removal== 77261 (pos)
                    (not (not_checked_p3))

                    ; #60136: <==negation-removal== 53483 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #61112: <==negation-removal== 37035 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #70338: <==negation-removal== 42969 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74904: <==negation-removal== 65393 (pos)
                    (not (Bb_not_checked_p3))

                    ; #87649: <==negation-removal== 57536 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89714: <==negation-removal== 43810 (pos)
                    (not (Pb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11480: <==closure== 35368 (pos)
                    (Pb_checked_p4)

                    ; #30206: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #32056: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #32316: <==closure== 45062 (pos)
                    (Pa_checked_p4)

                    ; #35368: <==commonly_known== 72857 (pos)
                    (Bb_checked_p4)

                    ; #37307: <==closure== 30206 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #45062: <==commonly_known== 72857 (pos)
                    (Ba_checked_p4)

                    ; #53533: <==closure== 71238 (pos)
                    (Pc_checked_p4)

                    ; #71238: <==commonly_known== 72857 (pos)
                    (Bc_checked_p4)

                    ; #72857: origin
                    (checked_p4)

                    ; #88272: <==closure== 32056 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #12815: <==negation-removal== 11480 (pos)
                    (not (Bb_not_checked_p4))

                    ; #14013: <==unclosure== 91772 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #14508: <==negation-removal== 35368 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19869: <==negation-removal== 53533 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20801: <==negation-removal== 37307 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #39313: <==negation-removal== 88272 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #41366: <==unclosure== 81694 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #44107: <==negation-removal== 72857 (pos)
                    (not (not_checked_p4))

                    ; #60947: <==negation-removal== 30206 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #66004: <==negation-removal== 71238 (pos)
                    (not (Pc_not_checked_p4))

                    ; #67398: <==negation-removal== 32056 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #67721: <==negation-removal== 32316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #81694: <==uncertain_firing== 30206 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #87418: <==negation-removal== 45062 (pos)
                    (not (Pa_not_checked_p4))

                    ; #91772: <==uncertain_firing== 32056 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13142: <==closure== 23350 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #13532: origin
                    (checked_p5)

                    ; #23350: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #30613: <==closure== 60305 (pos)
                    (Pc_checked_p5)

                    ; #42055: <==commonly_known== 13532 (pos)
                    (Ba_checked_p5)

                    ; #60305: <==commonly_known== 13532 (pos)
                    (Bc_checked_p5)

                    ; #76718: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #79435: <==closure== 76718 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #80620: <==closure== 42055 (pos)
                    (Pa_checked_p5)

                    ; #82975: <==closure== 90121 (pos)
                    (Pb_checked_p5)

                    ; #90121: <==commonly_known== 13532 (pos)
                    (Bb_checked_p5)

                    ; #10664: <==negation-removal== 23350 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #12721: <==negation-removal== 76718 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #13014: <==negation-removal== 13532 (pos)
                    (not (not_checked_p5))

                    ; #16390: <==negation-removal== 42055 (pos)
                    (not (Pa_not_checked_p5))

                    ; #28920: <==negation-removal== 80620 (pos)
                    (not (Ba_not_checked_p5))

                    ; #29315: <==uncertain_firing== 76718 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #38565: <==negation-removal== 79435 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #40235: <==uncertain_firing== 23350 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #49079: <==negation-removal== 60305 (pos)
                    (not (Pc_not_checked_p5))

                    ; #53269: <==negation-removal== 13142 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #55882: <==negation-removal== 30613 (pos)
                    (not (Bc_not_checked_p5))

                    ; #56038: <==unclosure== 29315 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #72530: <==unclosure== 40235 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #83387: <==negation-removal== 90121 (pos)
                    (not (Pb_not_checked_p5))

                    ; #85579: <==negation-removal== 82975 (pos)
                    (not (Bb_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13249: <==closure== 18523 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #18523: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #25566: <==closure== 78485 (pos)
                    (Pc_checked_p6)

                    ; #34086: <==closure== 37198 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #37198: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #49125: <==commonly_known== 91939 (pos)
                    (Bb_checked_p6)

                    ; #52698: <==commonly_known== 91939 (pos)
                    (Ba_checked_p6)

                    ; #73407: <==closure== 49125 (pos)
                    (Pb_checked_p6)

                    ; #78485: <==commonly_known== 91939 (pos)
                    (Bc_checked_p6)

                    ; #80356: <==closure== 52698 (pos)
                    (Pa_checked_p6)

                    ; #91939: origin
                    (checked_p6)

                    ; #19478: <==negation-removal== 34086 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #24870: <==uncertain_firing== 37198 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #25518: <==negation-removal== 73407 (pos)
                    (not (Bb_not_checked_p6))

                    ; #35020: <==negation-removal== 37198 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #38767: <==negation-removal== 52698 (pos)
                    (not (Pa_not_checked_p6))

                    ; #47893: <==negation-removal== 91939 (pos)
                    (not (not_checked_p6))

                    ; #54749: <==negation-removal== 49125 (pos)
                    (not (Pb_not_checked_p6))

                    ; #60923: <==uncertain_firing== 18523 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #64464: <==negation-removal== 80356 (pos)
                    (not (Ba_not_checked_p6))

                    ; #67929: <==negation-removal== 13249 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #72334: <==negation-removal== 78485 (pos)
                    (not (Pc_not_checked_p6))

                    ; #74333: <==negation-removal== 18523 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #81144: <==unclosure== 60923 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #90657: <==unclosure== 24870 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #90858: <==negation-removal== 25566 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #25105: <==closure== 81479 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #33237: <==closure== 58578 (pos)
                    (Pb_checked_p7)

                    ; #41777: <==commonly_known== 47694 (pos)
                    (Bc_checked_p7)

                    ; #47694: origin
                    (checked_p7)

                    ; #51407: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #58578: <==commonly_known== 47694 (pos)
                    (Bb_checked_p7)

                    ; #63716: <==closure== 41777 (pos)
                    (Pc_checked_p7)

                    ; #74548: <==commonly_known== 47694 (pos)
                    (Ba_checked_p7)

                    ; #81479: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #84238: <==closure== 74548 (pos)
                    (Pa_checked_p7)

                    ; #87994: <==closure== 51407 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #26756: <==negation-removal== 74548 (pos)
                    (not (Pa_not_checked_p7))

                    ; #33530: <==unclosure== 36900 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #36900: <==uncertain_firing== 51407 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #38901: <==negation-removal== 81479 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #45070: <==negation-removal== 84238 (pos)
                    (not (Ba_not_checked_p7))

                    ; #54155: <==negation-removal== 47694 (pos)
                    (not (not_checked_p7))

                    ; #56268: <==negation-removal== 41777 (pos)
                    (not (Pc_not_checked_p7))

                    ; #62500: <==negation-removal== 25105 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #62698: <==negation-removal== 58578 (pos)
                    (not (Pb_not_checked_p7))

                    ; #64074: <==uncertain_firing== 81479 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #72536: <==negation-removal== 63716 (pos)
                    (not (Bc_not_checked_p7))

                    ; #76242: <==negation-removal== 33237 (pos)
                    (not (Bb_not_checked_p7))

                    ; #90043: <==negation-removal== 87994 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #92122: <==unclosure== 64074 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #97003: <==negation-removal== 51407 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12448: <==closure== 55816 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #14675: <==commonly_known== 68298 (pos)
                    (Bb_checked_p8)

                    ; #20022: <==commonly_known== 68298 (pos)
                    (Ba_checked_p8)

                    ; #23576: <==closure== 14675 (pos)
                    (Pb_checked_p8)

                    ; #35388: <==commonly_known== 68298 (pos)
                    (Bc_checked_p8)

                    ; #38011: <==closure== 35388 (pos)
                    (Pc_checked_p8)

                    ; #55816: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #68298: origin
                    (checked_p8)

                    ; #73194: <==closure== 85409 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #85409: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #90881: <==closure== 20022 (pos)
                    (Pa_checked_p8)

                    ; #14370: <==negation-removal== 55816 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #21723: <==negation-removal== 38011 (pos)
                    (not (Bc_not_checked_p8))

                    ; #28212: <==unclosure== 36482 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #36001: <==uncertain_firing== 55816 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #36482: <==uncertain_firing== 85409 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #40350: <==negation-removal== 14675 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40450: <==negation-removal== 68298 (pos)
                    (not (not_checked_p8))

                    ; #46022: <==negation-removal== 73194 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #50691: <==negation-removal== 20022 (pos)
                    (not (Pa_not_checked_p8))

                    ; #59805: <==negation-removal== 23576 (pos)
                    (not (Bb_not_checked_p8))

                    ; #61517: <==negation-removal== 85409 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #67309: <==negation-removal== 90881 (pos)
                    (not (Ba_not_checked_p8))

                    ; #75804: <==unclosure== 36001 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #77303: <==negation-removal== 12448 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #80995: <==negation-removal== 35388 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #14593: <==commonly_known== 89021 (pos)
                    (Bb_checked_p9)

                    ; #15359: <==closure== 82060 (pos)
                    (Pc_checked_p9)

                    ; #19823: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #53644: <==commonly_known== 89021 (pos)
                    (Ba_checked_p9)

                    ; #58389: <==closure== 53644 (pos)
                    (Pa_checked_p9)

                    ; #63714: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #82060: <==commonly_known== 89021 (pos)
                    (Bc_checked_p9)

                    ; #87149: <==closure== 19823 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #89021: origin
                    (checked_p9)

                    ; #89250: <==closure== 14593 (pos)
                    (Pb_checked_p9)

                    ; #97195: <==closure== 63714 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #10712: <==unclosure== 26514 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #13559: <==negation-removal== 58389 (pos)
                    (not (Ba_not_checked_p9))

                    ; #15125: <==uncertain_firing== 63714 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #16181: <==negation-removal== 82060 (pos)
                    (not (Pc_not_checked_p9))

                    ; #18556: <==negation-removal== 14593 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25316: <==negation-removal== 53644 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26514: <==uncertain_firing== 19823 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #38261: <==unclosure== 15125 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #46306: <==negation-removal== 19823 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #61753: <==negation-removal== 15359 (pos)
                    (not (Bc_not_checked_p9))

                    ; #75353: <==negation-removal== 89250 (pos)
                    (not (Bb_not_checked_p9))

                    ; #77081: <==negation-removal== 87149 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #87589: <==negation-removal== 97195 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #88672: <==negation-removal== 63714 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #91918: <==negation-removal== 89021 (pos)
                    (not (not_checked_p9))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #15058: <==commonly_known== 71496 (pos)
                    (Ba_checked_p1)

                    ; #20555: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #21611: <==commonly_known== 71496 (pos)
                    (Bb_checked_p1)

                    ; #35863: <==commonly_known== 71496 (pos)
                    (Bc_checked_p1)

                    ; #44084: <==closure== 53128 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #53128: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #69989: <==closure== 20555 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #71496: origin
                    (checked_p1)

                    ; #81162: <==closure== 35863 (pos)
                    (Pc_checked_p1)

                    ; #90326: <==closure== 21611 (pos)
                    (Pb_checked_p1)

                    ; #96429: <==closure== 15058 (pos)
                    (Pa_checked_p1)

                    ; #11422: <==unclosure== 88473 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #18978: <==negation-removal== 21611 (pos)
                    (not (Pb_not_checked_p1))

                    ; #31980: <==negation-removal== 15058 (pos)
                    (not (Pa_not_checked_p1))

                    ; #32970: <==negation-removal== 53128 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #34134: <==negation-removal== 71496 (pos)
                    (not (not_checked_p1))

                    ; #37801: <==negation-removal== 20555 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #43289: <==negation-removal== 35863 (pos)
                    (not (Pc_not_checked_p1))

                    ; #47212: <==unclosure== 86420 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #51434: <==negation-removal== 96429 (pos)
                    (not (Ba_not_checked_p1))

                    ; #66301: <==negation-removal== 69989 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #71617: <==negation-removal== 90326 (pos)
                    (not (Bb_not_checked_p1))

                    ; #80678: <==negation-removal== 81162 (pos)
                    (not (Bc_not_checked_p1))

                    ; #85257: <==negation-removal== 44084 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #86420: <==uncertain_firing== 53128 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #88473: <==uncertain_firing== 20555 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #10931: <==commonly_known== 48434 (pos)
                    (Bc_checked_p2)

                    ; #13325: <==closure== 28187 (pos)
                    (Pb_checked_p2)

                    ; #21580: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #28187: <==commonly_known== 48434 (pos)
                    (Bb_checked_p2)

                    ; #37194: <==closure== 83074 (pos)
                    (Pa_checked_p2)

                    ; #48434: origin
                    (checked_p2)

                    ; #79456: <==closure== 10931 (pos)
                    (Pc_checked_p2)

                    ; #82076: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #83074: <==commonly_known== 48434 (pos)
                    (Ba_checked_p2)

                    ; #87998: <==closure== 21580 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #96242: <==closure== 82076 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #10272: <==negation-removal== 83074 (pos)
                    (not (Pa_not_checked_p2))

                    ; #13714: <==negation-removal== 79456 (pos)
                    (not (Bc_not_checked_p2))

                    ; #18376: <==negation-removal== 21580 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #26586: <==unclosure== 47448 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #27100: <==negation-removal== 13325 (pos)
                    (not (Bb_not_checked_p2))

                    ; #28851: <==uncertain_firing== 82076 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #30713: <==unclosure== 28851 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #47448: <==uncertain_firing== 21580 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #50681: <==negation-removal== 96242 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #54434: <==negation-removal== 28187 (pos)
                    (not (Pb_not_checked_p2))

                    ; #57245: <==negation-removal== 10931 (pos)
                    (not (Pc_not_checked_p2))

                    ; #60977: <==negation-removal== 82076 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #64110: <==negation-removal== 37194 (pos)
                    (not (Ba_not_checked_p2))

                    ; #66390: <==negation-removal== 48434 (pos)
                    (not (not_checked_p2))

                    ; #67412: <==negation-removal== 87998 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #12070: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #18867: <==closure== 21997 (pos)
                    (Pc_checked_p3)

                    ; #21997: <==commonly_known== 77261 (pos)
                    (Bc_checked_p3)

                    ; #36185: <==closure== 12070 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #42969: <==closure== 57536 (pos)
                    (Pa_checked_p3)

                    ; #43810: <==commonly_known== 77261 (pos)
                    (Bb_checked_p3)

                    ; #57536: <==commonly_known== 77261 (pos)
                    (Ba_checked_p3)

                    ; #60681: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #65393: <==closure== 43810 (pos)
                    (Pb_checked_p3)

                    ; #70844: <==closure== 60681 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #77261: origin
                    (checked_p3)

                    ; #14605: <==unclosure== 25675 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #18795: <==negation-removal== 12070 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #21725: <==negation-removal== 21997 (pos)
                    (not (Pc_not_checked_p3))

                    ; #25675: <==uncertain_firing== 12070 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #29773: <==negation-removal== 60681 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #31334: <==negation-removal== 18867 (pos)
                    (not (Bc_not_checked_p3))

                    ; #46377: <==uncertain_firing== 60681 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #56379: <==negation-removal== 77261 (pos)
                    (not (not_checked_p3))

                    ; #62184: <==negation-removal== 70844 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #70338: <==negation-removal== 42969 (pos)
                    (not (Ba_not_checked_p3))

                    ; #74904: <==negation-removal== 65393 (pos)
                    (not (Bb_not_checked_p3))

                    ; #79759: <==unclosure== 46377 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #87649: <==negation-removal== 57536 (pos)
                    (not (Pa_not_checked_p3))

                    ; #89714: <==negation-removal== 43810 (pos)
                    (not (Pb_not_checked_p3))

                    ; #90762: <==negation-removal== 36185 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11480: <==closure== 35368 (pos)
                    (Pb_checked_p4)

                    ; #32316: <==closure== 45062 (pos)
                    (Pa_checked_p4)

                    ; #35368: <==commonly_known== 72857 (pos)
                    (Bb_checked_p4)

                    ; #45062: <==commonly_known== 72857 (pos)
                    (Ba_checked_p4)

                    ; #53533: <==closure== 71238 (pos)
                    (Pc_checked_p4)

                    ; #60723: <==closure== 82859 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #71238: <==commonly_known== 72857 (pos)
                    (Bc_checked_p4)

                    ; #72368: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #72857: origin
                    (checked_p4)

                    ; #76772: <==closure== 72368 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #82859: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #12546: <==uncertain_firing== 72368 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #12815: <==negation-removal== 11480 (pos)
                    (not (Bb_not_checked_p4))

                    ; #14508: <==negation-removal== 35368 (pos)
                    (not (Pb_not_checked_p4))

                    ; #19869: <==negation-removal== 53533 (pos)
                    (not (Bc_not_checked_p4))

                    ; #26663: <==negation-removal== 82859 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #34529: <==unclosure== 47776 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #38612: <==negation-removal== 60723 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #44107: <==negation-removal== 72857 (pos)
                    (not (not_checked_p4))

                    ; #47776: <==uncertain_firing== 82859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #55000: <==negation-removal== 72368 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57490: <==negation-removal== 76772 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #66004: <==negation-removal== 71238 (pos)
                    (not (Pc_not_checked_p4))

                    ; #67721: <==negation-removal== 32316 (pos)
                    (not (Ba_not_checked_p4))

                    ; #87418: <==negation-removal== 45062 (pos)
                    (not (Pa_not_checked_p4))

                    ; #95087: <==unclosure== 12546 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #13532: origin
                    (checked_p5)

                    ; #30613: <==closure== 60305 (pos)
                    (Pc_checked_p5)

                    ; #34031: <==closure== 84042 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #42055: <==commonly_known== 13532 (pos)
                    (Ba_checked_p5)

                    ; #43298: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #46728: <==closure== 43298 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #60305: <==commonly_known== 13532 (pos)
                    (Bc_checked_p5)

                    ; #80620: <==closure== 42055 (pos)
                    (Pa_checked_p5)

                    ; #82975: <==closure== 90121 (pos)
                    (Pb_checked_p5)

                    ; #84042: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #90121: <==commonly_known== 13532 (pos)
                    (Bb_checked_p5)

                    ; #13014: <==negation-removal== 13532 (pos)
                    (not (not_checked_p5))

                    ; #15297: <==negation-removal== 43298 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #16390: <==negation-removal== 42055 (pos)
                    (not (Pa_not_checked_p5))

                    ; #18088: <==negation-removal== 46728 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #24394: <==unclosure== 49172 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #28920: <==negation-removal== 80620 (pos)
                    (not (Ba_not_checked_p5))

                    ; #49079: <==negation-removal== 60305 (pos)
                    (not (Pc_not_checked_p5))

                    ; #49172: <==uncertain_firing== 84042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #55882: <==negation-removal== 30613 (pos)
                    (not (Bc_not_checked_p5))

                    ; #68022: <==unclosure== 91945 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #76159: <==negation-removal== 34031 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #80736: <==negation-removal== 84042 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #83387: <==negation-removal== 90121 (pos)
                    (not (Pb_not_checked_p5))

                    ; #85579: <==negation-removal== 82975 (pos)
                    (not (Bb_not_checked_p5))

                    ; #91945: <==uncertain_firing== 43298 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #13237: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #25566: <==closure== 78485 (pos)
                    (Pc_checked_p6)

                    ; #39098: <==closure== 13237 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #47122: <==closure== 75127 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #49125: <==commonly_known== 91939 (pos)
                    (Bb_checked_p6)

                    ; #52698: <==commonly_known== 91939 (pos)
                    (Ba_checked_p6)

                    ; #73407: <==closure== 49125 (pos)
                    (Pb_checked_p6)

                    ; #75127: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #78485: <==commonly_known== 91939 (pos)
                    (Bc_checked_p6)

                    ; #80356: <==closure== 52698 (pos)
                    (Pa_checked_p6)

                    ; #91939: origin
                    (checked_p6)

                    ; #10209: <==negation-removal== 39098 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #25518: <==negation-removal== 73407 (pos)
                    (not (Bb_not_checked_p6))

                    ; #27638: <==negation-removal== 47122 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #31019: <==negation-removal== 13237 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #36793: <==negation-removal== 75127 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #38767: <==negation-removal== 52698 (pos)
                    (not (Pa_not_checked_p6))

                    ; #42406: <==unclosure== 62112 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #43349: <==unclosure== 65193 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #47893: <==negation-removal== 91939 (pos)
                    (not (not_checked_p6))

                    ; #54749: <==negation-removal== 49125 (pos)
                    (not (Pb_not_checked_p6))

                    ; #62112: <==uncertain_firing== 13237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #64464: <==negation-removal== 80356 (pos)
                    (not (Ba_not_checked_p6))

                    ; #65193: <==uncertain_firing== 75127 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #72334: <==negation-removal== 78485 (pos)
                    (not (Pc_not_checked_p6))

                    ; #90858: <==negation-removal== 25566 (pos)
                    (not (Bc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #25730: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #33237: <==closure== 58578 (pos)
                    (Pb_checked_p7)

                    ; #40487: <==closure== 25730 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #41777: <==commonly_known== 47694 (pos)
                    (Bc_checked_p7)

                    ; #47694: origin
                    (checked_p7)

                    ; #52322: <==closure== 76144 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #58578: <==commonly_known== 47694 (pos)
                    (Bb_checked_p7)

                    ; #63716: <==closure== 41777 (pos)
                    (Pc_checked_p7)

                    ; #74548: <==commonly_known== 47694 (pos)
                    (Ba_checked_p7)

                    ; #76144: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #84238: <==closure== 74548 (pos)
                    (Pa_checked_p7)

                    ; #26268: <==unclosure== 52750 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #26756: <==negation-removal== 74548 (pos)
                    (not (Pa_not_checked_p7))

                    ; #32103: <==negation-removal== 76144 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #45070: <==negation-removal== 84238 (pos)
                    (not (Ba_not_checked_p7))

                    ; #48046: <==uncertain_firing== 25730 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #52750: <==uncertain_firing== 76144 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #53838: <==unclosure== 48046 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #54155: <==negation-removal== 47694 (pos)
                    (not (not_checked_p7))

                    ; #54359: <==negation-removal== 25730 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #56268: <==negation-removal== 41777 (pos)
                    (not (Pc_not_checked_p7))

                    ; #61194: <==negation-removal== 40487 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #62698: <==negation-removal== 58578 (pos)
                    (not (Pb_not_checked_p7))

                    ; #70003: <==negation-removal== 52322 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #72536: <==negation-removal== 63716 (pos)
                    (not (Bc_not_checked_p7))

                    ; #76242: <==negation-removal== 33237 (pos)
                    (not (Bb_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14675: <==commonly_known== 68298 (pos)
                    (Bb_checked_p8)

                    ; #18464: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #20022: <==commonly_known== 68298 (pos)
                    (Ba_checked_p8)

                    ; #23576: <==closure== 14675 (pos)
                    (Pb_checked_p8)

                    ; #35388: <==commonly_known== 68298 (pos)
                    (Bc_checked_p8)

                    ; #38011: <==closure== 35388 (pos)
                    (Pc_checked_p8)

                    ; #55364: <==closure== 18464 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #68298: origin
                    (checked_p8)

                    ; #80353: <==closure== 87840 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #87840: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #90881: <==closure== 20022 (pos)
                    (Pa_checked_p8)

                    ; #21723: <==negation-removal== 38011 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25792: <==uncertain_firing== 87840 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #27196: <==negation-removal== 18464 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #40350: <==negation-removal== 14675 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40450: <==negation-removal== 68298 (pos)
                    (not (not_checked_p8))

                    ; #46296: <==unclosure== 25792 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #50691: <==negation-removal== 20022 (pos)
                    (not (Pa_not_checked_p8))

                    ; #56182: <==negation-removal== 55364 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #59805: <==negation-removal== 23576 (pos)
                    (not (Bb_not_checked_p8))

                    ; #67309: <==negation-removal== 90881 (pos)
                    (not (Ba_not_checked_p8))

                    ; #70405: <==uncertain_firing== 18464 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #73019: <==unclosure== 70405 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #74042: <==negation-removal== 87840 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #80995: <==negation-removal== 35388 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82087: <==negation-removal== 80353 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #12855: <==closure== 49556 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #14593: <==commonly_known== 89021 (pos)
                    (Bb_checked_p9)

                    ; #15359: <==closure== 82060 (pos)
                    (Pc_checked_p9)

                    ; #49556: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #53644: <==commonly_known== 89021 (pos)
                    (Ba_checked_p9)

                    ; #56455: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #58389: <==closure== 53644 (pos)
                    (Pa_checked_p9)

                    ; #67180: <==closure== 56455 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #82060: <==commonly_known== 89021 (pos)
                    (Bc_checked_p9)

                    ; #89021: origin
                    (checked_p9)

                    ; #89250: <==closure== 14593 (pos)
                    (Pb_checked_p9)

                    ; #13559: <==negation-removal== 58389 (pos)
                    (not (Ba_not_checked_p9))

                    ; #16181: <==negation-removal== 82060 (pos)
                    (not (Pc_not_checked_p9))

                    ; #18556: <==negation-removal== 14593 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25316: <==negation-removal== 53644 (pos)
                    (not (Pa_not_checked_p9))

                    ; #26061: <==unclosure== 81247 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #28300: <==negation-removal== 67180 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #34675: <==unclosure== 36376 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #36376: <==uncertain_firing== 49556 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #48009: <==negation-removal== 49556 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #61753: <==negation-removal== 15359 (pos)
                    (not (Bc_not_checked_p9))

                    ; #64558: <==negation-removal== 12855 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #75353: <==negation-removal== 89250 (pos)
                    (not (Bb_not_checked_p9))

                    ; #75631: <==negation-removal== 56455 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #81247: <==uncertain_firing== 56455 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #91918: <==negation-removal== 89021 (pos)
                    (not (not_checked_p9))))

)