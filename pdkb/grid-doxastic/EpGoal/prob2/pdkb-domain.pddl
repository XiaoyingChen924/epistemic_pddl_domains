(define (domain grid)

    (:requirements :strips :conditional-effects)

    (:predicates
        (not_at_a_p1)
        (not_at_a_p10)
        (not_at_a_p11)
        (not_at_a_p12)
        (not_at_a_p2)
        (not_at_a_p3)
        (not_at_a_p4)
        (not_at_a_p5)
        (not_at_a_p6)
        (not_at_a_p7)
        (not_at_a_p8)
        (not_at_a_p9)
        (not_at_b_p1)
        (not_at_b_p10)
        (not_at_b_p11)
        (not_at_b_p12)
        (not_at_b_p2)
        (not_at_b_p3)
        (not_at_b_p4)
        (not_at_b_p5)
        (not_at_b_p6)
        (not_at_b_p7)
        (not_at_b_p8)
        (not_at_b_p9)
        (not_at_c_p1)
        (not_at_c_p10)
        (not_at_c_p11)
        (not_at_c_p12)
        (not_at_c_p2)
        (not_at_c_p3)
        (not_at_c_p4)
        (not_at_c_p5)
        (not_at_c_p6)
        (not_at_c_p7)
        (not_at_c_p8)
        (not_at_c_p9)
        (not_checked_p1)
        (not_checked_p10)
        (not_checked_p11)
        (not_checked_p12)
        (not_checked_p2)
        (not_checked_p3)
        (not_checked_p4)
        (not_checked_p5)
        (not_checked_p6)
        (not_checked_p7)
        (not_checked_p8)
        (not_checked_p9)
        (not_hiddensurvivorat_s_p1)
        (not_hiddensurvivorat_s_p10)
        (not_hiddensurvivorat_s_p11)
        (not_hiddensurvivorat_s_p12)
        (not_hiddensurvivorat_s_p2)
        (not_hiddensurvivorat_s_p3)
        (not_hiddensurvivorat_s_p4)
        (not_hiddensurvivorat_s_p5)
        (not_hiddensurvivorat_s_p6)
        (not_hiddensurvivorat_s_p7)
        (not_hiddensurvivorat_s_p8)
        (not_hiddensurvivorat_s_p9)
        (not_succ_p10_p1)
        (not_succ_p10_p10)
        (not_succ_p10_p11)
        (not_succ_p10_p12)
        (not_succ_p10_p2)
        (not_succ_p10_p3)
        (not_succ_p10_p4)
        (not_succ_p10_p5)
        (not_succ_p10_p6)
        (not_succ_p10_p7)
        (not_succ_p10_p8)
        (not_succ_p10_p9)
        (not_succ_p11_p1)
        (not_succ_p11_p10)
        (not_succ_p11_p11)
        (not_succ_p11_p12)
        (not_succ_p11_p2)
        (not_succ_p11_p3)
        (not_succ_p11_p4)
        (not_succ_p11_p5)
        (not_succ_p11_p6)
        (not_succ_p11_p7)
        (not_succ_p11_p8)
        (not_succ_p11_p9)
        (not_succ_p12_p1)
        (not_succ_p12_p10)
        (not_succ_p12_p11)
        (not_succ_p12_p12)
        (not_succ_p12_p2)
        (not_succ_p12_p3)
        (not_succ_p12_p4)
        (not_succ_p12_p5)
        (not_succ_p12_p6)
        (not_succ_p12_p7)
        (not_succ_p12_p8)
        (not_succ_p12_p9)
        (not_succ_p1_p1)
        (not_succ_p1_p10)
        (not_succ_p1_p11)
        (not_succ_p1_p12)
        (not_succ_p1_p2)
        (not_succ_p1_p3)
        (not_succ_p1_p4)
        (not_succ_p1_p5)
        (not_succ_p1_p6)
        (not_succ_p1_p7)
        (not_succ_p1_p8)
        (not_succ_p1_p9)
        (not_succ_p2_p1)
        (not_succ_p2_p10)
        (not_succ_p2_p11)
        (not_succ_p2_p12)
        (not_succ_p2_p2)
        (not_succ_p2_p3)
        (not_succ_p2_p4)
        (not_succ_p2_p5)
        (not_succ_p2_p6)
        (not_succ_p2_p7)
        (not_succ_p2_p8)
        (not_succ_p2_p9)
        (not_succ_p3_p1)
        (not_succ_p3_p10)
        (not_succ_p3_p11)
        (not_succ_p3_p12)
        (not_succ_p3_p2)
        (not_succ_p3_p3)
        (not_succ_p3_p4)
        (not_succ_p3_p5)
        (not_succ_p3_p6)
        (not_succ_p3_p7)
        (not_succ_p3_p8)
        (not_succ_p3_p9)
        (not_succ_p4_p1)
        (not_succ_p4_p10)
        (not_succ_p4_p11)
        (not_succ_p4_p12)
        (not_succ_p4_p2)
        (not_succ_p4_p3)
        (not_succ_p4_p4)
        (not_succ_p4_p5)
        (not_succ_p4_p6)
        (not_succ_p4_p7)
        (not_succ_p4_p8)
        (not_succ_p4_p9)
        (not_succ_p5_p1)
        (not_succ_p5_p10)
        (not_succ_p5_p11)
        (not_succ_p5_p12)
        (not_succ_p5_p2)
        (not_succ_p5_p3)
        (not_succ_p5_p4)
        (not_succ_p5_p5)
        (not_succ_p5_p6)
        (not_succ_p5_p7)
        (not_succ_p5_p8)
        (not_succ_p5_p9)
        (not_succ_p6_p1)
        (not_succ_p6_p10)
        (not_succ_p6_p11)
        (not_succ_p6_p12)
        (not_succ_p6_p2)
        (not_succ_p6_p3)
        (not_succ_p6_p4)
        (not_succ_p6_p5)
        (not_succ_p6_p6)
        (not_succ_p6_p7)
        (not_succ_p6_p8)
        (not_succ_p6_p9)
        (not_succ_p7_p1)
        (not_succ_p7_p10)
        (not_succ_p7_p11)
        (not_succ_p7_p12)
        (not_succ_p7_p2)
        (not_succ_p7_p3)
        (not_succ_p7_p4)
        (not_succ_p7_p5)
        (not_succ_p7_p6)
        (not_succ_p7_p7)
        (not_succ_p7_p8)
        (not_succ_p7_p9)
        (not_succ_p8_p1)
        (not_succ_p8_p10)
        (not_succ_p8_p11)
        (not_succ_p8_p12)
        (not_succ_p8_p2)
        (not_succ_p8_p3)
        (not_succ_p8_p4)
        (not_succ_p8_p5)
        (not_succ_p8_p6)
        (not_succ_p8_p7)
        (not_succ_p8_p8)
        (not_succ_p8_p9)
        (not_succ_p9_p1)
        (not_succ_p9_p10)
        (not_succ_p9_p11)
        (not_succ_p9_p12)
        (not_succ_p9_p2)
        (not_succ_p9_p3)
        (not_succ_p9_p4)
        (not_succ_p9_p5)
        (not_succ_p9_p6)
        (not_succ_p9_p7)
        (not_succ_p9_p8)
        (not_succ_p9_p9)
        (not_survivorat_s_p1)
        (not_survivorat_s_p10)
        (not_survivorat_s_p11)
        (not_survivorat_s_p12)
        (not_survivorat_s_p2)
        (not_survivorat_s_p3)
        (not_survivorat_s_p4)
        (not_survivorat_s_p5)
        (not_survivorat_s_p6)
        (not_survivorat_s_p7)
        (not_survivorat_s_p8)
        (not_survivorat_s_p9)
        (Ba_not_checked_p1)
        (Ba_not_checked_p10)
        (Ba_not_checked_p11)
        (Ba_not_checked_p12)
        (Ba_not_checked_p2)
        (Ba_not_checked_p3)
        (Ba_not_checked_p4)
        (Ba_not_checked_p5)
        (Ba_not_checked_p6)
        (Ba_not_checked_p7)
        (Ba_not_checked_p8)
        (Ba_not_checked_p9)
        (Ba_not_hiddensurvivorat_s_p1)
        (Ba_not_hiddensurvivorat_s_p10)
        (Ba_not_hiddensurvivorat_s_p11)
        (Ba_not_hiddensurvivorat_s_p12)
        (Ba_not_hiddensurvivorat_s_p2)
        (Ba_not_hiddensurvivorat_s_p3)
        (Ba_not_hiddensurvivorat_s_p4)
        (Ba_not_hiddensurvivorat_s_p5)
        (Ba_not_hiddensurvivorat_s_p6)
        (Ba_not_hiddensurvivorat_s_p7)
        (Ba_not_hiddensurvivorat_s_p8)
        (Ba_not_hiddensurvivorat_s_p9)
        (Ba_not_survivorat_s_p1)
        (Ba_not_survivorat_s_p10)
        (Ba_not_survivorat_s_p11)
        (Ba_not_survivorat_s_p12)
        (Ba_not_survivorat_s_p2)
        (Ba_not_survivorat_s_p3)
        (Ba_not_survivorat_s_p4)
        (Ba_not_survivorat_s_p5)
        (Ba_not_survivorat_s_p6)
        (Ba_not_survivorat_s_p7)
        (Ba_not_survivorat_s_p8)
        (Ba_not_survivorat_s_p9)
        (Ba_checked_p1)
        (Ba_checked_p10)
        (Ba_checked_p11)
        (Ba_checked_p12)
        (Ba_checked_p2)
        (Ba_checked_p3)
        (Ba_checked_p4)
        (Ba_checked_p5)
        (Ba_checked_p6)
        (Ba_checked_p7)
        (Ba_checked_p8)
        (Ba_checked_p9)
        (Ba_hiddensurvivorat_s_p1)
        (Ba_hiddensurvivorat_s_p10)
        (Ba_hiddensurvivorat_s_p11)
        (Ba_hiddensurvivorat_s_p12)
        (Ba_hiddensurvivorat_s_p2)
        (Ba_hiddensurvivorat_s_p3)
        (Ba_hiddensurvivorat_s_p4)
        (Ba_hiddensurvivorat_s_p5)
        (Ba_hiddensurvivorat_s_p6)
        (Ba_hiddensurvivorat_s_p7)
        (Ba_hiddensurvivorat_s_p8)
        (Ba_hiddensurvivorat_s_p9)
        (Ba_survivorat_s_p1)
        (Ba_survivorat_s_p10)
        (Ba_survivorat_s_p11)
        (Ba_survivorat_s_p12)
        (Ba_survivorat_s_p2)
        (Ba_survivorat_s_p3)
        (Ba_survivorat_s_p4)
        (Ba_survivorat_s_p5)
        (Ba_survivorat_s_p6)
        (Ba_survivorat_s_p7)
        (Ba_survivorat_s_p8)
        (Ba_survivorat_s_p9)
        (Bb_not_checked_p1)
        (Bb_not_checked_p10)
        (Bb_not_checked_p11)
        (Bb_not_checked_p12)
        (Bb_not_checked_p2)
        (Bb_not_checked_p3)
        (Bb_not_checked_p4)
        (Bb_not_checked_p5)
        (Bb_not_checked_p6)
        (Bb_not_checked_p7)
        (Bb_not_checked_p8)
        (Bb_not_checked_p9)
        (Bb_not_hiddensurvivorat_s_p1)
        (Bb_not_hiddensurvivorat_s_p10)
        (Bb_not_hiddensurvivorat_s_p11)
        (Bb_not_hiddensurvivorat_s_p12)
        (Bb_not_hiddensurvivorat_s_p2)
        (Bb_not_hiddensurvivorat_s_p3)
        (Bb_not_hiddensurvivorat_s_p4)
        (Bb_not_hiddensurvivorat_s_p5)
        (Bb_not_hiddensurvivorat_s_p6)
        (Bb_not_hiddensurvivorat_s_p7)
        (Bb_not_hiddensurvivorat_s_p8)
        (Bb_not_hiddensurvivorat_s_p9)
        (Bb_not_survivorat_s_p1)
        (Bb_not_survivorat_s_p10)
        (Bb_not_survivorat_s_p11)
        (Bb_not_survivorat_s_p12)
        (Bb_not_survivorat_s_p2)
        (Bb_not_survivorat_s_p3)
        (Bb_not_survivorat_s_p4)
        (Bb_not_survivorat_s_p5)
        (Bb_not_survivorat_s_p6)
        (Bb_not_survivorat_s_p7)
        (Bb_not_survivorat_s_p8)
        (Bb_not_survivorat_s_p9)
        (Bb_checked_p1)
        (Bb_checked_p10)
        (Bb_checked_p11)
        (Bb_checked_p12)
        (Bb_checked_p2)
        (Bb_checked_p3)
        (Bb_checked_p4)
        (Bb_checked_p5)
        (Bb_checked_p6)
        (Bb_checked_p7)
        (Bb_checked_p8)
        (Bb_checked_p9)
        (Bb_hiddensurvivorat_s_p1)
        (Bb_hiddensurvivorat_s_p10)
        (Bb_hiddensurvivorat_s_p11)
        (Bb_hiddensurvivorat_s_p12)
        (Bb_hiddensurvivorat_s_p2)
        (Bb_hiddensurvivorat_s_p3)
        (Bb_hiddensurvivorat_s_p4)
        (Bb_hiddensurvivorat_s_p5)
        (Bb_hiddensurvivorat_s_p6)
        (Bb_hiddensurvivorat_s_p7)
        (Bb_hiddensurvivorat_s_p8)
        (Bb_hiddensurvivorat_s_p9)
        (Bb_survivorat_s_p1)
        (Bb_survivorat_s_p10)
        (Bb_survivorat_s_p11)
        (Bb_survivorat_s_p12)
        (Bb_survivorat_s_p2)
        (Bb_survivorat_s_p3)
        (Bb_survivorat_s_p4)
        (Bb_survivorat_s_p5)
        (Bb_survivorat_s_p6)
        (Bb_survivorat_s_p7)
        (Bb_survivorat_s_p8)
        (Bb_survivorat_s_p9)
        (Bc_not_checked_p1)
        (Bc_not_checked_p10)
        (Bc_not_checked_p11)
        (Bc_not_checked_p12)
        (Bc_not_checked_p2)
        (Bc_not_checked_p3)
        (Bc_not_checked_p4)
        (Bc_not_checked_p5)
        (Bc_not_checked_p6)
        (Bc_not_checked_p7)
        (Bc_not_checked_p8)
        (Bc_not_checked_p9)
        (Bc_not_hiddensurvivorat_s_p1)
        (Bc_not_hiddensurvivorat_s_p10)
        (Bc_not_hiddensurvivorat_s_p11)
        (Bc_not_hiddensurvivorat_s_p12)
        (Bc_not_hiddensurvivorat_s_p2)
        (Bc_not_hiddensurvivorat_s_p3)
        (Bc_not_hiddensurvivorat_s_p4)
        (Bc_not_hiddensurvivorat_s_p5)
        (Bc_not_hiddensurvivorat_s_p6)
        (Bc_not_hiddensurvivorat_s_p7)
        (Bc_not_hiddensurvivorat_s_p8)
        (Bc_not_hiddensurvivorat_s_p9)
        (Bc_not_survivorat_s_p1)
        (Bc_not_survivorat_s_p10)
        (Bc_not_survivorat_s_p11)
        (Bc_not_survivorat_s_p12)
        (Bc_not_survivorat_s_p2)
        (Bc_not_survivorat_s_p3)
        (Bc_not_survivorat_s_p4)
        (Bc_not_survivorat_s_p5)
        (Bc_not_survivorat_s_p6)
        (Bc_not_survivorat_s_p7)
        (Bc_not_survivorat_s_p8)
        (Bc_not_survivorat_s_p9)
        (Bc_checked_p1)
        (Bc_checked_p10)
        (Bc_checked_p11)
        (Bc_checked_p12)
        (Bc_checked_p2)
        (Bc_checked_p3)
        (Bc_checked_p4)
        (Bc_checked_p5)
        (Bc_checked_p6)
        (Bc_checked_p7)
        (Bc_checked_p8)
        (Bc_checked_p9)
        (Bc_hiddensurvivorat_s_p1)
        (Bc_hiddensurvivorat_s_p10)
        (Bc_hiddensurvivorat_s_p11)
        (Bc_hiddensurvivorat_s_p12)
        (Bc_hiddensurvivorat_s_p2)
        (Bc_hiddensurvivorat_s_p3)
        (Bc_hiddensurvivorat_s_p4)
        (Bc_hiddensurvivorat_s_p5)
        (Bc_hiddensurvivorat_s_p6)
        (Bc_hiddensurvivorat_s_p7)
        (Bc_hiddensurvivorat_s_p8)
        (Bc_hiddensurvivorat_s_p9)
        (Bc_survivorat_s_p1)
        (Bc_survivorat_s_p10)
        (Bc_survivorat_s_p11)
        (Bc_survivorat_s_p12)
        (Bc_survivorat_s_p2)
        (Bc_survivorat_s_p3)
        (Bc_survivorat_s_p4)
        (Bc_survivorat_s_p5)
        (Bc_survivorat_s_p6)
        (Bc_survivorat_s_p7)
        (Bc_survivorat_s_p8)
        (Bc_survivorat_s_p9)
        (Pa_not_checked_p1)
        (Pa_not_checked_p10)
        (Pa_not_checked_p11)
        (Pa_not_checked_p12)
        (Pa_not_checked_p2)
        (Pa_not_checked_p3)
        (Pa_not_checked_p4)
        (Pa_not_checked_p5)
        (Pa_not_checked_p6)
        (Pa_not_checked_p7)
        (Pa_not_checked_p8)
        (Pa_not_checked_p9)
        (Pa_not_hiddensurvivorat_s_p1)
        (Pa_not_hiddensurvivorat_s_p10)
        (Pa_not_hiddensurvivorat_s_p11)
        (Pa_not_hiddensurvivorat_s_p12)
        (Pa_not_hiddensurvivorat_s_p2)
        (Pa_not_hiddensurvivorat_s_p3)
        (Pa_not_hiddensurvivorat_s_p4)
        (Pa_not_hiddensurvivorat_s_p5)
        (Pa_not_hiddensurvivorat_s_p6)
        (Pa_not_hiddensurvivorat_s_p7)
        (Pa_not_hiddensurvivorat_s_p8)
        (Pa_not_hiddensurvivorat_s_p9)
        (Pa_not_survivorat_s_p1)
        (Pa_not_survivorat_s_p10)
        (Pa_not_survivorat_s_p11)
        (Pa_not_survivorat_s_p12)
        (Pa_not_survivorat_s_p2)
        (Pa_not_survivorat_s_p3)
        (Pa_not_survivorat_s_p4)
        (Pa_not_survivorat_s_p5)
        (Pa_not_survivorat_s_p6)
        (Pa_not_survivorat_s_p7)
        (Pa_not_survivorat_s_p8)
        (Pa_not_survivorat_s_p9)
        (Pa_checked_p1)
        (Pa_checked_p10)
        (Pa_checked_p11)
        (Pa_checked_p12)
        (Pa_checked_p2)
        (Pa_checked_p3)
        (Pa_checked_p4)
        (Pa_checked_p5)
        (Pa_checked_p6)
        (Pa_checked_p7)
        (Pa_checked_p8)
        (Pa_checked_p9)
        (Pa_hiddensurvivorat_s_p1)
        (Pa_hiddensurvivorat_s_p10)
        (Pa_hiddensurvivorat_s_p11)
        (Pa_hiddensurvivorat_s_p12)
        (Pa_hiddensurvivorat_s_p2)
        (Pa_hiddensurvivorat_s_p3)
        (Pa_hiddensurvivorat_s_p4)
        (Pa_hiddensurvivorat_s_p5)
        (Pa_hiddensurvivorat_s_p6)
        (Pa_hiddensurvivorat_s_p7)
        (Pa_hiddensurvivorat_s_p8)
        (Pa_hiddensurvivorat_s_p9)
        (Pa_survivorat_s_p1)
        (Pa_survivorat_s_p10)
        (Pa_survivorat_s_p11)
        (Pa_survivorat_s_p12)
        (Pa_survivorat_s_p2)
        (Pa_survivorat_s_p3)
        (Pa_survivorat_s_p4)
        (Pa_survivorat_s_p5)
        (Pa_survivorat_s_p6)
        (Pa_survivorat_s_p7)
        (Pa_survivorat_s_p8)
        (Pa_survivorat_s_p9)
        (Pb_not_checked_p1)
        (Pb_not_checked_p10)
        (Pb_not_checked_p11)
        (Pb_not_checked_p12)
        (Pb_not_checked_p2)
        (Pb_not_checked_p3)
        (Pb_not_checked_p4)
        (Pb_not_checked_p5)
        (Pb_not_checked_p6)
        (Pb_not_checked_p7)
        (Pb_not_checked_p8)
        (Pb_not_checked_p9)
        (Pb_not_hiddensurvivorat_s_p1)
        (Pb_not_hiddensurvivorat_s_p10)
        (Pb_not_hiddensurvivorat_s_p11)
        (Pb_not_hiddensurvivorat_s_p12)
        (Pb_not_hiddensurvivorat_s_p2)
        (Pb_not_hiddensurvivorat_s_p3)
        (Pb_not_hiddensurvivorat_s_p4)
        (Pb_not_hiddensurvivorat_s_p5)
        (Pb_not_hiddensurvivorat_s_p6)
        (Pb_not_hiddensurvivorat_s_p7)
        (Pb_not_hiddensurvivorat_s_p8)
        (Pb_not_hiddensurvivorat_s_p9)
        (Pb_not_survivorat_s_p1)
        (Pb_not_survivorat_s_p10)
        (Pb_not_survivorat_s_p11)
        (Pb_not_survivorat_s_p12)
        (Pb_not_survivorat_s_p2)
        (Pb_not_survivorat_s_p3)
        (Pb_not_survivorat_s_p4)
        (Pb_not_survivorat_s_p5)
        (Pb_not_survivorat_s_p6)
        (Pb_not_survivorat_s_p7)
        (Pb_not_survivorat_s_p8)
        (Pb_not_survivorat_s_p9)
        (Pb_checked_p1)
        (Pb_checked_p10)
        (Pb_checked_p11)
        (Pb_checked_p12)
        (Pb_checked_p2)
        (Pb_checked_p3)
        (Pb_checked_p4)
        (Pb_checked_p5)
        (Pb_checked_p6)
        (Pb_checked_p7)
        (Pb_checked_p8)
        (Pb_checked_p9)
        (Pb_hiddensurvivorat_s_p1)
        (Pb_hiddensurvivorat_s_p10)
        (Pb_hiddensurvivorat_s_p11)
        (Pb_hiddensurvivorat_s_p12)
        (Pb_hiddensurvivorat_s_p2)
        (Pb_hiddensurvivorat_s_p3)
        (Pb_hiddensurvivorat_s_p4)
        (Pb_hiddensurvivorat_s_p5)
        (Pb_hiddensurvivorat_s_p6)
        (Pb_hiddensurvivorat_s_p7)
        (Pb_hiddensurvivorat_s_p8)
        (Pb_hiddensurvivorat_s_p9)
        (Pb_survivorat_s_p1)
        (Pb_survivorat_s_p10)
        (Pb_survivorat_s_p11)
        (Pb_survivorat_s_p12)
        (Pb_survivorat_s_p2)
        (Pb_survivorat_s_p3)
        (Pb_survivorat_s_p4)
        (Pb_survivorat_s_p5)
        (Pb_survivorat_s_p6)
        (Pb_survivorat_s_p7)
        (Pb_survivorat_s_p8)
        (Pb_survivorat_s_p9)
        (Pc_not_checked_p1)
        (Pc_not_checked_p10)
        (Pc_not_checked_p11)
        (Pc_not_checked_p12)
        (Pc_not_checked_p2)
        (Pc_not_checked_p3)
        (Pc_not_checked_p4)
        (Pc_not_checked_p5)
        (Pc_not_checked_p6)
        (Pc_not_checked_p7)
        (Pc_not_checked_p8)
        (Pc_not_checked_p9)
        (Pc_not_hiddensurvivorat_s_p1)
        (Pc_not_hiddensurvivorat_s_p10)
        (Pc_not_hiddensurvivorat_s_p11)
        (Pc_not_hiddensurvivorat_s_p12)
        (Pc_not_hiddensurvivorat_s_p2)
        (Pc_not_hiddensurvivorat_s_p3)
        (Pc_not_hiddensurvivorat_s_p4)
        (Pc_not_hiddensurvivorat_s_p5)
        (Pc_not_hiddensurvivorat_s_p6)
        (Pc_not_hiddensurvivorat_s_p7)
        (Pc_not_hiddensurvivorat_s_p8)
        (Pc_not_hiddensurvivorat_s_p9)
        (Pc_not_survivorat_s_p1)
        (Pc_not_survivorat_s_p10)
        (Pc_not_survivorat_s_p11)
        (Pc_not_survivorat_s_p12)
        (Pc_not_survivorat_s_p2)
        (Pc_not_survivorat_s_p3)
        (Pc_not_survivorat_s_p4)
        (Pc_not_survivorat_s_p5)
        (Pc_not_survivorat_s_p6)
        (Pc_not_survivorat_s_p7)
        (Pc_not_survivorat_s_p8)
        (Pc_not_survivorat_s_p9)
        (Pc_checked_p1)
        (Pc_checked_p10)
        (Pc_checked_p11)
        (Pc_checked_p12)
        (Pc_checked_p2)
        (Pc_checked_p3)
        (Pc_checked_p4)
        (Pc_checked_p5)
        (Pc_checked_p6)
        (Pc_checked_p7)
        (Pc_checked_p8)
        (Pc_checked_p9)
        (Pc_hiddensurvivorat_s_p1)
        (Pc_hiddensurvivorat_s_p10)
        (Pc_hiddensurvivorat_s_p11)
        (Pc_hiddensurvivorat_s_p12)
        (Pc_hiddensurvivorat_s_p2)
        (Pc_hiddensurvivorat_s_p3)
        (Pc_hiddensurvivorat_s_p4)
        (Pc_hiddensurvivorat_s_p5)
        (Pc_hiddensurvivorat_s_p6)
        (Pc_hiddensurvivorat_s_p7)
        (Pc_hiddensurvivorat_s_p8)
        (Pc_hiddensurvivorat_s_p9)
        (Pc_survivorat_s_p1)
        (Pc_survivorat_s_p10)
        (Pc_survivorat_s_p11)
        (Pc_survivorat_s_p12)
        (Pc_survivorat_s_p2)
        (Pc_survivorat_s_p3)
        (Pc_survivorat_s_p4)
        (Pc_survivorat_s_p5)
        (Pc_survivorat_s_p6)
        (Pc_survivorat_s_p7)
        (Pc_survivorat_s_p8)
        (Pc_survivorat_s_p9)
        (at_a_p1)
        (at_a_p10)
        (at_a_p11)
        (at_a_p12)
        (at_a_p2)
        (at_a_p3)
        (at_a_p4)
        (at_a_p5)
        (at_a_p6)
        (at_a_p7)
        (at_a_p8)
        (at_a_p9)
        (at_b_p1)
        (at_b_p10)
        (at_b_p11)
        (at_b_p12)
        (at_b_p2)
        (at_b_p3)
        (at_b_p4)
        (at_b_p5)
        (at_b_p6)
        (at_b_p7)
        (at_b_p8)
        (at_b_p9)
        (at_c_p1)
        (at_c_p10)
        (at_c_p11)
        (at_c_p12)
        (at_c_p2)
        (at_c_p3)
        (at_c_p4)
        (at_c_p5)
        (at_c_p6)
        (at_c_p7)
        (at_c_p8)
        (at_c_p9)
        (checked_p1)
        (checked_p10)
        (checked_p11)
        (checked_p12)
        (checked_p2)
        (checked_p3)
        (checked_p4)
        (checked_p5)
        (checked_p6)
        (checked_p7)
        (checked_p8)
        (checked_p9)
        (hiddensurvivorat_s_p1)
        (hiddensurvivorat_s_p10)
        (hiddensurvivorat_s_p11)
        (hiddensurvivorat_s_p12)
        (hiddensurvivorat_s_p2)
        (hiddensurvivorat_s_p3)
        (hiddensurvivorat_s_p4)
        (hiddensurvivorat_s_p5)
        (hiddensurvivorat_s_p6)
        (hiddensurvivorat_s_p7)
        (hiddensurvivorat_s_p8)
        (hiddensurvivorat_s_p9)
        (succ_p10_p1)
        (succ_p10_p10)
        (succ_p10_p11)
        (succ_p10_p12)
        (succ_p10_p2)
        (succ_p10_p3)
        (succ_p10_p4)
        (succ_p10_p5)
        (succ_p10_p6)
        (succ_p10_p7)
        (succ_p10_p8)
        (succ_p10_p9)
        (succ_p11_p1)
        (succ_p11_p10)
        (succ_p11_p11)
        (succ_p11_p12)
        (succ_p11_p2)
        (succ_p11_p3)
        (succ_p11_p4)
        (succ_p11_p5)
        (succ_p11_p6)
        (succ_p11_p7)
        (succ_p11_p8)
        (succ_p11_p9)
        (succ_p12_p1)
        (succ_p12_p10)
        (succ_p12_p11)
        (succ_p12_p12)
        (succ_p12_p2)
        (succ_p12_p3)
        (succ_p12_p4)
        (succ_p12_p5)
        (succ_p12_p6)
        (succ_p12_p7)
        (succ_p12_p8)
        (succ_p12_p9)
        (succ_p1_p1)
        (succ_p1_p10)
        (succ_p1_p11)
        (succ_p1_p12)
        (succ_p1_p2)
        (succ_p1_p3)
        (succ_p1_p4)
        (succ_p1_p5)
        (succ_p1_p6)
        (succ_p1_p7)
        (succ_p1_p8)
        (succ_p1_p9)
        (succ_p2_p1)
        (succ_p2_p10)
        (succ_p2_p11)
        (succ_p2_p12)
        (succ_p2_p2)
        (succ_p2_p3)
        (succ_p2_p4)
        (succ_p2_p5)
        (succ_p2_p6)
        (succ_p2_p7)
        (succ_p2_p8)
        (succ_p2_p9)
        (succ_p3_p1)
        (succ_p3_p10)
        (succ_p3_p11)
        (succ_p3_p12)
        (succ_p3_p2)
        (succ_p3_p3)
        (succ_p3_p4)
        (succ_p3_p5)
        (succ_p3_p6)
        (succ_p3_p7)
        (succ_p3_p8)
        (succ_p3_p9)
        (succ_p4_p1)
        (succ_p4_p10)
        (succ_p4_p11)
        (succ_p4_p12)
        (succ_p4_p2)
        (succ_p4_p3)
        (succ_p4_p4)
        (succ_p4_p5)
        (succ_p4_p6)
        (succ_p4_p7)
        (succ_p4_p8)
        (succ_p4_p9)
        (succ_p5_p1)
        (succ_p5_p10)
        (succ_p5_p11)
        (succ_p5_p12)
        (succ_p5_p2)
        (succ_p5_p3)
        (succ_p5_p4)
        (succ_p5_p5)
        (succ_p5_p6)
        (succ_p5_p7)
        (succ_p5_p8)
        (succ_p5_p9)
        (succ_p6_p1)
        (succ_p6_p10)
        (succ_p6_p11)
        (succ_p6_p12)
        (succ_p6_p2)
        (succ_p6_p3)
        (succ_p6_p4)
        (succ_p6_p5)
        (succ_p6_p6)
        (succ_p6_p7)
        (succ_p6_p8)
        (succ_p6_p9)
        (succ_p7_p1)
        (succ_p7_p10)
        (succ_p7_p11)
        (succ_p7_p12)
        (succ_p7_p2)
        (succ_p7_p3)
        (succ_p7_p4)
        (succ_p7_p5)
        (succ_p7_p6)
        (succ_p7_p7)
        (succ_p7_p8)
        (succ_p7_p9)
        (succ_p8_p1)
        (succ_p8_p10)
        (succ_p8_p11)
        (succ_p8_p12)
        (succ_p8_p2)
        (succ_p8_p3)
        (succ_p8_p4)
        (succ_p8_p5)
        (succ_p8_p6)
        (succ_p8_p7)
        (succ_p8_p8)
        (succ_p8_p9)
        (succ_p9_p1)
        (succ_p9_p10)
        (succ_p9_p11)
        (succ_p9_p12)
        (succ_p9_p2)
        (succ_p9_p3)
        (succ_p9_p4)
        (succ_p9_p5)
        (succ_p9_p6)
        (succ_p9_p7)
        (succ_p9_p8)
        (succ_p9_p9)
        (survivorat_s_p1)
        (survivorat_s_p10)
        (survivorat_s_p11)
        (survivorat_s_p12)
        (survivorat_s_p2)
        (survivorat_s_p3)
        (survivorat_s_p4)
        (survivorat_s_p5)
        (survivorat_s_p6)
        (survivorat_s_p7)
        (survivorat_s_p8)
        (survivorat_s_p9)
    )

    (:action badcomm_p10_a_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #18448: <==closure== 69426 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #29723: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #42574: <==closure== 29723 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #45977: <==closure== 73875 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #69426: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #73875: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #14054: <==unclosure== 36461 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #16536: <==negation-removal== 45977 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #17788: <==negation-removal== 73875 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #36438: <==negation-removal== 18448 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #36461: <==uncertain_firing== 29723 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #37353: <==uncertain_firing== 69426 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #40617: <==unclosure== 37353 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #51003: <==uncertain_firing== 73875 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #51055: <==negation-removal== 42574 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #55318: <==unclosure== 51003 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #59197: <==negation-removal== 69426 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #67748: <==negation-removal== 29723 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #18448: <==closure== 69426 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #29723: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #42574: <==closure== 29723 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #45977: <==closure== 73875 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #69426: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #73875: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #14054: <==unclosure== 36461 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #16536: <==negation-removal== 45977 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #17788: <==negation-removal== 73875 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #36438: <==negation-removal== 18448 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #36461: <==uncertain_firing== 29723 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #37353: <==uncertain_firing== 69426 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #40617: <==unclosure== 37353 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #51003: <==uncertain_firing== 73875 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #51055: <==negation-removal== 42574 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #55318: <==unclosure== 51003 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #59197: <==negation-removal== 69426 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #67748: <==negation-removal== 29723 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #18448: <==closure== 69426 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #29723: origin
                    (when (and (not_at_b_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #42574: <==closure== 29723 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #45977: <==closure== 73875 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #69426: origin
                    (when (and (not_at_c_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #73875: origin
                    (when (and (not_at_a_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #14054: <==unclosure== 36461 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #16536: <==negation-removal== 45977 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #17788: <==negation-removal== 73875 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #36438: <==negation-removal== 18448 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #36461: <==uncertain_firing== 29723 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #37353: <==uncertain_firing== 69426 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #40617: <==unclosure== 37353 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #51003: <==uncertain_firing== 73875 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #51055: <==negation-removal== 42574 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #55318: <==unclosure== 51003 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #59197: <==negation-removal== 69426 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #67748: <==negation-removal== 29723 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #62576: <==closure== 81374 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #64216: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #75794: <==closure== 89117 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #78147: <==closure== 64216 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #81374: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #89117: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13782: <==negation-removal== 81374 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #19597: <==negation-removal== 62576 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #20196: <==unclosure== 74315 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #22689: <==negation-removal== 78147 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #22918: <==negation-removal== 64216 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #35926: <==uncertain_firing== 81374 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43146: <==unclosure== 47544 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #45507: <==unclosure== 35926 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #47544: <==uncertain_firing== 64216 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #52960: <==negation-removal== 89117 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #56293: <==negation-removal== 75794 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #74315: <==uncertain_firing== 89117 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #62576: <==closure== 81374 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #64216: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #75794: <==closure== 89117 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #78147: <==closure== 64216 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #81374: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #89117: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13782: <==negation-removal== 81374 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #19597: <==negation-removal== 62576 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #20196: <==unclosure== 74315 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #22689: <==negation-removal== 78147 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #22918: <==negation-removal== 64216 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #35926: <==uncertain_firing== 81374 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43146: <==unclosure== 47544 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #45507: <==unclosure== 35926 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #47544: <==uncertain_firing== 64216 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #52960: <==negation-removal== 89117 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #56293: <==negation-removal== 75794 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #74315: <==uncertain_firing== 89117 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #62576: <==closure== 81374 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #64216: origin
                    (when (and (not_at_c_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #75794: <==closure== 89117 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #78147: <==closure== 64216 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #81374: origin
                    (when (and (not_at_b_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #89117: origin
                    (when (and (not_at_a_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #13782: <==negation-removal== 81374 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #19597: <==negation-removal== 62576 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #20196: <==unclosure== 74315 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #22689: <==negation-removal== 78147 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #22918: <==negation-removal== 64216 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #35926: <==uncertain_firing== 81374 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #43146: <==unclosure== 47544 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #45507: <==unclosure== 35926 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #47544: <==uncertain_firing== 64216 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #52960: <==negation-removal== 89117 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #56293: <==negation-removal== 75794 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #74315: <==uncertain_firing== 89117 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #13000: <==closure== 64829 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #41999: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #53447: <==closure== 41999 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #64829: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #83943: <==closure== 88194 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #88194: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #24712: <==uncertain_firing== 41999 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #26541: <==negation-removal== 53447 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #26773: <==unclosure== 24712 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #27904: <==negation-removal== 64829 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29666: <==unclosure== 79963 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #44094: <==negation-removal== 88194 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #46860: <==negation-removal== 83943 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #70681: <==unclosure== 86514 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #79963: <==uncertain_firing== 88194 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86514: <==uncertain_firing== 64829 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #87378: <==negation-removal== 41999 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #91852: <==negation-removal== 13000 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #13000: <==closure== 64829 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #41999: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #53447: <==closure== 41999 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #64829: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #83943: <==closure== 88194 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #88194: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #24712: <==uncertain_firing== 41999 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #26541: <==negation-removal== 53447 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #26773: <==unclosure== 24712 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #27904: <==negation-removal== 64829 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29666: <==unclosure== 79963 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #44094: <==negation-removal== 88194 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #46860: <==negation-removal== 83943 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #70681: <==unclosure== 86514 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #79963: <==uncertain_firing== 88194 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86514: <==uncertain_firing== 64829 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #87378: <==negation-removal== 41999 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #91852: <==negation-removal== 13000 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #13000: <==closure== 64829 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #41999: origin
                    (when (and (not_at_a_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #53447: <==closure== 41999 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #64829: origin
                    (when (and (not_at_b_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #83943: <==closure== 88194 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #88194: origin
                    (when (and (not_at_c_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #24712: <==uncertain_firing== 41999 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #26541: <==negation-removal== 53447 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #26773: <==unclosure== 24712 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #27904: <==negation-removal== 64829 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #29666: <==unclosure== 79963 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #44094: <==negation-removal== 88194 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #46860: <==negation-removal== 83943 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #70681: <==unclosure== 86514 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #79963: <==uncertain_firing== 88194 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #86514: <==uncertain_firing== 64829 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #87378: <==negation-removal== 41999 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #91852: <==negation-removal== 13000 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #10375: <==closure== 51106 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11586: <==closure== 80167 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #30681: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #51106: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #80167: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #99912: <==closure== 30681 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #12569: <==negation-removal== 30681 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #17512: <==negation-removal== 99912 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #17636: <==negation-removal== 51106 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #29979: <==uncertain_firing== 51106 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47813: <==unclosure== 60597 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #48462: <==uncertain_firing== 30681 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #60597: <==uncertain_firing== 80167 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #61225: <==unclosure== 48462 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63091: <==negation-removal== 10375 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #70529: <==unclosure== 29979 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #85553: <==negation-removal== 11586 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #89450: <==negation-removal== 80167 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #10375: <==closure== 51106 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11586: <==closure== 80167 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #30681: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #51106: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #80167: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #99912: <==closure== 30681 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #12569: <==negation-removal== 30681 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #17512: <==negation-removal== 99912 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #17636: <==negation-removal== 51106 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #29979: <==uncertain_firing== 51106 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47813: <==unclosure== 60597 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #48462: <==uncertain_firing== 30681 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #60597: <==uncertain_firing== 80167 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #61225: <==unclosure== 48462 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63091: <==negation-removal== 10375 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #70529: <==unclosure== 29979 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #85553: <==negation-removal== 11586 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #89450: <==negation-removal== 80167 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #10375: <==closure== 51106 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #11586: <==closure== 80167 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #30681: origin
                    (when (and (not_at_a_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #51106: origin
                    (when (and (not_at_b_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #80167: origin
                    (when (and (not_at_c_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #99912: <==closure== 30681 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #12569: <==negation-removal== 30681 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #17512: <==negation-removal== 99912 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #17636: <==negation-removal== 51106 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #29979: <==uncertain_firing== 51106 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #47813: <==unclosure== 60597 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #48462: <==uncertain_firing== 30681 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #60597: <==uncertain_firing== 80167 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #61225: <==unclosure== 48462 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #63091: <==negation-removal== 10375 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #70529: <==unclosure== 29979 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #85553: <==negation-removal== 11586 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #89450: <==negation-removal== 80167 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #19119: <==closure== 81891 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #43678: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #49760: <==closure== 43678 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #81891: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #84847: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #90534: <==closure== 84847 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #16687: <==unclosure== 79719 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #30986: <==negation-removal== 43678 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #34942: <==negation-removal== 19119 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36968: <==unclosure== 50961 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #38701: <==negation-removal== 90534 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #49796: <==negation-removal== 49760 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #50961: <==uncertain_firing== 81891 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #54488: <==negation-removal== 81891 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #59518: <==negation-removal== 84847 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #64671: <==unclosure== 68583 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #68583: <==uncertain_firing== 84847 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #79719: <==uncertain_firing== 43678 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #19119: <==closure== 81891 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #43678: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #49760: <==closure== 43678 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #81891: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #84847: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #90534: <==closure== 84847 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #16687: <==unclosure== 79719 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #30986: <==negation-removal== 43678 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #34942: <==negation-removal== 19119 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36968: <==unclosure== 50961 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #38701: <==negation-removal== 90534 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #49796: <==negation-removal== 49760 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #50961: <==uncertain_firing== 81891 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #54488: <==negation-removal== 81891 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #59518: <==negation-removal== 84847 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #64671: <==unclosure== 68583 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #68583: <==uncertain_firing== 84847 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #79719: <==uncertain_firing== 43678 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #19119: <==closure== 81891 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #43678: origin
                    (when (and (not_at_c_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #49760: <==closure== 43678 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #81891: origin
                    (when (and (not_at_b_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #84847: origin
                    (when (and (not_at_a_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #90534: <==closure== 84847 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #16687: <==unclosure== 79719 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #30986: <==negation-removal== 43678 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #34942: <==negation-removal== 19119 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #36968: <==unclosure== 50961 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #38701: <==negation-removal== 90534 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #49796: <==negation-removal== 49760 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #50961: <==uncertain_firing== 81891 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #54488: <==negation-removal== 81891 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #59518: <==negation-removal== 84847 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #64671: <==unclosure== 68583 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #68583: <==uncertain_firing== 84847 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #79719: <==uncertain_firing== 43678 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #18789: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #32980: <==closure== 45096 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #45096: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #71660: <==closure== 18789 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #73174: <==closure== 85265 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85265: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #19381: <==uncertain_firing== 45096 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #20645: <==negation-removal== 73174 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #25802: <==uncertain_firing== 85265 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #29658: <==uncertain_firing== 18789 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #36884: <==negation-removal== 32980 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #41832: <==negation-removal== 45096 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #42536: <==negation-removal== 18789 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #54657: <==negation-removal== 85265 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #58509: <==unclosure== 19381 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #59044: <==negation-removal== 71660 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #71396: <==unclosure== 29658 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #84613: <==unclosure== 25802 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #18789: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #32980: <==closure== 45096 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #45096: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #71660: <==closure== 18789 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #73174: <==closure== 85265 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85265: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #19381: <==uncertain_firing== 45096 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #20645: <==negation-removal== 73174 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #25802: <==uncertain_firing== 85265 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #29658: <==uncertain_firing== 18789 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #36884: <==negation-removal== 32980 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #41832: <==negation-removal== 45096 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #42536: <==negation-removal== 18789 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #54657: <==negation-removal== 85265 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #58509: <==unclosure== 19381 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #59044: <==negation-removal== 71660 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #71396: <==unclosure== 29658 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #84613: <==unclosure== 25802 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #18789: origin
                    (when (and (not_at_a_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #32980: <==closure== 45096 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #45096: origin
                    (when (and (not_at_c_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #71660: <==closure== 18789 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #73174: <==closure== 85265 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #85265: origin
                    (when (and (not_at_b_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #19381: <==uncertain_firing== 45096 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #20645: <==negation-removal== 73174 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #25802: <==uncertain_firing== 85265 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #29658: <==uncertain_firing== 18789 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #36884: <==negation-removal== 32980 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #41832: <==negation-removal== 45096 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #42536: <==negation-removal== 18789 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #54657: <==negation-removal== 85265 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #58509: <==unclosure== 19381 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #59044: <==negation-removal== 71660 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #71396: <==unclosure== 29658 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #84613: <==unclosure== 25802 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #31059: <==closure== 81766 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #32522: <==closure== 52375 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36068: <==closure== 37723 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #37723: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52375: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81766: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #17741: <==uncertain_firing== 81766 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #26662: <==unclosure== 34923 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #31640: <==negation-removal== 37723 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #34923: <==uncertain_firing== 37723 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45502: <==uncertain_firing== 52375 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #53254: <==negation-removal== 81766 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57857: <==negation-removal== 32522 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #61267: <==negation-removal== 36068 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77408: <==unclosure== 17741 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80781: <==negation-removal== 52375 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #86280: <==negation-removal== 31059 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #87393: <==unclosure== 45502 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #31059: <==closure== 81766 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #32522: <==closure== 52375 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36068: <==closure== 37723 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #37723: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52375: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81766: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #17741: <==uncertain_firing== 81766 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #26662: <==unclosure== 34923 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #31640: <==negation-removal== 37723 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #34923: <==uncertain_firing== 37723 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45502: <==uncertain_firing== 52375 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #53254: <==negation-removal== 81766 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57857: <==negation-removal== 32522 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #61267: <==negation-removal== 36068 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77408: <==unclosure== 17741 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80781: <==negation-removal== 52375 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #86280: <==negation-removal== 31059 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #87393: <==unclosure== 45502 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #31059: <==closure== 81766 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #32522: <==closure== 52375 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #36068: <==closure== 37723 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #37723: origin
                    (when (and (not_at_a_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #52375: origin
                    (when (and (not_at_b_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #81766: origin
                    (when (and (not_at_c_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #17741: <==uncertain_firing== 81766 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #26662: <==unclosure== 34923 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #31640: <==negation-removal== 37723 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #34923: <==uncertain_firing== 37723 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #45502: <==uncertain_firing== 52375 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #53254: <==negation-removal== 81766 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57857: <==negation-removal== 32522 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #61267: <==negation-removal== 36068 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #77408: <==unclosure== 17741 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #80781: <==negation-removal== 52375 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #86280: <==negation-removal== 31059 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #87393: <==unclosure== 45502 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #12573: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #51067: <==closure== 86484 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #65680: <==closure== 78691 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #78691: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #86484: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #87711: <==closure== 12573 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #12602: <==uncertain_firing== 86484 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #15881: <==negation-removal== 12573 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #23525: <==negation-removal== 87711 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #26660: <==unclosure== 12602 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58227: <==negation-removal== 86484 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #67514: <==unclosure== 72202 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #69263: <==uncertain_firing== 12573 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #72202: <==uncertain_firing== 78691 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #78060: <==negation-removal== 51067 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82371: <==unclosure== 69263 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #84159: <==negation-removal== 78691 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #86821: <==negation-removal== 65680 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #12573: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #51067: <==closure== 86484 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #65680: <==closure== 78691 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #78691: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #86484: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #87711: <==closure== 12573 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #12602: <==uncertain_firing== 86484 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #15881: <==negation-removal== 12573 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #23525: <==negation-removal== 87711 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #26660: <==unclosure== 12602 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58227: <==negation-removal== 86484 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #67514: <==unclosure== 72202 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #69263: <==uncertain_firing== 12573 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #72202: <==uncertain_firing== 78691 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #78060: <==negation-removal== 51067 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82371: <==unclosure== 69263 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #84159: <==negation-removal== 78691 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #86821: <==negation-removal== 65680 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #12573: origin
                    (when (and (not_at_c_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #51067: <==closure== 86484 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #65680: <==closure== 78691 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #78691: origin
                    (when (and (not_at_b_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #86484: origin
                    (when (and (not_at_a_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #87711: <==closure== 12573 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #12602: <==uncertain_firing== 86484 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #15881: <==negation-removal== 12573 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #23525: <==negation-removal== 87711 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #26660: <==unclosure== 12602 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #58227: <==negation-removal== 86484 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #67514: <==unclosure== 72202 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #69263: <==uncertain_firing== 12573 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #72202: <==uncertain_firing== 78691 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #78060: <==negation-removal== 51067 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #82371: <==unclosure== 69263 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #84159: <==negation-removal== 78691 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #86821: <==negation-removal== 65680 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #12166: <==closure== 24284 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #24284: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37866: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #41106: <==closure== 37866 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #73519: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #80976: <==closure== 73519 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #15915: <==uncertain_firing== 24284 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #16108: <==negation-removal== 41106 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #17061: <==negation-removal== 12166 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #26756: <==negation-removal== 73519 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33105: <==uncertain_firing== 73519 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #42038: <==unclosure== 15915 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #51478: <==negation-removal== 37866 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #74532: <==unclosure== 93038 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78807: <==negation-removal== 80976 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #80567: <==negation-removal== 24284 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #82610: <==unclosure== 33105 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #93038: <==uncertain_firing== 37866 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #12166: <==closure== 24284 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #24284: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37866: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #41106: <==closure== 37866 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #73519: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #80976: <==closure== 73519 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #15915: <==uncertain_firing== 24284 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #16108: <==negation-removal== 41106 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #17061: <==negation-removal== 12166 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #26756: <==negation-removal== 73519 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33105: <==uncertain_firing== 73519 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #42038: <==unclosure== 15915 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #51478: <==negation-removal== 37866 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #74532: <==unclosure== 93038 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78807: <==negation-removal== 80976 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #80567: <==negation-removal== 24284 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #82610: <==unclosure== 33105 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #93038: <==uncertain_firing== 37866 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #12166: <==closure== 24284 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #24284: origin
                    (when (and (not_at_a_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #37866: origin
                    (when (and (not_at_b_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #41106: <==closure== 37866 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #73519: origin
                    (when (and (not_at_c_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #80976: <==closure== 73519 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #15915: <==uncertain_firing== 24284 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #16108: <==negation-removal== 41106 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #17061: <==negation-removal== 12166 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #26756: <==negation-removal== 73519 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #33105: <==uncertain_firing== 73519 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #42038: <==unclosure== 15915 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #51478: <==negation-removal== 37866 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #74532: <==unclosure== 93038 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #78807: <==negation-removal== 80976 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #80567: <==negation-removal== 24284 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #82610: <==unclosure== 33105 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #93038: <==uncertain_firing== 37866 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #28292: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #33576: <==closure== 28292 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #37713: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #48608: <==closure== 73331 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #49169: <==closure== 37713 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73331: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #10286: <==uncertain_firing== 28292 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #11831: <==unclosure== 43476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #31155: <==negation-removal== 37713 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #43476: <==uncertain_firing== 37713 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #63125: <==unclosure== 10286 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #63978: <==negation-removal== 28292 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #65579: <==negation-removal== 73331 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #70331: <==negation-removal== 48608 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #76868: <==uncertain_firing== 73331 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79729: <==negation-removal== 33576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #85023: <==negation-removal== 49169 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #91380: <==unclosure== 76868 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #28292: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #33576: <==closure== 28292 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #37713: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #48608: <==closure== 73331 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #49169: <==closure== 37713 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73331: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #10286: <==uncertain_firing== 28292 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #11831: <==unclosure== 43476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #31155: <==negation-removal== 37713 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #43476: <==uncertain_firing== 37713 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #63125: <==unclosure== 10286 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #63978: <==negation-removal== 28292 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #65579: <==negation-removal== 73331 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #70331: <==negation-removal== 48608 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #76868: <==uncertain_firing== 73331 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79729: <==negation-removal== 33576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #85023: <==negation-removal== 49169 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #91380: <==unclosure== 76868 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #28292: origin
                    (when (and (not_at_b_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #33576: <==closure== 28292 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #37713: origin
                    (when (and (not_at_a_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #48608: <==closure== 73331 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #49169: <==closure== 37713 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #73331: origin
                    (when (and (not_at_c_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #10286: <==uncertain_firing== 28292 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #11831: <==unclosure== 43476 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #31155: <==negation-removal== 37713 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #43476: <==uncertain_firing== 37713 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #63125: <==unclosure== 10286 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #63978: <==negation-removal== 28292 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #65579: <==negation-removal== 73331 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #70331: <==negation-removal== 48608 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #76868: <==uncertain_firing== 73331 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #79729: <==negation-removal== 33576 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #85023: <==negation-removal== 49169 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #91380: <==unclosure== 76868 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #46343: <==closure== 79106 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #58077: <==closure== 63572 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #63572: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66413: <==closure== 86133 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #79106: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #86133: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #12637: <==negation-removal== 79106 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #15949: <==unclosure== 90277 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #19779: <==negation-removal== 46343 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #48660: <==uncertain_firing== 86133 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #50151: <==unclosure== 64197 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #64197: <==uncertain_firing== 63572 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64446: <==negation-removal== 63572 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #72315: <==negation-removal== 66413 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #78288: <==unclosure== 48660 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #83245: <==negation-removal== 58077 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #89418: <==negation-removal== 86133 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #90277: <==uncertain_firing== 79106 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #46343: <==closure== 79106 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #58077: <==closure== 63572 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #63572: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66413: <==closure== 86133 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #79106: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #86133: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #12637: <==negation-removal== 79106 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #15949: <==unclosure== 90277 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #19779: <==negation-removal== 46343 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #48660: <==uncertain_firing== 86133 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #50151: <==unclosure== 64197 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #64197: <==uncertain_firing== 63572 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64446: <==negation-removal== 63572 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #72315: <==negation-removal== 66413 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #78288: <==unclosure== 48660 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #83245: <==negation-removal== 58077 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #89418: <==negation-removal== 86133 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #90277: <==uncertain_firing== 79106 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #46343: <==closure== 79106 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #58077: <==closure== 63572 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #63572: origin
                    (when (and (not_at_c_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #66413: <==closure== 86133 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #79106: origin
                    (when (and (not_at_b_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #86133: origin
                    (when (and (not_at_a_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #12637: <==negation-removal== 79106 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #15949: <==unclosure== 90277 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #19779: <==negation-removal== 46343 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #48660: <==uncertain_firing== 86133 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #50151: <==unclosure== 64197 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #64197: <==uncertain_firing== 63572 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #64446: <==negation-removal== 63572 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #72315: <==negation-removal== 66413 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #78288: <==unclosure== 48660 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #83245: <==negation-removal== 58077 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #89418: <==negation-removal== 86133 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #90277: <==uncertain_firing== 79106 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #12309: <==closure== 78701 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #19397: <==closure== 54018 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #54018: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #59147: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #78701: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #91160: <==closure== 59147 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13298: <==uncertain_firing== 78701 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13778: <==unclosure== 82197 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #28557: <==negation-removal== 91160 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #29032: <==negation-removal== 12309 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #39631: <==unclosure== 13298 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43674: <==negation-removal== 59147 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #51713: <==negation-removal== 19397 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #67297: <==unclosure== 80510 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #76355: <==negation-removal== 78701 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80510: <==uncertain_firing== 54018 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #82197: <==uncertain_firing== 59147 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #87410: <==negation-removal== 54018 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #12309: <==closure== 78701 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #19397: <==closure== 54018 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #54018: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #59147: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #78701: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #91160: <==closure== 59147 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13298: <==uncertain_firing== 78701 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13778: <==unclosure== 82197 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #28557: <==negation-removal== 91160 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #29032: <==negation-removal== 12309 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #39631: <==unclosure== 13298 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43674: <==negation-removal== 59147 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #51713: <==negation-removal== 19397 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #67297: <==unclosure== 80510 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #76355: <==negation-removal== 78701 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80510: <==uncertain_firing== 54018 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #82197: <==uncertain_firing== 59147 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #87410: <==negation-removal== 54018 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #12309: <==closure== 78701 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #19397: <==closure== 54018 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #54018: origin
                    (when (and (not_at_c_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #59147: origin
                    (when (and (not_at_b_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #78701: origin
                    (when (and (not_at_a_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #91160: <==closure== 59147 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #13298: <==uncertain_firing== 78701 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #13778: <==unclosure== 82197 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #28557: <==negation-removal== 91160 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #29032: <==negation-removal== 12309 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #39631: <==unclosure== 13298 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43674: <==negation-removal== 59147 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #51713: <==negation-removal== 19397 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #67297: <==unclosure== 80510 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #76355: <==negation-removal== 78701 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #80510: <==uncertain_firing== 54018 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #82197: <==uncertain_firing== 59147 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #87410: <==negation-removal== 54018 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #17070: origin
                    (Ba_survivorat_s_p10)

                    ; #36235: <==closure== 44144 (pos)
                    (Pc_survivorat_s_p10)

                    ; #36284: origin
                    (Bb_survivorat_s_p10)

                    ; #44144: origin
                    (Bc_survivorat_s_p10)

                    ; #73641: <==closure== 36284 (pos)
                    (Pb_survivorat_s_p10)

                    ; #78171: <==closure== 17070 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13129: <==negation-removal== 73641 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #17239: <==negation-removal== 44144 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #22295: <==negation-removal== 36284 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75197: <==negation-removal== 78171 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #77535: <==negation-removal== 17070 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #88111: <==negation-removal== 36235 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #17070: origin
                    (Ba_survivorat_s_p10)

                    ; #36235: <==closure== 44144 (pos)
                    (Pc_survivorat_s_p10)

                    ; #36284: origin
                    (Bb_survivorat_s_p10)

                    ; #44144: origin
                    (Bc_survivorat_s_p10)

                    ; #73641: <==closure== 36284 (pos)
                    (Pb_survivorat_s_p10)

                    ; #78171: <==closure== 17070 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13129: <==negation-removal== 73641 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #17239: <==negation-removal== 44144 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #22295: <==negation-removal== 36284 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75197: <==negation-removal== 78171 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #77535: <==negation-removal== 17070 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #88111: <==negation-removal== 36235 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (at_c_p10)
                           (Pc_survivorat_s_p10))
        :effect (and
                    ; #17070: origin
                    (Ba_survivorat_s_p10)

                    ; #36235: <==closure== 44144 (pos)
                    (Pc_survivorat_s_p10)

                    ; #36284: origin
                    (Bb_survivorat_s_p10)

                    ; #44144: origin
                    (Bc_survivorat_s_p10)

                    ; #73641: <==closure== 36284 (pos)
                    (Pb_survivorat_s_p10)

                    ; #78171: <==closure== 17070 (pos)
                    (Pa_survivorat_s_p10)

                    ; #13129: <==negation-removal== 73641 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #17239: <==negation-removal== 44144 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #22295: <==negation-removal== 36284 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #75197: <==negation-removal== 78171 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #77535: <==negation-removal== 17070 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #88111: <==negation-removal== 36235 (pos)
                    (not (Bc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #23675: origin
                    (Bb_survivorat_s_p11)

                    ; #26470: origin
                    (Bc_survivorat_s_p11)

                    ; #50566: <==closure== 26470 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56641: origin
                    (Ba_survivorat_s_p11)

                    ; #57852: <==closure== 23675 (pos)
                    (Pb_survivorat_s_p11)

                    ; #75731: <==closure== 56641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #12936: <==negation-removal== 56641 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #52279: <==negation-removal== 26470 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #62685: <==negation-removal== 57852 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72065: <==negation-removal== 75731 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #75501: <==negation-removal== 23675 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #81306: <==negation-removal== 50566 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Pb_survivorat_s_p11)
                           (at_b_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #23675: origin
                    (Bb_survivorat_s_p11)

                    ; #26470: origin
                    (Bc_survivorat_s_p11)

                    ; #50566: <==closure== 26470 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56641: origin
                    (Ba_survivorat_s_p11)

                    ; #57852: <==closure== 23675 (pos)
                    (Pb_survivorat_s_p11)

                    ; #75731: <==closure== 56641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #12936: <==negation-removal== 56641 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #52279: <==negation-removal== 26470 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #62685: <==negation-removal== 57852 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72065: <==negation-removal== 75731 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #75501: <==negation-removal== 23675 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #81306: <==negation-removal== 50566 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (at_c_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #23675: origin
                    (Bb_survivorat_s_p11)

                    ; #26470: origin
                    (Bc_survivorat_s_p11)

                    ; #50566: <==closure== 26470 (pos)
                    (Pc_survivorat_s_p11)

                    ; #56641: origin
                    (Ba_survivorat_s_p11)

                    ; #57852: <==closure== 23675 (pos)
                    (Pb_survivorat_s_p11)

                    ; #75731: <==closure== 56641 (pos)
                    (Pa_survivorat_s_p11)

                    ; #12936: <==negation-removal== 56641 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #52279: <==negation-removal== 26470 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #62685: <==negation-removal== 57852 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #72065: <==negation-removal== 75731 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #75501: <==negation-removal== 23675 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #81306: <==negation-removal== 50566 (pos)
                    (not (Bc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (at_a_p12)
                           (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12))
        :effect (and
                    ; #21492: origin
                    (Ba_survivorat_s_p12)

                    ; #41409: <==closure== 49729 (pos)
                    (Pc_survivorat_s_p12)

                    ; #49729: origin
                    (Bc_survivorat_s_p12)

                    ; #56628: origin
                    (Bb_survivorat_s_p12)

                    ; #57938: <==closure== 21492 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84417: <==closure== 56628 (pos)
                    (Pb_survivorat_s_p12)

                    ; #15303: <==negation-removal== 49729 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #42652: <==negation-removal== 57938 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #70878: <==negation-removal== 56628 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #80936: <==negation-removal== 21492 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #83783: <==negation-removal== 84417 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #91102: <==negation-removal== 41409 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #21492: origin
                    (Ba_survivorat_s_p12)

                    ; #41409: <==closure== 49729 (pos)
                    (Pc_survivorat_s_p12)

                    ; #49729: origin
                    (Bc_survivorat_s_p12)

                    ; #56628: origin
                    (Bb_survivorat_s_p12)

                    ; #57938: <==closure== 21492 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84417: <==closure== 56628 (pos)
                    (Pb_survivorat_s_p12)

                    ; #15303: <==negation-removal== 49729 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #42652: <==negation-removal== 57938 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #70878: <==negation-removal== 56628 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #80936: <==negation-removal== 21492 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #83783: <==negation-removal== 84417 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #91102: <==negation-removal== 41409 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (at_c_p12)
                           (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #21492: origin
                    (Ba_survivorat_s_p12)

                    ; #41409: <==closure== 49729 (pos)
                    (Pc_survivorat_s_p12)

                    ; #49729: origin
                    (Bc_survivorat_s_p12)

                    ; #56628: origin
                    (Bb_survivorat_s_p12)

                    ; #57938: <==closure== 21492 (pos)
                    (Pa_survivorat_s_p12)

                    ; #84417: <==closure== 56628 (pos)
                    (Pb_survivorat_s_p12)

                    ; #15303: <==negation-removal== 49729 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #42652: <==negation-removal== 57938 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #70878: <==negation-removal== 56628 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #80936: <==negation-removal== 21492 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #83783: <==negation-removal== 84417 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #91102: <==negation-removal== 41409 (pos)
                    (not (Bc_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #39829: origin
                    (Ba_survivorat_s_p1)

                    ; #42481: origin
                    (Bb_survivorat_s_p1)

                    ; #48457: <==closure== 63585 (pos)
                    (Pc_survivorat_s_p1)

                    ; #48987: <==closure== 39829 (pos)
                    (Pa_survivorat_s_p1)

                    ; #63585: origin
                    (Bc_survivorat_s_p1)

                    ; #83375: <==closure== 42481 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14522: <==negation-removal== 42481 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #30117: <==negation-removal== 48987 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #42068: <==negation-removal== 48457 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56120: <==negation-removal== 63585 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #57006: <==negation-removal== 39829 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68155: <==negation-removal== 83375 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Pb_survivorat_s_p1)
                           (Bb_survivorat_s_p1))
        :effect (and
                    ; #39829: origin
                    (Ba_survivorat_s_p1)

                    ; #42481: origin
                    (Bb_survivorat_s_p1)

                    ; #48457: <==closure== 63585 (pos)
                    (Pc_survivorat_s_p1)

                    ; #48987: <==closure== 39829 (pos)
                    (Pa_survivorat_s_p1)

                    ; #63585: origin
                    (Bc_survivorat_s_p1)

                    ; #83375: <==closure== 42481 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14522: <==negation-removal== 42481 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #30117: <==negation-removal== 48987 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #42068: <==negation-removal== 48457 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56120: <==negation-removal== 63585 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #57006: <==negation-removal== 39829 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68155: <==negation-removal== 83375 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #39829: origin
                    (Ba_survivorat_s_p1)

                    ; #42481: origin
                    (Bb_survivorat_s_p1)

                    ; #48457: <==closure== 63585 (pos)
                    (Pc_survivorat_s_p1)

                    ; #48987: <==closure== 39829 (pos)
                    (Pa_survivorat_s_p1)

                    ; #63585: origin
                    (Bc_survivorat_s_p1)

                    ; #83375: <==closure== 42481 (pos)
                    (Pb_survivorat_s_p1)

                    ; #14522: <==negation-removal== 42481 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #30117: <==negation-removal== 48987 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #42068: <==negation-removal== 48457 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #56120: <==negation-removal== 63585 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #57006: <==negation-removal== 39829 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #68155: <==negation-removal== 83375 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #23067: <==closure== 29185 (pos)
                    (Pa_survivorat_s_p2)

                    ; #29185: origin
                    (Ba_survivorat_s_p2)

                    ; #42545: <==closure== 49306 (pos)
                    (Pb_survivorat_s_p2)

                    ; #49306: origin
                    (Bb_survivorat_s_p2)

                    ; #60538: origin
                    (Bc_survivorat_s_p2)

                    ; #81215: <==closure== 60538 (pos)
                    (Pc_survivorat_s_p2)

                    ; #14823: <==negation-removal== 81215 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #18783: <==negation-removal== 60538 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #31763: <==negation-removal== 29185 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65595: <==negation-removal== 49306 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #69689: <==negation-removal== 23067 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #72397: <==negation-removal== 42545 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2))
        :effect (and
                    ; #23067: <==closure== 29185 (pos)
                    (Pa_survivorat_s_p2)

                    ; #29185: origin
                    (Ba_survivorat_s_p2)

                    ; #42545: <==closure== 49306 (pos)
                    (Pb_survivorat_s_p2)

                    ; #49306: origin
                    (Bb_survivorat_s_p2)

                    ; #60538: origin
                    (Bc_survivorat_s_p2)

                    ; #81215: <==closure== 60538 (pos)
                    (Pc_survivorat_s_p2)

                    ; #14823: <==negation-removal== 81215 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #18783: <==negation-removal== 60538 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #31763: <==negation-removal== 29185 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65595: <==negation-removal== 49306 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #69689: <==negation-removal== 23067 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #72397: <==negation-removal== 42545 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #23067: <==closure== 29185 (pos)
                    (Pa_survivorat_s_p2)

                    ; #29185: origin
                    (Ba_survivorat_s_p2)

                    ; #42545: <==closure== 49306 (pos)
                    (Pb_survivorat_s_p2)

                    ; #49306: origin
                    (Bb_survivorat_s_p2)

                    ; #60538: origin
                    (Bc_survivorat_s_p2)

                    ; #81215: <==closure== 60538 (pos)
                    (Pc_survivorat_s_p2)

                    ; #14823: <==negation-removal== 81215 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #18783: <==negation-removal== 60538 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #31763: <==negation-removal== 29185 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #65595: <==negation-removal== 49306 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #69689: <==negation-removal== 23067 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #72397: <==negation-removal== 42545 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Ba_survivorat_s_p3)
                           (Pa_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #12915: <==closure== 87381 (pos)
                    (Pa_survivorat_s_p3)

                    ; #37386: origin
                    (Bb_survivorat_s_p3)

                    ; #69859: <==closure== 75596 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75596: origin
                    (Bc_survivorat_s_p3)

                    ; #84073: <==closure== 37386 (pos)
                    (Pb_survivorat_s_p3)

                    ; #87381: origin
                    (Ba_survivorat_s_p3)

                    ; #22201: <==negation-removal== 37386 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #27552: <==negation-removal== 84073 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #46337: <==negation-removal== 69859 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #62140: <==negation-removal== 87381 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #77992: <==negation-removal== 12915 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81764: <==negation-removal== 75596 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3)
                           (at_b_p3))
        :effect (and
                    ; #12915: <==closure== 87381 (pos)
                    (Pa_survivorat_s_p3)

                    ; #37386: origin
                    (Bb_survivorat_s_p3)

                    ; #69859: <==closure== 75596 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75596: origin
                    (Bc_survivorat_s_p3)

                    ; #84073: <==closure== 37386 (pos)
                    (Pb_survivorat_s_p3)

                    ; #87381: origin
                    (Ba_survivorat_s_p3)

                    ; #22201: <==negation-removal== 37386 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #27552: <==negation-removal== 84073 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #46337: <==negation-removal== 69859 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #62140: <==negation-removal== 87381 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #77992: <==negation-removal== 12915 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81764: <==negation-removal== 75596 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (Bc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #12915: <==closure== 87381 (pos)
                    (Pa_survivorat_s_p3)

                    ; #37386: origin
                    (Bb_survivorat_s_p3)

                    ; #69859: <==closure== 75596 (pos)
                    (Pc_survivorat_s_p3)

                    ; #75596: origin
                    (Bc_survivorat_s_p3)

                    ; #84073: <==closure== 37386 (pos)
                    (Pb_survivorat_s_p3)

                    ; #87381: origin
                    (Ba_survivorat_s_p3)

                    ; #22201: <==negation-removal== 37386 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #27552: <==negation-removal== 84073 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #46337: <==negation-removal== 69859 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #62140: <==negation-removal== 87381 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #77992: <==negation-removal== 12915 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #81764: <==negation-removal== 75596 (pos)
                    (not (Pc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Pa_survivorat_s_p4)
                           (at_a_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #16512: origin
                    (Bc_survivorat_s_p4)

                    ; #48578: origin
                    (Ba_survivorat_s_p4)

                    ; #51375: <==closure== 57317 (pos)
                    (Pb_survivorat_s_p4)

                    ; #57317: origin
                    (Bb_survivorat_s_p4)

                    ; #70483: <==closure== 48578 (pos)
                    (Pa_survivorat_s_p4)

                    ; #86642: <==closure== 16512 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49387: <==negation-removal== 70483 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #55317: <==negation-removal== 57317 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59793: <==negation-removal== 16512 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69713: <==negation-removal== 48578 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73146: <==negation-removal== 86642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #89197: <==negation-removal== 51375 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #16512: origin
                    (Bc_survivorat_s_p4)

                    ; #48578: origin
                    (Ba_survivorat_s_p4)

                    ; #51375: <==closure== 57317 (pos)
                    (Pb_survivorat_s_p4)

                    ; #57317: origin
                    (Bb_survivorat_s_p4)

                    ; #70483: <==closure== 48578 (pos)
                    (Pa_survivorat_s_p4)

                    ; #86642: <==closure== 16512 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49387: <==negation-removal== 70483 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #55317: <==negation-removal== 57317 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59793: <==negation-removal== 16512 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69713: <==negation-removal== 48578 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73146: <==negation-removal== 86642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #89197: <==negation-removal== 51375 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (at_c_p4)
                           (Bc_survivorat_s_p4))
        :effect (and
                    ; #16512: origin
                    (Bc_survivorat_s_p4)

                    ; #48578: origin
                    (Ba_survivorat_s_p4)

                    ; #51375: <==closure== 57317 (pos)
                    (Pb_survivorat_s_p4)

                    ; #57317: origin
                    (Bb_survivorat_s_p4)

                    ; #70483: <==closure== 48578 (pos)
                    (Pa_survivorat_s_p4)

                    ; #86642: <==closure== 16512 (pos)
                    (Pc_survivorat_s_p4)

                    ; #49387: <==negation-removal== 70483 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #55317: <==negation-removal== 57317 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #59793: <==negation-removal== 16512 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69713: <==negation-removal== 48578 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #73146: <==negation-removal== 86642 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #89197: <==negation-removal== 51375 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #28055: origin
                    (Ba_survivorat_s_p5)

                    ; #30191: origin
                    (Bb_survivorat_s_p5)

                    ; #40867: <==closure== 30191 (pos)
                    (Pb_survivorat_s_p5)

                    ; #45421: <==closure== 74571 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70625: <==closure== 28055 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74571: origin
                    (Bc_survivorat_s_p5)

                    ; #26290: <==negation-removal== 28055 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35568: <==negation-removal== 70625 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52427: <==negation-removal== 74571 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65560: <==negation-removal== 40867 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73404: <==negation-removal== 45421 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #82155: <==negation-removal== 30191 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #28055: origin
                    (Ba_survivorat_s_p5)

                    ; #30191: origin
                    (Bb_survivorat_s_p5)

                    ; #40867: <==closure== 30191 (pos)
                    (Pb_survivorat_s_p5)

                    ; #45421: <==closure== 74571 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70625: <==closure== 28055 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74571: origin
                    (Bc_survivorat_s_p5)

                    ; #26290: <==negation-removal== 28055 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35568: <==negation-removal== 70625 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52427: <==negation-removal== 74571 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65560: <==negation-removal== 40867 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73404: <==negation-removal== 45421 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #82155: <==negation-removal== 30191 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (Bc_survivorat_s_p5)
                           (at_c_p5))
        :effect (and
                    ; #28055: origin
                    (Ba_survivorat_s_p5)

                    ; #30191: origin
                    (Bb_survivorat_s_p5)

                    ; #40867: <==closure== 30191 (pos)
                    (Pb_survivorat_s_p5)

                    ; #45421: <==closure== 74571 (pos)
                    (Pc_survivorat_s_p5)

                    ; #70625: <==closure== 28055 (pos)
                    (Pa_survivorat_s_p5)

                    ; #74571: origin
                    (Bc_survivorat_s_p5)

                    ; #26290: <==negation-removal== 28055 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #35568: <==negation-removal== 70625 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #52427: <==negation-removal== 74571 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #65560: <==negation-removal== 40867 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #73404: <==negation-removal== 45421 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #82155: <==negation-removal== 30191 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #20013: origin
                    (Bc_survivorat_s_p6)

                    ; #58177: origin
                    (Ba_survivorat_s_p6)

                    ; #61770: <==closure== 58177 (pos)
                    (Pa_survivorat_s_p6)

                    ; #78887: <==closure== 20013 (pos)
                    (Pc_survivorat_s_p6)

                    ; #87282: <==closure== 88968 (pos)
                    (Pb_survivorat_s_p6)

                    ; #88968: origin
                    (Bb_survivorat_s_p6)

                    ; #13639: <==negation-removal== 78887 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34111: <==negation-removal== 58177 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #55508: <==negation-removal== 88968 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #69867: <==negation-removal== 61770 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #82342: <==negation-removal== 87282 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #84929: <==negation-removal== 20013 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (at_b_p6)
                           (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #20013: origin
                    (Bc_survivorat_s_p6)

                    ; #58177: origin
                    (Ba_survivorat_s_p6)

                    ; #61770: <==closure== 58177 (pos)
                    (Pa_survivorat_s_p6)

                    ; #78887: <==closure== 20013 (pos)
                    (Pc_survivorat_s_p6)

                    ; #87282: <==closure== 88968 (pos)
                    (Pb_survivorat_s_p6)

                    ; #88968: origin
                    (Bb_survivorat_s_p6)

                    ; #13639: <==negation-removal== 78887 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34111: <==negation-removal== 58177 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #55508: <==negation-removal== 88968 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #69867: <==negation-removal== 61770 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #82342: <==negation-removal== 87282 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #84929: <==negation-removal== 20013 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (Pc_survivorat_s_p6)
                           (at_c_p6))
        :effect (and
                    ; #20013: origin
                    (Bc_survivorat_s_p6)

                    ; #58177: origin
                    (Ba_survivorat_s_p6)

                    ; #61770: <==closure== 58177 (pos)
                    (Pa_survivorat_s_p6)

                    ; #78887: <==closure== 20013 (pos)
                    (Pc_survivorat_s_p6)

                    ; #87282: <==closure== 88968 (pos)
                    (Pb_survivorat_s_p6)

                    ; #88968: origin
                    (Bb_survivorat_s_p6)

                    ; #13639: <==negation-removal== 78887 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34111: <==negation-removal== 58177 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #55508: <==negation-removal== 88968 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #69867: <==negation-removal== 61770 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #82342: <==negation-removal== 87282 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #84929: <==negation-removal== 20013 (pos)
                    (not (Pc_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #24935: origin
                    (Bc_survivorat_s_p7)

                    ; #31994: <==closure== 46336 (pos)
                    (Pa_survivorat_s_p7)

                    ; #44440: <==closure== 24935 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46336: origin
                    (Ba_survivorat_s_p7)

                    ; #63589: origin
                    (Bb_survivorat_s_p7)

                    ; #70425: <==closure== 63589 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32142: <==negation-removal== 31994 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #36708: <==negation-removal== 70425 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #48023: <==negation-removal== 44440 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65394: <==negation-removal== 63589 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #73799: <==negation-removal== 46336 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #89960: <==negation-removal== 24935 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #24935: origin
                    (Bc_survivorat_s_p7)

                    ; #31994: <==closure== 46336 (pos)
                    (Pa_survivorat_s_p7)

                    ; #44440: <==closure== 24935 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46336: origin
                    (Ba_survivorat_s_p7)

                    ; #63589: origin
                    (Bb_survivorat_s_p7)

                    ; #70425: <==closure== 63589 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32142: <==negation-removal== 31994 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #36708: <==negation-removal== 70425 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #48023: <==negation-removal== 44440 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65394: <==negation-removal== 63589 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #73799: <==negation-removal== 46336 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #89960: <==negation-removal== 24935 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #24935: origin
                    (Bc_survivorat_s_p7)

                    ; #31994: <==closure== 46336 (pos)
                    (Pa_survivorat_s_p7)

                    ; #44440: <==closure== 24935 (pos)
                    (Pc_survivorat_s_p7)

                    ; #46336: origin
                    (Ba_survivorat_s_p7)

                    ; #63589: origin
                    (Bb_survivorat_s_p7)

                    ; #70425: <==closure== 63589 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32142: <==negation-removal== 31994 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #36708: <==negation-removal== 70425 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #48023: <==negation-removal== 44440 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #65394: <==negation-removal== 63589 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #73799: <==negation-removal== 46336 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #89960: <==negation-removal== 24935 (pos)
                    (not (Pc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #24905: <==closure== 62839 (pos)
                    (Pa_survivorat_s_p8)

                    ; #29629: origin
                    (Bb_survivorat_s_p8)

                    ; #43905: <==closure== 29629 (pos)
                    (Pb_survivorat_s_p8)

                    ; #59157: <==closure== 88739 (pos)
                    (Pc_survivorat_s_p8)

                    ; #62839: origin
                    (Ba_survivorat_s_p8)

                    ; #88739: origin
                    (Bc_survivorat_s_p8)

                    ; #15352: <==negation-removal== 24905 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #16543: <==negation-removal== 29629 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #27210: <==negation-removal== 88739 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28580: <==negation-removal== 43905 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #55501: <==negation-removal== 62839 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #77481: <==negation-removal== 59157 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #24905: <==closure== 62839 (pos)
                    (Pa_survivorat_s_p8)

                    ; #29629: origin
                    (Bb_survivorat_s_p8)

                    ; #43905: <==closure== 29629 (pos)
                    (Pb_survivorat_s_p8)

                    ; #59157: <==closure== 88739 (pos)
                    (Pc_survivorat_s_p8)

                    ; #62839: origin
                    (Ba_survivorat_s_p8)

                    ; #88739: origin
                    (Bc_survivorat_s_p8)

                    ; #15352: <==negation-removal== 24905 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #16543: <==negation-removal== 29629 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #27210: <==negation-removal== 88739 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28580: <==negation-removal== 43905 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #55501: <==negation-removal== 62839 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #77481: <==negation-removal== 59157 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (at_c_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #24905: <==closure== 62839 (pos)
                    (Pa_survivorat_s_p8)

                    ; #29629: origin
                    (Bb_survivorat_s_p8)

                    ; #43905: <==closure== 29629 (pos)
                    (Pb_survivorat_s_p8)

                    ; #59157: <==closure== 88739 (pos)
                    (Pc_survivorat_s_p8)

                    ; #62839: origin
                    (Ba_survivorat_s_p8)

                    ; #88739: origin
                    (Bc_survivorat_s_p8)

                    ; #15352: <==negation-removal== 24905 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #16543: <==negation-removal== 29629 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #27210: <==negation-removal== 88739 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #28580: <==negation-removal== 43905 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #55501: <==negation-removal== 62839 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #77481: <==negation-removal== 59157 (pos)
                    (not (Bc_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #36848: <==closure== 53863 (pos)
                    (Pb_survivorat_s_p9)

                    ; #37349: origin
                    (Bc_survivorat_s_p9)

                    ; #43271: <==closure== 79863 (pos)
                    (Pa_survivorat_s_p9)

                    ; #53863: origin
                    (Bb_survivorat_s_p9)

                    ; #78258: <==closure== 37349 (pos)
                    (Pc_survivorat_s_p9)

                    ; #79863: origin
                    (Ba_survivorat_s_p9)

                    ; #25401: <==negation-removal== 78258 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #35120: <==negation-removal== 43271 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #37833: <==negation-removal== 36848 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #40615: <==negation-removal== 79863 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #54976: <==negation-removal== 37349 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #73521: <==negation-removal== 53863 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #36848: <==closure== 53863 (pos)
                    (Pb_survivorat_s_p9)

                    ; #37349: origin
                    (Bc_survivorat_s_p9)

                    ; #43271: <==closure== 79863 (pos)
                    (Pa_survivorat_s_p9)

                    ; #53863: origin
                    (Bb_survivorat_s_p9)

                    ; #78258: <==closure== 37349 (pos)
                    (Pc_survivorat_s_p9)

                    ; #79863: origin
                    (Ba_survivorat_s_p9)

                    ; #25401: <==negation-removal== 78258 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #35120: <==negation-removal== 43271 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #37833: <==negation-removal== 36848 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #40615: <==negation-removal== 79863 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #54976: <==negation-removal== 37349 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #73521: <==negation-removal== 53863 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Bc_survivorat_s_p9)
                           (at_c_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #36848: <==closure== 53863 (pos)
                    (Pb_survivorat_s_p9)

                    ; #37349: origin
                    (Bc_survivorat_s_p9)

                    ; #43271: <==closure== 79863 (pos)
                    (Pa_survivorat_s_p9)

                    ; #53863: origin
                    (Bb_survivorat_s_p9)

                    ; #78258: <==closure== 37349 (pos)
                    (Pc_survivorat_s_p9)

                    ; #79863: origin
                    (Ba_survivorat_s_p9)

                    ; #25401: <==negation-removal== 78258 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #35120: <==negation-removal== 43271 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #37833: <==negation-removal== 36848 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #40615: <==negation-removal== 79863 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #54976: <==negation-removal== 37349 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #73521: <==negation-removal== 53863 (pos)
                    (not (Pb_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #62929: origin
                    (not_at_a_p10)

                    ; #83204: origin
                    (at_a_p10)

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #58499: origin
                    (at_a_p11)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #62929: origin
                    (not_at_a_p10)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #62929: origin
                    (not_at_a_p10)

                    ; #84860: origin
                    (at_a_p2)

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #49094: origin
                    (at_a_p3)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #62929: origin
                    (not_at_a_p10)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #62929: origin
                    (not_at_a_p10)

                    ; #77086: origin
                    (at_a_p8)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #59224: origin
                    (at_a_p9)

                    ; #62929: origin
                    (not_at_a_p10)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #83204: <==negation-removal== 62929 (pos)
                    (not (at_a_p10))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #83204: origin
                    (at_a_p10)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #58499: origin
                    (at_a_p11)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #65470: origin
                    (at_a_p12)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #84860: origin
                    (at_a_p2)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #49094: origin
                    (at_a_p3)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (at_a_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #82234: origin
                    (at_a_p7)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #77086: origin
                    (at_a_p8)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #59224: origin
                    (at_a_p9)

                    ; #92079: origin
                    (not_at_a_p11)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #58499: <==negation-removal== 92079 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (at_a_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #34227: origin
                    (at_a_p1)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (at_a_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #83204: origin
                    (at_a_p10)

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (at_a_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #58499: origin
                    (at_a_p11)

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #84860: origin
                    (at_a_p2)

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #49094: origin
                    (at_a_p3)

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (at_a_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #14295: origin
                    (at_a_p4)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #35737: origin
                    (at_a_p5)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #24803: origin
                    (at_a_p6)

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #77086: origin
                    (at_a_p8)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #11165: origin
                    (not_at_a_p12)

                    ; #59224: origin
                    (at_a_p9)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #65470: <==negation-removal== 11165 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #51801: origin
                    (not_at_a_p1)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #83204: origin
                    (at_a_p10)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #58499: origin
                    (at_a_p11)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #84860: origin
                    (at_a_p2)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #49094: origin
                    (at_a_p3)

                    ; #51801: origin
                    (not_at_a_p1)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #51801: origin
                    (not_at_a_p1)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #51801: origin
                    (not_at_a_p1)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #51801: origin
                    (not_at_a_p1)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #77086: origin
                    (at_a_p8)

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #51801: origin
                    (not_at_a_p1)

                    ; #59224: origin
                    (at_a_p9)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #34227: <==negation-removal== 51801 (pos)
                    (not (at_a_p1))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #83204: origin
                    (at_a_p10)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #58499: origin
                    (at_a_p11)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #65470: origin
                    (at_a_p12)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #84154: origin
                    (not_at_a_p2)

                    ; #84860: origin
                    (at_a_p2)

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #49094: origin
                    (at_a_p3)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #82234: origin
                    (at_a_p7)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #77086: origin
                    (at_a_p8)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #59224: origin
                    (at_a_p9)

                    ; #84154: origin
                    (not_at_a_p2)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #84860: <==negation-removal== 84154 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #79584: origin
                    (not_at_a_p3)

                    ; #83204: origin
                    (at_a_p10)

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #58499: origin
                    (at_a_p11)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #65470: origin
                    (at_a_p12)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #79584: origin
                    (not_at_a_p3)

                    ; #84860: origin
                    (at_a_p2)

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #49094: origin
                    (at_a_p3)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #79584: origin
                    (not_at_a_p3)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #77086: origin
                    (at_a_p8)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #59224: origin
                    (at_a_p9)

                    ; #79584: origin
                    (not_at_a_p3)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #49094: <==negation-removal== 79584 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_a_p4))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #42146: origin
                    (not_at_a_p4)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #83204: origin
                    (at_a_p10)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #58499: origin
                    (at_a_p11)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #84860: origin
                    (at_a_p2)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #49094: origin
                    (at_a_p3)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #42146: origin
                    (not_at_a_p4)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #42146: origin
                    (not_at_a_p4)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #42146: origin
                    (not_at_a_p4)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #82234: origin
                    (at_a_p7)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #77086: origin
                    (at_a_p8)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #42146: origin
                    (not_at_a_p4)

                    ; #59224: origin
                    (at_a_p9)

                    ; #14295: <==negation-removal== 42146 (pos)
                    (not (at_a_p4))

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_a_p5))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #42655: origin
                    (not_at_a_p5)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #83204: origin
                    (at_a_p10)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #58499: origin
                    (at_a_p11)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #84860: origin
                    (at_a_p2)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #49094: origin
                    (at_a_p3)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #42655: origin
                    (not_at_a_p5)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #42655: origin
                    (not_at_a_p5)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #42655: origin
                    (not_at_a_p5)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #77086: origin
                    (at_a_p8)

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #42655: origin
                    (not_at_a_p5)

                    ; #59224: origin
                    (at_a_p9)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #35737: <==negation-removal== 42655 (pos)
                    (not (at_a_p5))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #81025: origin
                    (not_at_a_p6)

                    ; #83204: origin
                    (at_a_p10)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #58499: origin
                    (at_a_p11)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #65470: origin
                    (at_a_p12)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #81025: origin
                    (not_at_a_p6)

                    ; #84860: origin
                    (at_a_p2)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #49094: origin
                    (at_a_p3)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (at_a_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #81025: origin
                    (not_at_a_p6)

                    ; #82234: origin
                    (at_a_p7)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #77086: origin
                    (at_a_p8)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #59224: origin
                    (at_a_p9)

                    ; #81025: origin
                    (not_at_a_p6)

                    ; #24803: <==negation-removal== 81025 (pos)
                    (not (at_a_p6))

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #34227: origin
                    (at_a_p1)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #83204: origin
                    (at_a_p10)

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #58499: origin
                    (at_a_p11)

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #84860: origin
                    (at_a_p2)

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #49094: origin
                    (at_a_p3)

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #31436: origin
                    (not_at_a_p7)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #35737: origin
                    (at_a_p5)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #31436: origin
                    (not_at_a_p7)

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #77086: origin
                    (at_a_p8)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #31436: origin
                    (not_at_a_p7)

                    ; #59224: origin
                    (at_a_p9)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #82234: <==negation-removal== 31436 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #34227: origin
                    (at_a_p1)

                    ; #47952: origin
                    (not_at_a_p8)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #83204: origin
                    (at_a_p10)

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #58499: origin
                    (at_a_p11)

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #84860: origin
                    (at_a_p2)

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #49094: origin
                    (at_a_p3)

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #47952: origin
                    (not_at_a_p8)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #35737: origin
                    (at_a_p5)

                    ; #47952: origin
                    (not_at_a_p8)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #47952: origin
                    (not_at_a_p8)

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #77086: origin
                    (at_a_p8)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #47952: origin
                    (not_at_a_p8)

                    ; #59224: origin
                    (at_a_p9)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #77086: <==negation-removal== 47952 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #34227: origin
                    (at_a_p1)

                    ; #51801: <==negation-removal== 34227 (pos)
                    (not (not_at_a_p1))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #83204: origin
                    (at_a_p10)

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))

                    ; #62929: <==negation-removal== 83204 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #58499: origin
                    (at_a_p11)

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))

                    ; #92079: <==negation-removal== 58499 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #65470: origin
                    (at_a_p12)

                    ; #11165: <==negation-removal== 65470 (pos)
                    (not (not_at_a_p12))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #84860: origin
                    (at_a_p2)

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))

                    ; #84154: <==negation-removal== 84860 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #49094: origin
                    (at_a_p3)

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))

                    ; #79584: <==negation-removal== 49094 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #14295: origin
                    (at_a_p4)

                    ; #28348: origin
                    (not_at_a_p9)

                    ; #42146: <==negation-removal== 14295 (pos)
                    (not (not_at_a_p4))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #35737: origin
                    (at_a_p5)

                    ; #42655: <==negation-removal== 35737 (pos)
                    (not (not_at_a_p5))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #24803: origin
                    (at_a_p6)

                    ; #28348: origin
                    (not_at_a_p9)

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))

                    ; #81025: <==negation-removal== 24803 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #82234: origin
                    (at_a_p7)

                    ; #31436: <==negation-removal== 82234 (pos)
                    (not (not_at_a_p7))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #77086: origin
                    (at_a_p8)

                    ; #47952: <==negation-removal== 77086 (pos)
                    (not (not_at_a_p8))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #28348: origin
                    (not_at_a_p9)

                    ; #59224: origin
                    (at_a_p9)

                    ; #28348: <==negation-removal== 59224 (pos)
                    (not (not_at_a_p9))

                    ; #59224: <==negation-removal== 28348 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #47869: origin
                    (not_at_b_p10)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #50265: origin
                    (at_b_p10)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #47869: origin
                    (not_at_b_p10)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #47869: origin
                    (not_at_b_p10)

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #54023: origin
                    (at_b_p2)

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #47869: origin
                    (not_at_b_p10)

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #67828: origin
                    (at_b_p7)

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #54887: origin
                    (at_b_p8)

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #47869: origin
                    (not_at_b_p10)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #50265: <==negation-removal== 47869 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #39784: origin
                    (at_b_p1)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #50265: origin
                    (at_b_p10)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #43971: origin
                    (at_b_p11)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #30822: origin
                    (not_at_b_p11)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #54023: origin
                    (at_b_p2)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #31142: origin
                    (at_b_p3)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_b_p11))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #67828: origin
                    (at_b_p7)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_b_p11))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #54887: origin
                    (at_b_p8)

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #30822: origin
                    (not_at_b_p11)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #43971: <==negation-removal== 30822 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #50265: origin
                    (at_b_p10)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #54023: origin
                    (at_b_p2)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #54535: origin
                    (at_b_p4)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #61361: origin
                    (not_at_b_p12)

                    ; #64507: origin
                    (at_b_p5)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #54957: origin
                    (at_b_p6)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #61361: origin
                    (not_at_b_p12)

                    ; #67828: origin
                    (at_b_p7)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #54887: origin
                    (at_b_p8)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #50004: origin
                    (at_b_p9)

                    ; #61361: origin
                    (not_at_b_p12)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #29393: <==negation-removal== 61361 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #45757: origin
                    (not_at_b_p1)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #50265: origin
                    (at_b_p10)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #45757: origin
                    (not_at_b_p1)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #45757: origin
                    (not_at_b_p1)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #54023: origin
                    (at_b_p2)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #45757: origin
                    (not_at_b_p1)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #54957: origin
                    (at_b_p6)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #67828: origin
                    (at_b_p7)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (at_b_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #54887: origin
                    (at_b_p8)

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #45757: origin
                    (not_at_b_p1)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #39784: <==negation-removal== 45757 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (at_b_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #50265: origin
                    (at_b_p10)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (at_b_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #54023: origin
                    (at_b_p2)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #54535: origin
                    (at_b_p4)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (at_b_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #64507: origin
                    (at_b_p5)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #54957: origin
                    (at_b_p6)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #67828: origin
                    (at_b_p7)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #54887: origin
                    (at_b_p8)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #50004: origin
                    (at_b_p9)

                    ; #69548: origin
                    (not_at_b_p2)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #54023: <==negation-removal== 69548 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #50265: origin
                    (at_b_p10)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #54023: origin
                    (at_b_p2)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_b_p3))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #54535: origin
                    (at_b_p4)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #64507: origin
                    (at_b_p5)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #54957: origin
                    (at_b_p6)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #67828: origin
                    (at_b_p7)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #54887: origin
                    (at_b_p8)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #50004: origin
                    (at_b_p9)

                    ; #86369: origin
                    (not_at_b_p3)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #31142: <==negation-removal== 86369 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #39784: origin
                    (at_b_p1)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #50265: origin
                    (at_b_p10)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #43971: origin
                    (at_b_p11)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #29393: origin
                    (at_b_p12)

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #54023: origin
                    (at_b_p2)

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #31142: origin
                    (at_b_p3)

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #67828: origin
                    (at_b_p7)

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #54887: origin
                    (at_b_p8)

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #23618: origin
                    (not_at_b_p4)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #54535: <==negation-removal== 23618 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #39784: origin
                    (at_b_p1)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #50265: origin
                    (at_b_p10)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #43971: origin
                    (at_b_p11)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #36869: origin
                    (not_at_b_p5)

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #54023: origin
                    (at_b_p2)

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #36869: origin
                    (not_at_b_p5)

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #67828: origin
                    (at_b_p7)

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #54887: origin
                    (at_b_p8)

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #36869: origin
                    (not_at_b_p5)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #64507: <==negation-removal== 36869 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (at_b_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #40294: origin
                    (not_at_b_p6)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #50265: origin
                    (at_b_p10)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #43971: origin
                    (at_b_p11)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (at_b_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #40294: origin
                    (not_at_b_p6)

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #54023: origin
                    (at_b_p2)

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #40294: origin
                    (not_at_b_p6)

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (at_b_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (at_b_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (at_b_p6)
                           (succ_p6_p6))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (at_b_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #67828: origin
                    (at_b_p7)

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #54887: origin
                    (at_b_p8)

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #40294: origin
                    (not_at_b_p6)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #54957: <==negation-removal== 40294 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #50265: origin
                    (at_b_p10)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #54023: origin
                    (at_b_p2)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #54535: origin
                    (at_b_p4)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #64507: origin
                    (at_b_p5)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #54957: origin
                    (at_b_p6)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #67828: origin
                    (at_b_p7)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #54887: origin
                    (at_b_p8)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #50004: origin
                    (at_b_p9)

                    ; #81829: origin
                    (not_at_b_p7)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #67828: <==negation-removal== 81829 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #39784: origin
                    (at_b_p1)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #50265: origin
                    (at_b_p10)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #43971: origin
                    (at_b_p11)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #29393: origin
                    (at_b_p12)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #54023: origin
                    (at_b_p2)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #31142: origin
                    (at_b_p3)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #54535: origin
                    (at_b_p4)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #54897: origin
                    (not_at_b_p8)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #54897: origin
                    (not_at_b_p8)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #54897: origin
                    (not_at_b_p8)

                    ; #67828: origin
                    (at_b_p7)

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #54887: origin
                    (at_b_p8)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #50004: origin
                    (at_b_p9)

                    ; #54897: origin
                    (not_at_b_p8)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #54887: <==negation-removal== 54897 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #39784: origin
                    (at_b_p1)

                    ; #45757: <==negation-removal== 39784 (pos)
                    (not (not_at_b_p1))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #50265: origin
                    (at_b_p10)

                    ; #47869: <==negation-removal== 50265 (pos)
                    (not (not_at_b_p10))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #43971: origin
                    (at_b_p11)

                    ; #30822: <==negation-removal== 43971 (pos)
                    (not (not_at_b_p11))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #29393: origin
                    (at_b_p12)

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))

                    ; #61361: <==negation-removal== 29393 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #54023: origin
                    (at_b_p2)

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))

                    ; #69548: <==negation-removal== 54023 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #31142: origin
                    (at_b_p3)

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))

                    ; #86369: <==negation-removal== 31142 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #54535: origin
                    (at_b_p4)

                    ; #23618: <==negation-removal== 54535 (pos)
                    (not (not_at_b_p4))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #64507: origin
                    (at_b_p5)

                    ; #36869: <==negation-removal== 64507 (pos)
                    (not (not_at_b_p5))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #54957: origin
                    (at_b_p6)

                    ; #40294: <==negation-removal== 54957 (pos)
                    (not (not_at_b_p6))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #67828: origin
                    (at_b_p7)

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))

                    ; #81829: <==negation-removal== 67828 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #54887: origin
                    (at_b_p8)

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))

                    ; #54897: <==negation-removal== 54887 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #16139: origin
                    (not_at_b_p9)

                    ; #50004: origin
                    (at_b_p9)

                    ; #16139: <==negation-removal== 50004 (pos)
                    (not (not_at_b_p9))

                    ; #50004: <==negation-removal== 16139 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #52803: origin
                    (at_c_p1)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #72746: origin
                    (not_at_c_p10)

                    ; #84527: origin
                    (at_c_p10)

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #59715: origin
                    (at_c_p12)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #69197: origin
                    (at_c_p4)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #57304: origin
                    (at_c_p5)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #69852: origin
                    (at_c_p6)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #72746: origin
                    (not_at_c_p10)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #72169: origin
                    (at_c_p8)

                    ; #72746: origin
                    (not_at_c_p10)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #72746: origin
                    (not_at_c_p10)

                    ; #89455: origin
                    (at_c_p9)

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))

                    ; #84527: <==negation-removal== 72746 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #52803: origin
                    (at_c_p1)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #84527: origin
                    (at_c_p10)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #33361: origin
                    (at_c_p11)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #59715: origin
                    (at_c_p12)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #27272: origin
                    (not_at_c_p11)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #37595: origin
                    (at_c_p3)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #69197: origin
                    (at_c_p4)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #57304: origin
                    (at_c_p5)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #69852: origin
                    (at_c_p6)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_c_p11))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #80294: origin
                    (at_c_p7)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #27272: origin
                    (not_at_c_p11)

                    ; #89455: origin
                    (at_c_p9)

                    ; #33361: <==negation-removal== 27272 (pos)
                    (not (at_c_p11))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #52803: origin
                    (at_c_p1)

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #84527: origin
                    (at_c_p10)

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #33361: origin
                    (at_c_p11)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #59715: origin
                    (at_c_p12)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #26759: origin
                    (not_at_c_p12)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #37595: origin
                    (at_c_p3)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #69197: origin
                    (at_c_p4)

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #57304: origin
                    (at_c_p5)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #69852: origin
                    (at_c_p6)

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #26759: origin
                    (not_at_c_p12)

                    ; #89455: origin
                    (at_c_p9)

                    ; #59715: <==negation-removal== 26759 (pos)
                    (not (at_c_p12))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #52803: origin
                    (at_c_p1)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_c_p1))
        :effect (and
                    ; #71808: origin
                    (not_at_c_p1)

                    ; #84527: origin
                    (at_c_p10)

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #59715: origin
                    (at_c_p12)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #69197: origin
                    (at_c_p4)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #57304: origin
                    (at_c_p5)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #69852: origin
                    (at_c_p6)

                    ; #71808: origin
                    (not_at_c_p1)

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #71808: origin
                    (not_at_c_p1)

                    ; #80294: origin
                    (at_c_p7)

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #71808: origin
                    (not_at_c_p1)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #71808: origin
                    (not_at_c_p1)

                    ; #89455: origin
                    (at_c_p9)

                    ; #52803: <==negation-removal== 71808 (pos)
                    (not (at_c_p1))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #52803: origin
                    (at_c_p1)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (at_c_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #84527: origin
                    (at_c_p10)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (at_c_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #40398: origin
                    (not_at_c_p2)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #59715: origin
                    (at_c_p12)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #40398: origin
                    (not_at_c_p2)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #40398: origin
                    (not_at_c_p2)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #69197: origin
                    (at_c_p4)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #57304: origin
                    (at_c_p5)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #69852: origin
                    (at_c_p6)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #80294: origin
                    (at_c_p7)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #40398: origin
                    (not_at_c_p2)

                    ; #89455: origin
                    (at_c_p9)

                    ; #23152: <==negation-removal== 40398 (pos)
                    (not (at_c_p2))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #52803: origin
                    (at_c_p1)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #84527: origin
                    (at_c_p10)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #33361: origin
                    (at_c_p11)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #59715: origin
                    (at_c_p12)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #25454: origin
                    (not_at_c_p3)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #37595: origin
                    (at_c_p3)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #69197: origin
                    (at_c_p4)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #57304: origin
                    (at_c_p5)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #69852: origin
                    (at_c_p6)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #80294: origin
                    (at_c_p7)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #25454: origin
                    (not_at_c_p3)

                    ; #89455: origin
                    (at_c_p9)

                    ; #37595: <==negation-removal== 25454 (pos)
                    (not (at_c_p3))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_c_p4))
        :effect (and
                    ; #52803: origin
                    (at_c_p1)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #71540: origin
                    (not_at_c_p4)

                    ; #84527: origin
                    (at_c_p10)

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #59715: origin
                    (at_c_p12)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #69197: origin
                    (at_c_p4)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #57304: origin
                    (at_c_p5)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #69852: origin
                    (at_c_p6)

                    ; #71540: origin
                    (not_at_c_p4)

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #71540: origin
                    (not_at_c_p4)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #71540: origin
                    (not_at_c_p4)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #71540: origin
                    (not_at_c_p4)

                    ; #89455: origin
                    (at_c_p9)

                    ; #69197: <==negation-removal== 71540 (pos)
                    (not (at_c_p4))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #52803: origin
                    (at_c_p1)

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #84527: origin
                    (at_c_p10)

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #36639: origin
                    (not_at_c_p5)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #59715: origin
                    (at_c_p12)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #36639: origin
                    (not_at_c_p5)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #37595: origin
                    (at_c_p3)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #69197: origin
                    (at_c_p4)

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #57304: origin
                    (at_c_p5)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #69852: origin
                    (at_c_p6)

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #36639: origin
                    (not_at_c_p5)

                    ; #89455: origin
                    (at_c_p9)

                    ; #57304: <==negation-removal== 36639 (pos)
                    (not (at_c_p5))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #52803: origin
                    (at_c_p1)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #84527: origin
                    (at_c_p10)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #59715: origin
                    (at_c_p12)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #69197: origin
                    (at_c_p4)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #57304: origin
                    (at_c_p5)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #69852: origin
                    (at_c_p6)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #80294: origin
                    (at_c_p7)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #72169: origin
                    (at_c_p8)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #89455: origin
                    (at_c_p9)

                    ; #90996: origin
                    (not_at_c_p6)

                    ; #69852: <==negation-removal== 90996 (pos)
                    (not (at_c_p6))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #52803: origin
                    (at_c_p1)

                    ; #53295: origin
                    (not_at_c_p7)

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #84527: origin
                    (at_c_p10)

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #53295: origin
                    (not_at_c_p7)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (at_c_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #59715: origin
                    (at_c_p12)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #53295: origin
                    (not_at_c_p7)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #53295: origin
                    (not_at_c_p7)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #69197: origin
                    (at_c_p4)

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #57304: origin
                    (at_c_p5)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #69852: origin
                    (at_c_p6)

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #53295: origin
                    (not_at_c_p7)

                    ; #89455: origin
                    (at_c_p9)

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))

                    ; #80294: <==negation-removal== 53295 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #52803: origin
                    (at_c_p1)

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #84527: origin
                    (at_c_p10)

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #33361: origin
                    (at_c_p11)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #59715: origin
                    (at_c_p12)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #23152: origin
                    (at_c_p2)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #37595: origin
                    (at_c_p3)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #69197: origin
                    (at_c_p4)

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #57304: origin
                    (at_c_p5)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #69852: origin
                    (at_c_p6)

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #72169: origin
                    (at_c_p8)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #10594: origin
                    (not_at_c_p8)

                    ; #89455: origin
                    (at_c_p9)

                    ; #72169: <==negation-removal== 10594 (pos)
                    (not (at_c_p8))

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #52803: origin
                    (at_c_p1)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #71808: <==negation-removal== 52803 (pos)
                    (not (not_at_c_p1))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #72927: origin
                    (not_at_c_p9)

                    ; #84527: origin
                    (at_c_p10)

                    ; #72746: <==negation-removal== 84527 (pos)
                    (not (not_at_c_p10))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #33361: origin
                    (at_c_p11)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #27272: <==negation-removal== 33361 (pos)
                    (not (not_at_c_p11))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #59715: origin
                    (at_c_p12)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #26759: <==negation-removal== 59715 (pos)
                    (not (not_at_c_p12))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #23152: origin
                    (at_c_p2)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #40398: <==negation-removal== 23152 (pos)
                    (not (not_at_c_p2))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #37595: origin
                    (at_c_p3)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #25454: <==negation-removal== 37595 (pos)
                    (not (not_at_c_p3))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #69197: origin
                    (at_c_p4)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #71540: <==negation-removal== 69197 (pos)
                    (not (not_at_c_p4))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (at_c_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #57304: origin
                    (at_c_p5)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #36639: <==negation-removal== 57304 (pos)
                    (not (not_at_c_p5))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #69852: origin
                    (at_c_p6)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))

                    ; #90996: <==negation-removal== 69852 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #72927: origin
                    (not_at_c_p9)

                    ; #80294: origin
                    (at_c_p7)

                    ; #53295: <==negation-removal== 80294 (pos)
                    (not (not_at_c_p7))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #72169: origin
                    (at_c_p8)

                    ; #72927: origin
                    (not_at_c_p9)

                    ; #10594: <==negation-removal== 72169 (pos)
                    (not (not_at_c_p8))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #72927: origin
                    (not_at_c_p9)

                    ; #89455: origin
                    (at_c_p9)

                    ; #72927: <==negation-removal== 89455 (pos)
                    (not (not_at_c_p9))

                    ; #89455: <==negation-removal== 72927 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #17733: <==commonly_known== 30183 (pos)
                    (Bb_checked_p10)

                    ; #19743: <==commonly_known== 30183 (pos)
                    (Ba_checked_p10)

                    ; #26186: <==closure== 17733 (pos)
                    (Pb_checked_p10)

                    ; #30183: origin
                    (checked_p10)

                    ; #32950: <==commonly_known== 30183 (pos)
                    (Bc_checked_p10)

                    ; #39782: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #46749: <==closure== 56638 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #48988: <==closure== 32950 (pos)
                    (Pc_checked_p10)

                    ; #52497: <==closure== 19743 (pos)
                    (Pa_checked_p10)

                    ; #56638: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #72699: <==closure== 39782 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #11993: <==negation-removal== 56638 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #26269: <==uncertain_firing== 39782 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #28619: <==negation-removal== 32950 (pos)
                    (not (Pc_not_checked_p10))

                    ; #29340: <==negation-removal== 46749 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #39289: <==negation-removal== 17733 (pos)
                    (not (Pb_not_checked_p10))

                    ; #44727: <==negation-removal== 72699 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #45924: <==uncertain_firing== 56638 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #51741: <==unclosure== 45924 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #58697: <==unclosure== 26269 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #61419: <==negation-removal== 48988 (pos)
                    (not (Bc_not_checked_p10))

                    ; #69748: <==negation-removal== 39782 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #75981: <==negation-removal== 30183 (pos)
                    (not (not_checked_p10))

                    ; #81766: <==negation-removal== 19743 (pos)
                    (not (Pa_not_checked_p10))

                    ; #85060: <==negation-removal== 26186 (pos)
                    (not (Bb_not_checked_p10))

                    ; #90855: <==negation-removal== 52497 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10322: <==commonly_known== 15663 (pos)
                    (Bc_checked_p11)

                    ; #11362: <==commonly_known== 15663 (pos)
                    (Bb_checked_p11)

                    ; #15663: origin
                    (checked_p11)

                    ; #21245: <==closure== 49870 (pos)
                    (Pa_checked_p11)

                    ; #24558: <==closure== 33912 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #33912: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #49870: <==commonly_known== 15663 (pos)
                    (Ba_checked_p11)

                    ; #50411: <==closure== 87652 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #56945: <==closure== 11362 (pos)
                    (Pb_checked_p11)

                    ; #84807: <==closure== 10322 (pos)
                    (Pc_checked_p11)

                    ; #87652: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #13023: <==negation-removal== 10322 (pos)
                    (not (Pc_not_checked_p11))

                    ; #13134: <==negation-removal== 24558 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #17422: <==uncertain_firing== 87652 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #38723: <==negation-removal== 11362 (pos)
                    (not (Pb_not_checked_p11))

                    ; #39449: <==negation-removal== 21245 (pos)
                    (not (Ba_not_checked_p11))

                    ; #46136: <==negation-removal== 33912 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #48284: <==uncertain_firing== 33912 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #60362: <==negation-removal== 49870 (pos)
                    (not (Pa_not_checked_p11))

                    ; #62623: <==negation-removal== 15663 (pos)
                    (not (not_checked_p11))

                    ; #66626: <==negation-removal== 50411 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #69923: <==negation-removal== 87652 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #73917: <==unclosure== 48284 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #82219: <==negation-removal== 84807 (pos)
                    (not (Bc_not_checked_p11))

                    ; #88850: <==unclosure== 17422 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #97915: <==negation-removal== 56945 (pos)
                    (not (Bb_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15738: <==commonly_known== 31496 (pos)
                    (Bb_checked_p12)

                    ; #18652: <==closure== 33473 (pos)
                    (Pc_checked_p12)

                    ; #20175: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #21830: <==closure== 15738 (pos)
                    (Pb_checked_p12)

                    ; #26275: <==closure== 51358 (pos)
                    (Pa_checked_p12)

                    ; #31496: origin
                    (checked_p12)

                    ; #33473: <==commonly_known== 31496 (pos)
                    (Bc_checked_p12)

                    ; #37812: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #41419: <==closure== 20175 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #51358: <==commonly_known== 31496 (pos)
                    (Ba_checked_p12)

                    ; #54812: <==closure== 37812 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #27287: <==negation-removal== 20175 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #27937: <==negation-removal== 41419 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #36562: <==unclosure== 50763 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #36623: <==negation-removal== 51358 (pos)
                    (not (Pa_not_checked_p12))

                    ; #37450: <==negation-removal== 18652 (pos)
                    (not (Bc_not_checked_p12))

                    ; #37585: <==unclosure== 59250 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #38074: <==negation-removal== 33473 (pos)
                    (not (Pc_not_checked_p12))

                    ; #50763: <==uncertain_firing== 20175 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #56288: <==negation-removal== 26275 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58508: <==negation-removal== 15738 (pos)
                    (not (Pb_not_checked_p12))

                    ; #59250: <==uncertain_firing== 37812 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #73358: <==negation-removal== 31496 (pos)
                    (not (not_checked_p12))

                    ; #77843: <==negation-removal== 21830 (pos)
                    (not (Bb_not_checked_p12))

                    ; #82737: <==negation-removal== 37812 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #87552: <==negation-removal== 54812 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #26211: <==commonly_known== 77685 (pos)
                    (Ba_checked_p1)

                    ; #29489: <==commonly_known== 77685 (pos)
                    (Bc_checked_p1)

                    ; #38664: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #39995: <==closure== 54492 (pos)
                    (Pb_checked_p1)

                    ; #48118: <==closure== 29489 (pos)
                    (Pc_checked_p1)

                    ; #54492: <==commonly_known== 77685 (pos)
                    (Bb_checked_p1)

                    ; #65544: <==closure== 26211 (pos)
                    (Pa_checked_p1)

                    ; #68495: <==closure== 38664 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #71648: <==closure== 87126 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #77685: origin
                    (checked_p1)

                    ; #87126: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #15274: <==negation-removal== 77685 (pos)
                    (not (not_checked_p1))

                    ; #17457: <==negation-removal== 71648 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #18683: <==negation-removal== 68495 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #37898: <==unclosure== 42392 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #38926: <==negation-removal== 38664 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #41378: <==negation-removal== 87126 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #42392: <==uncertain_firing== 38664 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #42708: <==negation-removal== 29489 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46804: <==uncertain_firing== 87126 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #55148: <==negation-removal== 54492 (pos)
                    (not (Pb_not_checked_p1))

                    ; #71451: <==unclosure== 46804 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #73067: <==negation-removal== 39995 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74727: <==negation-removal== 26211 (pos)
                    (not (Pa_not_checked_p1))

                    ; #75785: <==negation-removal== 65544 (pos)
                    (not (Ba_not_checked_p1))

                    ; #88145: <==negation-removal== 48118 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16097: <==closure== 96375 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #34161: <==commonly_known== 56001 (pos)
                    (Bb_checked_p2)

                    ; #35485: <==closure== 40007 (pos)
                    (Pa_checked_p2)

                    ; #36994: <==closure== 34161 (pos)
                    (Pb_checked_p2)

                    ; #40007: <==commonly_known== 56001 (pos)
                    (Ba_checked_p2)

                    ; #40299: <==closure== 61914 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #56001: origin
                    (checked_p2)

                    ; #61914: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #66117: <==commonly_known== 56001 (pos)
                    (Bc_checked_p2)

                    ; #71184: <==closure== 66117 (pos)
                    (Pc_checked_p2)

                    ; #96375: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #12747: <==negation-removal== 56001 (pos)
                    (not (not_checked_p2))

                    ; #13231: <==negation-removal== 40299 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #18734: <==negation-removal== 34161 (pos)
                    (not (Pb_not_checked_p2))

                    ; #24379: <==negation-removal== 35485 (pos)
                    (not (Ba_not_checked_p2))

                    ; #27667: <==negation-removal== 61914 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #30227: <==negation-removal== 36994 (pos)
                    (not (Bb_not_checked_p2))

                    ; #35724: <==negation-removal== 40007 (pos)
                    (not (Pa_not_checked_p2))

                    ; #40451: <==unclosure== 48128 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #48128: <==uncertain_firing== 96375 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #54135: <==negation-removal== 96375 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #61092: <==uncertain_firing== 61914 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #66789: <==negation-removal== 16097 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #71839: <==unclosure== 61092 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #77759: <==negation-removal== 66117 (pos)
                    (not (Pc_not_checked_p2))

                    ; #78594: <==negation-removal== 71184 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #24216: <==closure== 79567 (pos)
                    (Pa_checked_p3)

                    ; #33285: <==closure== 69869 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #35332: <==closure== 95025 (pos)
                    (Pc_checked_p3)

                    ; #54009: <==closure== 58438 (pos)
                    (Pb_checked_p3)

                    ; #54013: origin
                    (checked_p3)

                    ; #54160: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #58438: <==commonly_known== 54013 (pos)
                    (Bb_checked_p3)

                    ; #63832: <==closure== 54160 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #69869: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #79567: <==commonly_known== 54013 (pos)
                    (Ba_checked_p3)

                    ; #95025: <==commonly_known== 54013 (pos)
                    (Bc_checked_p3)

                    ; #12916: <==negation-removal== 35332 (pos)
                    (not (Bc_not_checked_p3))

                    ; #21324: <==negation-removal== 54009 (pos)
                    (not (Bb_not_checked_p3))

                    ; #23317: <==negation-removal== 63832 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #28384: <==negation-removal== 33285 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #38269: <==negation-removal== 69869 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #43177: <==unclosure== 60004 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #44724: <==negation-removal== 54013 (pos)
                    (not (not_checked_p3))

                    ; #50436: <==unclosure== 71717 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #50496: <==negation-removal== 54160 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #50511: <==negation-removal== 58438 (pos)
                    (not (Pb_not_checked_p3))

                    ; #56651: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #56805: <==negation-removal== 95025 (pos)
                    (not (Pc_not_checked_p3))

                    ; #60004: <==uncertain_firing== 69869 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #65856: <==negation-removal== 79567 (pos)
                    (not (Pa_not_checked_p3))

                    ; #71717: <==uncertain_firing== 54160 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #18674: <==closure== 71086 (pos)
                    (Pb_checked_p4)

                    ; #23303: <==commonly_known== 40557 (pos)
                    (Ba_checked_p4)

                    ; #28318: <==closure== 52094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #34258: <==closure== 36710 (pos)
                    (Pc_checked_p4)

                    ; #36710: <==commonly_known== 40557 (pos)
                    (Bc_checked_p4)

                    ; #40557: origin
                    (checked_p4)

                    ; #52094: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #65583: <==closure== 99996 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #71086: <==commonly_known== 40557 (pos)
                    (Bb_checked_p4)

                    ; #75112: <==closure== 23303 (pos)
                    (Pa_checked_p4)

                    ; #99996: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #10953: <==negation-removal== 23303 (pos)
                    (not (Pa_not_checked_p4))

                    ; #22593: <==negation-removal== 28318 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #24662: <==negation-removal== 75112 (pos)
                    (not (Ba_not_checked_p4))

                    ; #31004: <==uncertain_firing== 52094 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #36793: <==negation-removal== 65583 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #40732: <==uncertain_firing== 99996 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #43320: <==negation-removal== 40557 (pos)
                    (not (not_checked_p4))

                    ; #51416: <==negation-removal== 52094 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #53956: <==negation-removal== 99996 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #67627: <==negation-removal== 36710 (pos)
                    (not (Pc_not_checked_p4))

                    ; #76772: <==negation-removal== 18674 (pos)
                    (not (Bb_not_checked_p4))

                    ; #78559: <==negation-removal== 71086 (pos)
                    (not (Pb_not_checked_p4))

                    ; #83169: <==unclosure== 31004 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #87686: <==unclosure== 40732 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #89519: <==negation-removal== 34258 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10020: <==commonly_known== 30140 (pos)
                    (Bc_checked_p5)

                    ; #22166: <==closure== 27568 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #27568: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #30140: origin
                    (checked_p5)

                    ; #30697: <==closure== 39525 (pos)
                    (Pa_checked_p5)

                    ; #34343: <==closure== 93158 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #39525: <==commonly_known== 30140 (pos)
                    (Ba_checked_p5)

                    ; #70380: <==commonly_known== 30140 (pos)
                    (Bb_checked_p5)

                    ; #85896: <==closure== 70380 (pos)
                    (Pb_checked_p5)

                    ; #87953: <==closure== 10020 (pos)
                    (Pc_checked_p5)

                    ; #93158: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #12004: <==uncertain_firing== 27568 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #12144: <==unclosure== 49270 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #14223: <==negation-removal== 93158 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #32730: <==negation-removal== 10020 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38581: <==negation-removal== 70380 (pos)
                    (not (Pb_not_checked_p5))

                    ; #49270: <==uncertain_firing== 93158 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #51544: <==negation-removal== 39525 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54611: <==negation-removal== 34343 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #56265: <==negation-removal== 27568 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #69951: <==negation-removal== 22166 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #80051: <==negation-removal== 87953 (pos)
                    (not (Bc_not_checked_p5))

                    ; #80368: <==negation-removal== 85896 (pos)
                    (not (Bb_not_checked_p5))

                    ; #86668: <==negation-removal== 30697 (pos)
                    (not (Ba_not_checked_p5))

                    ; #89009: <==negation-removal== 30140 (pos)
                    (not (not_checked_p5))

                    ; #91747: <==unclosure== 12004 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16014: <==closure== 87484 (pos)
                    (Pb_checked_p6)

                    ; #16308: <==closure== 76658 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #25305: <==commonly_known== 77186 (pos)
                    (Ba_checked_p6)

                    ; #30729: <==closure== 56837 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #56837: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #62536: <==commonly_known== 77186 (pos)
                    (Bc_checked_p6)

                    ; #66883: <==closure== 25305 (pos)
                    (Pa_checked_p6)

                    ; #69172: <==closure== 62536 (pos)
                    (Pc_checked_p6)

                    ; #76658: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #77186: origin
                    (checked_p6)

                    ; #87484: <==commonly_known== 77186 (pos)
                    (Bb_checked_p6)

                    ; #18097: <==uncertain_firing== 76658 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #19645: <==negation-removal== 16308 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #35998: <==unclosure== 18097 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #45090: <==negation-removal== 66883 (pos)
                    (not (Ba_not_checked_p6))

                    ; #45297: <==negation-removal== 30729 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #50535: <==unclosure== 84864 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #57374: <==negation-removal== 25305 (pos)
                    (not (Pa_not_checked_p6))

                    ; #63941: <==negation-removal== 16014 (pos)
                    (not (Bb_not_checked_p6))

                    ; #65969: <==negation-removal== 87484 (pos)
                    (not (Pb_not_checked_p6))

                    ; #67097: <==negation-removal== 62536 (pos)
                    (not (Pc_not_checked_p6))

                    ; #81863: <==negation-removal== 69172 (pos)
                    (not (Bc_not_checked_p6))

                    ; #84864: <==uncertain_firing== 56837 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #85312: <==negation-removal== 76658 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #85770: <==negation-removal== 56837 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #87044: <==negation-removal== 77186 (pos)
                    (not (not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #19833: <==closure== 59643 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #23297: <==closure== 89860 (pos)
                    (Pb_checked_p7)

                    ; #44993: <==commonly_known== 47598 (pos)
                    (Bc_checked_p7)

                    ; #47598: origin
                    (checked_p7)

                    ; #48606: <==commonly_known== 47598 (pos)
                    (Ba_checked_p7)

                    ; #49388: <==closure== 69127 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #59643: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #69127: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #69852: <==closure== 48606 (pos)
                    (Pa_checked_p7)

                    ; #77734: <==closure== 44993 (pos)
                    (Pc_checked_p7)

                    ; #89860: <==commonly_known== 47598 (pos)
                    (Bb_checked_p7)

                    ; #11534: <==negation-removal== 89860 (pos)
                    (not (Pb_not_checked_p7))

                    ; #14577: <==uncertain_firing== 59643 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #15609: <==negation-removal== 69127 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #26577: <==negation-removal== 44993 (pos)
                    (not (Pc_not_checked_p7))

                    ; #32960: <==negation-removal== 19833 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #42461: <==negation-removal== 48606 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48379: <==negation-removal== 23297 (pos)
                    (not (Bb_not_checked_p7))

                    ; #50471: <==negation-removal== 59643 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #51782: <==negation-removal== 69852 (pos)
                    (not (Ba_not_checked_p7))

                    ; #61447: <==unclosure== 90925 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #63949: <==negation-removal== 47598 (pos)
                    (not (not_checked_p7))

                    ; #64809: <==negation-removal== 77734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #71755: <==negation-removal== 49388 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #77232: <==unclosure== 14577 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #90925: <==uncertain_firing== 69127 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12142: <==commonly_known== 80440 (pos)
                    (Bb_checked_p8)

                    ; #12933: <==closure== 27448 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #19996: <==closure== 50123 (pos)
                    (Pc_checked_p8)

                    ; #27448: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #45120: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #50123: <==commonly_known== 80440 (pos)
                    (Bc_checked_p8)

                    ; #59888: <==closure== 78387 (pos)
                    (Pa_checked_p8)

                    ; #61737: <==closure== 45120 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #65175: <==closure== 12142 (pos)
                    (Pb_checked_p8)

                    ; #78387: <==commonly_known== 80440 (pos)
                    (Ba_checked_p8)

                    ; #80440: origin
                    (checked_p8)

                    ; #26869: <==negation-removal== 19996 (pos)
                    (not (Bc_not_checked_p8))

                    ; #27891: <==negation-removal== 12142 (pos)
                    (not (Pb_not_checked_p8))

                    ; #38810: <==negation-removal== 27448 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #44645: <==negation-removal== 61737 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #54093: <==negation-removal== 80440 (pos)
                    (not (not_checked_p8))

                    ; #62479: <==negation-removal== 45120 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #64973: <==negation-removal== 65175 (pos)
                    (not (Bb_not_checked_p8))

                    ; #65847: <==negation-removal== 50123 (pos)
                    (not (Pc_not_checked_p8))

                    ; #74566: <==uncertain_firing== 45120 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #75960: <==negation-removal== 78387 (pos)
                    (not (Pa_not_checked_p8))

                    ; #79275: <==negation-removal== 12933 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #79469: <==unclosure== 74566 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #79556: <==uncertain_firing== 27448 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #85730: <==unclosure== 79556 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #88882: <==negation-removal== 59888 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18936: <==closure== 50709 (pos)
                    (Pa_checked_p9)

                    ; #24755: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #28149: <==closure== 55727 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #31573: <==commonly_known== 64220 (pos)
                    (Bb_checked_p9)

                    ; #39933: <==commonly_known== 64220 (pos)
                    (Bc_checked_p9)

                    ; #44828: <==closure== 39933 (pos)
                    (Pc_checked_p9)

                    ; #49112: <==closure== 31573 (pos)
                    (Pb_checked_p9)

                    ; #50709: <==commonly_known== 64220 (pos)
                    (Ba_checked_p9)

                    ; #55727: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #64220: origin
                    (checked_p9)

                    ; #74456: <==closure== 24755 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #18498: <==negation-removal== 49112 (pos)
                    (not (Bb_not_checked_p9))

                    ; #23324: <==negation-removal== 31573 (pos)
                    (not (Pb_not_checked_p9))

                    ; #27718: <==unclosure== 41740 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #29675: <==negation-removal== 64220 (pos)
                    (not (not_checked_p9))

                    ; #34414: <==negation-removal== 28149 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #41740: <==uncertain_firing== 55727 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #55425: <==negation-removal== 55727 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #68004: <==uncertain_firing== 24755 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #68517: <==negation-removal== 74456 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #70748: <==negation-removal== 44828 (pos)
                    (not (Bc_not_checked_p9))

                    ; #74086: <==negation-removal== 18936 (pos)
                    (not (Ba_not_checked_p9))

                    ; #75891: <==unclosure== 68004 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #83724: <==negation-removal== 39933 (pos)
                    (not (Pc_not_checked_p9))

                    ; #88353: <==negation-removal== 50709 (pos)
                    (not (Pa_not_checked_p9))

                    ; #89842: <==negation-removal== 24755 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #17733: <==commonly_known== 30183 (pos)
                    (Bb_checked_p10)

                    ; #19743: <==commonly_known== 30183 (pos)
                    (Ba_checked_p10)

                    ; #26186: <==closure== 17733 (pos)
                    (Pb_checked_p10)

                    ; #30183: origin
                    (checked_p10)

                    ; #32950: <==commonly_known== 30183 (pos)
                    (Bc_checked_p10)

                    ; #33406: <==closure== 67496 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #48289: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #48988: <==closure== 32950 (pos)
                    (Pc_checked_p10)

                    ; #52497: <==closure== 19743 (pos)
                    (Pa_checked_p10)

                    ; #64246: <==closure== 48289 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #67496: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #28419: <==uncertain_firing== 48289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #28619: <==negation-removal== 32950 (pos)
                    (not (Pc_not_checked_p10))

                    ; #39289: <==negation-removal== 17733 (pos)
                    (not (Pb_not_checked_p10))

                    ; #41781: <==uncertain_firing== 67496 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #45977: <==negation-removal== 64246 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #61419: <==negation-removal== 48988 (pos)
                    (not (Bc_not_checked_p10))

                    ; #65060: <==negation-removal== 48289 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #67126: <==negation-removal== 67496 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #75981: <==negation-removal== 30183 (pos)
                    (not (not_checked_p10))

                    ; #76673: <==unclosure== 28419 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #81189: <==negation-removal== 33406 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #81766: <==negation-removal== 19743 (pos)
                    (not (Pa_not_checked_p10))

                    ; #82391: <==unclosure== 41781 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #85060: <==negation-removal== 26186 (pos)
                    (not (Bb_not_checked_p10))

                    ; #90855: <==negation-removal== 52497 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10322: <==commonly_known== 15663 (pos)
                    (Bc_checked_p11)

                    ; #11362: <==commonly_known== 15663 (pos)
                    (Bb_checked_p11)

                    ; #15663: origin
                    (checked_p11)

                    ; #20598: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #21065: <==closure== 86429 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #21245: <==closure== 49870 (pos)
                    (Pa_checked_p11)

                    ; #49870: <==commonly_known== 15663 (pos)
                    (Ba_checked_p11)

                    ; #56945: <==closure== 11362 (pos)
                    (Pb_checked_p11)

                    ; #67700: <==closure== 20598 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #84807: <==closure== 10322 (pos)
                    (Pc_checked_p11)

                    ; #86429: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #13023: <==negation-removal== 10322 (pos)
                    (not (Pc_not_checked_p11))

                    ; #25370: <==unclosure== 90506 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #38723: <==negation-removal== 11362 (pos)
                    (not (Pb_not_checked_p11))

                    ; #39449: <==negation-removal== 21245 (pos)
                    (not (Ba_not_checked_p11))

                    ; #47401: <==negation-removal== 21065 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #60290: <==negation-removal== 86429 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #60362: <==negation-removal== 49870 (pos)
                    (not (Pa_not_checked_p11))

                    ; #62623: <==negation-removal== 15663 (pos)
                    (not (not_checked_p11))

                    ; #69205: <==negation-removal== 67700 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #69503: <==uncertain_firing== 86429 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #75935: <==negation-removal== 20598 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #80834: <==unclosure== 69503 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #82219: <==negation-removal== 84807 (pos)
                    (not (Bc_not_checked_p11))

                    ; #90506: <==uncertain_firing== 20598 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #97915: <==negation-removal== 56945 (pos)
                    (not (Bb_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11557: <==closure== 90782 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #15738: <==commonly_known== 31496 (pos)
                    (Bb_checked_p12)

                    ; #18652: <==closure== 33473 (pos)
                    (Pc_checked_p12)

                    ; #21830: <==closure== 15738 (pos)
                    (Pb_checked_p12)

                    ; #26275: <==closure== 51358 (pos)
                    (Pa_checked_p12)

                    ; #28298: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #31496: origin
                    (checked_p12)

                    ; #33473: <==commonly_known== 31496 (pos)
                    (Bc_checked_p12)

                    ; #36307: <==closure== 28298 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #51358: <==commonly_known== 31496 (pos)
                    (Ba_checked_p12)

                    ; #90782: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #36623: <==negation-removal== 51358 (pos)
                    (not (Pa_not_checked_p12))

                    ; #37450: <==negation-removal== 18652 (pos)
                    (not (Bc_not_checked_p12))

                    ; #38074: <==negation-removal== 33473 (pos)
                    (not (Pc_not_checked_p12))

                    ; #51275: <==uncertain_firing== 90782 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #54814: <==unclosure== 70076 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #56288: <==negation-removal== 26275 (pos)
                    (not (Ba_not_checked_p12))

                    ; #56883: <==negation-removal== 36307 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #58508: <==negation-removal== 15738 (pos)
                    (not (Pb_not_checked_p12))

                    ; #59735: <==negation-removal== 90782 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #66910: <==unclosure== 51275 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #70076: <==uncertain_firing== 28298 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #73358: <==negation-removal== 31496 (pos)
                    (not (not_checked_p12))

                    ; #77843: <==negation-removal== 21830 (pos)
                    (not (Bb_not_checked_p12))

                    ; #78568: <==negation-removal== 28298 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #90881: <==negation-removal== 11557 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #26211: <==commonly_known== 77685 (pos)
                    (Ba_checked_p1)

                    ; #29489: <==commonly_known== 77685 (pos)
                    (Bc_checked_p1)

                    ; #39995: <==closure== 54492 (pos)
                    (Pb_checked_p1)

                    ; #48118: <==closure== 29489 (pos)
                    (Pc_checked_p1)

                    ; #51887: <==closure== 68600 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #54492: <==commonly_known== 77685 (pos)
                    (Bb_checked_p1)

                    ; #65544: <==closure== 26211 (pos)
                    (Pa_checked_p1)

                    ; #68600: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #77685: origin
                    (checked_p1)

                    ; #98148: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #98679: <==closure== 98148 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #15274: <==negation-removal== 77685 (pos)
                    (not (not_checked_p1))

                    ; #30632: <==negation-removal== 98148 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #30776: <==uncertain_firing== 98148 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #33457: <==negation-removal== 98679 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #34832: <==negation-removal== 51887 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #41435: <==negation-removal== 68600 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #42708: <==negation-removal== 29489 (pos)
                    (not (Pc_not_checked_p1))

                    ; #46674: <==unclosure== 90010 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #55148: <==negation-removal== 54492 (pos)
                    (not (Pb_not_checked_p1))

                    ; #73067: <==negation-removal== 39995 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74727: <==negation-removal== 26211 (pos)
                    (not (Pa_not_checked_p1))

                    ; #75785: <==negation-removal== 65544 (pos)
                    (not (Ba_not_checked_p1))

                    ; #88145: <==negation-removal== 48118 (pos)
                    (not (Bc_not_checked_p1))

                    ; #89449: <==unclosure== 30776 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #90010: <==uncertain_firing== 68600 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #34161: <==commonly_known== 56001 (pos)
                    (Bb_checked_p2)

                    ; #35485: <==closure== 40007 (pos)
                    (Pa_checked_p2)

                    ; #36994: <==closure== 34161 (pos)
                    (Pb_checked_p2)

                    ; #37104: <==closure== 42344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #40007: <==commonly_known== 56001 (pos)
                    (Ba_checked_p2)

                    ; #40460: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #42344: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #56001: origin
                    (checked_p2)

                    ; #66117: <==commonly_known== 56001 (pos)
                    (Bc_checked_p2)

                    ; #69136: <==closure== 40460 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #71184: <==closure== 66117 (pos)
                    (Pc_checked_p2)

                    ; #12747: <==negation-removal== 56001 (pos)
                    (not (not_checked_p2))

                    ; #18734: <==negation-removal== 34161 (pos)
                    (not (Pb_not_checked_p2))

                    ; #19682: <==uncertain_firing== 42344 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #21271: <==uncertain_firing== 40460 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #24379: <==negation-removal== 35485 (pos)
                    (not (Ba_not_checked_p2))

                    ; #30227: <==negation-removal== 36994 (pos)
                    (not (Bb_not_checked_p2))

                    ; #35724: <==negation-removal== 40007 (pos)
                    (not (Pa_not_checked_p2))

                    ; #38062: <==unclosure== 19682 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #41129: <==negation-removal== 42344 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #45428: <==unclosure== 21271 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #54192: <==negation-removal== 69136 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #63364: <==negation-removal== 37104 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #77759: <==negation-removal== 66117 (pos)
                    (not (Pc_not_checked_p2))

                    ; #78594: <==negation-removal== 71184 (pos)
                    (not (Bc_not_checked_p2))

                    ; #89341: <==negation-removal== 40460 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #14425: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #24216: <==closure== 79567 (pos)
                    (Pa_checked_p3)

                    ; #35332: <==closure== 95025 (pos)
                    (Pc_checked_p3)

                    ; #54009: <==closure== 58438 (pos)
                    (Pb_checked_p3)

                    ; #54013: origin
                    (checked_p3)

                    ; #55874: <==closure== 63962 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #58438: <==commonly_known== 54013 (pos)
                    (Bb_checked_p3)

                    ; #63962: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #79567: <==commonly_known== 54013 (pos)
                    (Ba_checked_p3)

                    ; #89853: <==closure== 14425 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #95025: <==commonly_known== 54013 (pos)
                    (Bc_checked_p3)

                    ; #12916: <==negation-removal== 35332 (pos)
                    (not (Bc_not_checked_p3))

                    ; #21324: <==negation-removal== 54009 (pos)
                    (not (Bb_not_checked_p3))

                    ; #36134: <==negation-removal== 63962 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #38140: <==negation-removal== 55874 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #44724: <==negation-removal== 54013 (pos)
                    (not (not_checked_p3))

                    ; #50406: <==negation-removal== 89853 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #50511: <==negation-removal== 58438 (pos)
                    (not (Pb_not_checked_p3))

                    ; #53321: <==unclosure== 56180 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #56180: <==uncertain_firing== 63962 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #56651: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #56805: <==negation-removal== 95025 (pos)
                    (not (Pc_not_checked_p3))

                    ; #57603: <==uncertain_firing== 14425 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #65856: <==negation-removal== 79567 (pos)
                    (not (Pa_not_checked_p3))

                    ; #81954: <==negation-removal== 14425 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #94203: <==unclosure== 57603 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #18674: <==closure== 71086 (pos)
                    (Pb_checked_p4)

                    ; #23303: <==commonly_known== 40557 (pos)
                    (Ba_checked_p4)

                    ; #24090: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #34258: <==closure== 36710 (pos)
                    (Pc_checked_p4)

                    ; #36710: <==commonly_known== 40557 (pos)
                    (Bc_checked_p4)

                    ; #40557: origin
                    (checked_p4)

                    ; #56580: <==closure== 65496 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #63989: <==closure== 24090 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #65496: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #71086: <==commonly_known== 40557 (pos)
                    (Bb_checked_p4)

                    ; #75112: <==closure== 23303 (pos)
                    (Pa_checked_p4)

                    ; #10953: <==negation-removal== 23303 (pos)
                    (not (Pa_not_checked_p4))

                    ; #14594: <==uncertain_firing== 24090 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #24662: <==negation-removal== 75112 (pos)
                    (not (Ba_not_checked_p4))

                    ; #29504: <==negation-removal== 65496 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #37929: <==negation-removal== 56580 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #41012: <==unclosure== 14594 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #43320: <==negation-removal== 40557 (pos)
                    (not (not_checked_p4))

                    ; #56714: <==negation-removal== 63989 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #65312: <==uncertain_firing== 65496 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #67627: <==negation-removal== 36710 (pos)
                    (not (Pc_not_checked_p4))

                    ; #76772: <==negation-removal== 18674 (pos)
                    (not (Bb_not_checked_p4))

                    ; #77682: <==negation-removal== 24090 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #78559: <==negation-removal== 71086 (pos)
                    (not (Pb_not_checked_p4))

                    ; #86523: <==unclosure== 65312 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #89519: <==negation-removal== 34258 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10020: <==commonly_known== 30140 (pos)
                    (Bc_checked_p5)

                    ; #13092: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #17648: <==closure== 13092 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #30140: origin
                    (checked_p5)

                    ; #30697: <==closure== 39525 (pos)
                    (Pa_checked_p5)

                    ; #39525: <==commonly_known== 30140 (pos)
                    (Ba_checked_p5)

                    ; #70380: <==commonly_known== 30140 (pos)
                    (Bb_checked_p5)

                    ; #71338: <==closure== 88288 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #85896: <==closure== 70380 (pos)
                    (Pb_checked_p5)

                    ; #87953: <==closure== 10020 (pos)
                    (Pc_checked_p5)

                    ; #88288: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #10521: <==negation-removal== 88288 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #32730: <==negation-removal== 10020 (pos)
                    (not (Pc_not_checked_p5))

                    ; #38581: <==negation-removal== 70380 (pos)
                    (not (Pb_not_checked_p5))

                    ; #45699: <==negation-removal== 13092 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #51116: <==uncertain_firing== 88288 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #51544: <==negation-removal== 39525 (pos)
                    (not (Pa_not_checked_p5))

                    ; #61612: <==unclosure== 89323 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #61698: <==negation-removal== 71338 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62103: <==unclosure== 51116 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #74688: <==negation-removal== 17648 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #80051: <==negation-removal== 87953 (pos)
                    (not (Bc_not_checked_p5))

                    ; #80368: <==negation-removal== 85896 (pos)
                    (not (Bb_not_checked_p5))

                    ; #86668: <==negation-removal== 30697 (pos)
                    (not (Ba_not_checked_p5))

                    ; #89009: <==negation-removal== 30140 (pos)
                    (not (not_checked_p5))

                    ; #89323: <==uncertain_firing== 13092 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16014: <==closure== 87484 (pos)
                    (Pb_checked_p6)

                    ; #22522: <==closure== 32850 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #25305: <==commonly_known== 77186 (pos)
                    (Ba_checked_p6)

                    ; #31685: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #32850: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #62536: <==commonly_known== 77186 (pos)
                    (Bc_checked_p6)

                    ; #66883: <==closure== 25305 (pos)
                    (Pa_checked_p6)

                    ; #69172: <==closure== 62536 (pos)
                    (Pc_checked_p6)

                    ; #77186: origin
                    (checked_p6)

                    ; #87484: <==commonly_known== 77186 (pos)
                    (Bb_checked_p6)

                    ; #89900: <==closure== 31685 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #13078: <==negation-removal== 31685 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #45090: <==negation-removal== 66883 (pos)
                    (not (Ba_not_checked_p6))

                    ; #50125: <==uncertain_firing== 31685 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #56476: <==unclosure== 69647 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #57374: <==negation-removal== 25305 (pos)
                    (not (Pa_not_checked_p6))

                    ; #63543: <==negation-removal== 22522 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #63941: <==negation-removal== 16014 (pos)
                    (not (Bb_not_checked_p6))

                    ; #65969: <==negation-removal== 87484 (pos)
                    (not (Pb_not_checked_p6))

                    ; #67097: <==negation-removal== 62536 (pos)
                    (not (Pc_not_checked_p6))

                    ; #69647: <==uncertain_firing== 32850 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #70093: <==negation-removal== 89900 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #70809: <==unclosure== 50125 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #81863: <==negation-removal== 69172 (pos)
                    (not (Bc_not_checked_p6))

                    ; #87044: <==negation-removal== 77186 (pos)
                    (not (not_checked_p6))

                    ; #87574: <==negation-removal== 32850 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #11609: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #18960: <==closure== 43828 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #23297: <==closure== 89860 (pos)
                    (Pb_checked_p7)

                    ; #43828: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #44993: <==commonly_known== 47598 (pos)
                    (Bc_checked_p7)

                    ; #47598: origin
                    (checked_p7)

                    ; #48606: <==commonly_known== 47598 (pos)
                    (Ba_checked_p7)

                    ; #68720: <==closure== 11609 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #69852: <==closure== 48606 (pos)
                    (Pa_checked_p7)

                    ; #77734: <==closure== 44993 (pos)
                    (Pc_checked_p7)

                    ; #89860: <==commonly_known== 47598 (pos)
                    (Bb_checked_p7)

                    ; #11534: <==negation-removal== 89860 (pos)
                    (not (Pb_not_checked_p7))

                    ; #13171: <==uncertain_firing== 11609 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #26577: <==negation-removal== 44993 (pos)
                    (not (Pc_not_checked_p7))

                    ; #40778: <==negation-removal== 18960 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #42461: <==negation-removal== 48606 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48379: <==negation-removal== 23297 (pos)
                    (not (Bb_not_checked_p7))

                    ; #51782: <==negation-removal== 69852 (pos)
                    (not (Ba_not_checked_p7))

                    ; #54806: <==unclosure== 61416 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #58921: <==negation-removal== 43828 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #61416: <==uncertain_firing== 43828 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #62164: <==negation-removal== 68720 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #63949: <==negation-removal== 47598 (pos)
                    (not (not_checked_p7))

                    ; #64809: <==negation-removal== 77734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #73710: <==unclosure== 13171 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #89429: <==negation-removal== 11609 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12142: <==commonly_known== 80440 (pos)
                    (Bb_checked_p8)

                    ; #18516: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #19996: <==closure== 50123 (pos)
                    (Pc_checked_p8)

                    ; #50123: <==commonly_known== 80440 (pos)
                    (Bc_checked_p8)

                    ; #59888: <==closure== 78387 (pos)
                    (Pa_checked_p8)

                    ; #65175: <==closure== 12142 (pos)
                    (Pb_checked_p8)

                    ; #72503: <==closure== 79029 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #73888: <==closure== 18516 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #78387: <==commonly_known== 80440 (pos)
                    (Ba_checked_p8)

                    ; #79029: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #80440: origin
                    (checked_p8)

                    ; #11344: <==uncertain_firing== 18516 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #14235: <==negation-removal== 72503 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #17185: <==unclosure== 11344 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #26869: <==negation-removal== 19996 (pos)
                    (not (Bc_not_checked_p8))

                    ; #27891: <==negation-removal== 12142 (pos)
                    (not (Pb_not_checked_p8))

                    ; #29227: <==uncertain_firing== 79029 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #40430: <==unclosure== 29227 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #46880: <==negation-removal== 73888 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #54093: <==negation-removal== 80440 (pos)
                    (not (not_checked_p8))

                    ; #55206: <==negation-removal== 79029 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #63470: <==negation-removal== 18516 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #64973: <==negation-removal== 65175 (pos)
                    (not (Bb_not_checked_p8))

                    ; #65847: <==negation-removal== 50123 (pos)
                    (not (Pc_not_checked_p8))

                    ; #75960: <==negation-removal== 78387 (pos)
                    (not (Pa_not_checked_p8))

                    ; #88882: <==negation-removal== 59888 (pos)
                    (not (Ba_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #18936: <==closure== 50709 (pos)
                    (Pa_checked_p9)

                    ; #21978: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #29351: <==closure== 21978 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #31573: <==commonly_known== 64220 (pos)
                    (Bb_checked_p9)

                    ; #39933: <==commonly_known== 64220 (pos)
                    (Bc_checked_p9)

                    ; #44828: <==closure== 39933 (pos)
                    (Pc_checked_p9)

                    ; #48085: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #49112: <==closure== 31573 (pos)
                    (Pb_checked_p9)

                    ; #50709: <==commonly_known== 64220 (pos)
                    (Ba_checked_p9)

                    ; #64220: origin
                    (checked_p9)

                    ; #87365: <==closure== 48085 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #17374: <==uncertain_firing== 21978 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #18498: <==negation-removal== 49112 (pos)
                    (not (Bb_not_checked_p9))

                    ; #20370: <==negation-removal== 21978 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #22130: <==unclosure== 34271 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #23324: <==negation-removal== 31573 (pos)
                    (not (Pb_not_checked_p9))

                    ; #29675: <==negation-removal== 64220 (pos)
                    (not (not_checked_p9))

                    ; #34271: <==uncertain_firing== 48085 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #41801: <==unclosure== 17374 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #46082: <==negation-removal== 29351 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #55718: <==negation-removal== 87365 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #66703: <==negation-removal== 48085 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #70748: <==negation-removal== 44828 (pos)
                    (not (Bc_not_checked_p9))

                    ; #74086: <==negation-removal== 18936 (pos)
                    (not (Ba_not_checked_p9))

                    ; #83724: <==negation-removal== 39933 (pos)
                    (not (Pc_not_checked_p9))

                    ; #88353: <==negation-removal== 50709 (pos)
                    (not (Pa_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11976: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #17733: <==commonly_known== 30183 (pos)
                    (Bb_checked_p10)

                    ; #19743: <==commonly_known== 30183 (pos)
                    (Ba_checked_p10)

                    ; #26186: <==closure== 17733 (pos)
                    (Pb_checked_p10)

                    ; #30183: origin
                    (checked_p10)

                    ; #32950: <==commonly_known== 30183 (pos)
                    (Bc_checked_p10)

                    ; #44266: <==closure== 74980 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #48988: <==closure== 32950 (pos)
                    (Pc_checked_p10)

                    ; #52497: <==closure== 19743 (pos)
                    (Pa_checked_p10)

                    ; #57200: <==closure== 11976 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #74980: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #17124: <==negation-removal== 57200 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #28619: <==negation-removal== 32950 (pos)
                    (not (Pc_not_checked_p10))

                    ; #39289: <==negation-removal== 17733 (pos)
                    (not (Pb_not_checked_p10))

                    ; #44360: <==unclosure== 84008 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #46596: <==negation-removal== 11976 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #56292: <==uncertain_firing== 74980 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #61419: <==negation-removal== 48988 (pos)
                    (not (Bc_not_checked_p10))

                    ; #65837: <==unclosure== 56292 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #66551: <==negation-removal== 44266 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #75981: <==negation-removal== 30183 (pos)
                    (not (not_checked_p10))

                    ; #81766: <==negation-removal== 19743 (pos)
                    (not (Pa_not_checked_p10))

                    ; #84008: <==uncertain_firing== 11976 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #85060: <==negation-removal== 26186 (pos)
                    (not (Bb_not_checked_p10))

                    ; #87491: <==negation-removal== 74980 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #90855: <==negation-removal== 52497 (pos)
                    (not (Ba_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10322: <==commonly_known== 15663 (pos)
                    (Bc_checked_p11)

                    ; #11362: <==commonly_known== 15663 (pos)
                    (Bb_checked_p11)

                    ; #15663: origin
                    (checked_p11)

                    ; #21245: <==closure== 49870 (pos)
                    (Pa_checked_p11)

                    ; #42441: <==closure== 93114 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #49870: <==commonly_known== 15663 (pos)
                    (Ba_checked_p11)

                    ; #56945: <==closure== 11362 (pos)
                    (Pb_checked_p11)

                    ; #84807: <==closure== 10322 (pos)
                    (Pc_checked_p11)

                    ; #85486: <==closure== 90683 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #90683: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #93114: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #13023: <==negation-removal== 10322 (pos)
                    (not (Pc_not_checked_p11))

                    ; #25684: <==negation-removal== 85486 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #38723: <==negation-removal== 11362 (pos)
                    (not (Pb_not_checked_p11))

                    ; #39449: <==negation-removal== 21245 (pos)
                    (not (Ba_not_checked_p11))

                    ; #45376: <==uncertain_firing== 90683 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #46633: <==unclosure== 87066 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #58490: <==negation-removal== 42441 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #60362: <==negation-removal== 49870 (pos)
                    (not (Pa_not_checked_p11))

                    ; #61867: <==negation-removal== 93114 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #62623: <==negation-removal== 15663 (pos)
                    (not (not_checked_p11))

                    ; #66469: <==negation-removal== 90683 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #69329: <==unclosure== 45376 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #82219: <==negation-removal== 84807 (pos)
                    (not (Bc_not_checked_p11))

                    ; #87066: <==uncertain_firing== 93114 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #97915: <==negation-removal== 56945 (pos)
                    (not (Bb_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15738: <==commonly_known== 31496 (pos)
                    (Bb_checked_p12)

                    ; #18652: <==closure== 33473 (pos)
                    (Pc_checked_p12)

                    ; #21830: <==closure== 15738 (pos)
                    (Pb_checked_p12)

                    ; #26275: <==closure== 51358 (pos)
                    (Pa_checked_p12)

                    ; #31496: origin
                    (checked_p12)

                    ; #33473: <==commonly_known== 31496 (pos)
                    (Bc_checked_p12)

                    ; #37060: <==closure== 62253 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #51358: <==commonly_known== 31496 (pos)
                    (Ba_checked_p12)

                    ; #59914: <==closure== 73163 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #62253: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #73163: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #24417: <==unclosure== 72298 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #29982: <==negation-removal== 62253 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #36623: <==negation-removal== 51358 (pos)
                    (not (Pa_not_checked_p12))

                    ; #37450: <==negation-removal== 18652 (pos)
                    (not (Bc_not_checked_p12))

                    ; #38074: <==negation-removal== 33473 (pos)
                    (not (Pc_not_checked_p12))

                    ; #53361: <==negation-removal== 37060 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #54515: <==negation-removal== 59914 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #56288: <==negation-removal== 26275 (pos)
                    (not (Ba_not_checked_p12))

                    ; #58508: <==negation-removal== 15738 (pos)
                    (not (Pb_not_checked_p12))

                    ; #67435: <==negation-removal== 73163 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #72298: <==uncertain_firing== 73163 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #73358: <==negation-removal== 31496 (pos)
                    (not (not_checked_p12))

                    ; #77843: <==negation-removal== 21830 (pos)
                    (not (Bb_not_checked_p12))

                    ; #83788: <==uncertain_firing== 62253 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #87840: <==unclosure== 83788 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #23895: <==closure== 85000 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #26211: <==commonly_known== 77685 (pos)
                    (Ba_checked_p1)

                    ; #29489: <==commonly_known== 77685 (pos)
                    (Bc_checked_p1)

                    ; #39995: <==closure== 54492 (pos)
                    (Pb_checked_p1)

                    ; #48118: <==closure== 29489 (pos)
                    (Pc_checked_p1)

                    ; #54303: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #54492: <==commonly_known== 77685 (pos)
                    (Bb_checked_p1)

                    ; #62693: <==closure== 54303 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #65544: <==closure== 26211 (pos)
                    (Pa_checked_p1)

                    ; #77685: origin
                    (checked_p1)

                    ; #85000: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #14074: <==uncertain_firing== 85000 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #15274: <==negation-removal== 77685 (pos)
                    (not (not_checked_p1))

                    ; #15650: <==negation-removal== 54303 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #24434: <==unclosure== 42627 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #32208: <==unclosure== 14074 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #39182: <==negation-removal== 23895 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #42627: <==uncertain_firing== 54303 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #42708: <==negation-removal== 29489 (pos)
                    (not (Pc_not_checked_p1))

                    ; #55148: <==negation-removal== 54492 (pos)
                    (not (Pb_not_checked_p1))

                    ; #64455: <==negation-removal== 62693 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #73067: <==negation-removal== 39995 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74727: <==negation-removal== 26211 (pos)
                    (not (Pa_not_checked_p1))

                    ; #75785: <==negation-removal== 65544 (pos)
                    (not (Ba_not_checked_p1))

                    ; #80016: <==negation-removal== 85000 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #88145: <==negation-removal== 48118 (pos)
                    (not (Bc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #34161: <==commonly_known== 56001 (pos)
                    (Bb_checked_p2)

                    ; #35485: <==closure== 40007 (pos)
                    (Pa_checked_p2)

                    ; #36994: <==closure== 34161 (pos)
                    (Pb_checked_p2)

                    ; #40007: <==commonly_known== 56001 (pos)
                    (Ba_checked_p2)

                    ; #53643: <==closure== 67266 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #56001: origin
                    (checked_p2)

                    ; #60796: <==closure== 82413 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #66117: <==commonly_known== 56001 (pos)
                    (Bc_checked_p2)

                    ; #67266: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #71184: <==closure== 66117 (pos)
                    (Pc_checked_p2)

                    ; #82413: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #12747: <==negation-removal== 56001 (pos)
                    (not (not_checked_p2))

                    ; #16659: <==unclosure== 67990 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #18734: <==negation-removal== 34161 (pos)
                    (not (Pb_not_checked_p2))

                    ; #24379: <==negation-removal== 35485 (pos)
                    (not (Ba_not_checked_p2))

                    ; #30227: <==negation-removal== 36994 (pos)
                    (not (Bb_not_checked_p2))

                    ; #35724: <==negation-removal== 40007 (pos)
                    (not (Pa_not_checked_p2))

                    ; #39192: <==uncertain_firing== 67266 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #44532: <==negation-removal== 53643 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #46944: <==negation-removal== 67266 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #47011: <==unclosure== 39192 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #67990: <==uncertain_firing== 82413 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #77759: <==negation-removal== 66117 (pos)
                    (not (Pc_not_checked_p2))

                    ; #78594: <==negation-removal== 71184 (pos)
                    (not (Bc_not_checked_p2))

                    ; #80126: <==negation-removal== 82413 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #87707: <==negation-removal== 60796 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #24216: <==closure== 79567 (pos)
                    (Pa_checked_p3)

                    ; #33890: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #35332: <==closure== 95025 (pos)
                    (Pc_checked_p3)

                    ; #48384: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #54009: <==closure== 58438 (pos)
                    (Pb_checked_p3)

                    ; #54013: origin
                    (checked_p3)

                    ; #58438: <==commonly_known== 54013 (pos)
                    (Bb_checked_p3)

                    ; #79567: <==commonly_known== 54013 (pos)
                    (Ba_checked_p3)

                    ; #87589: <==closure== 33890 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #92104: <==closure== 48384 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #95025: <==commonly_known== 54013 (pos)
                    (Bc_checked_p3)

                    ; #12916: <==negation-removal== 35332 (pos)
                    (not (Bc_not_checked_p3))

                    ; #21153: <==negation-removal== 87589 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #21324: <==negation-removal== 54009 (pos)
                    (not (Bb_not_checked_p3))

                    ; #21567: <==negation-removal== 92104 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #23170: <==uncertain_firing== 33890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #23438: <==negation-removal== 33890 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #24494: <==unclosure== 23170 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44724: <==negation-removal== 54013 (pos)
                    (not (not_checked_p3))

                    ; #50511: <==negation-removal== 58438 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50826: <==negation-removal== 48384 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #56651: <==negation-removal== 24216 (pos)
                    (not (Ba_not_checked_p3))

                    ; #56805: <==negation-removal== 95025 (pos)
                    (not (Pc_not_checked_p3))

                    ; #65856: <==negation-removal== 79567 (pos)
                    (not (Pa_not_checked_p3))

                    ; #70126: <==uncertain_firing== 48384 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #81912: <==unclosure== 70126 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #16010: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #18674: <==closure== 71086 (pos)
                    (Pb_checked_p4)

                    ; #23303: <==commonly_known== 40557 (pos)
                    (Ba_checked_p4)

                    ; #34258: <==closure== 36710 (pos)
                    (Pc_checked_p4)

                    ; #36710: <==commonly_known== 40557 (pos)
                    (Bc_checked_p4)

                    ; #40557: origin
                    (checked_p4)

                    ; #45372: <==closure== 46796 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #46796: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #71086: <==commonly_known== 40557 (pos)
                    (Bb_checked_p4)

                    ; #75112: <==closure== 23303 (pos)
                    (Pa_checked_p4)

                    ; #86820: <==closure== 16010 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #10953: <==negation-removal== 23303 (pos)
                    (not (Pa_not_checked_p4))

                    ; #11018: <==unclosure== 20257 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #20257: <==uncertain_firing== 16010 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #24662: <==negation-removal== 75112 (pos)
                    (not (Ba_not_checked_p4))

                    ; #36427: <==uncertain_firing== 46796 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #43320: <==negation-removal== 40557 (pos)
                    (not (not_checked_p4))

                    ; #46244: <==unclosure== 36427 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #53536: <==negation-removal== 46796 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #63207: <==negation-removal== 45372 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #67627: <==negation-removal== 36710 (pos)
                    (not (Pc_not_checked_p4))

                    ; #73571: <==negation-removal== 86820 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #76772: <==negation-removal== 18674 (pos)
                    (not (Bb_not_checked_p4))

                    ; #78559: <==negation-removal== 71086 (pos)
                    (not (Pb_not_checked_p4))

                    ; #88147: <==negation-removal== 16010 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #89519: <==negation-removal== 34258 (pos)
                    (not (Bc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #10020: <==commonly_known== 30140 (pos)
                    (Bc_checked_p5)

                    ; #21203: <==closure== 28694 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #28694: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #30140: origin
                    (checked_p5)

                    ; #30697: <==closure== 39525 (pos)
                    (Pa_checked_p5)

                    ; #39525: <==commonly_known== 30140 (pos)
                    (Ba_checked_p5)

                    ; #48261: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #70380: <==commonly_known== 30140 (pos)
                    (Bb_checked_p5)

                    ; #82428: <==closure== 48261 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #85896: <==closure== 70380 (pos)
                    (Pb_checked_p5)

                    ; #87953: <==closure== 10020 (pos)
                    (Pc_checked_p5)

                    ; #32730: <==negation-removal== 10020 (pos)
                    (not (Pc_not_checked_p5))

                    ; #34516: <==negation-removal== 21203 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #37225: <==unclosure== 68973 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #38581: <==negation-removal== 70380 (pos)
                    (not (Pb_not_checked_p5))

                    ; #49119: <==uncertain_firing== 48261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #51544: <==negation-removal== 39525 (pos)
                    (not (Pa_not_checked_p5))

                    ; #57167: <==negation-removal== 28694 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #62280: <==unclosure== 49119 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #65765: <==negation-removal== 82428 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #68973: <==uncertain_firing== 28694 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #79900: <==negation-removal== 48261 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #80051: <==negation-removal== 87953 (pos)
                    (not (Bc_not_checked_p5))

                    ; #80368: <==negation-removal== 85896 (pos)
                    (not (Bb_not_checked_p5))

                    ; #86668: <==negation-removal== 30697 (pos)
                    (not (Ba_not_checked_p5))

                    ; #89009: <==negation-removal== 30140 (pos)
                    (not (not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #16014: <==closure== 87484 (pos)
                    (Pb_checked_p6)

                    ; #25305: <==commonly_known== 77186 (pos)
                    (Ba_checked_p6)

                    ; #34780: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #61637: <==closure== 91538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #62536: <==commonly_known== 77186 (pos)
                    (Bc_checked_p6)

                    ; #66883: <==closure== 25305 (pos)
                    (Pa_checked_p6)

                    ; #68891: <==closure== 34780 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #69172: <==closure== 62536 (pos)
                    (Pc_checked_p6)

                    ; #77186: origin
                    (checked_p6)

                    ; #87484: <==commonly_known== 77186 (pos)
                    (Bb_checked_p6)

                    ; #91538: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #11434: <==negation-removal== 34780 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #37088: <==uncertain_firing== 34780 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #45090: <==negation-removal== 66883 (pos)
                    (not (Ba_not_checked_p6))

                    ; #45123: <==unclosure== 37088 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #50892: <==negation-removal== 61637 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #57374: <==negation-removal== 25305 (pos)
                    (not (Pa_not_checked_p6))

                    ; #63399: <==negation-removal== 91538 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #63941: <==negation-removal== 16014 (pos)
                    (not (Bb_not_checked_p6))

                    ; #65969: <==negation-removal== 87484 (pos)
                    (not (Pb_not_checked_p6))

                    ; #67097: <==negation-removal== 62536 (pos)
                    (not (Pc_not_checked_p6))

                    ; #69832: <==uncertain_firing== 91538 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #74115: <==negation-removal== 68891 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #81863: <==negation-removal== 69172 (pos)
                    (not (Bc_not_checked_p6))

                    ; #87044: <==negation-removal== 77186 (pos)
                    (not (not_checked_p6))

                    ; #91190: <==unclosure== 69832 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #16220: <==closure== 65498 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #23297: <==closure== 89860 (pos)
                    (Pb_checked_p7)

                    ; #44993: <==commonly_known== 47598 (pos)
                    (Bc_checked_p7)

                    ; #47048: <==closure== 64089 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #47598: origin
                    (checked_p7)

                    ; #48606: <==commonly_known== 47598 (pos)
                    (Ba_checked_p7)

                    ; #64089: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #65498: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #69852: <==closure== 48606 (pos)
                    (Pa_checked_p7)

                    ; #77734: <==closure== 44993 (pos)
                    (Pc_checked_p7)

                    ; #89860: <==commonly_known== 47598 (pos)
                    (Bb_checked_p7)

                    ; #11534: <==negation-removal== 89860 (pos)
                    (not (Pb_not_checked_p7))

                    ; #16560: <==uncertain_firing== 65498 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #26577: <==negation-removal== 44993 (pos)
                    (not (Pc_not_checked_p7))

                    ; #31468: <==negation-removal== 65498 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #37677: <==unclosure== 51200 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #39501: <==unclosure== 16560 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #42461: <==negation-removal== 48606 (pos)
                    (not (Pa_not_checked_p7))

                    ; #48379: <==negation-removal== 23297 (pos)
                    (not (Bb_not_checked_p7))

                    ; #49681: <==negation-removal== 16220 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #51200: <==uncertain_firing== 64089 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #51759: <==negation-removal== 47048 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #51782: <==negation-removal== 69852 (pos)
                    (not (Ba_not_checked_p7))

                    ; #63949: <==negation-removal== 47598 (pos)
                    (not (not_checked_p7))

                    ; #64809: <==negation-removal== 77734 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65961: <==negation-removal== 64089 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #12142: <==commonly_known== 80440 (pos)
                    (Bb_checked_p8)

                    ; #19996: <==closure== 50123 (pos)
                    (Pc_checked_p8)

                    ; #33260: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #43035: <==closure== 78978 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #50123: <==commonly_known== 80440 (pos)
                    (Bc_checked_p8)

                    ; #59888: <==closure== 78387 (pos)
                    (Pa_checked_p8)

                    ; #65175: <==closure== 12142 (pos)
                    (Pb_checked_p8)

                    ; #73340: <==closure== 33260 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #78387: <==commonly_known== 80440 (pos)
                    (Ba_checked_p8)

                    ; #78978: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #80440: origin
                    (checked_p8)

                    ; #26869: <==negation-removal== 19996 (pos)
                    (not (Bc_not_checked_p8))

                    ; #27891: <==negation-removal== 12142 (pos)
                    (not (Pb_not_checked_p8))

                    ; #35297: <==unclosure== 50629 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #50629: <==uncertain_firing== 33260 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #54093: <==negation-removal== 80440 (pos)
                    (not (not_checked_p8))

                    ; #55951: <==negation-removal== 43035 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #61522: <==unclosure== 78375 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #64973: <==negation-removal== 65175 (pos)
                    (not (Bb_not_checked_p8))

                    ; #65847: <==negation-removal== 50123 (pos)
                    (not (Pc_not_checked_p8))

                    ; #75960: <==negation-removal== 78387 (pos)
                    (not (Pa_not_checked_p8))

                    ; #78375: <==uncertain_firing== 78978 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #79297: <==negation-removal== 73340 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #85400: <==negation-removal== 33260 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #88882: <==negation-removal== 59888 (pos)
                    (not (Ba_not_checked_p8))

                    ; #91795: <==negation-removal== 78978 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17635: <==closure== 71552 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #18936: <==closure== 50709 (pos)
                    (Pa_checked_p9)

                    ; #19417: <==closure== 87409 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #31573: <==commonly_known== 64220 (pos)
                    (Bb_checked_p9)

                    ; #39933: <==commonly_known== 64220 (pos)
                    (Bc_checked_p9)

                    ; #44828: <==closure== 39933 (pos)
                    (Pc_checked_p9)

                    ; #49112: <==closure== 31573 (pos)
                    (Pb_checked_p9)

                    ; #50709: <==commonly_known== 64220 (pos)
                    (Ba_checked_p9)

                    ; #64220: origin
                    (checked_p9)

                    ; #71552: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #87409: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #13312: <==unclosure== 61196 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #17809: <==negation-removal== 19417 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #18498: <==negation-removal== 49112 (pos)
                    (not (Bb_not_checked_p9))

                    ; #23324: <==negation-removal== 31573 (pos)
                    (not (Pb_not_checked_p9))

                    ; #29675: <==negation-removal== 64220 (pos)
                    (not (not_checked_p9))

                    ; #31247: <==uncertain_firing== 87409 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #33330: <==negation-removal== 17635 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #61196: <==uncertain_firing== 71552 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #68780: <==negation-removal== 71552 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #70748: <==negation-removal== 44828 (pos)
                    (not (Bc_not_checked_p9))

                    ; #70995: <==negation-removal== 87409 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #74086: <==negation-removal== 18936 (pos)
                    (not (Ba_not_checked_p9))

                    ; #82275: <==unclosure== 31247 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #83724: <==negation-removal== 39933 (pos)
                    (not (Pc_not_checked_p9))

                    ; #88353: <==negation-removal== 50709 (pos)
                    (not (Pa_not_checked_p9))))

)