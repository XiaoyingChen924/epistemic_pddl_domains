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
                    ; #38157: <==closure== 71773 (pos)
                    (Pc_survivorat_s_p1)

                    ; #60438: origin
                    (Ba_survivorat_s_p1)

                    ; #61345: <==closure== 89665 (pos)
                    (Pb_survivorat_s_p1)

                    ; #71773: origin
                    (Bc_survivorat_s_p1)

                    ; #85994: <==closure== 60438 (pos)
                    (Pa_survivorat_s_p1)

                    ; #89665: origin
                    (Bb_survivorat_s_p1)

                    ; #12649: <==negation-removal== 38157 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #16218: <==negation-removal== 89665 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #42830: <==negation-removal== 85994 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #76808: <==negation-removal== 61345 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #82573: <==negation-removal== 71773 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #84574: <==negation-removal== 60438 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #38157: <==closure== 71773 (pos)
                    (Pc_survivorat_s_p1)

                    ; #60438: origin
                    (Ba_survivorat_s_p1)

                    ; #61345: <==closure== 89665 (pos)
                    (Pb_survivorat_s_p1)

                    ; #71773: origin
                    (Bc_survivorat_s_p1)

                    ; #85994: <==closure== 60438 (pos)
                    (Pa_survivorat_s_p1)

                    ; #89665: origin
                    (Bb_survivorat_s_p1)

                    ; #12649: <==negation-removal== 38157 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #16218: <==negation-removal== 89665 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #42830: <==negation-removal== 85994 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #76808: <==negation-removal== 61345 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #82573: <==negation-removal== 71773 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #84574: <==negation-removal== 60438 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1)
                           (at_c_p1))
        :effect (and
                    ; #38157: <==closure== 71773 (pos)
                    (Pc_survivorat_s_p1)

                    ; #60438: origin
                    (Ba_survivorat_s_p1)

                    ; #61345: <==closure== 89665 (pos)
                    (Pb_survivorat_s_p1)

                    ; #71773: origin
                    (Bc_survivorat_s_p1)

                    ; #85994: <==closure== 60438 (pos)
                    (Pa_survivorat_s_p1)

                    ; #89665: origin
                    (Bb_survivorat_s_p1)

                    ; #12649: <==negation-removal== 38157 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #16218: <==negation-removal== 89665 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #42830: <==negation-removal== 85994 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #76808: <==negation-removal== 61345 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #82573: <==negation-removal== 71773 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #84574: <==negation-removal== 60438 (pos)
                    (not (Pa_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #20310: origin
                    (Bc_survivorat_s_p2)

                    ; #23334: origin
                    (Bb_survivorat_s_p2)

                    ; #30668: <==closure== 20310 (pos)
                    (Pc_survivorat_s_p2)

                    ; #33245: <==closure== 23334 (pos)
                    (Pb_survivorat_s_p2)

                    ; #58912: <==closure== 65980 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65980: origin
                    (Ba_survivorat_s_p2)

                    ; #17716: <==negation-removal== 65980 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43543: <==negation-removal== 20310 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48999: <==negation-removal== 23334 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70172: <==negation-removal== 33245 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #72080: <==negation-removal== 58912 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89316: <==negation-removal== 30668 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #20310: origin
                    (Bc_survivorat_s_p2)

                    ; #23334: origin
                    (Bb_survivorat_s_p2)

                    ; #30668: <==closure== 20310 (pos)
                    (Pc_survivorat_s_p2)

                    ; #33245: <==closure== 23334 (pos)
                    (Pb_survivorat_s_p2)

                    ; #58912: <==closure== 65980 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65980: origin
                    (Ba_survivorat_s_p2)

                    ; #17716: <==negation-removal== 65980 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43543: <==negation-removal== 20310 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48999: <==negation-removal== 23334 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70172: <==negation-removal== 33245 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #72080: <==negation-removal== 58912 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89316: <==negation-removal== 30668 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #20310: origin
                    (Bc_survivorat_s_p2)

                    ; #23334: origin
                    (Bb_survivorat_s_p2)

                    ; #30668: <==closure== 20310 (pos)
                    (Pc_survivorat_s_p2)

                    ; #33245: <==closure== 23334 (pos)
                    (Pb_survivorat_s_p2)

                    ; #58912: <==closure== 65980 (pos)
                    (Pa_survivorat_s_p2)

                    ; #65980: origin
                    (Ba_survivorat_s_p2)

                    ; #17716: <==negation-removal== 65980 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #43543: <==negation-removal== 20310 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48999: <==negation-removal== 23334 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #70172: <==negation-removal== 33245 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #72080: <==negation-removal== 58912 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #89316: <==negation-removal== 30668 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #12597: <==closure== 50271 (pos)
                    (Pa_survivorat_s_p3)

                    ; #15475: origin
                    (Bb_survivorat_s_p3)

                    ; #50271: origin
                    (Ba_survivorat_s_p3)

                    ; #53453: <==closure== 15475 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61279: origin
                    (Bc_survivorat_s_p3)

                    ; #73745: <==closure== 61279 (pos)
                    (Pc_survivorat_s_p3)

                    ; #10598: <==negation-removal== 61279 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #35615: <==negation-removal== 50271 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74777: <==negation-removal== 12597 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78058: <==negation-removal== 15475 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #83873: <==negation-removal== 73745 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #85895: <==negation-removal== 53453 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #12597: <==closure== 50271 (pos)
                    (Pa_survivorat_s_p3)

                    ; #15475: origin
                    (Bb_survivorat_s_p3)

                    ; #50271: origin
                    (Ba_survivorat_s_p3)

                    ; #53453: <==closure== 15475 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61279: origin
                    (Bc_survivorat_s_p3)

                    ; #73745: <==closure== 61279 (pos)
                    (Pc_survivorat_s_p3)

                    ; #10598: <==negation-removal== 61279 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #35615: <==negation-removal== 50271 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74777: <==negation-removal== 12597 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78058: <==negation-removal== 15475 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #83873: <==negation-removal== 73745 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #85895: <==negation-removal== 53453 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #12597: <==closure== 50271 (pos)
                    (Pa_survivorat_s_p3)

                    ; #15475: origin
                    (Bb_survivorat_s_p3)

                    ; #50271: origin
                    (Ba_survivorat_s_p3)

                    ; #53453: <==closure== 15475 (pos)
                    (Pb_survivorat_s_p3)

                    ; #61279: origin
                    (Bc_survivorat_s_p3)

                    ; #73745: <==closure== 61279 (pos)
                    (Pc_survivorat_s_p3)

                    ; #10598: <==negation-removal== 61279 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #35615: <==negation-removal== 50271 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #74777: <==negation-removal== 12597 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #78058: <==negation-removal== 15475 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #83873: <==negation-removal== 73745 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #85895: <==negation-removal== 53453 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #14843: <==closure== 24450 (pos)
                    (Pb_survivorat_s_p4)

                    ; #24450: origin
                    (Bb_survivorat_s_p4)

                    ; #25279: origin
                    (Ba_survivorat_s_p4)

                    ; #27964: <==closure== 56398 (pos)
                    (Pc_survivorat_s_p4)

                    ; #47125: <==closure== 25279 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56398: origin
                    (Bc_survivorat_s_p4)

                    ; #12863: <==negation-removal== 47125 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #27651: <==negation-removal== 24450 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #39222: <==negation-removal== 56398 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55722: <==negation-removal== 27964 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #69404: <==negation-removal== 14843 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #95845: <==negation-removal== 25279 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #14843: <==closure== 24450 (pos)
                    (Pb_survivorat_s_p4)

                    ; #24450: origin
                    (Bb_survivorat_s_p4)

                    ; #25279: origin
                    (Ba_survivorat_s_p4)

                    ; #27964: <==closure== 56398 (pos)
                    (Pc_survivorat_s_p4)

                    ; #47125: <==closure== 25279 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56398: origin
                    (Bc_survivorat_s_p4)

                    ; #12863: <==negation-removal== 47125 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #27651: <==negation-removal== 24450 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #39222: <==negation-removal== 56398 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55722: <==negation-removal== 27964 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #69404: <==negation-removal== 14843 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #95845: <==negation-removal== 25279 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #14843: <==closure== 24450 (pos)
                    (Pb_survivorat_s_p4)

                    ; #24450: origin
                    (Bb_survivorat_s_p4)

                    ; #25279: origin
                    (Ba_survivorat_s_p4)

                    ; #27964: <==closure== 56398 (pos)
                    (Pc_survivorat_s_p4)

                    ; #47125: <==closure== 25279 (pos)
                    (Pa_survivorat_s_p4)

                    ; #56398: origin
                    (Bc_survivorat_s_p4)

                    ; #12863: <==negation-removal== 47125 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #27651: <==negation-removal== 24450 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #39222: <==negation-removal== 56398 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #55722: <==negation-removal== 27964 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #69404: <==negation-removal== 14843 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #95845: <==negation-removal== 25279 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5)
                           (at_a_p5))
        :effect (and
                    ; #11820: <==closure== 43697 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36388: origin
                    (Bc_survivorat_s_p5)

                    ; #43697: origin
                    (Bb_survivorat_s_p5)

                    ; #45083: origin
                    (Ba_survivorat_s_p5)

                    ; #62248: <==closure== 36388 (pos)
                    (Pc_survivorat_s_p5)

                    ; #90081: <==closure== 45083 (pos)
                    (Pa_survivorat_s_p5)

                    ; #17152: <==negation-removal== 45083 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #29453: <==negation-removal== 62248 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #32577: <==negation-removal== 43697 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39633: <==negation-removal== 90081 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #53050: <==negation-removal== 11820 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #89256: <==negation-removal== 36388 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (Pb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #11820: <==closure== 43697 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36388: origin
                    (Bc_survivorat_s_p5)

                    ; #43697: origin
                    (Bb_survivorat_s_p5)

                    ; #45083: origin
                    (Ba_survivorat_s_p5)

                    ; #62248: <==closure== 36388 (pos)
                    (Pc_survivorat_s_p5)

                    ; #90081: <==closure== 45083 (pos)
                    (Pa_survivorat_s_p5)

                    ; #17152: <==negation-removal== 45083 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #29453: <==negation-removal== 62248 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #32577: <==negation-removal== 43697 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39633: <==negation-removal== 90081 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #53050: <==negation-removal== 11820 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #89256: <==negation-removal== 36388 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #11820: <==closure== 43697 (pos)
                    (Pb_survivorat_s_p5)

                    ; #36388: origin
                    (Bc_survivorat_s_p5)

                    ; #43697: origin
                    (Bb_survivorat_s_p5)

                    ; #45083: origin
                    (Ba_survivorat_s_p5)

                    ; #62248: <==closure== 36388 (pos)
                    (Pc_survivorat_s_p5)

                    ; #90081: <==closure== 45083 (pos)
                    (Pa_survivorat_s_p5)

                    ; #17152: <==negation-removal== 45083 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #29453: <==negation-removal== 62248 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #32577: <==negation-removal== 43697 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #39633: <==negation-removal== 90081 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #53050: <==negation-removal== 11820 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #89256: <==negation-removal== 36388 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #14951: <==closure== 75524 (pos)
                    (Pa_survivorat_s_p6)

                    ; #22524: origin
                    (Bc_survivorat_s_p6)

                    ; #30872: <==closure== 22524 (pos)
                    (Pc_survivorat_s_p6)

                    ; #31253: origin
                    (Bb_survivorat_s_p6)

                    ; #71163: <==closure== 31253 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75524: origin
                    (Ba_survivorat_s_p6)

                    ; #22911: <==negation-removal== 75524 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #28103: <==negation-removal== 30872 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #29862: <==negation-removal== 71163 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #56919: <==negation-removal== 31253 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #61866: <==negation-removal== 14951 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #69080: <==negation-removal== 22524 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (at_b_p6)
                           (Bb_survivorat_s_p6))
        :effect (and
                    ; #14951: <==closure== 75524 (pos)
                    (Pa_survivorat_s_p6)

                    ; #22524: origin
                    (Bc_survivorat_s_p6)

                    ; #30872: <==closure== 22524 (pos)
                    (Pc_survivorat_s_p6)

                    ; #31253: origin
                    (Bb_survivorat_s_p6)

                    ; #71163: <==closure== 31253 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75524: origin
                    (Ba_survivorat_s_p6)

                    ; #22911: <==negation-removal== 75524 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #28103: <==negation-removal== 30872 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #29862: <==negation-removal== 71163 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #56919: <==negation-removal== 31253 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #61866: <==negation-removal== 14951 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #69080: <==negation-removal== 22524 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #14951: <==closure== 75524 (pos)
                    (Pa_survivorat_s_p6)

                    ; #22524: origin
                    (Bc_survivorat_s_p6)

                    ; #30872: <==closure== 22524 (pos)
                    (Pc_survivorat_s_p6)

                    ; #31253: origin
                    (Bb_survivorat_s_p6)

                    ; #71163: <==closure== 31253 (pos)
                    (Pb_survivorat_s_p6)

                    ; #75524: origin
                    (Ba_survivorat_s_p6)

                    ; #22911: <==negation-removal== 75524 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #28103: <==negation-removal== 30872 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #29862: <==negation-removal== 71163 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #56919: <==negation-removal== 31253 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #61866: <==negation-removal== 14951 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #69080: <==negation-removal== 22524 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #14357: origin
                    (Ba_survivorat_s_p7)

                    ; #51684: <==closure== 56847 (pos)
                    (Pc_survivorat_s_p7)

                    ; #56847: origin
                    (Bc_survivorat_s_p7)

                    ; #57990: origin
                    (Bb_survivorat_s_p7)

                    ; #65832: <==closure== 57990 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87453: <==closure== 14357 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10504: <==negation-removal== 51684 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #26017: <==negation-removal== 87453 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #29962: <==negation-removal== 65832 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71952: <==negation-removal== 57990 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #75996: <==negation-removal== 56847 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #85506: <==negation-removal== 14357 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #14357: origin
                    (Ba_survivorat_s_p7)

                    ; #51684: <==closure== 56847 (pos)
                    (Pc_survivorat_s_p7)

                    ; #56847: origin
                    (Bc_survivorat_s_p7)

                    ; #57990: origin
                    (Bb_survivorat_s_p7)

                    ; #65832: <==closure== 57990 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87453: <==closure== 14357 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10504: <==negation-removal== 51684 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #26017: <==negation-removal== 87453 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #29962: <==negation-removal== 65832 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71952: <==negation-removal== 57990 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #75996: <==negation-removal== 56847 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #85506: <==negation-removal== 14357 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #14357: origin
                    (Ba_survivorat_s_p7)

                    ; #51684: <==closure== 56847 (pos)
                    (Pc_survivorat_s_p7)

                    ; #56847: origin
                    (Bc_survivorat_s_p7)

                    ; #57990: origin
                    (Bb_survivorat_s_p7)

                    ; #65832: <==closure== 57990 (pos)
                    (Pb_survivorat_s_p7)

                    ; #87453: <==closure== 14357 (pos)
                    (Pa_survivorat_s_p7)

                    ; #10504: <==negation-removal== 51684 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #26017: <==negation-removal== 87453 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #29962: <==negation-removal== 65832 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #71952: <==negation-removal== 57990 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #75996: <==negation-removal== 56847 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #85506: <==negation-removal== 14357 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #36723: origin
                    (Bb_survivorat_s_p8)

                    ; #55994: <==closure== 80379 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68577: origin
                    (Ba_survivorat_s_p8)

                    ; #80379: origin
                    (Bc_survivorat_s_p8)

                    ; #90927: <==closure== 36723 (pos)
                    (Pb_survivorat_s_p8)

                    ; #92400: <==closure== 68577 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20296: <==negation-removal== 92400 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #26146: <==negation-removal== 80379 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36124: <==negation-removal== 55994 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #37320: <==negation-removal== 68577 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #66018: <==negation-removal== 36723 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #66965: <==negation-removal== 90927 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #36723: origin
                    (Bb_survivorat_s_p8)

                    ; #55994: <==closure== 80379 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68577: origin
                    (Ba_survivorat_s_p8)

                    ; #80379: origin
                    (Bc_survivorat_s_p8)

                    ; #90927: <==closure== 36723 (pos)
                    (Pb_survivorat_s_p8)

                    ; #92400: <==closure== 68577 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20296: <==negation-removal== 92400 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #26146: <==negation-removal== 80379 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36124: <==negation-removal== 55994 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #37320: <==negation-removal== 68577 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #66018: <==negation-removal== 36723 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #66965: <==negation-removal== 90927 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #36723: origin
                    (Bb_survivorat_s_p8)

                    ; #55994: <==closure== 80379 (pos)
                    (Pc_survivorat_s_p8)

                    ; #68577: origin
                    (Ba_survivorat_s_p8)

                    ; #80379: origin
                    (Bc_survivorat_s_p8)

                    ; #90927: <==closure== 36723 (pos)
                    (Pb_survivorat_s_p8)

                    ; #92400: <==closure== 68577 (pos)
                    (Pa_survivorat_s_p8)

                    ; #20296: <==negation-removal== 92400 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #26146: <==negation-removal== 80379 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #36124: <==negation-removal== 55994 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #37320: <==negation-removal== 68577 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #66018: <==negation-removal== 36723 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #66965: <==negation-removal== 90927 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (Ba_survivorat_s_p9)
                           (at_a_p9))
        :effect (and
                    ; #40706: <==closure== 43221 (pos)
                    (Pc_survivorat_s_p9)

                    ; #43221: origin
                    (Bc_survivorat_s_p9)

                    ; #49013: origin
                    (Ba_survivorat_s_p9)

                    ; #62332: origin
                    (Bb_survivorat_s_p9)

                    ; #73035: <==closure== 62332 (pos)
                    (Pb_survivorat_s_p9)

                    ; #79210: <==closure== 49013 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17621: <==negation-removal== 79210 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #23038: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #31967: <==negation-removal== 49013 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #66684: <==negation-removal== 40706 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85745: <==negation-removal== 62332 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89574: <==negation-removal== 43221 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (at_b_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #40706: <==closure== 43221 (pos)
                    (Pc_survivorat_s_p9)

                    ; #43221: origin
                    (Bc_survivorat_s_p9)

                    ; #49013: origin
                    (Ba_survivorat_s_p9)

                    ; #62332: origin
                    (Bb_survivorat_s_p9)

                    ; #73035: <==closure== 62332 (pos)
                    (Pb_survivorat_s_p9)

                    ; #79210: <==closure== 49013 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17621: <==negation-removal== 79210 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #23038: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #31967: <==negation-removal== 49013 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #66684: <==negation-removal== 40706 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85745: <==negation-removal== 62332 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89574: <==negation-removal== 43221 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #40706: <==closure== 43221 (pos)
                    (Pc_survivorat_s_p9)

                    ; #43221: origin
                    (Bc_survivorat_s_p9)

                    ; #49013: origin
                    (Ba_survivorat_s_p9)

                    ; #62332: origin
                    (Bb_survivorat_s_p9)

                    ; #73035: <==closure== 62332 (pos)
                    (Pb_survivorat_s_p9)

                    ; #79210: <==closure== 49013 (pos)
                    (Pa_survivorat_s_p9)

                    ; #17621: <==negation-removal== 79210 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #23038: <==negation-removal== 73035 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #31967: <==negation-removal== 49013 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #66684: <==negation-removal== 40706 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #85745: <==negation-removal== 62332 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #89574: <==negation-removal== 43221 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #63643: origin
                    (at_a_p2)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #86811: origin
                    (at_a_p3)

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #77440: origin
                    (at_a_p4)

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #39226: origin
                    (not_at_a_p1)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #39395: origin
                    (at_a_p6)

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #87493: origin
                    (at_a_p7)

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #69881: origin
                    (at_a_p8)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #39226: origin
                    (not_at_a_p1)

                    ; #67356: origin
                    (at_a_p9)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #85702: <==negation-removal== 39226 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (at_a_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #63643: origin
                    (at_a_p2)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #86811: origin
                    (at_a_p3)

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #77440: origin
                    (at_a_p4)

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #33370: origin
                    (at_a_p5)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #39395: origin
                    (at_a_p6)

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #87493: origin
                    (at_a_p7)

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #69881: origin
                    (at_a_p8)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (at_a_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #26908: origin
                    (not_at_a_p2)

                    ; #67356: origin
                    (at_a_p9)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #63643: <==negation-removal== 26908 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #65133: origin
                    (not_at_a_p3)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #63643: origin
                    (at_a_p2)

                    ; #65133: origin
                    (not_at_a_p3)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #65133: origin
                    (not_at_a_p3)

                    ; #86811: origin
                    (at_a_p3)

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #65133: origin
                    (not_at_a_p3)

                    ; #77440: origin
                    (at_a_p4)

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #65133: origin
                    (not_at_a_p3)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #39395: origin
                    (at_a_p6)

                    ; #65133: origin
                    (not_at_a_p3)

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #65133: origin
                    (not_at_a_p3)

                    ; #87493: origin
                    (at_a_p7)

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #65133: origin
                    (not_at_a_p3)

                    ; #69881: origin
                    (at_a_p8)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #65133: origin
                    (not_at_a_p3)

                    ; #67356: origin
                    (at_a_p9)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #86811: <==negation-removal== 65133 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #79005: origin
                    (not_at_a_p4)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #63643: origin
                    (at_a_p2)

                    ; #79005: origin
                    (not_at_a_p4)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #79005: origin
                    (not_at_a_p4)

                    ; #86811: origin
                    (at_a_p3)

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #77440: origin
                    (at_a_p4)

                    ; #79005: origin
                    (not_at_a_p4)

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #79005: origin
                    (not_at_a_p4)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #39395: origin
                    (at_a_p6)

                    ; #79005: origin
                    (not_at_a_p4)

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #79005: origin
                    (not_at_a_p4)

                    ; #87493: origin
                    (at_a_p7)

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #69881: origin
                    (at_a_p8)

                    ; #79005: origin
                    (not_at_a_p4)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #67356: origin
                    (at_a_p9)

                    ; #79005: origin
                    (not_at_a_p4)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #77440: <==negation-removal== 79005 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #85702: origin
                    (at_a_p1)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #63643: origin
                    (at_a_p2)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #86811: origin
                    (at_a_p3)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_a_p5))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #77440: origin
                    (at_a_p4)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_a_p5))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #33748: origin
                    (not_at_a_p5)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #39395: origin
                    (at_a_p6)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #87493: origin
                    (at_a_p7)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #69881: origin
                    (at_a_p8)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #33748: origin
                    (not_at_a_p5)

                    ; #67356: origin
                    (at_a_p9)

                    ; #33370: <==negation-removal== 33748 (pos)
                    (not (at_a_p5))

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #85702: origin
                    (at_a_p1)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #63643: origin
                    (at_a_p2)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #86811: origin
                    (at_a_p3)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #77440: origin
                    (at_a_p4)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #39395: origin
                    (at_a_p6)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #87493: origin
                    (at_a_p7)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #69881: origin
                    (at_a_p8)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #67356: origin
                    (at_a_p9)

                    ; #89357: origin
                    (not_at_a_p6)

                    ; #39395: <==negation-removal== 89357 (pos)
                    (not (at_a_p6))

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #75221: origin
                    (not_at_a_p7)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #63643: origin
                    (at_a_p2)

                    ; #75221: origin
                    (not_at_a_p7)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #75221: origin
                    (not_at_a_p7)

                    ; #86811: origin
                    (at_a_p3)

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #75221: origin
                    (not_at_a_p7)

                    ; #77440: origin
                    (at_a_p4)

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #75221: origin
                    (not_at_a_p7)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #39395: origin
                    (at_a_p6)

                    ; #75221: origin
                    (not_at_a_p7)

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #75221: origin
                    (not_at_a_p7)

                    ; #87493: origin
                    (at_a_p7)

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #69881: origin
                    (at_a_p8)

                    ; #75221: origin
                    (not_at_a_p7)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #67356: origin
                    (at_a_p9)

                    ; #75221: origin
                    (not_at_a_p7)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #87493: <==negation-removal== 75221 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #63643: origin
                    (at_a_p2)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #86811: origin
                    (at_a_p3)

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #77440: origin
                    (at_a_p4)

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #37454: origin
                    (not_at_a_p8)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #39395: origin
                    (at_a_p6)

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #87493: origin
                    (at_a_p7)

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #69881: origin
                    (at_a_p8)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #37454: origin
                    (not_at_a_p8)

                    ; #67356: origin
                    (at_a_p9)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #69881: <==negation-removal== 37454 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #85702: origin
                    (at_a_p1)

                    ; #39226: <==negation-removal== 85702 (pos)
                    (not (not_at_a_p1))

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #63643: origin
                    (at_a_p2)

                    ; #26908: <==negation-removal== 63643 (pos)
                    (not (not_at_a_p2))

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #86811: origin
                    (at_a_p3)

                    ; #65133: <==negation-removal== 86811 (pos)
                    (not (not_at_a_p3))

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #77440: origin
                    (at_a_p4)

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))

                    ; #79005: <==negation-removal== 77440 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #33370: origin
                    (at_a_p5)

                    ; #51100: origin
                    (not_at_a_p9)

                    ; #33748: <==negation-removal== 33370 (pos)
                    (not (not_at_a_p5))

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #39395: origin
                    (at_a_p6)

                    ; #51100: origin
                    (not_at_a_p9)

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))

                    ; #89357: <==negation-removal== 39395 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #87493: origin
                    (at_a_p7)

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))

                    ; #75221: <==negation-removal== 87493 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #69881: origin
                    (at_a_p8)

                    ; #37454: <==negation-removal== 69881 (pos)
                    (not (not_at_a_p8))

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #51100: origin
                    (not_at_a_p9)

                    ; #67356: origin
                    (at_a_p9)

                    ; #51100: <==negation-removal== 67356 (pos)
                    (not (not_at_a_p9))

                    ; #67356: <==negation-removal== 51100 (pos)
                    (not (at_a_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #36803: origin
                    (at_b_p2)

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #47179: origin
                    (at_b_p3)

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #45078: origin
                    (at_b_p4)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #53266: origin
                    (at_b_p5)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #32045: origin
                    (at_b_p6)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #65210: origin
                    (at_b_p7)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #15818: origin
                    (not_at_b_p1)

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #15818: origin
                    (not_at_b_p1)

                    ; #53643: origin
                    (at_b_p9)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #90102: <==negation-removal== 15818 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #90102: origin
                    (at_b_p1)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (at_b_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #36803: origin
                    (at_b_p2)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #47179: origin
                    (at_b_p3)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (at_b_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #45078: origin
                    (at_b_p4)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #53266: origin
                    (at_b_p5)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #32045: origin
                    (at_b_p6)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #65210: origin
                    (at_b_p7)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (at_b_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #53643: origin
                    (at_b_p9)

                    ; #94136: origin
                    (not_at_b_p2)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #36803: <==negation-removal== 94136 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #82459: origin
                    (not_at_b_p3)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #36803: origin
                    (at_b_p2)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #47179: origin
                    (at_b_p3)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #45078: origin
                    (at_b_p4)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #53266: origin
                    (at_b_p5)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #32045: origin
                    (at_b_p6)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #65210: origin
                    (at_b_p7)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #53643: origin
                    (at_b_p9)

                    ; #82459: origin
                    (not_at_b_p3)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #47179: <==negation-removal== 82459 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #36803: origin
                    (at_b_p2)

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #47179: origin
                    (at_b_p3)

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #45078: origin
                    (at_b_p4)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #53266: origin
                    (at_b_p5)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #32045: origin
                    (at_b_p6)

                    ; #36629: origin
                    (not_at_b_p4)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #65210: origin
                    (at_b_p7)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #36629: origin
                    (not_at_b_p4)

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #36629: origin
                    (not_at_b_p4)

                    ; #53643: origin
                    (at_b_p9)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #45078: <==negation-removal== 36629 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #36803: origin
                    (at_b_p2)

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #47179: origin
                    (at_b_p3)

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #45078: origin
                    (at_b_p4)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #53266: origin
                    (at_b_p5)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #32045: origin
                    (at_b_p6)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #65210: origin
                    (at_b_p7)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #26412: origin
                    (not_at_b_p5)

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #26412: origin
                    (not_at_b_p5)

                    ; #53643: origin
                    (at_b_p9)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #53266: <==negation-removal== 26412 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #36803: origin
                    (at_b_p2)

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #47179: origin
                    (at_b_p3)

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #45078: origin
                    (at_b_p4)

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #53266: origin
                    (at_b_p5)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #32045: origin
                    (at_b_p6)

                    ; #36423: origin
                    (not_at_b_p6)

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #65210: origin
                    (at_b_p7)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #36423: origin
                    (not_at_b_p6)

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #36423: origin
                    (not_at_b_p6)

                    ; #53643: origin
                    (at_b_p9)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #32045: <==negation-removal== 36423 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #36803: origin
                    (at_b_p2)

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #47179: origin
                    (at_b_p3)

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #45078: origin
                    (at_b_p4)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #53266: origin
                    (at_b_p5)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #32045: origin
                    (at_b_p6)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #65210: origin
                    (at_b_p7)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #26003: origin
                    (not_at_b_p7)

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #26003: origin
                    (not_at_b_p7)

                    ; #53643: origin
                    (at_b_p9)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #65210: <==negation-removal== 26003 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #84832: origin
                    (not_at_b_p8)

                    ; #90102: origin
                    (at_b_p1)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #36803: origin
                    (at_b_p2)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #47179: origin
                    (at_b_p3)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #45078: origin
                    (at_b_p4)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #53266: origin
                    (at_b_p5)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #32045: origin
                    (at_b_p6)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #65210: origin
                    (at_b_p7)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #53643: origin
                    (at_b_p9)

                    ; #84832: origin
                    (not_at_b_p8)

                    ; #13673: <==negation-removal== 84832 (pos)
                    (not (at_b_p8))

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #90102: origin
                    (at_b_p1)

                    ; #15818: <==negation-removal== 90102 (pos)
                    (not (not_at_b_p1))

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #36803: origin
                    (at_b_p2)

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))

                    ; #94136: <==negation-removal== 36803 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #47179: origin
                    (at_b_p3)

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))

                    ; #82459: <==negation-removal== 47179 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #45078: origin
                    (at_b_p4)

                    ; #36629: <==negation-removal== 45078 (pos)
                    (not (not_at_b_p4))

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #53266: origin
                    (at_b_p5)

                    ; #26412: <==negation-removal== 53266 (pos)
                    (not (not_at_b_p5))

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #32045: origin
                    (at_b_p6)

                    ; #36423: <==negation-removal== 32045 (pos)
                    (not (not_at_b_p6))

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #65210: origin
                    (at_b_p7)

                    ; #26003: <==negation-removal== 65210 (pos)
                    (not (not_at_b_p7))

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #13673: origin
                    (at_b_p8)

                    ; #29872: origin
                    (not_at_b_p9)

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))

                    ; #84832: <==negation-removal== 13673 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #29872: origin
                    (not_at_b_p9)

                    ; #53643: origin
                    (at_b_p9)

                    ; #29872: <==negation-removal== 53643 (pos)
                    (not (not_at_b_p9))

                    ; #53643: <==negation-removal== 29872 (pos)
                    (not (at_b_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #35405: origin
                    (not_at_c_p1)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #35405: origin
                    (not_at_c_p1)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #35405: origin
                    (not_at_c_p1)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #35405: origin
                    (not_at_c_p1)

                    ; #38361: origin
                    (at_c_p4)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #35405: origin
                    (not_at_c_p1)

                    ; #79898: origin
                    (at_c_p5)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #35405: origin
                    (not_at_c_p1)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #35405: origin
                    (not_at_c_p1)

                    ; #83017: origin
                    (at_c_p7)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #35405: origin
                    (not_at_c_p1)

                    ; #59508: origin
                    (at_c_p8)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #35405: origin
                    (not_at_c_p1)

                    ; #20850: <==negation-removal== 35405 (pos)
                    (not (at_c_p1))

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p2
        :precondition (and (at_c_p2)
                           (succ_p2_p2))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #38361: origin
                    (at_c_p4)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #79898: origin
                    (at_c_p5)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #83017: origin
                    (at_c_p7)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (at_c_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #59508: origin
                    (at_c_p8)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (at_c_p2)
                           (succ_p2_p9))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #86255: origin
                    (not_at_c_p2)

                    ; #34761: <==negation-removal== 86255 (pos)
                    (not (at_c_p2))

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #57214: origin
                    (not_at_c_p3)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #57214: origin
                    (not_at_c_p3)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #57214: origin
                    (not_at_c_p3)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #38361: origin
                    (at_c_p4)

                    ; #57214: origin
                    (not_at_c_p3)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #57214: origin
                    (not_at_c_p3)

                    ; #79898: origin
                    (at_c_p5)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #57214: origin
                    (not_at_c_p3)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #57214: origin
                    (not_at_c_p3)

                    ; #83017: origin
                    (at_c_p7)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #57214: origin
                    (not_at_c_p3)

                    ; #59508: origin
                    (at_c_p8)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #57214: origin
                    (not_at_c_p3)

                    ; #25989: <==negation-removal== 57214 (pos)
                    (not (at_c_p3))

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #38361: origin
                    (at_c_p4)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #79898: origin
                    (at_c_p5)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #83017: origin
                    (at_c_p7)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #59508: origin
                    (at_c_p8)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #92657: origin
                    (not_at_c_p4)

                    ; #38361: <==negation-removal== 92657 (pos)
                    (not (at_c_p4))

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #31449: origin
                    (not_at_c_p5)

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #31449: origin
                    (not_at_c_p5)

                    ; #34761: origin
                    (at_c_p2)

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #31449: origin
                    (not_at_c_p5)

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #31449: origin
                    (not_at_c_p5)

                    ; #38361: origin
                    (at_c_p4)

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #31449: origin
                    (not_at_c_p5)

                    ; #79898: origin
                    (at_c_p5)

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #31449: origin
                    (not_at_c_p5)

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #31449: origin
                    (not_at_c_p5)

                    ; #83017: origin
                    (at_c_p7)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #31449: origin
                    (not_at_c_p5)

                    ; #59508: origin
                    (at_c_p8)

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #31449: origin
                    (not_at_c_p5)

                    ; #35359: origin
                    (at_c_p9)

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))

                    ; #79898: <==negation-removal== 31449 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #38361: origin
                    (at_c_p4)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #79898: origin
                    (at_c_p5)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #83017: origin
                    (at_c_p7)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #59508: origin
                    (at_c_p8)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #86299: origin
                    (not_at_c_p6)

                    ; #10504: <==negation-removal== 86299 (pos)
                    (not (at_c_p6))

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #20850: origin
                    (at_c_p1)

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #34761: origin
                    (at_c_p2)

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #25989: origin
                    (at_c_p3)

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #38361: origin
                    (at_c_p4)

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #79898: origin
                    (at_c_p5)

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #12867: origin
                    (not_at_c_p7)

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #83017: origin
                    (at_c_p7)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #59508: origin
                    (at_c_p8)

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #12867: origin
                    (not_at_c_p7)

                    ; #35359: origin
                    (at_c_p9)

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))

                    ; #83017: <==negation-removal== 12867 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #38361: origin
                    (at_c_p4)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #65245: origin
                    (not_at_c_p8)

                    ; #79898: origin
                    (at_c_p5)

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #65245: origin
                    (not_at_c_p8)

                    ; #83017: origin
                    (at_c_p7)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #59508: origin
                    (at_c_p8)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #65245: origin
                    (not_at_c_p8)

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))

                    ; #59508: <==negation-removal== 65245 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #20850: origin
                    (at_c_p1)

                    ; #51136: origin
                    (not_at_c_p9)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #35405: <==negation-removal== 20850 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #34761: origin
                    (at_c_p2)

                    ; #51136: origin
                    (not_at_c_p9)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #86255: <==negation-removal== 34761 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #25989: origin
                    (at_c_p3)

                    ; #51136: origin
                    (not_at_c_p9)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #57214: <==negation-removal== 25989 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #38361: origin
                    (at_c_p4)

                    ; #51136: origin
                    (not_at_c_p9)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #92657: <==negation-removal== 38361 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #51136: origin
                    (not_at_c_p9)

                    ; #79898: origin
                    (at_c_p5)

                    ; #31449: <==negation-removal== 79898 (pos)
                    (not (not_at_c_p5))

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #10504: origin
                    (at_c_p6)

                    ; #51136: origin
                    (not_at_c_p9)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #86299: <==negation-removal== 10504 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #51136: origin
                    (not_at_c_p9)

                    ; #83017: origin
                    (at_c_p7)

                    ; #12867: <==negation-removal== 83017 (pos)
                    (not (not_at_c_p7))

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #51136: origin
                    (not_at_c_p9)

                    ; #59508: origin
                    (at_c_p8)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #65245: <==negation-removal== 59508 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #35359: origin
                    (at_c_p9)

                    ; #51136: origin
                    (not_at_c_p9)

                    ; #35359: <==negation-removal== 51136 (pos)
                    (not (at_c_p9))

                    ; #51136: <==negation-removal== 35359 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17832: <==commonly_known== 50525 (pos)
                    (Ba_checked_p1)

                    ; #29012: <==commonly_known== 50525 (pos)
                    (Bb_checked_p1)

                    ; #35317: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #44453: <==closure== 17832 (pos)
                    (Pa_checked_p1)

                    ; #50525: origin
                    (checked_p1)

                    ; #66386: <==closure== 84899 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #68241: <==closure== 69003 (pos)
                    (Pc_checked_p1)

                    ; #69003: <==commonly_known== 50525 (pos)
                    (Bc_checked_p1)

                    ; #71160: <==closure== 29012 (pos)
                    (Pb_checked_p1)

                    ; #84899: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #89581: <==closure== 35317 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #12099: <==negation-removal== 17832 (pos)
                    (not (Pa_not_checked_p1))

                    ; #18459: <==negation-removal== 71160 (pos)
                    (not (Bb_not_checked_p1))

                    ; #21044: <==negation-removal== 68241 (pos)
                    (not (Bc_not_checked_p1))

                    ; #21700: <==negation-removal== 69003 (pos)
                    (not (Pc_not_checked_p1))

                    ; #24334: <==unclosure== 36897 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #25680: <==negation-removal== 89581 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #36897: <==uncertain_firing== 84899 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #37925: <==negation-removal== 84899 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #39322: <==negation-removal== 66386 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #46130: <==uncertain_firing== 35317 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #55517: <==negation-removal== 44453 (pos)
                    (not (Ba_not_checked_p1))

                    ; #61455: <==unclosure== 46130 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #75065: <==negation-removal== 29012 (pos)
                    (not (Pb_not_checked_p1))

                    ; #80971: <==negation-removal== 35317 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #93626: <==negation-removal== 50525 (pos)
                    (not (not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #33062: <==commonly_known== 74287 (pos)
                    (Bc_checked_p2)

                    ; #33732: <==closure== 84025 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #46502: <==closure== 87301 (pos)
                    (Pa_checked_p2)

                    ; #66683: <==closure== 91379 (pos)
                    (Pb_checked_p2)

                    ; #70672: <==closure== 74530 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #74287: origin
                    (checked_p2)

                    ; #74530: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #77313: <==closure== 33062 (pos)
                    (Pc_checked_p2)

                    ; #84025: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #87301: <==commonly_known== 74287 (pos)
                    (Ba_checked_p2)

                    ; #91379: <==commonly_known== 74287 (pos)
                    (Bb_checked_p2)

                    ; #17231: <==negation-removal== 87301 (pos)
                    (not (Pa_not_checked_p2))

                    ; #20125: <==negation-removal== 33062 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24915: <==negation-removal== 66683 (pos)
                    (not (Bb_not_checked_p2))

                    ; #28129: <==negation-removal== 84025 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #32112: <==negation-removal== 74530 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #34916: <==uncertain_firing== 74530 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #46530: <==negation-removal== 70672 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #48993: <==unclosure== 57268 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #50030: <==negation-removal== 91379 (pos)
                    (not (Pb_not_checked_p2))

                    ; #55311: <==negation-removal== 46502 (pos)
                    (not (Ba_not_checked_p2))

                    ; #57268: <==uncertain_firing== 84025 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #77351: <==negation-removal== 74287 (pos)
                    (not (not_checked_p2))

                    ; #85019: <==unclosure== 34916 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #85915: <==negation-removal== 77313 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89746: <==negation-removal== 33732 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13390: <==commonly_known== 78758 (pos)
                    (Ba_checked_p3)

                    ; #15617: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #25053: <==closure== 82499 (pos)
                    (Pc_checked_p3)

                    ; #42263: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #50668: <==closure== 15617 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #51358: <==closure== 81566 (pos)
                    (Pb_checked_p3)

                    ; #66457: <==closure== 13390 (pos)
                    (Pa_checked_p3)

                    ; #78758: origin
                    (checked_p3)

                    ; #81566: <==commonly_known== 78758 (pos)
                    (Bb_checked_p3)

                    ; #82499: <==commonly_known== 78758 (pos)
                    (Bc_checked_p3)

                    ; #89894: <==closure== 42263 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #12585: <==unclosure== 50695 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18120: <==unclosure== 21714 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #19888: <==negation-removal== 42263 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #21714: <==uncertain_firing== 15617 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #27101: <==negation-removal== 15617 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #40836: <==negation-removal== 13390 (pos)
                    (not (Pa_not_checked_p3))

                    ; #41663: <==negation-removal== 82499 (pos)
                    (not (Pc_not_checked_p3))

                    ; #45137: <==negation-removal== 81566 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50695: <==uncertain_firing== 42263 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #73793: <==negation-removal== 25053 (pos)
                    (not (Bc_not_checked_p3))

                    ; #76382: <==negation-removal== 89894 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #88636: <==negation-removal== 78758 (pos)
                    (not (not_checked_p3))

                    ; #90177: <==negation-removal== 50668 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #91277: <==negation-removal== 66457 (pos)
                    (not (Ba_not_checked_p3))

                    ; #92228: <==negation-removal== 51358 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #12803: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #26316: <==closure== 12803 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #38529: <==closure== 54313 (pos)
                    (Pb_checked_p4)

                    ; #39550: origin
                    (checked_p4)

                    ; #53056: <==closure== 76707 (pos)
                    (Pa_checked_p4)

                    ; #54313: <==commonly_known== 39550 (pos)
                    (Bb_checked_p4)

                    ; #65467: <==closure== 65923 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #65923: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #68880: <==commonly_known== 39550 (pos)
                    (Bc_checked_p4)

                    ; #76707: <==commonly_known== 39550 (pos)
                    (Ba_checked_p4)

                    ; #98976: <==closure== 68880 (pos)
                    (Pc_checked_p4)

                    ; #13607: <==negation-removal== 98976 (pos)
                    (not (Bc_not_checked_p4))

                    ; #14368: <==negation-removal== 53056 (pos)
                    (not (Ba_not_checked_p4))

                    ; #15472: <==uncertain_firing== 12803 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #16063: <==negation-removal== 39550 (pos)
                    (not (not_checked_p4))

                    ; #23088: <==negation-removal== 26316 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #43699: <==unclosure== 46833 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #46833: <==uncertain_firing== 65923 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #47965: <==negation-removal== 76707 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49846: <==negation-removal== 68880 (pos)
                    (not (Pc_not_checked_p4))

                    ; #56134: <==negation-removal== 65467 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #59346: <==negation-removal== 38529 (pos)
                    (not (Bb_not_checked_p4))

                    ; #60255: <==negation-removal== 54313 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61748: <==negation-removal== 65923 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #74662: <==unclosure== 15472 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #78269: <==negation-removal== 12803 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10117: <==closure== 74899 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #21252: <==commonly_known== 29663 (pos)
                    (Bc_checked_p5)

                    ; #29663: origin
                    (checked_p5)

                    ; #31363: <==commonly_known== 29663 (pos)
                    (Ba_checked_p5)

                    ; #42052: <==closure== 64778 (pos)
                    (Pb_checked_p5)

                    ; #42115: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #48570: <==closure== 31363 (pos)
                    (Pa_checked_p5)

                    ; #49911: <==closure== 21252 (pos)
                    (Pc_checked_p5)

                    ; #64778: <==commonly_known== 29663 (pos)
                    (Bb_checked_p5)

                    ; #74899: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #78681: <==closure== 42115 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #12324: <==unclosure== 64366 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #12664: <==negation-removal== 21252 (pos)
                    (not (Pc_not_checked_p5))

                    ; #14543: <==negation-removal== 42115 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #19646: <==negation-removal== 49911 (pos)
                    (not (Bc_not_checked_p5))

                    ; #19782: <==negation-removal== 48570 (pos)
                    (not (Ba_not_checked_p5))

                    ; #43336: <==negation-removal== 10117 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #46172: <==negation-removal== 31363 (pos)
                    (not (Pa_not_checked_p5))

                    ; #47448: <==uncertain_firing== 74899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #51780: <==negation-removal== 42052 (pos)
                    (not (Bb_not_checked_p5))

                    ; #58545: <==negation-removal== 74899 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #62668: <==unclosure== 47448 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #64366: <==uncertain_firing== 42115 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #65691: <==negation-removal== 29663 (pos)
                    (not (not_checked_p5))

                    ; #66854: <==negation-removal== 64778 (pos)
                    (not (Pb_not_checked_p5))

                    ; #75703: <==negation-removal== 78681 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11970: <==closure== 29624 (pos)
                    (Pb_checked_p6)

                    ; #18228: origin
                    (checked_p6)

                    ; #29624: <==commonly_known== 18228 (pos)
                    (Bb_checked_p6)

                    ; #35239: <==commonly_known== 18228 (pos)
                    (Ba_checked_p6)

                    ; #38407: <==commonly_known== 18228 (pos)
                    (Bc_checked_p6)

                    ; #51594: <==closure== 64637 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #64351: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #64637: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #67849: <==closure== 38407 (pos)
                    (Pc_checked_p6)

                    ; #77847: <==closure== 64351 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #83583: <==closure== 35239 (pos)
                    (Pa_checked_p6)

                    ; #12595: <==negation-removal== 35239 (pos)
                    (not (Pa_not_checked_p6))

                    ; #15378: <==negation-removal== 64637 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #17399: <==negation-removal== 11970 (pos)
                    (not (Bb_not_checked_p6))

                    ; #21702: <==negation-removal== 64351 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #29062: <==negation-removal== 51594 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #30718: <==unclosure== 78696 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #33198: <==negation-removal== 18228 (pos)
                    (not (not_checked_p6))

                    ; #34839: <==uncertain_firing== 64351 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #40070: <==negation-removal== 77847 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #41422: <==negation-removal== 83583 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48366: <==negation-removal== 67849 (pos)
                    (not (Bc_not_checked_p6))

                    ; #55939: <==unclosure== 34839 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #67420: <==negation-removal== 29624 (pos)
                    (not (Pb_not_checked_p6))

                    ; #78696: <==uncertain_firing== 64637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #86148: <==negation-removal== 38407 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12975: origin
                    (checked_p7)

                    ; #14798: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #14821: <==closure== 60536 (pos)
                    (Pc_checked_p7)

                    ; #15812: <==closure== 76429 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #48969: <==closure== 14798 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #60536: <==commonly_known== 12975 (pos)
                    (Bc_checked_p7)

                    ; #64551: <==closure== 87920 (pos)
                    (Pa_checked_p7)

                    ; #71526: <==closure== 75730 (pos)
                    (Pb_checked_p7)

                    ; #75730: <==commonly_known== 12975 (pos)
                    (Bb_checked_p7)

                    ; #76429: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #87920: <==commonly_known== 12975 (pos)
                    (Ba_checked_p7)

                    ; #16187: <==unclosure== 82091 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #18560: <==negation-removal== 75730 (pos)
                    (not (Pb_not_checked_p7))

                    ; #25440: <==negation-removal== 48969 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #31933: <==negation-removal== 12975 (pos)
                    (not (not_checked_p7))

                    ; #37388: <==negation-removal== 14821 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39573: <==negation-removal== 76429 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #40052: <==negation-removal== 15812 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #73154: <==negation-removal== 87920 (pos)
                    (not (Pa_not_checked_p7))

                    ; #75789: <==negation-removal== 71526 (pos)
                    (not (Bb_not_checked_p7))

                    ; #76504: <==uncertain_firing== 76429 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #81643: <==negation-removal== 64551 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82091: <==uncertain_firing== 14798 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #88673: <==negation-removal== 14798 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #89533: <==negation-removal== 60536 (pos)
                    (not (Pc_not_checked_p7))

                    ; #89766: <==unclosure== 76504 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25434: <==closure== 85783 (pos)
                    (Pc_checked_p8)

                    ; #31855: origin
                    (checked_p8)

                    ; #41043: <==closure== 65233 (pos)
                    (Pa_checked_p8)

                    ; #51357: <==closure== 54899 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #54899: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #65233: <==commonly_known== 31855 (pos)
                    (Ba_checked_p8)

                    ; #67536: <==closure== 92164 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #78521: <==commonly_known== 31855 (pos)
                    (Bb_checked_p8)

                    ; #85146: <==closure== 78521 (pos)
                    (Pb_checked_p8)

                    ; #85783: <==commonly_known== 31855 (pos)
                    (Bc_checked_p8)

                    ; #92164: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #12732: <==negation-removal== 51357 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #14210: <==negation-removal== 31855 (pos)
                    (not (not_checked_p8))

                    ; #16918: <==uncertain_firing== 92164 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #27312: <==negation-removal== 65233 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33555: <==negation-removal== 85783 (pos)
                    (not (Pc_not_checked_p8))

                    ; #35203: <==unclosure== 35617 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #35617: <==uncertain_firing== 54899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #38467: <==unclosure== 16918 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #46364: <==negation-removal== 78521 (pos)
                    (not (Pb_not_checked_p8))

                    ; #54154: <==negation-removal== 54899 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #59527: <==negation-removal== 92164 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #70032: <==negation-removal== 85146 (pos)
                    (not (Bb_not_checked_p8))

                    ; #78676: <==negation-removal== 67536 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #89415: <==negation-removal== 25434 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90734: <==negation-removal== 41043 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19610: <==closure== 43094 (pos)
                    (Pb_checked_p9)

                    ; #27203: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #27752: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #29306: <==closure== 27752 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #30072: <==closure== 27203 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #32318: <==commonly_known== 75924 (pos)
                    (Ba_checked_p9)

                    ; #43094: <==commonly_known== 75924 (pos)
                    (Bb_checked_p9)

                    ; #64083: <==closure== 75878 (pos)
                    (Pc_checked_p9)

                    ; #75878: <==commonly_known== 75924 (pos)
                    (Bc_checked_p9)

                    ; #75924: origin
                    (checked_p9)

                    ; #88983: <==closure== 32318 (pos)
                    (Pa_checked_p9)

                    ; #10648: <==negation-removal== 27203 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #10819: <==uncertain_firing== 27752 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #15661: <==negation-removal== 64083 (pos)
                    (not (Bc_not_checked_p9))

                    ; #19031: <==unclosure== 10819 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #29402: <==negation-removal== 75878 (pos)
                    (not (Pc_not_checked_p9))

                    ; #36586: <==negation-removal== 30072 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #46996: <==negation-removal== 29306 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #49748: <==negation-removal== 75924 (pos)
                    (not (not_checked_p9))

                    ; #55578: <==negation-removal== 32318 (pos)
                    (not (Pa_not_checked_p9))

                    ; #57061: <==uncertain_firing== 27203 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #67027: <==negation-removal== 43094 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77698: <==unclosure== 57061 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #80784: <==negation-removal== 19610 (pos)
                    (not (Bb_not_checked_p9))

                    ; #87022: <==negation-removal== 27752 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #88939: <==negation-removal== 88983 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #17832: <==commonly_known== 50525 (pos)
                    (Ba_checked_p1)

                    ; #26043: <==closure== 91591 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #29012: <==commonly_known== 50525 (pos)
                    (Bb_checked_p1)

                    ; #30139: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #44453: <==closure== 17832 (pos)
                    (Pa_checked_p1)

                    ; #45775: <==closure== 30139 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #50525: origin
                    (checked_p1)

                    ; #68241: <==closure== 69003 (pos)
                    (Pc_checked_p1)

                    ; #69003: <==commonly_known== 50525 (pos)
                    (Bc_checked_p1)

                    ; #71160: <==closure== 29012 (pos)
                    (Pb_checked_p1)

                    ; #91591: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #12099: <==negation-removal== 17832 (pos)
                    (not (Pa_not_checked_p1))

                    ; #18459: <==negation-removal== 71160 (pos)
                    (not (Bb_not_checked_p1))

                    ; #20203: <==negation-removal== 45775 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #21044: <==negation-removal== 68241 (pos)
                    (not (Bc_not_checked_p1))

                    ; #21700: <==negation-removal== 69003 (pos)
                    (not (Pc_not_checked_p1))

                    ; #22112: <==negation-removal== 91591 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #30452: <==negation-removal== 30139 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #51887: <==uncertain_firing== 91591 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #55517: <==negation-removal== 44453 (pos)
                    (not (Ba_not_checked_p1))

                    ; #67958: <==uncertain_firing== 30139 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #74832: <==unclosure== 51887 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #75065: <==negation-removal== 29012 (pos)
                    (not (Pb_not_checked_p1))

                    ; #80842: <==negation-removal== 26043 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #90977: <==unclosure== 67958 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #93626: <==negation-removal== 50525 (pos)
                    (not (not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16195: <==closure== 51859 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #27502: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #33062: <==commonly_known== 74287 (pos)
                    (Bc_checked_p2)

                    ; #46502: <==closure== 87301 (pos)
                    (Pa_checked_p2)

                    ; #51859: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #66683: <==closure== 91379 (pos)
                    (Pb_checked_p2)

                    ; #67652: <==closure== 27502 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #74287: origin
                    (checked_p2)

                    ; #77313: <==closure== 33062 (pos)
                    (Pc_checked_p2)

                    ; #87301: <==commonly_known== 74287 (pos)
                    (Ba_checked_p2)

                    ; #91379: <==commonly_known== 74287 (pos)
                    (Bb_checked_p2)

                    ; #12340: <==unclosure== 37174 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #17231: <==negation-removal== 87301 (pos)
                    (not (Pa_not_checked_p2))

                    ; #20125: <==negation-removal== 33062 (pos)
                    (not (Pc_not_checked_p2))

                    ; #24915: <==negation-removal== 66683 (pos)
                    (not (Bb_not_checked_p2))

                    ; #28463: <==negation-removal== 67652 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #29300: <==negation-removal== 51859 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #37174: <==uncertain_firing== 27502 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #50030: <==negation-removal== 91379 (pos)
                    (not (Pb_not_checked_p2))

                    ; #55311: <==negation-removal== 46502 (pos)
                    (not (Ba_not_checked_p2))

                    ; #59031: <==uncertain_firing== 51859 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #72249: <==negation-removal== 27502 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #77351: <==negation-removal== 74287 (pos)
                    (not (not_checked_p2))

                    ; #79026: <==negation-removal== 16195 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #85915: <==negation-removal== 77313 (pos)
                    (not (Bc_not_checked_p2))

                    ; #87188: <==unclosure== 59031 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13390: <==commonly_known== 78758 (pos)
                    (Ba_checked_p3)

                    ; #20203: <==closure== 65126 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #25053: <==closure== 82499 (pos)
                    (Pc_checked_p3)

                    ; #44487: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #51358: <==closure== 81566 (pos)
                    (Pb_checked_p3)

                    ; #65126: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #66457: <==closure== 13390 (pos)
                    (Pa_checked_p3)

                    ; #78758: origin
                    (checked_p3)

                    ; #81566: <==commonly_known== 78758 (pos)
                    (Bb_checked_p3)

                    ; #82499: <==commonly_known== 78758 (pos)
                    (Bc_checked_p3)

                    ; #87153: <==closure== 44487 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #10234: <==negation-removal== 65126 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #28261: <==unclosure== 74009 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #40836: <==negation-removal== 13390 (pos)
                    (not (Pa_not_checked_p3))

                    ; #41663: <==negation-removal== 82499 (pos)
                    (not (Pc_not_checked_p3))

                    ; #43685: <==unclosure== 78205 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #45137: <==negation-removal== 81566 (pos)
                    (not (Pb_not_checked_p3))

                    ; #52861: <==negation-removal== 87153 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #58824: <==negation-removal== 20203 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #59553: <==negation-removal== 44487 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #73793: <==negation-removal== 25053 (pos)
                    (not (Bc_not_checked_p3))

                    ; #74009: <==uncertain_firing== 44487 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #78205: <==uncertain_firing== 65126 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #88636: <==negation-removal== 78758 (pos)
                    (not (not_checked_p3))

                    ; #91277: <==negation-removal== 66457 (pos)
                    (not (Ba_not_checked_p3))

                    ; #92228: <==negation-removal== 51358 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #22346: <==closure== 23337 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #23337: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #25448: <==closure== 27570 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #27570: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #38529: <==closure== 54313 (pos)
                    (Pb_checked_p4)

                    ; #39550: origin
                    (checked_p4)

                    ; #53056: <==closure== 76707 (pos)
                    (Pa_checked_p4)

                    ; #54313: <==commonly_known== 39550 (pos)
                    (Bb_checked_p4)

                    ; #68880: <==commonly_known== 39550 (pos)
                    (Bc_checked_p4)

                    ; #76707: <==commonly_known== 39550 (pos)
                    (Ba_checked_p4)

                    ; #98976: <==closure== 68880 (pos)
                    (Pc_checked_p4)

                    ; #13607: <==negation-removal== 98976 (pos)
                    (not (Bc_not_checked_p4))

                    ; #14368: <==negation-removal== 53056 (pos)
                    (not (Ba_not_checked_p4))

                    ; #16063: <==negation-removal== 39550 (pos)
                    (not (not_checked_p4))

                    ; #19923: <==unclosure== 49806 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #35920: <==negation-removal== 23337 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #47965: <==negation-removal== 76707 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49806: <==uncertain_firing== 27570 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #49846: <==negation-removal== 68880 (pos)
                    (not (Pc_not_checked_p4))

                    ; #50175: <==negation-removal== 22346 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #59346: <==negation-removal== 38529 (pos)
                    (not (Bb_not_checked_p4))

                    ; #60255: <==negation-removal== 54313 (pos)
                    (not (Pb_not_checked_p4))

                    ; #66020: <==uncertain_firing== 23337 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #71417: <==unclosure== 66020 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #73877: <==negation-removal== 25448 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #80844: <==negation-removal== 27570 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #21252: <==commonly_known== 29663 (pos)
                    (Bc_checked_p5)

                    ; #29663: origin
                    (checked_p5)

                    ; #31180: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #31363: <==commonly_known== 29663 (pos)
                    (Ba_checked_p5)

                    ; #42052: <==closure== 64778 (pos)
                    (Pb_checked_p5)

                    ; #47688: <==closure== 31180 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #48570: <==closure== 31363 (pos)
                    (Pa_checked_p5)

                    ; #49911: <==closure== 21252 (pos)
                    (Pc_checked_p5)

                    ; #64277: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #64778: <==commonly_known== 29663 (pos)
                    (Bb_checked_p5)

                    ; #71943: <==closure== 64277 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #12664: <==negation-removal== 21252 (pos)
                    (not (Pc_not_checked_p5))

                    ; #14090: <==negation-removal== 31180 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #19646: <==negation-removal== 49911 (pos)
                    (not (Bc_not_checked_p5))

                    ; #19782: <==negation-removal== 48570 (pos)
                    (not (Ba_not_checked_p5))

                    ; #39177: <==negation-removal== 47688 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #46172: <==negation-removal== 31363 (pos)
                    (not (Pa_not_checked_p5))

                    ; #48602: <==negation-removal== 64277 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #50937: <==unclosure== 76767 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #51780: <==negation-removal== 42052 (pos)
                    (not (Bb_not_checked_p5))

                    ; #63117: <==unclosure== 92001 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #65691: <==negation-removal== 29663 (pos)
                    (not (not_checked_p5))

                    ; #66854: <==negation-removal== 64778 (pos)
                    (not (Pb_not_checked_p5))

                    ; #76767: <==uncertain_firing== 31180 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #78838: <==negation-removal== 71943 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #92001: <==uncertain_firing== 64277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11970: <==closure== 29624 (pos)
                    (Pb_checked_p6)

                    ; #18228: origin
                    (checked_p6)

                    ; #29624: <==commonly_known== 18228 (pos)
                    (Bb_checked_p6)

                    ; #35239: <==commonly_known== 18228 (pos)
                    (Ba_checked_p6)

                    ; #38407: <==commonly_known== 18228 (pos)
                    (Bc_checked_p6)

                    ; #39653: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #61404: <==closure== 92969 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #67849: <==closure== 38407 (pos)
                    (Pc_checked_p6)

                    ; #74301: <==closure== 39653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #83583: <==closure== 35239 (pos)
                    (Pa_checked_p6)

                    ; #92969: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #11347: <==negation-removal== 39653 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #12595: <==negation-removal== 35239 (pos)
                    (not (Pa_not_checked_p6))

                    ; #17399: <==negation-removal== 11970 (pos)
                    (not (Bb_not_checked_p6))

                    ; #33198: <==negation-removal== 18228 (pos)
                    (not (not_checked_p6))

                    ; #35714: <==unclosure== 89763 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #39460: <==negation-removal== 92969 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #40815: <==negation-removal== 61404 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #41422: <==negation-removal== 83583 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48366: <==negation-removal== 67849 (pos)
                    (not (Bc_not_checked_p6))

                    ; #53384: <==negation-removal== 74301 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #63597: <==uncertain_firing== 92969 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #67420: <==negation-removal== 29624 (pos)
                    (not (Pb_not_checked_p6))

                    ; #72236: <==unclosure== 63597 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #86148: <==negation-removal== 38407 (pos)
                    (not (Pc_not_checked_p6))

                    ; #89763: <==uncertain_firing== 39653 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12975: origin
                    (checked_p7)

                    ; #14821: <==closure== 60536 (pos)
                    (Pc_checked_p7)

                    ; #23142: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #24519: <==closure== 23142 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #56436: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #60536: <==commonly_known== 12975 (pos)
                    (Bc_checked_p7)

                    ; #64551: <==closure== 87920 (pos)
                    (Pa_checked_p7)

                    ; #70088: <==closure== 56436 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #71526: <==closure== 75730 (pos)
                    (Pb_checked_p7)

                    ; #75730: <==commonly_known== 12975 (pos)
                    (Bb_checked_p7)

                    ; #87920: <==commonly_known== 12975 (pos)
                    (Ba_checked_p7)

                    ; #10564: <==negation-removal== 56436 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #16180: <==negation-removal== 24519 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #18560: <==negation-removal== 75730 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31933: <==negation-removal== 12975 (pos)
                    (not (not_checked_p7))

                    ; #35139: <==negation-removal== 70088 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #37388: <==negation-removal== 14821 (pos)
                    (not (Bc_not_checked_p7))

                    ; #49519: <==unclosure== 88035 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #51624: <==uncertain_firing== 23142 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #73154: <==negation-removal== 87920 (pos)
                    (not (Pa_not_checked_p7))

                    ; #73543: <==unclosure== 51624 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75789: <==negation-removal== 71526 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81643: <==negation-removal== 64551 (pos)
                    (not (Ba_not_checked_p7))

                    ; #85844: <==negation-removal== 23142 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #88035: <==uncertain_firing== 56436 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #89533: <==negation-removal== 60536 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25434: <==closure== 85783 (pos)
                    (Pc_checked_p8)

                    ; #31855: origin
                    (checked_p8)

                    ; #41043: <==closure== 65233 (pos)
                    (Pa_checked_p8)

                    ; #49883: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #50847: <==closure== 49883 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #51163: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #61659: <==closure== 51163 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #65233: <==commonly_known== 31855 (pos)
                    (Ba_checked_p8)

                    ; #78521: <==commonly_known== 31855 (pos)
                    (Bb_checked_p8)

                    ; #85146: <==closure== 78521 (pos)
                    (Pb_checked_p8)

                    ; #85783: <==commonly_known== 31855 (pos)
                    (Bc_checked_p8)

                    ; #14210: <==negation-removal== 31855 (pos)
                    (not (not_checked_p8))

                    ; #20601: <==negation-removal== 50847 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #25637: <==uncertain_firing== 49883 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #27312: <==negation-removal== 65233 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33555: <==negation-removal== 85783 (pos)
                    (not (Pc_not_checked_p8))

                    ; #40175: <==negation-removal== 49883 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #45134: <==uncertain_firing== 51163 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #46364: <==negation-removal== 78521 (pos)
                    (not (Pb_not_checked_p8))

                    ; #50148: <==negation-removal== 61659 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #61270: <==unclosure== 45134 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #63784: <==unclosure== 25637 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #70032: <==negation-removal== 85146 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89120: <==negation-removal== 51163 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #89415: <==negation-removal== 25434 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90734: <==negation-removal== 41043 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19610: <==closure== 43094 (pos)
                    (Pb_checked_p9)

                    ; #27202: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #30210: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #32318: <==commonly_known== 75924 (pos)
                    (Ba_checked_p9)

                    ; #43094: <==commonly_known== 75924 (pos)
                    (Bb_checked_p9)

                    ; #64083: <==closure== 75878 (pos)
                    (Pc_checked_p9)

                    ; #73411: <==closure== 30210 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #75878: <==commonly_known== 75924 (pos)
                    (Bc_checked_p9)

                    ; #75924: origin
                    (checked_p9)

                    ; #86752: <==closure== 27202 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #88983: <==closure== 32318 (pos)
                    (Pa_checked_p9)

                    ; #10280: <==uncertain_firing== 30210 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #15661: <==negation-removal== 64083 (pos)
                    (not (Bc_not_checked_p9))

                    ; #19464: <==negation-removal== 86752 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #20802: <==unclosure== 80762 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #21461: <==negation-removal== 73411 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #23384: <==unclosure== 10280 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #29402: <==negation-removal== 75878 (pos)
                    (not (Pc_not_checked_p9))

                    ; #49748: <==negation-removal== 75924 (pos)
                    (not (not_checked_p9))

                    ; #55578: <==negation-removal== 32318 (pos)
                    (not (Pa_not_checked_p9))

                    ; #59713: <==negation-removal== 30210 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #67027: <==negation-removal== 43094 (pos)
                    (not (Pb_not_checked_p9))

                    ; #80762: <==uncertain_firing== 27202 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #80784: <==negation-removal== 19610 (pos)
                    (not (Bb_not_checked_p9))

                    ; #88939: <==negation-removal== 88983 (pos)
                    (not (Ba_not_checked_p9))

                    ; #89440: <==negation-removal== 27202 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10649: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #17832: <==commonly_known== 50525 (pos)
                    (Ba_checked_p1)

                    ; #29012: <==commonly_known== 50525 (pos)
                    (Bb_checked_p1)

                    ; #41064: <==closure== 53209 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #44453: <==closure== 17832 (pos)
                    (Pa_checked_p1)

                    ; #50525: origin
                    (checked_p1)

                    ; #53209: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #68241: <==closure== 69003 (pos)
                    (Pc_checked_p1)

                    ; #69003: <==commonly_known== 50525 (pos)
                    (Bc_checked_p1)

                    ; #71160: <==closure== 29012 (pos)
                    (Pb_checked_p1)

                    ; #90082: <==closure== 10649 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #12099: <==negation-removal== 17832 (pos)
                    (not (Pa_not_checked_p1))

                    ; #18459: <==negation-removal== 71160 (pos)
                    (not (Bb_not_checked_p1))

                    ; #21044: <==negation-removal== 68241 (pos)
                    (not (Bc_not_checked_p1))

                    ; #21700: <==negation-removal== 69003 (pos)
                    (not (Pc_not_checked_p1))

                    ; #30796: <==uncertain_firing== 53209 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #37284: <==negation-removal== 53209 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #46453: <==uncertain_firing== 10649 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #49174: <==unclosure== 46453 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #55517: <==negation-removal== 44453 (pos)
                    (not (Ba_not_checked_p1))

                    ; #65449: <==negation-removal== 90082 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #75065: <==negation-removal== 29012 (pos)
                    (not (Pb_not_checked_p1))

                    ; #77753: <==unclosure== 30796 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #88557: <==negation-removal== 41064 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #89917: <==negation-removal== 10649 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #93626: <==negation-removal== 50525 (pos)
                    (not (not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19731: <==closure== 35196 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #28897: <==closure== 63403 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #33062: <==commonly_known== 74287 (pos)
                    (Bc_checked_p2)

                    ; #35196: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #46502: <==closure== 87301 (pos)
                    (Pa_checked_p2)

                    ; #63403: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #66683: <==closure== 91379 (pos)
                    (Pb_checked_p2)

                    ; #74287: origin
                    (checked_p2)

                    ; #77313: <==closure== 33062 (pos)
                    (Pc_checked_p2)

                    ; #87301: <==commonly_known== 74287 (pos)
                    (Ba_checked_p2)

                    ; #91379: <==commonly_known== 74287 (pos)
                    (Bb_checked_p2)

                    ; #12525: <==negation-removal== 63403 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #17231: <==negation-removal== 87301 (pos)
                    (not (Pa_not_checked_p2))

                    ; #20125: <==negation-removal== 33062 (pos)
                    (not (Pc_not_checked_p2))

                    ; #20283: <==unclosure== 90708 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #23918: <==negation-removal== 19731 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #24915: <==negation-removal== 66683 (pos)
                    (not (Bb_not_checked_p2))

                    ; #41119: <==negation-removal== 35196 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #42865: <==unclosure== 68034 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #50030: <==negation-removal== 91379 (pos)
                    (not (Pb_not_checked_p2))

                    ; #55311: <==negation-removal== 46502 (pos)
                    (not (Ba_not_checked_p2))

                    ; #68034: <==uncertain_firing== 63403 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77351: <==negation-removal== 74287 (pos)
                    (not (not_checked_p2))

                    ; #80436: <==negation-removal== 28897 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #85915: <==negation-removal== 77313 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90708: <==uncertain_firing== 35196 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13390: <==commonly_known== 78758 (pos)
                    (Ba_checked_p3)

                    ; #24842: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #25053: <==closure== 82499 (pos)
                    (Pc_checked_p3)

                    ; #51358: <==closure== 81566 (pos)
                    (Pb_checked_p3)

                    ; #52784: <==closure== 24842 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #66457: <==closure== 13390 (pos)
                    (Pa_checked_p3)

                    ; #77967: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #78758: origin
                    (checked_p3)

                    ; #80673: <==closure== 77967 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #81566: <==commonly_known== 78758 (pos)
                    (Bb_checked_p3)

                    ; #82499: <==commonly_known== 78758 (pos)
                    (Bc_checked_p3)

                    ; #28822: <==negation-removal== 52784 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #40836: <==negation-removal== 13390 (pos)
                    (not (Pa_not_checked_p3))

                    ; #41663: <==negation-removal== 82499 (pos)
                    (not (Pc_not_checked_p3))

                    ; #45137: <==negation-removal== 81566 (pos)
                    (not (Pb_not_checked_p3))

                    ; #47644: <==uncertain_firing== 24842 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #50389: <==negation-removal== 24842 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #50745: <==negation-removal== 77967 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #58576: <==unclosure== 69314 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #66620: <==unclosure== 47644 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #69293: <==negation-removal== 80673 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #69314: <==uncertain_firing== 77967 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #73793: <==negation-removal== 25053 (pos)
                    (not (Bc_not_checked_p3))

                    ; #88636: <==negation-removal== 78758 (pos)
                    (not (not_checked_p3))

                    ; #91277: <==negation-removal== 66457 (pos)
                    (not (Ba_not_checked_p3))

                    ; #92228: <==negation-removal== 51358 (pos)
                    (not (Bb_not_checked_p3))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19386: <==closure== 20595 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #20595: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #27614: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38529: <==closure== 54313 (pos)
                    (Pb_checked_p4)

                    ; #39550: origin
                    (checked_p4)

                    ; #53056: <==closure== 76707 (pos)
                    (Pa_checked_p4)

                    ; #54313: <==commonly_known== 39550 (pos)
                    (Bb_checked_p4)

                    ; #65536: <==closure== 27614 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #68880: <==commonly_known== 39550 (pos)
                    (Bc_checked_p4)

                    ; #76707: <==commonly_known== 39550 (pos)
                    (Ba_checked_p4)

                    ; #98976: <==closure== 68880 (pos)
                    (Pc_checked_p4)

                    ; #13607: <==negation-removal== 98976 (pos)
                    (not (Bc_not_checked_p4))

                    ; #14368: <==negation-removal== 53056 (pos)
                    (not (Ba_not_checked_p4))

                    ; #16063: <==negation-removal== 39550 (pos)
                    (not (not_checked_p4))

                    ; #16932: <==uncertain_firing== 20595 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #17792: <==negation-removal== 65536 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #34736: <==negation-removal== 20595 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #44594: <==unclosure== 16932 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #47965: <==negation-removal== 76707 (pos)
                    (not (Pa_not_checked_p4))

                    ; #49063: <==negation-removal== 19386 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #49846: <==negation-removal== 68880 (pos)
                    (not (Pc_not_checked_p4))

                    ; #59060: <==negation-removal== 27614 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #59346: <==negation-removal== 38529 (pos)
                    (not (Bb_not_checked_p4))

                    ; #60255: <==negation-removal== 54313 (pos)
                    (not (Pb_not_checked_p4))

                    ; #61618: <==unclosure== 82385 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #82385: <==uncertain_firing== 27614 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #21252: <==commonly_known== 29663 (pos)
                    (Bc_checked_p5)

                    ; #27963: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #29663: origin
                    (checked_p5)

                    ; #31363: <==commonly_known== 29663 (pos)
                    (Ba_checked_p5)

                    ; #35084: <==closure== 27963 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #35968: <==closure== 55953 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #42052: <==closure== 64778 (pos)
                    (Pb_checked_p5)

                    ; #48570: <==closure== 31363 (pos)
                    (Pa_checked_p5)

                    ; #49911: <==closure== 21252 (pos)
                    (Pc_checked_p5)

                    ; #55953: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #64778: <==commonly_known== 29663 (pos)
                    (Bb_checked_p5)

                    ; #12664: <==negation-removal== 21252 (pos)
                    (not (Pc_not_checked_p5))

                    ; #12768: <==unclosure== 74476 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #15155: <==uncertain_firing== 27963 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #15313: <==negation-removal== 35084 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #17642: <==negation-removal== 27963 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #19646: <==negation-removal== 49911 (pos)
                    (not (Bc_not_checked_p5))

                    ; #19782: <==negation-removal== 48570 (pos)
                    (not (Ba_not_checked_p5))

                    ; #35285: <==unclosure== 15155 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #43991: <==negation-removal== 35968 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #46172: <==negation-removal== 31363 (pos)
                    (not (Pa_not_checked_p5))

                    ; #51780: <==negation-removal== 42052 (pos)
                    (not (Bb_not_checked_p5))

                    ; #65691: <==negation-removal== 29663 (pos)
                    (not (not_checked_p5))

                    ; #66854: <==negation-removal== 64778 (pos)
                    (not (Pb_not_checked_p5))

                    ; #74476: <==uncertain_firing== 55953 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #89046: <==negation-removal== 55953 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #11970: <==closure== 29624 (pos)
                    (Pb_checked_p6)

                    ; #13033: <==closure== 77060 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #18228: origin
                    (checked_p6)

                    ; #29624: <==commonly_known== 18228 (pos)
                    (Bb_checked_p6)

                    ; #35239: <==commonly_known== 18228 (pos)
                    (Ba_checked_p6)

                    ; #38407: <==commonly_known== 18228 (pos)
                    (Bc_checked_p6)

                    ; #47235: <==closure== 65470 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #65470: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #67849: <==closure== 38407 (pos)
                    (Pc_checked_p6)

                    ; #77060: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #83583: <==closure== 35239 (pos)
                    (Pa_checked_p6)

                    ; #12595: <==negation-removal== 35239 (pos)
                    (not (Pa_not_checked_p6))

                    ; #14934: <==negation-removal== 77060 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #17399: <==negation-removal== 11970 (pos)
                    (not (Bb_not_checked_p6))

                    ; #30290: <==negation-removal== 65470 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33198: <==negation-removal== 18228 (pos)
                    (not (not_checked_p6))

                    ; #34007: <==negation-removal== 47235 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #38776: <==negation-removal== 13033 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #41422: <==negation-removal== 83583 (pos)
                    (not (Ba_not_checked_p6))

                    ; #48366: <==negation-removal== 67849 (pos)
                    (not (Bc_not_checked_p6))

                    ; #63782: <==unclosure== 82116 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #67420: <==negation-removal== 29624 (pos)
                    (not (Pb_not_checked_p6))

                    ; #74231: <==unclosure== 85971 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #82116: <==uncertain_firing== 65470 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #85971: <==uncertain_firing== 77060 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #86148: <==negation-removal== 38407 (pos)
                    (not (Pc_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12975: origin
                    (checked_p7)

                    ; #14821: <==closure== 60536 (pos)
                    (Pc_checked_p7)

                    ; #43444: <==closure== 63630 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #60536: <==commonly_known== 12975 (pos)
                    (Bc_checked_p7)

                    ; #63630: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #64551: <==closure== 87920 (pos)
                    (Pa_checked_p7)

                    ; #71526: <==closure== 75730 (pos)
                    (Pb_checked_p7)

                    ; #73243: <==closure== 90541 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #75730: <==commonly_known== 12975 (pos)
                    (Bb_checked_p7)

                    ; #87920: <==commonly_known== 12975 (pos)
                    (Ba_checked_p7)

                    ; #90541: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #18560: <==negation-removal== 75730 (pos)
                    (not (Pb_not_checked_p7))

                    ; #31933: <==negation-removal== 12975 (pos)
                    (not (not_checked_p7))

                    ; #34090: <==uncertain_firing== 63630 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #37388: <==negation-removal== 14821 (pos)
                    (not (Bc_not_checked_p7))

                    ; #42112: <==uncertain_firing== 90541 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #46201: <==negation-removal== 90541 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #63325: <==negation-removal== 63630 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #73154: <==negation-removal== 87920 (pos)
                    (not (Pa_not_checked_p7))

                    ; #74930: <==unclosure== 34090 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #75789: <==negation-removal== 71526 (pos)
                    (not (Bb_not_checked_p7))

                    ; #81643: <==negation-removal== 64551 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82062: <==unclosure== 42112 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #82170: <==negation-removal== 43444 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #88897: <==negation-removal== 73243 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #89533: <==negation-removal== 60536 (pos)
                    (not (Pc_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #25037: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #25434: <==closure== 85783 (pos)
                    (Pc_checked_p8)

                    ; #31855: origin
                    (checked_p8)

                    ; #41043: <==closure== 65233 (pos)
                    (Pa_checked_p8)

                    ; #48080: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #59344: <==closure== 48080 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #65233: <==commonly_known== 31855 (pos)
                    (Ba_checked_p8)

                    ; #65291: <==closure== 25037 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #78521: <==commonly_known== 31855 (pos)
                    (Bb_checked_p8)

                    ; #85146: <==closure== 78521 (pos)
                    (Pb_checked_p8)

                    ; #85783: <==commonly_known== 31855 (pos)
                    (Bc_checked_p8)

                    ; #14210: <==negation-removal== 31855 (pos)
                    (not (not_checked_p8))

                    ; #18228: <==unclosure== 20961 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #19223: <==negation-removal== 48080 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #20961: <==uncertain_firing== 25037 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #23672: <==negation-removal== 65291 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #27312: <==negation-removal== 65233 (pos)
                    (not (Pa_not_checked_p8))

                    ; #33555: <==negation-removal== 85783 (pos)
                    (not (Pc_not_checked_p8))

                    ; #46364: <==negation-removal== 78521 (pos)
                    (not (Pb_not_checked_p8))

                    ; #47924: <==negation-removal== 25037 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #62765: <==uncertain_firing== 48080 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #70032: <==negation-removal== 85146 (pos)
                    (not (Bb_not_checked_p8))

                    ; #72977: <==unclosure== 62765 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #79191: <==negation-removal== 59344 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #89415: <==negation-removal== 25434 (pos)
                    (not (Bc_not_checked_p8))

                    ; #90734: <==negation-removal== 41043 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #19260: <==closure== 46870 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #19610: <==closure== 43094 (pos)
                    (Pb_checked_p9)

                    ; #32318: <==commonly_known== 75924 (pos)
                    (Ba_checked_p9)

                    ; #37079: <==closure== 55486 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #43094: <==commonly_known== 75924 (pos)
                    (Bb_checked_p9)

                    ; #46870: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #55486: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64083: <==closure== 75878 (pos)
                    (Pc_checked_p9)

                    ; #75878: <==commonly_known== 75924 (pos)
                    (Bc_checked_p9)

                    ; #75924: origin
                    (checked_p9)

                    ; #88983: <==closure== 32318 (pos)
                    (Pa_checked_p9)

                    ; #15661: <==negation-removal== 64083 (pos)
                    (not (Bc_not_checked_p9))

                    ; #26034: <==uncertain_firing== 46870 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #29402: <==negation-removal== 75878 (pos)
                    (not (Pc_not_checked_p9))

                    ; #43764: <==negation-removal== 55486 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #49341: <==unclosure== 54993 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #49748: <==negation-removal== 75924 (pos)
                    (not (not_checked_p9))

                    ; #54993: <==uncertain_firing== 55486 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #55578: <==negation-removal== 32318 (pos)
                    (not (Pa_not_checked_p9))

                    ; #65874: <==unclosure== 26034 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #67027: <==negation-removal== 43094 (pos)
                    (not (Pb_not_checked_p9))

                    ; #80784: <==negation-removal== 19610 (pos)
                    (not (Bb_not_checked_p9))

                    ; #85719: <==negation-removal== 46870 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #88939: <==negation-removal== 88983 (pos)
                    (not (Ba_not_checked_p9))

                    ; #89477: <==negation-removal== 37079 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #92753: <==negation-removal== 19260 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))))

)