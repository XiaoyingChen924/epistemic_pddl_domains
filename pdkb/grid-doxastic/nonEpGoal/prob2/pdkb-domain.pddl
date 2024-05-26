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
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #45748: <==closure== 75239 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #71354: <==closure== 89331 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #75239: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #80420: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #82314: <==closure== 80420 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #89331: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #14676: <==negation-removal== 82314 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30636: <==negation-removal== 75239 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #34145: <==unclosure== 89917 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #45251: <==negation-removal== 45748 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #48857: <==unclosure== 74422 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #50573: <==negation-removal== 89331 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52211: <==negation-removal== 71354 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #71547: <==negation-removal== 80420 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #73881: <==uncertain_firing== 75239 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #74422: <==uncertain_firing== 89331 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #81380: <==unclosure== 73881 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89917: <==uncertain_firing== 80420 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action badcomm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #45748: <==closure== 75239 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #71354: <==closure== 89331 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #75239: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #80420: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #82314: <==closure== 80420 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #89331: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #14676: <==negation-removal== 82314 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30636: <==negation-removal== 75239 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #34145: <==unclosure== 89917 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #45251: <==negation-removal== 45748 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #48857: <==unclosure== 74422 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #50573: <==negation-removal== 89331 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52211: <==negation-removal== 71354 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #71547: <==negation-removal== 80420 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #73881: <==uncertain_firing== 75239 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #74422: <==uncertain_firing== 89331 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #81380: <==unclosure== 73881 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89917: <==uncertain_firing== 80420 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action badcomm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #45748: <==closure== 75239 (pos)
                    (when (and (not_at_c_p10))
                          (Pc_survivorat_s_p10))

                    ; #71354: <==closure== 89331 (pos)
                    (when (and (not_at_a_p10))
                          (Pa_survivorat_s_p10))

                    ; #75239: origin
                    (when (and (not_at_c_p10))
                          (Bc_survivorat_s_p10))

                    ; #80420: origin
                    (when (and (not_at_b_p10))
                          (Bb_survivorat_s_p10))

                    ; #82314: <==closure== 80420 (pos)
                    (when (and (not_at_b_p10))
                          (Pb_survivorat_s_p10))

                    ; #89331: origin
                    (when (and (not_at_a_p10))
                          (Ba_survivorat_s_p10))

                    ; #14676: <==negation-removal== 82314 (pos)
                    (when (and (not_at_b_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #30636: <==negation-removal== 75239 (pos)
                    (when (and (not_at_c_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #34145: <==unclosure== 89917 (neg)
                    (when (and (not (at_b_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #45251: <==negation-removal== 45748 (pos)
                    (when (and (not_at_c_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #48857: <==unclosure== 74422 (neg)
                    (when (and (not (at_a_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #50573: <==negation-removal== 89331 (pos)
                    (when (and (not_at_a_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #52211: <==negation-removal== 71354 (pos)
                    (when (and (not_at_a_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #71547: <==negation-removal== 80420 (pos)
                    (when (and (not_at_b_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #73881: <==uncertain_firing== 75239 (pos)
                    (when (and (not (at_c_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #74422: <==uncertain_firing== 89331 (pos)
                    (when (and (not (at_a_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #81380: <==unclosure== 73881 (neg)
                    (when (and (not (at_c_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #89917: <==uncertain_firing== 80420 (pos)
                    (when (and (not (at_b_p10)))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action badcomm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #14948: <==closure== 47799 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #35292: <==closure== 92714 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #46067: <==closure== 89602 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #47799: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #89602: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #92714: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16757: <==negation-removal== 92714 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #18538: <==negation-removal== 47799 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #22358: <==uncertain_firing== 89602 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #26569: <==negation-removal== 35292 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26832: <==negation-removal== 14948 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #29751: <==unclosure== 57750 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #57750: <==uncertain_firing== 47799 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59324: <==negation-removal== 89602 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #62695: <==unclosure== 22358 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #62776: <==unclosure== 63602 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #63602: <==uncertain_firing== 92714 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #71899: <==negation-removal== 46067 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action badcomm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #14948: <==closure== 47799 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #35292: <==closure== 92714 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #46067: <==closure== 89602 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #47799: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #89602: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #92714: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16757: <==negation-removal== 92714 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #18538: <==negation-removal== 47799 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #22358: <==uncertain_firing== 89602 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #26569: <==negation-removal== 35292 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26832: <==negation-removal== 14948 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #29751: <==unclosure== 57750 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #57750: <==uncertain_firing== 47799 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59324: <==negation-removal== 89602 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #62695: <==unclosure== 22358 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #62776: <==unclosure== 63602 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #63602: <==uncertain_firing== 92714 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #71899: <==negation-removal== 46067 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action badcomm_p11_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #14948: <==closure== 47799 (pos)
                    (when (and (not_at_b_p11))
                          (Pb_survivorat_s_p11))

                    ; #35292: <==closure== 92714 (pos)
                    (when (and (not_at_a_p11))
                          (Pa_survivorat_s_p11))

                    ; #46067: <==closure== 89602 (pos)
                    (when (and (not_at_c_p11))
                          (Pc_survivorat_s_p11))

                    ; #47799: origin
                    (when (and (not_at_b_p11))
                          (Bb_survivorat_s_p11))

                    ; #89602: origin
                    (when (and (not_at_c_p11))
                          (Bc_survivorat_s_p11))

                    ; #92714: origin
                    (when (and (not_at_a_p11))
                          (Ba_survivorat_s_p11))

                    ; #16757: <==negation-removal== 92714 (pos)
                    (when (and (not_at_a_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #18538: <==negation-removal== 47799 (pos)
                    (when (and (not_at_b_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #22358: <==uncertain_firing== 89602 (pos)
                    (when (and (not (at_c_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #26569: <==negation-removal== 35292 (pos)
                    (when (and (not_at_a_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #26832: <==negation-removal== 14948 (pos)
                    (when (and (not_at_b_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #29751: <==unclosure== 57750 (neg)
                    (when (and (not (at_b_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #57750: <==uncertain_firing== 47799 (pos)
                    (when (and (not (at_b_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #59324: <==negation-removal== 89602 (pos)
                    (when (and (not_at_c_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #62695: <==unclosure== 22358 (neg)
                    (when (and (not (at_c_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #62776: <==unclosure== 63602 (neg)
                    (when (and (not (at_a_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #63602: <==uncertain_firing== 92714 (pos)
                    (when (and (not (at_a_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #71899: <==negation-removal== 46067 (pos)
                    (when (and (not_at_c_p11))
                          (not (Bc_not_survivorat_s_p11)))))

    (:action badcomm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #11882: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #19091: <==closure== 54901 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #44911: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #54901: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #66971: <==closure== 11882 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #74353: <==closure== 44911 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #11258: <==uncertain_firing== 54901 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29948: <==unclosure== 11258 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41331: <==unclosure== 50991 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #46546: <==negation-removal== 66971 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #50991: <==uncertain_firing== 11882 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60483: <==uncertain_firing== 44911 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #65132: <==negation-removal== 74353 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #68423: <==negation-removal== 11882 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #78745: <==negation-removal== 44911 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #79946: <==negation-removal== 54901 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87673: <==negation-removal== 19091 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #95933: <==unclosure== 60483 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #11882: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #19091: <==closure== 54901 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #44911: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #54901: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #66971: <==closure== 11882 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #74353: <==closure== 44911 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #11258: <==uncertain_firing== 54901 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29948: <==unclosure== 11258 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41331: <==unclosure== 50991 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #46546: <==negation-removal== 66971 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #50991: <==uncertain_firing== 11882 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60483: <==uncertain_firing== 44911 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #65132: <==negation-removal== 74353 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #68423: <==negation-removal== 11882 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #78745: <==negation-removal== 44911 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #79946: <==negation-removal== 54901 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87673: <==negation-removal== 19091 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #95933: <==unclosure== 60483 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #11882: origin
                    (when (and (not_at_a_p12))
                          (Ba_survivorat_s_p12))

                    ; #19091: <==closure== 54901 (pos)
                    (when (and (not_at_b_p12))
                          (Pb_survivorat_s_p12))

                    ; #44911: origin
                    (when (and (not_at_c_p12))
                          (Bc_survivorat_s_p12))

                    ; #54901: origin
                    (when (and (not_at_b_p12))
                          (Bb_survivorat_s_p12))

                    ; #66971: <==closure== 11882 (pos)
                    (when (and (not_at_a_p12))
                          (Pa_survivorat_s_p12))

                    ; #74353: <==closure== 44911 (pos)
                    (when (and (not_at_c_p12))
                          (Pc_survivorat_s_p12))

                    ; #11258: <==uncertain_firing== 54901 (pos)
                    (when (and (not (at_b_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29948: <==unclosure== 11258 (neg)
                    (when (and (not (at_b_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #41331: <==unclosure== 50991 (neg)
                    (when (and (not (at_a_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #46546: <==negation-removal== 66971 (pos)
                    (when (and (not_at_a_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #50991: <==uncertain_firing== 11882 (pos)
                    (when (and (not (at_a_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60483: <==uncertain_firing== 44911 (pos)
                    (when (and (not (at_c_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #65132: <==negation-removal== 74353 (pos)
                    (when (and (not_at_c_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #68423: <==negation-removal== 11882 (pos)
                    (when (and (not_at_a_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #78745: <==negation-removal== 44911 (pos)
                    (when (and (not_at_c_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #79946: <==negation-removal== 54901 (pos)
                    (when (and (not_at_b_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #87673: <==negation-removal== 19091 (pos)
                    (when (and (not_at_b_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #95933: <==unclosure== 60483 (neg)
                    (when (and (not (at_c_p12)))
                          (not (Bc_not_survivorat_s_p12)))))

    (:action badcomm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #12270: <==closure== 24220 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #24220: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #27474: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #42917: <==closure== 87176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #62830: <==closure== 27474 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #87176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #10721: <==unclosure== 76171 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #17831: <==negation-removal== 27474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20415: <==negation-removal== 42917 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29664: <==unclosure== 86461 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44428: <==negation-removal== 24220 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47418: <==unclosure== 90218 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #70333: <==negation-removal== 12270 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #71025: <==negation-removal== 62830 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76171: <==uncertain_firing== 24220 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81892: <==negation-removal== 87176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86461: <==uncertain_firing== 87176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #90218: <==uncertain_firing== 27474 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #12270: <==closure== 24220 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #24220: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #27474: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #42917: <==closure== 87176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #62830: <==closure== 27474 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #87176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #10721: <==unclosure== 76171 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #17831: <==negation-removal== 27474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20415: <==negation-removal== 42917 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29664: <==unclosure== 86461 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44428: <==negation-removal== 24220 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47418: <==unclosure== 90218 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #70333: <==negation-removal== 12270 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #71025: <==negation-removal== 62830 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76171: <==uncertain_firing== 24220 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81892: <==negation-removal== 87176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86461: <==uncertain_firing== 87176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #90218: <==uncertain_firing== 27474 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #12270: <==closure== 24220 (pos)
                    (when (and (not_at_b_p1))
                          (Pb_survivorat_s_p1))

                    ; #24220: origin
                    (when (and (not_at_b_p1))
                          (Bb_survivorat_s_p1))

                    ; #27474: origin
                    (when (and (not_at_c_p1))
                          (Bc_survivorat_s_p1))

                    ; #42917: <==closure== 87176 (pos)
                    (when (and (not_at_a_p1))
                          (Pa_survivorat_s_p1))

                    ; #62830: <==closure== 27474 (pos)
                    (when (and (not_at_c_p1))
                          (Pc_survivorat_s_p1))

                    ; #87176: origin
                    (when (and (not_at_a_p1))
                          (Ba_survivorat_s_p1))

                    ; #10721: <==unclosure== 76171 (neg)
                    (when (and (not (at_b_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #17831: <==negation-removal== 27474 (pos)
                    (when (and (not_at_c_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #20415: <==negation-removal== 42917 (pos)
                    (when (and (not_at_a_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #29664: <==unclosure== 86461 (neg)
                    (when (and (not (at_a_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #44428: <==negation-removal== 24220 (pos)
                    (when (and (not_at_b_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #47418: <==unclosure== 90218 (neg)
                    (when (and (not (at_c_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #70333: <==negation-removal== 12270 (pos)
                    (when (and (not_at_b_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #71025: <==negation-removal== 62830 (pos)
                    (when (and (not_at_c_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #76171: <==uncertain_firing== 24220 (pos)
                    (when (and (not (at_b_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #81892: <==negation-removal== 87176 (pos)
                    (when (and (not_at_a_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #86461: <==uncertain_firing== 87176 (pos)
                    (when (and (not (at_a_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #90218: <==uncertain_firing== 27474 (pos)
                    (when (and (not (at_c_p1)))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action badcomm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #24606: <==closure== 51799 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #28154: <==closure== 39199 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #39199: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #51799: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #78306: <==closure== 89821 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #89821: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #15073: <==unclosure== 69044 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #21990: <==negation-removal== 51799 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #27263: <==unclosure== 34027 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #28634: <==negation-removal== 39199 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34027: <==uncertain_firing== 39199 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46602: <==negation-removal== 89821 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #52533: <==negation-removal== 24606 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64324: <==negation-removal== 28154 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #67822: <==uncertain_firing== 89821 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #69044: <==uncertain_firing== 51799 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #73915: <==unclosure== 67822 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #89479: <==negation-removal== 78306 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #24606: <==closure== 51799 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #28154: <==closure== 39199 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #39199: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #51799: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #78306: <==closure== 89821 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #89821: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #15073: <==unclosure== 69044 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #21990: <==negation-removal== 51799 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #27263: <==unclosure== 34027 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #28634: <==negation-removal== 39199 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34027: <==uncertain_firing== 39199 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46602: <==negation-removal== 89821 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #52533: <==negation-removal== 24606 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64324: <==negation-removal== 28154 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #67822: <==uncertain_firing== 89821 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #69044: <==uncertain_firing== 51799 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #73915: <==unclosure== 67822 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #89479: <==negation-removal== 78306 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #24606: <==closure== 51799 (pos)
                    (when (and (not_at_b_p2))
                          (Pb_survivorat_s_p2))

                    ; #28154: <==closure== 39199 (pos)
                    (when (and (not_at_a_p2))
                          (Pa_survivorat_s_p2))

                    ; #39199: origin
                    (when (and (not_at_a_p2))
                          (Ba_survivorat_s_p2))

                    ; #51799: origin
                    (when (and (not_at_b_p2))
                          (Bb_survivorat_s_p2))

                    ; #78306: <==closure== 89821 (pos)
                    (when (and (not_at_c_p2))
                          (Pc_survivorat_s_p2))

                    ; #89821: origin
                    (when (and (not_at_c_p2))
                          (Bc_survivorat_s_p2))

                    ; #15073: <==unclosure== 69044 (neg)
                    (when (and (not (at_b_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #21990: <==negation-removal== 51799 (pos)
                    (when (and (not_at_b_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #27263: <==unclosure== 34027 (neg)
                    (when (and (not (at_a_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #28634: <==negation-removal== 39199 (pos)
                    (when (and (not_at_a_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #34027: <==uncertain_firing== 39199 (pos)
                    (when (and (not (at_a_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #46602: <==negation-removal== 89821 (pos)
                    (when (and (not_at_c_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #52533: <==negation-removal== 24606 (pos)
                    (when (and (not_at_b_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #64324: <==negation-removal== 28154 (pos)
                    (when (and (not_at_a_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #67822: <==uncertain_firing== 89821 (pos)
                    (when (and (not (at_c_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #69044: <==uncertain_firing== 51799 (pos)
                    (when (and (not (at_b_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #73915: <==unclosure== 67822 (neg)
                    (when (and (not (at_c_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #89479: <==negation-removal== 78306 (pos)
                    (when (and (not_at_c_p2))
                          (not (Bc_not_survivorat_s_p2)))))

    (:action badcomm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #11239: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #18650: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24140: <==closure== 41837 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #30709: <==closure== 11239 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #41837: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #47265: <==closure== 18650 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #15074: <==uncertain_firing== 18650 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #17112: <==uncertain_firing== 41837 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19541: <==negation-removal== 47265 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #24967: <==unclosure== 17112 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #27118: <==negation-removal== 30709 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29885: <==unclosure== 30021 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30021: <==uncertain_firing== 11239 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49667: <==negation-removal== 18650 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #57079: <==negation-removal== 41837 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #60618: <==negation-removal== 11239 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #75316: <==unclosure== 15074 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #88125: <==negation-removal== 24140 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #11239: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #18650: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24140: <==closure== 41837 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #30709: <==closure== 11239 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #41837: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #47265: <==closure== 18650 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #15074: <==uncertain_firing== 18650 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #17112: <==uncertain_firing== 41837 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19541: <==negation-removal== 47265 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #24967: <==unclosure== 17112 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #27118: <==negation-removal== 30709 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29885: <==unclosure== 30021 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30021: <==uncertain_firing== 11239 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49667: <==negation-removal== 18650 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #57079: <==negation-removal== 41837 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #60618: <==negation-removal== 11239 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #75316: <==unclosure== 15074 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #88125: <==negation-removal== 24140 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #11239: origin
                    (when (and (not_at_c_p3))
                          (Bc_survivorat_s_p3))

                    ; #18650: origin
                    (when (and (not_at_a_p3))
                          (Ba_survivorat_s_p3))

                    ; #24140: <==closure== 41837 (pos)
                    (when (and (not_at_b_p3))
                          (Pb_survivorat_s_p3))

                    ; #30709: <==closure== 11239 (pos)
                    (when (and (not_at_c_p3))
                          (Pc_survivorat_s_p3))

                    ; #41837: origin
                    (when (and (not_at_b_p3))
                          (Bb_survivorat_s_p3))

                    ; #47265: <==closure== 18650 (pos)
                    (when (and (not_at_a_p3))
                          (Pa_survivorat_s_p3))

                    ; #15074: <==uncertain_firing== 18650 (pos)
                    (when (and (not (at_a_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #17112: <==uncertain_firing== 41837 (pos)
                    (when (and (not (at_b_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #19541: <==negation-removal== 47265 (pos)
                    (when (and (not_at_a_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #24967: <==unclosure== 17112 (neg)
                    (when (and (not (at_b_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #27118: <==negation-removal== 30709 (pos)
                    (when (and (not_at_c_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #29885: <==unclosure== 30021 (neg)
                    (when (and (not (at_c_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #30021: <==uncertain_firing== 11239 (pos)
                    (when (and (not (at_c_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #49667: <==negation-removal== 18650 (pos)
                    (when (and (not_at_a_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #57079: <==negation-removal== 41837 (pos)
                    (when (and (not_at_b_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #60618: <==negation-removal== 11239 (pos)
                    (when (and (not_at_c_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #75316: <==unclosure== 15074 (neg)
                    (when (and (not (at_a_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #88125: <==negation-removal== 24140 (pos)
                    (when (and (not_at_b_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action badcomm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #20528: <==closure== 26908 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #26908: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37449: <==closure== 60379 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #53539: <==closure== 63535 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #60379: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #63535: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #11221: <==negation-removal== 63535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #13586: <==uncertain_firing== 60379 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #13850: <==unclosure== 13586 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #27264: <==negation-removal== 60379 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29979: <==uncertain_firing== 26908 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #33973: <==unclosure== 29979 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #46362: <==uncertain_firing== 63535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64658: <==negation-removal== 37449 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69277: <==unclosure== 46362 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70306: <==negation-removal== 20528 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73174: <==negation-removal== 53539 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #74019: <==negation-removal== 26908 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #20528: <==closure== 26908 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #26908: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37449: <==closure== 60379 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #53539: <==closure== 63535 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #60379: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #63535: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #11221: <==negation-removal== 63535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #13586: <==uncertain_firing== 60379 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #13850: <==unclosure== 13586 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #27264: <==negation-removal== 60379 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29979: <==uncertain_firing== 26908 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #33973: <==unclosure== 29979 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #46362: <==uncertain_firing== 63535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64658: <==negation-removal== 37449 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69277: <==unclosure== 46362 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70306: <==negation-removal== 20528 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73174: <==negation-removal== 53539 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #74019: <==negation-removal== 26908 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #20528: <==closure== 26908 (pos)
                    (when (and (not_at_a_p4))
                          (Pa_survivorat_s_p4))

                    ; #26908: origin
                    (when (and (not_at_a_p4))
                          (Ba_survivorat_s_p4))

                    ; #37449: <==closure== 60379 (pos)
                    (when (and (not_at_c_p4))
                          (Pc_survivorat_s_p4))

                    ; #53539: <==closure== 63535 (pos)
                    (when (and (not_at_b_p4))
                          (Pb_survivorat_s_p4))

                    ; #60379: origin
                    (when (and (not_at_c_p4))
                          (Bc_survivorat_s_p4))

                    ; #63535: origin
                    (when (and (not_at_b_p4))
                          (Bb_survivorat_s_p4))

                    ; #11221: <==negation-removal== 63535 (pos)
                    (when (and (not_at_b_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #13586: <==uncertain_firing== 60379 (pos)
                    (when (and (not (at_c_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #13850: <==unclosure== 13586 (neg)
                    (when (and (not (at_c_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #27264: <==negation-removal== 60379 (pos)
                    (when (and (not_at_c_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #29979: <==uncertain_firing== 26908 (pos)
                    (when (and (not (at_a_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #33973: <==unclosure== 29979 (neg)
                    (when (and (not (at_a_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #46362: <==uncertain_firing== 63535 (pos)
                    (when (and (not (at_b_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #64658: <==negation-removal== 37449 (pos)
                    (when (and (not_at_c_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #69277: <==unclosure== 46362 (neg)
                    (when (and (not (at_b_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #70306: <==negation-removal== 20528 (pos)
                    (when (and (not_at_a_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73174: <==negation-removal== 53539 (pos)
                    (when (and (not_at_b_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #74019: <==negation-removal== 26908 (pos)
                    (when (and (not_at_a_p4))
                          (not (Pa_not_survivorat_s_p4)))))

    (:action badcomm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #10210: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #36517: <==closure== 10210 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #48759: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #76959: <==closure== 82227 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #77215: <==closure== 48759 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #82227: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #16903: <==unclosure== 76617 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18874: <==negation-removal== 76959 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #31025: <==uncertain_firing== 82227 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33125: <==negation-removal== 48759 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38744: <==uncertain_firing== 48759 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43407: <==unclosure== 38744 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #57537: <==unclosure== 31025 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62968: <==negation-removal== 10210 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76335: <==negation-removal== 36517 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #76617: <==uncertain_firing== 10210 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76959: <==negation-removal== 77215 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #87304: <==negation-removal== 82227 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action badcomm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #10210: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #36517: <==closure== 10210 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #48759: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #76959: <==closure== 82227 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #77215: <==closure== 48759 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #82227: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #16903: <==unclosure== 76617 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18874: <==negation-removal== 76959 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #31025: <==uncertain_firing== 82227 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33125: <==negation-removal== 48759 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38744: <==uncertain_firing== 48759 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43407: <==unclosure== 38744 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #57537: <==unclosure== 31025 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62968: <==negation-removal== 10210 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76335: <==negation-removal== 36517 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #76617: <==uncertain_firing== 10210 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76959: <==negation-removal== 77215 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #87304: <==negation-removal== 82227 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action badcomm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #10210: origin
                    (when (and (not_at_a_p5))
                          (Ba_survivorat_s_p5))

                    ; #36517: <==closure== 10210 (pos)
                    (when (and (not_at_a_p5))
                          (Pa_survivorat_s_p5))

                    ; #48759: origin
                    (when (and (not_at_c_p5))
                          (Bc_survivorat_s_p5))

                    ; #76959: <==closure== 82227 (pos)
                    (when (and (not_at_b_p5))
                          (Pb_survivorat_s_p5))

                    ; #77215: <==closure== 48759 (pos)
                    (when (and (not_at_c_p5))
                          (Pc_survivorat_s_p5))

                    ; #82227: origin
                    (when (and (not_at_b_p5))
                          (Bb_survivorat_s_p5))

                    ; #16903: <==unclosure== 76617 (neg)
                    (when (and (not (at_a_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18874: <==negation-removal== 76959 (pos)
                    (when (and (not_at_b_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #31025: <==uncertain_firing== 82227 (pos)
                    (when (and (not (at_b_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #33125: <==negation-removal== 48759 (pos)
                    (when (and (not_at_c_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #38744: <==uncertain_firing== 48759 (pos)
                    (when (and (not (at_c_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #43407: <==unclosure== 38744 (neg)
                    (when (and (not (at_c_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #57537: <==unclosure== 31025 (neg)
                    (when (and (not (at_b_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #62968: <==negation-removal== 10210 (pos)
                    (when (and (not_at_a_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76335: <==negation-removal== 36517 (pos)
                    (when (and (not_at_a_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #76617: <==uncertain_firing== 10210 (pos)
                    (when (and (not (at_a_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #76959: <==negation-removal== 77215 (pos)
                    (when (and (not_at_c_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #87304: <==negation-removal== 82227 (pos)
                    (when (and (not_at_b_p5))
                          (not (Pb_not_survivorat_s_p5)))))

    (:action badcomm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #33274: <==closure== 35928 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #35928: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #36561: <==closure== 48182 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #48182: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67565: <==closure== 86468 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #86468: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #13479: <==unclosure== 26167 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #17785: <==unclosure== 86326 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #20167: <==unclosure== 51600 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23774: <==negation-removal== 33274 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26167: <==uncertain_firing== 86468 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51600: <==uncertain_firing== 35928 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66432: <==negation-removal== 86468 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #77885: <==negation-removal== 48182 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #81823: <==negation-removal== 67565 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85606: <==negation-removal== 35928 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #86326: <==uncertain_firing== 48182 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90463: <==negation-removal== 36561 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #33274: <==closure== 35928 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #35928: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #36561: <==closure== 48182 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #48182: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67565: <==closure== 86468 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #86468: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #13479: <==unclosure== 26167 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #17785: <==unclosure== 86326 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #20167: <==unclosure== 51600 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23774: <==negation-removal== 33274 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26167: <==uncertain_firing== 86468 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51600: <==uncertain_firing== 35928 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66432: <==negation-removal== 86468 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #77885: <==negation-removal== 48182 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #81823: <==negation-removal== 67565 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85606: <==negation-removal== 35928 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #86326: <==uncertain_firing== 48182 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90463: <==negation-removal== 36561 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #33274: <==closure== 35928 (pos)
                    (when (and (not_at_b_p6))
                          (Pb_survivorat_s_p6))

                    ; #35928: origin
                    (when (and (not_at_b_p6))
                          (Bb_survivorat_s_p6))

                    ; #36561: <==closure== 48182 (pos)
                    (when (and (not_at_c_p6))
                          (Pc_survivorat_s_p6))

                    ; #48182: origin
                    (when (and (not_at_c_p6))
                          (Bc_survivorat_s_p6))

                    ; #67565: <==closure== 86468 (pos)
                    (when (and (not_at_a_p6))
                          (Pa_survivorat_s_p6))

                    ; #86468: origin
                    (when (and (not_at_a_p6))
                          (Ba_survivorat_s_p6))

                    ; #13479: <==unclosure== 26167 (neg)
                    (when (and (not (at_a_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #17785: <==unclosure== 86326 (neg)
                    (when (and (not (at_c_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #20167: <==unclosure== 51600 (neg)
                    (when (and (not (at_b_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #23774: <==negation-removal== 33274 (pos)
                    (when (and (not_at_b_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #26167: <==uncertain_firing== 86468 (pos)
                    (when (and (not (at_a_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51600: <==uncertain_firing== 35928 (pos)
                    (when (and (not (at_b_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #66432: <==negation-removal== 86468 (pos)
                    (when (and (not_at_a_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #77885: <==negation-removal== 48182 (pos)
                    (when (and (not_at_c_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #81823: <==negation-removal== 67565 (pos)
                    (when (and (not_at_a_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85606: <==negation-removal== 35928 (pos)
                    (when (and (not_at_b_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #86326: <==uncertain_firing== 48182 (pos)
                    (when (and (not (at_c_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #90463: <==negation-removal== 36561 (pos)
                    (when (and (not_at_c_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action badcomm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #11361: <==closure== 48051 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #25896: <==closure== 64351 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #29151: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #47313: <==closure== 29151 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #48051: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #64351: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #28552: <==uncertain_firing== 48051 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #28945: <==uncertain_firing== 29151 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #30756: <==uncertain_firing== 64351 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34812: <==negation-removal== 64351 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #39119: <==negation-removal== 11361 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45938: <==negation-removal== 29151 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49150: <==negation-removal== 47313 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #62081: <==unclosure== 30756 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66904: <==negation-removal== 48051 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #67931: <==unclosure== 28945 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #73017: <==unclosure== 28552 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75739: <==negation-removal== 25896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #11361: <==closure== 48051 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #25896: <==closure== 64351 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #29151: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #47313: <==closure== 29151 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #48051: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #64351: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #28552: <==uncertain_firing== 48051 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #28945: <==uncertain_firing== 29151 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #30756: <==uncertain_firing== 64351 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34812: <==negation-removal== 64351 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #39119: <==negation-removal== 11361 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45938: <==negation-removal== 29151 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49150: <==negation-removal== 47313 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #62081: <==unclosure== 30756 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66904: <==negation-removal== 48051 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #67931: <==unclosure== 28945 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #73017: <==unclosure== 28552 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75739: <==negation-removal== 25896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #11361: <==closure== 48051 (pos)
                    (when (and (not_at_b_p7))
                          (Pb_survivorat_s_p7))

                    ; #25896: <==closure== 64351 (pos)
                    (when (and (not_at_c_p7))
                          (Pc_survivorat_s_p7))

                    ; #29151: origin
                    (when (and (not_at_a_p7))
                          (Ba_survivorat_s_p7))

                    ; #47313: <==closure== 29151 (pos)
                    (when (and (not_at_a_p7))
                          (Pa_survivorat_s_p7))

                    ; #48051: origin
                    (when (and (not_at_b_p7))
                          (Bb_survivorat_s_p7))

                    ; #64351: origin
                    (when (and (not_at_c_p7))
                          (Bc_survivorat_s_p7))

                    ; #28552: <==uncertain_firing== 48051 (pos)
                    (when (and (not (at_b_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #28945: <==uncertain_firing== 29151 (pos)
                    (when (and (not (at_a_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #30756: <==uncertain_firing== 64351 (pos)
                    (when (and (not (at_c_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #34812: <==negation-removal== 64351 (pos)
                    (when (and (not_at_c_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #39119: <==negation-removal== 11361 (pos)
                    (when (and (not_at_b_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #45938: <==negation-removal== 29151 (pos)
                    (when (and (not_at_a_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #49150: <==negation-removal== 47313 (pos)
                    (when (and (not_at_a_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #62081: <==unclosure== 30756 (neg)
                    (when (and (not (at_c_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #66904: <==negation-removal== 48051 (pos)
                    (when (and (not_at_b_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #67931: <==unclosure== 28945 (neg)
                    (when (and (not (at_a_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #73017: <==unclosure== 28552 (neg)
                    (when (and (not (at_b_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #75739: <==negation-removal== 25896 (pos)
                    (when (and (not_at_c_p7))
                          (not (Bc_not_survivorat_s_p7)))))

    (:action badcomm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #18569: <==closure== 42238 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26706: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29070: <==closure== 30074 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #30074: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #42238: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #43474: <==closure== 26706 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #20518: <==uncertain_firing== 42238 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25773: <==unclosure== 83609 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #25960: <==negation-removal== 42238 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #31362: <==uncertain_firing== 26706 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #40958: <==negation-removal== 18569 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #46838: <==unclosure== 31362 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48890: <==negation-removal== 43474 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #52209: <==unclosure== 20518 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #67730: <==negation-removal== 26706 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #81323: <==negation-removal== 30074 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83609: <==uncertain_firing== 30074 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90281: <==negation-removal== 29070 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #18569: <==closure== 42238 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26706: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29070: <==closure== 30074 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #30074: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #42238: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #43474: <==closure== 26706 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #20518: <==uncertain_firing== 42238 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25773: <==unclosure== 83609 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #25960: <==negation-removal== 42238 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #31362: <==uncertain_firing== 26706 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #40958: <==negation-removal== 18569 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #46838: <==unclosure== 31362 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48890: <==negation-removal== 43474 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #52209: <==unclosure== 20518 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #67730: <==negation-removal== 26706 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #81323: <==negation-removal== 30074 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83609: <==uncertain_firing== 30074 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90281: <==negation-removal== 29070 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #18569: <==closure== 42238 (pos)
                    (when (and (not_at_b_p8))
                          (Pb_survivorat_s_p8))

                    ; #26706: origin
                    (when (and (not_at_a_p8))
                          (Ba_survivorat_s_p8))

                    ; #29070: <==closure== 30074 (pos)
                    (when (and (not_at_c_p8))
                          (Pc_survivorat_s_p8))

                    ; #30074: origin
                    (when (and (not_at_c_p8))
                          (Bc_survivorat_s_p8))

                    ; #42238: origin
                    (when (and (not_at_b_p8))
                          (Bb_survivorat_s_p8))

                    ; #43474: <==closure== 26706 (pos)
                    (when (and (not_at_a_p8))
                          (Pa_survivorat_s_p8))

                    ; #20518: <==uncertain_firing== 42238 (pos)
                    (when (and (not (at_b_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #25773: <==unclosure== 83609 (neg)
                    (when (and (not (at_c_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #25960: <==negation-removal== 42238 (pos)
                    (when (and (not_at_b_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #31362: <==uncertain_firing== 26706 (pos)
                    (when (and (not (at_a_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #40958: <==negation-removal== 18569 (pos)
                    (when (and (not_at_b_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #46838: <==unclosure== 31362 (neg)
                    (when (and (not (at_a_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #48890: <==negation-removal== 43474 (pos)
                    (when (and (not_at_a_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #52209: <==unclosure== 20518 (neg)
                    (when (and (not (at_b_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #67730: <==negation-removal== 26706 (pos)
                    (when (and (not_at_a_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #81323: <==negation-removal== 30074 (pos)
                    (when (and (not_at_c_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83609: <==uncertain_firing== 30074 (pos)
                    (when (and (not (at_c_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #90281: <==negation-removal== 29070 (pos)
                    (when (and (not_at_c_p8))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action badcomm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #23763: <==closure== 52592 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #32858: <==closure== 54534 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #52471: <==closure== 56996 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #52592: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #54534: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #56996: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #18019: <==unclosure== 62353 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #37789: <==negation-removal== 56996 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45518: <==negation-removal== 32858 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57322: <==uncertain_firing== 54534 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #58852: <==negation-removal== 52471 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #62353: <==uncertain_firing== 56996 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67110: <==unclosure== 57322 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69402: <==negation-removal== 52592 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #71718: <==uncertain_firing== 52592 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #72148: <==negation-removal== 54534 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75221: <==unclosure== 71718 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #98663: <==negation-removal== 23763 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #23763: <==closure== 52592 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #32858: <==closure== 54534 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #52471: <==closure== 56996 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #52592: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #54534: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #56996: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #18019: <==unclosure== 62353 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #37789: <==negation-removal== 56996 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45518: <==negation-removal== 32858 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57322: <==uncertain_firing== 54534 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #58852: <==negation-removal== 52471 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #62353: <==uncertain_firing== 56996 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67110: <==unclosure== 57322 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69402: <==negation-removal== 52592 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #71718: <==uncertain_firing== 52592 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #72148: <==negation-removal== 54534 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75221: <==unclosure== 71718 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #98663: <==negation-removal== 23763 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action badcomm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #23763: <==closure== 52592 (pos)
                    (when (and (not_at_b_p9))
                          (Pb_survivorat_s_p9))

                    ; #32858: <==closure== 54534 (pos)
                    (when (and (not_at_a_p9))
                          (Pa_survivorat_s_p9))

                    ; #52471: <==closure== 56996 (pos)
                    (when (and (not_at_c_p9))
                          (Pc_survivorat_s_p9))

                    ; #52592: origin
                    (when (and (not_at_b_p9))
                          (Bb_survivorat_s_p9))

                    ; #54534: origin
                    (when (and (not_at_a_p9))
                          (Ba_survivorat_s_p9))

                    ; #56996: origin
                    (when (and (not_at_c_p9))
                          (Bc_survivorat_s_p9))

                    ; #18019: <==unclosure== 62353 (neg)
                    (when (and (not (at_c_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #37789: <==negation-removal== 56996 (pos)
                    (when (and (not_at_c_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #45518: <==negation-removal== 32858 (pos)
                    (when (and (not_at_a_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #57322: <==uncertain_firing== 54534 (pos)
                    (when (and (not (at_a_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #58852: <==negation-removal== 52471 (pos)
                    (when (and (not_at_c_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #62353: <==uncertain_firing== 56996 (pos)
                    (when (and (not (at_c_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #67110: <==unclosure== 57322 (neg)
                    (when (and (not (at_a_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #69402: <==negation-removal== 52592 (pos)
                    (when (and (not_at_b_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #71718: <==uncertain_firing== 52592 (pos)
                    (when (and (not (at_b_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #72148: <==negation-removal== 54534 (pos)
                    (when (and (not_at_a_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #75221: <==unclosure== 71718 (neg)
                    (when (and (not (at_b_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #98663: <==negation-removal== 23763 (pos)
                    (when (and (not_at_b_p9))
                          (not (Bb_not_survivorat_s_p9)))))

    (:action comm_p10_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (at_a_p10)
                           (Pa_survivorat_s_p10))
        :effect (and
                    ; #35059: <==closure== 47908 (pos)
                    (Pa_survivorat_s_p10)

                    ; #35910: <==closure== 40699 (pos)
                    (Pb_survivorat_s_p10)

                    ; #40699: origin
                    (Bb_survivorat_s_p10)

                    ; #47908: origin
                    (Ba_survivorat_s_p10)

                    ; #57683: origin
                    (Bc_survivorat_s_p10)

                    ; #78259: <==closure== 57683 (pos)
                    (Pc_survivorat_s_p10)

                    ; #59962: <==negation-removal== 35059 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61577: <==negation-removal== 57683 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #85332: <==negation-removal== 78259 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88382: <==negation-removal== 47908 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #90835: <==negation-removal== 40699 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #96938: <==negation-removal== 35910 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #35059: <==closure== 47908 (pos)
                    (Pa_survivorat_s_p10)

                    ; #35910: <==closure== 40699 (pos)
                    (Pb_survivorat_s_p10)

                    ; #40699: origin
                    (Bb_survivorat_s_p10)

                    ; #47908: origin
                    (Ba_survivorat_s_p10)

                    ; #57683: origin
                    (Bc_survivorat_s_p10)

                    ; #78259: <==closure== 57683 (pos)
                    (Pc_survivorat_s_p10)

                    ; #59962: <==negation-removal== 35059 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61577: <==negation-removal== 57683 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #85332: <==negation-removal== 78259 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88382: <==negation-removal== 47908 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #90835: <==negation-removal== 40699 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #96938: <==negation-removal== 35910 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (at_c_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #35059: <==closure== 47908 (pos)
                    (Pa_survivorat_s_p10)

                    ; #35910: <==closure== 40699 (pos)
                    (Pb_survivorat_s_p10)

                    ; #40699: origin
                    (Bb_survivorat_s_p10)

                    ; #47908: origin
                    (Ba_survivorat_s_p10)

                    ; #57683: origin
                    (Bc_survivorat_s_p10)

                    ; #78259: <==closure== 57683 (pos)
                    (Pc_survivorat_s_p10)

                    ; #59962: <==negation-removal== 35059 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #61577: <==negation-removal== 57683 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #85332: <==negation-removal== 78259 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88382: <==negation-removal== 47908 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #90835: <==negation-removal== 40699 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #96938: <==negation-removal== 35910 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (Pa_survivorat_s_p11)
                           (at_a_p11))
        :effect (and
                    ; #12805: <==closure== 32818 (pos)
                    (Pa_survivorat_s_p11)

                    ; #27139: origin
                    (Bb_survivorat_s_p11)

                    ; #32818: origin
                    (Ba_survivorat_s_p11)

                    ; #61322: origin
                    (Bc_survivorat_s_p11)

                    ; #73226: <==closure== 27139 (pos)
                    (Pb_survivorat_s_p11)

                    ; #86088: <==closure== 61322 (pos)
                    (Pc_survivorat_s_p11)

                    ; #26560: <==negation-removal== 27139 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #27099: <==negation-removal== 86088 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #68864: <==negation-removal== 61322 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #69611: <==negation-removal== 73226 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #77631: <==negation-removal== 32818 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #86159: <==negation-removal== 12805 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #12805: <==closure== 32818 (pos)
                    (Pa_survivorat_s_p11)

                    ; #27139: origin
                    (Bb_survivorat_s_p11)

                    ; #32818: origin
                    (Ba_survivorat_s_p11)

                    ; #61322: origin
                    (Bc_survivorat_s_p11)

                    ; #73226: <==closure== 27139 (pos)
                    (Pb_survivorat_s_p11)

                    ; #86088: <==closure== 61322 (pos)
                    (Pc_survivorat_s_p11)

                    ; #26560: <==negation-removal== 27139 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #27099: <==negation-removal== 86088 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #68864: <==negation-removal== 61322 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #69611: <==negation-removal== 73226 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #77631: <==negation-removal== 32818 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #86159: <==negation-removal== 12805 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Pc_survivorat_s_p11)
                           (Bc_survivorat_s_p11))
        :effect (and
                    ; #12805: <==closure== 32818 (pos)
                    (Pa_survivorat_s_p11)

                    ; #27139: origin
                    (Bb_survivorat_s_p11)

                    ; #32818: origin
                    (Ba_survivorat_s_p11)

                    ; #61322: origin
                    (Bc_survivorat_s_p11)

                    ; #73226: <==closure== 27139 (pos)
                    (Pb_survivorat_s_p11)

                    ; #86088: <==closure== 61322 (pos)
                    (Pc_survivorat_s_p11)

                    ; #26560: <==negation-removal== 27139 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #27099: <==negation-removal== 86088 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #68864: <==negation-removal== 61322 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #69611: <==negation-removal== 73226 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #77631: <==negation-removal== 32818 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #86159: <==negation-removal== 12805 (pos)
                    (not (Ba_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (Pa_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #13017: <==closure== 65395 (pos)
                    (Pa_survivorat_s_p12)

                    ; #40031: origin
                    (Bb_survivorat_s_p12)

                    ; #60833: <==closure== 40031 (pos)
                    (Pb_survivorat_s_p12)

                    ; #62037: origin
                    (Bc_survivorat_s_p12)

                    ; #65395: origin
                    (Ba_survivorat_s_p12)

                    ; #92206: <==closure== 62037 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17215: <==negation-removal== 62037 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #18791: <==negation-removal== 65395 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #35863: <==negation-removal== 40031 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #56794: <==negation-removal== 92206 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #70026: <==negation-removal== 13017 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85933: <==negation-removal== 60833 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #13017: <==closure== 65395 (pos)
                    (Pa_survivorat_s_p12)

                    ; #40031: origin
                    (Bb_survivorat_s_p12)

                    ; #60833: <==closure== 40031 (pos)
                    (Pb_survivorat_s_p12)

                    ; #62037: origin
                    (Bc_survivorat_s_p12)

                    ; #65395: origin
                    (Ba_survivorat_s_p12)

                    ; #92206: <==closure== 62037 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17215: <==negation-removal== 62037 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #18791: <==negation-removal== 65395 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #35863: <==negation-removal== 40031 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #56794: <==negation-removal== 92206 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #70026: <==negation-removal== 13017 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85933: <==negation-removal== 60833 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (at_c_p12)
                           (Bc_survivorat_s_p12))
        :effect (and
                    ; #13017: <==closure== 65395 (pos)
                    (Pa_survivorat_s_p12)

                    ; #40031: origin
                    (Bb_survivorat_s_p12)

                    ; #60833: <==closure== 40031 (pos)
                    (Pb_survivorat_s_p12)

                    ; #62037: origin
                    (Bc_survivorat_s_p12)

                    ; #65395: origin
                    (Ba_survivorat_s_p12)

                    ; #92206: <==closure== 62037 (pos)
                    (Pc_survivorat_s_p12)

                    ; #17215: <==negation-removal== 62037 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #18791: <==negation-removal== 65395 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #35863: <==negation-removal== 40031 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #56794: <==negation-removal== 92206 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #70026: <==negation-removal== 13017 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #85933: <==negation-removal== 60833 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Ba_survivorat_s_p1)
                           (at_a_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #16813: origin
                    (Ba_survivorat_s_p1)

                    ; #26260: origin
                    (Bb_survivorat_s_p1)

                    ; #51589: <==closure== 26260 (pos)
                    (Pb_survivorat_s_p1)

                    ; #56225: origin
                    (Bc_survivorat_s_p1)

                    ; #75217: <==closure== 56225 (pos)
                    (Pc_survivorat_s_p1)

                    ; #89533: <==closure== 16813 (pos)
                    (Pa_survivorat_s_p1)

                    ; #17459: <==negation-removal== 75217 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #47068: <==negation-removal== 16813 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62705: <==negation-removal== 26260 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72360: <==negation-removal== 89533 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #72617: <==negation-removal== 56225 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #75921: <==negation-removal== 51589 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #16813: origin
                    (Ba_survivorat_s_p1)

                    ; #26260: origin
                    (Bb_survivorat_s_p1)

                    ; #51589: <==closure== 26260 (pos)
                    (Pb_survivorat_s_p1)

                    ; #56225: origin
                    (Bc_survivorat_s_p1)

                    ; #75217: <==closure== 56225 (pos)
                    (Pc_survivorat_s_p1)

                    ; #89533: <==closure== 16813 (pos)
                    (Pa_survivorat_s_p1)

                    ; #17459: <==negation-removal== 75217 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #47068: <==negation-removal== 16813 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62705: <==negation-removal== 26260 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72360: <==negation-removal== 89533 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #72617: <==negation-removal== 56225 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #75921: <==negation-removal== 51589 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Pc_survivorat_s_p1)
                           (Bc_survivorat_s_p1))
        :effect (and
                    ; #16813: origin
                    (Ba_survivorat_s_p1)

                    ; #26260: origin
                    (Bb_survivorat_s_p1)

                    ; #51589: <==closure== 26260 (pos)
                    (Pb_survivorat_s_p1)

                    ; #56225: origin
                    (Bc_survivorat_s_p1)

                    ; #75217: <==closure== 56225 (pos)
                    (Pc_survivorat_s_p1)

                    ; #89533: <==closure== 16813 (pos)
                    (Pa_survivorat_s_p1)

                    ; #17459: <==negation-removal== 75217 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #47068: <==negation-removal== 16813 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #62705: <==negation-removal== 26260 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #72360: <==negation-removal== 89533 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #72617: <==negation-removal== 56225 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #75921: <==negation-removal== 51589 (pos)
                    (not (Bb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (at_a_p2)
                           (Ba_survivorat_s_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #11111: origin
                    (Bb_survivorat_s_p2)

                    ; #13725: origin
                    (Bc_survivorat_s_p2)

                    ; #14058: <==closure== 13725 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20275: <==closure== 75864 (pos)
                    (Pa_survivorat_s_p2)

                    ; #52868: <==closure== 11111 (pos)
                    (Pb_survivorat_s_p2)

                    ; #75864: origin
                    (Ba_survivorat_s_p2)

                    ; #21446: <==negation-removal== 11111 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #26435: <==negation-removal== 20275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27789: <==negation-removal== 14058 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #56312: <==negation-removal== 13725 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73884: <==negation-removal== 75864 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #81833: <==negation-removal== 52868 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (at_b_p2)
                           (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2))
        :effect (and
                    ; #11111: origin
                    (Bb_survivorat_s_p2)

                    ; #13725: origin
                    (Bc_survivorat_s_p2)

                    ; #14058: <==closure== 13725 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20275: <==closure== 75864 (pos)
                    (Pa_survivorat_s_p2)

                    ; #52868: <==closure== 11111 (pos)
                    (Pb_survivorat_s_p2)

                    ; #75864: origin
                    (Ba_survivorat_s_p2)

                    ; #21446: <==negation-removal== 11111 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #26435: <==negation-removal== 20275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27789: <==negation-removal== 14058 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #56312: <==negation-removal== 13725 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73884: <==negation-removal== 75864 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #81833: <==negation-removal== 52868 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (Pc_survivorat_s_p2)
                           (at_c_p2))
        :effect (and
                    ; #11111: origin
                    (Bb_survivorat_s_p2)

                    ; #13725: origin
                    (Bc_survivorat_s_p2)

                    ; #14058: <==closure== 13725 (pos)
                    (Pc_survivorat_s_p2)

                    ; #20275: <==closure== 75864 (pos)
                    (Pa_survivorat_s_p2)

                    ; #52868: <==closure== 11111 (pos)
                    (Pb_survivorat_s_p2)

                    ; #75864: origin
                    (Ba_survivorat_s_p2)

                    ; #21446: <==negation-removal== 11111 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #26435: <==negation-removal== 20275 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #27789: <==negation-removal== 14058 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #56312: <==negation-removal== 13725 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #73884: <==negation-removal== 75864 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #81833: <==negation-removal== 52868 (pos)
                    (not (Bb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #18073: <==closure== 84367 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29022: origin
                    (Ba_survivorat_s_p3)

                    ; #38020: origin
                    (Bb_survivorat_s_p3)

                    ; #72473: <==closure== 29022 (pos)
                    (Pa_survivorat_s_p3)

                    ; #83688: <==closure== 38020 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84367: origin
                    (Bc_survivorat_s_p3)

                    ; #25212: <==negation-removal== 38020 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #58219: <==negation-removal== 29022 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64481: <==negation-removal== 84367 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68225: <==negation-removal== 83688 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78292: <==negation-removal== 18073 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #89833: <==negation-removal== 72473 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Bb_survivorat_s_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #18073: <==closure== 84367 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29022: origin
                    (Ba_survivorat_s_p3)

                    ; #38020: origin
                    (Bb_survivorat_s_p3)

                    ; #72473: <==closure== 29022 (pos)
                    (Pa_survivorat_s_p3)

                    ; #83688: <==closure== 38020 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84367: origin
                    (Bc_survivorat_s_p3)

                    ; #25212: <==negation-removal== 38020 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #58219: <==negation-removal== 29022 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64481: <==negation-removal== 84367 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68225: <==negation-removal== 83688 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78292: <==negation-removal== 18073 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #89833: <==negation-removal== 72473 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Pc_survivorat_s_p3)
                           (at_c_p3)
                           (Bc_survivorat_s_p3))
        :effect (and
                    ; #18073: <==closure== 84367 (pos)
                    (Pc_survivorat_s_p3)

                    ; #29022: origin
                    (Ba_survivorat_s_p3)

                    ; #38020: origin
                    (Bb_survivorat_s_p3)

                    ; #72473: <==closure== 29022 (pos)
                    (Pa_survivorat_s_p3)

                    ; #83688: <==closure== 38020 (pos)
                    (Pb_survivorat_s_p3)

                    ; #84367: origin
                    (Bc_survivorat_s_p3)

                    ; #25212: <==negation-removal== 38020 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #58219: <==negation-removal== 29022 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #64481: <==negation-removal== 84367 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #68225: <==negation-removal== 83688 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #78292: <==negation-removal== 18073 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #89833: <==negation-removal== 72473 (pos)
                    (not (Ba_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #39506: <==closure== 66863 (pos)
                    (Pa_survivorat_s_p4)

                    ; #49934: origin
                    (Bc_survivorat_s_p4)

                    ; #66863: origin
                    (Ba_survivorat_s_p4)

                    ; #82755: <==closure== 49934 (pos)
                    (Pc_survivorat_s_p4)

                    ; #88330: origin
                    (Bb_survivorat_s_p4)

                    ; #88359: <==closure== 88330 (pos)
                    (Pb_survivorat_s_p4)

                    ; #41670: <==negation-removal== 88330 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #66141: <==negation-removal== 82755 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #74215: <==negation-removal== 66863 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76624: <==negation-removal== 49934 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81899: <==negation-removal== 39506 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #93683: <==negation-removal== 88359 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #39506: <==closure== 66863 (pos)
                    (Pa_survivorat_s_p4)

                    ; #49934: origin
                    (Bc_survivorat_s_p4)

                    ; #66863: origin
                    (Ba_survivorat_s_p4)

                    ; #82755: <==closure== 49934 (pos)
                    (Pc_survivorat_s_p4)

                    ; #88330: origin
                    (Bb_survivorat_s_p4)

                    ; #88359: <==closure== 88330 (pos)
                    (Pb_survivorat_s_p4)

                    ; #41670: <==negation-removal== 88330 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #66141: <==negation-removal== 82755 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #74215: <==negation-removal== 66863 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76624: <==negation-removal== 49934 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81899: <==negation-removal== 39506 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #93683: <==negation-removal== 88359 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #39506: <==closure== 66863 (pos)
                    (Pa_survivorat_s_p4)

                    ; #49934: origin
                    (Bc_survivorat_s_p4)

                    ; #66863: origin
                    (Ba_survivorat_s_p4)

                    ; #82755: <==closure== 49934 (pos)
                    (Pc_survivorat_s_p4)

                    ; #88330: origin
                    (Bb_survivorat_s_p4)

                    ; #88359: <==closure== 88330 (pos)
                    (Pb_survivorat_s_p4)

                    ; #41670: <==negation-removal== 88330 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #66141: <==negation-removal== 82755 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #74215: <==negation-removal== 66863 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76624: <==negation-removal== 49934 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #81899: <==negation-removal== 39506 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #93683: <==negation-removal== 88359 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (Pa_survivorat_s_p5)
                           (at_a_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #22259: origin
                    (Bb_survivorat_s_p5)

                    ; #23962: <==closure== 82632 (pos)
                    (Pa_survivorat_s_p5)

                    ; #64660: <==closure== 22259 (pos)
                    (Pb_survivorat_s_p5)

                    ; #69018: origin
                    (Bc_survivorat_s_p5)

                    ; #80380: <==closure== 69018 (pos)
                    (Pc_survivorat_s_p5)

                    ; #82632: origin
                    (Ba_survivorat_s_p5)

                    ; #18113: <==negation-removal== 82632 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #23423: <==negation-removal== 23962 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #31390: <==negation-removal== 64660 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #55895: <==negation-removal== 69018 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #81606: <==negation-removal== 22259 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #88876: <==negation-removal== 80380 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #22259: origin
                    (Bb_survivorat_s_p5)

                    ; #23962: <==closure== 82632 (pos)
                    (Pa_survivorat_s_p5)

                    ; #64660: <==closure== 22259 (pos)
                    (Pb_survivorat_s_p5)

                    ; #69018: origin
                    (Bc_survivorat_s_p5)

                    ; #80380: <==closure== 69018 (pos)
                    (Pc_survivorat_s_p5)

                    ; #82632: origin
                    (Ba_survivorat_s_p5)

                    ; #18113: <==negation-removal== 82632 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #23423: <==negation-removal== 23962 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #31390: <==negation-removal== 64660 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #55895: <==negation-removal== 69018 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #81606: <==negation-removal== 22259 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #88876: <==negation-removal== 80380 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Pc_survivorat_s_p5)
                           (at_c_p5)
                           (Bc_survivorat_s_p5))
        :effect (and
                    ; #22259: origin
                    (Bb_survivorat_s_p5)

                    ; #23962: <==closure== 82632 (pos)
                    (Pa_survivorat_s_p5)

                    ; #64660: <==closure== 22259 (pos)
                    (Pb_survivorat_s_p5)

                    ; #69018: origin
                    (Bc_survivorat_s_p5)

                    ; #80380: <==closure== 69018 (pos)
                    (Pc_survivorat_s_p5)

                    ; #82632: origin
                    (Ba_survivorat_s_p5)

                    ; #18113: <==negation-removal== 82632 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #23423: <==negation-removal== 23962 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #31390: <==negation-removal== 64660 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #55895: <==negation-removal== 69018 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #81606: <==negation-removal== 22259 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #88876: <==negation-removal== 80380 (pos)
                    (not (Bc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Ba_survivorat_s_p6)
                           (at_a_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #11750: origin
                    (Bb_survivorat_s_p6)

                    ; #16919: origin
                    (Ba_survivorat_s_p6)

                    ; #18430: <==closure== 16919 (pos)
                    (Pa_survivorat_s_p6)

                    ; #27202: <==closure== 11750 (pos)
                    (Pb_survivorat_s_p6)

                    ; #40665: <==closure== 47280 (pos)
                    (Pc_survivorat_s_p6)

                    ; #47280: origin
                    (Bc_survivorat_s_p6)

                    ; #14158: <==negation-removal== 11750 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15523: <==negation-removal== 18430 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #36143: <==negation-removal== 47280 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #42331: <==negation-removal== 40665 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66029: <==negation-removal== 16919 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80237: <==negation-removal== 27202 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #11750: origin
                    (Bb_survivorat_s_p6)

                    ; #16919: origin
                    (Ba_survivorat_s_p6)

                    ; #18430: <==closure== 16919 (pos)
                    (Pa_survivorat_s_p6)

                    ; #27202: <==closure== 11750 (pos)
                    (Pb_survivorat_s_p6)

                    ; #40665: <==closure== 47280 (pos)
                    (Pc_survivorat_s_p6)

                    ; #47280: origin
                    (Bc_survivorat_s_p6)

                    ; #14158: <==negation-removal== 11750 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15523: <==negation-removal== 18430 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #36143: <==negation-removal== 47280 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #42331: <==negation-removal== 40665 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66029: <==negation-removal== 16919 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80237: <==negation-removal== 27202 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Pc_survivorat_s_p6)
                           (at_c_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #11750: origin
                    (Bb_survivorat_s_p6)

                    ; #16919: origin
                    (Ba_survivorat_s_p6)

                    ; #18430: <==closure== 16919 (pos)
                    (Pa_survivorat_s_p6)

                    ; #27202: <==closure== 11750 (pos)
                    (Pb_survivorat_s_p6)

                    ; #40665: <==closure== 47280 (pos)
                    (Pc_survivorat_s_p6)

                    ; #47280: origin
                    (Bc_survivorat_s_p6)

                    ; #14158: <==negation-removal== 11750 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #15523: <==negation-removal== 18430 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #36143: <==negation-removal== 47280 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #42331: <==negation-removal== 40665 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #66029: <==negation-removal== 16919 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #80237: <==negation-removal== 27202 (pos)
                    (not (Bb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (at_a_p7)
                           (Ba_survivorat_s_p7))
        :effect (and
                    ; #18294: <==closure== 48901 (pos)
                    (Pa_survivorat_s_p7)

                    ; #35459: <==closure== 92915 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47480: origin
                    (Bc_survivorat_s_p7)

                    ; #48901: origin
                    (Ba_survivorat_s_p7)

                    ; #83554: <==closure== 47480 (pos)
                    (Pc_survivorat_s_p7)

                    ; #92915: origin
                    (Bb_survivorat_s_p7)

                    ; #17359: <==negation-removal== 47480 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #22249: <==negation-removal== 35459 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #39486: <==negation-removal== 48901 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58853: <==negation-removal== 18294 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62963: <==negation-removal== 92915 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85698: <==negation-removal== 83554 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (at_b_p7)
                           (Bb_survivorat_s_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #18294: <==closure== 48901 (pos)
                    (Pa_survivorat_s_p7)

                    ; #35459: <==closure== 92915 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47480: origin
                    (Bc_survivorat_s_p7)

                    ; #48901: origin
                    (Ba_survivorat_s_p7)

                    ; #83554: <==closure== 47480 (pos)
                    (Pc_survivorat_s_p7)

                    ; #92915: origin
                    (Bb_survivorat_s_p7)

                    ; #17359: <==negation-removal== 47480 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #22249: <==negation-removal== 35459 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #39486: <==negation-removal== 48901 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58853: <==negation-removal== 18294 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62963: <==negation-removal== 92915 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85698: <==negation-removal== 83554 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #18294: <==closure== 48901 (pos)
                    (Pa_survivorat_s_p7)

                    ; #35459: <==closure== 92915 (pos)
                    (Pb_survivorat_s_p7)

                    ; #47480: origin
                    (Bc_survivorat_s_p7)

                    ; #48901: origin
                    (Ba_survivorat_s_p7)

                    ; #83554: <==closure== 47480 (pos)
                    (Pc_survivorat_s_p7)

                    ; #92915: origin
                    (Bb_survivorat_s_p7)

                    ; #17359: <==negation-removal== 47480 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #22249: <==negation-removal== 35459 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #39486: <==negation-removal== 48901 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #58853: <==negation-removal== 18294 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #62963: <==negation-removal== 92915 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #85698: <==negation-removal== 83554 (pos)
                    (not (Bc_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (at_a_p8)
                           (Pa_survivorat_s_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #16427: origin
                    (Ba_survivorat_s_p8)

                    ; #18910: <==closure== 16427 (pos)
                    (Pa_survivorat_s_p8)

                    ; #57181: origin
                    (Bb_survivorat_s_p8)

                    ; #65115: origin
                    (Bc_survivorat_s_p8)

                    ; #80931: <==closure== 57181 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88238: <==closure== 65115 (pos)
                    (Pc_survivorat_s_p8)

                    ; #17629: <==negation-removal== 57181 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #48048: <==negation-removal== 88238 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #54916: <==negation-removal== 80931 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57597: <==negation-removal== 16427 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #83199: <==negation-removal== 65115 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #95762: <==negation-removal== 18910 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #16427: origin
                    (Ba_survivorat_s_p8)

                    ; #18910: <==closure== 16427 (pos)
                    (Pa_survivorat_s_p8)

                    ; #57181: origin
                    (Bb_survivorat_s_p8)

                    ; #65115: origin
                    (Bc_survivorat_s_p8)

                    ; #80931: <==closure== 57181 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88238: <==closure== 65115 (pos)
                    (Pc_survivorat_s_p8)

                    ; #17629: <==negation-removal== 57181 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #48048: <==negation-removal== 88238 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #54916: <==negation-removal== 80931 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57597: <==negation-removal== 16427 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #83199: <==negation-removal== 65115 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #95762: <==negation-removal== 18910 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8)
                           (at_c_p8))
        :effect (and
                    ; #16427: origin
                    (Ba_survivorat_s_p8)

                    ; #18910: <==closure== 16427 (pos)
                    (Pa_survivorat_s_p8)

                    ; #57181: origin
                    (Bb_survivorat_s_p8)

                    ; #65115: origin
                    (Bc_survivorat_s_p8)

                    ; #80931: <==closure== 57181 (pos)
                    (Pb_survivorat_s_p8)

                    ; #88238: <==closure== 65115 (pos)
                    (Pc_survivorat_s_p8)

                    ; #17629: <==negation-removal== 57181 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #48048: <==negation-removal== 88238 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #54916: <==negation-removal== 80931 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #57597: <==negation-removal== 16427 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #83199: <==negation-removal== 65115 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #95762: <==negation-removal== 18910 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #41160: origin
                    (Bb_survivorat_s_p9)

                    ; #43449: <==closure== 41160 (pos)
                    (Pb_survivorat_s_p9)

                    ; #50255: <==closure== 66446 (pos)
                    (Pc_survivorat_s_p9)

                    ; #57385: <==closure== 75350 (pos)
                    (Pa_survivorat_s_p9)

                    ; #66446: origin
                    (Bc_survivorat_s_p9)

                    ; #75350: origin
                    (Ba_survivorat_s_p9)

                    ; #26088: <==negation-removal== 50255 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #67848: <==negation-removal== 43449 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #73203: <==negation-removal== 41160 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #74249: <==negation-removal== 57385 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #85321: <==negation-removal== 75350 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #88919: <==negation-removal== 66446 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Pb_survivorat_s_p9)
                           (Bb_survivorat_s_p9))
        :effect (and
                    ; #41160: origin
                    (Bb_survivorat_s_p9)

                    ; #43449: <==closure== 41160 (pos)
                    (Pb_survivorat_s_p9)

                    ; #50255: <==closure== 66446 (pos)
                    (Pc_survivorat_s_p9)

                    ; #57385: <==closure== 75350 (pos)
                    (Pa_survivorat_s_p9)

                    ; #66446: origin
                    (Bc_survivorat_s_p9)

                    ; #75350: origin
                    (Ba_survivorat_s_p9)

                    ; #26088: <==negation-removal== 50255 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #67848: <==negation-removal== 43449 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #73203: <==negation-removal== 41160 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #74249: <==negation-removal== 57385 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #85321: <==negation-removal== 75350 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #88919: <==negation-removal== 66446 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #41160: origin
                    (Bb_survivorat_s_p9)

                    ; #43449: <==closure== 41160 (pos)
                    (Pb_survivorat_s_p9)

                    ; #50255: <==closure== 66446 (pos)
                    (Pc_survivorat_s_p9)

                    ; #57385: <==closure== 75350 (pos)
                    (Pa_survivorat_s_p9)

                    ; #66446: origin
                    (Bc_survivorat_s_p9)

                    ; #75350: origin
                    (Ba_survivorat_s_p9)

                    ; #26088: <==negation-removal== 50255 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #67848: <==negation-removal== 43449 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #73203: <==negation-removal== 41160 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #74249: <==negation-removal== 57385 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #85321: <==negation-removal== 75350 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #88919: <==negation-removal== 66446 (pos)
                    (not (Pc_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #58120: origin
                    (at_a_p11)

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #38189: origin
                    (at_a_p4)

                    ; #43353: origin
                    (not_at_a_p10)

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (at_a_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #37845: origin
                    (at_a_p5)

                    ; #43353: origin
                    (not_at_a_p10)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #43353: origin
                    (not_at_a_p10)

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (at_a_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #43353: origin
                    (not_at_a_p10)

                    ; #55058: origin
                    (at_a_p9)

                    ; #51796: <==negation-removal== 43353 (pos)
                    (not (at_a_p10))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #52499: origin
                    (at_a_p1)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #51796: origin
                    (at_a_p10)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #58120: origin
                    (at_a_p11)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #77915: origin
                    (at_a_p12)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #66615: origin
                    (at_a_p2)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #62209: origin
                    (at_a_p3)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #38189: origin
                    (at_a_p4)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #37845: origin
                    (at_a_p5)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #81995: origin
                    (not_at_a_p11)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (succ_p11_p7)
                           (at_a_p11))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_a_p11))
        :effect (and
                    ; #51749: origin
                    (at_a_p8)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_a_p11))
        :effect (and
                    ; #55058: origin
                    (at_a_p9)

                    ; #81995: origin
                    (not_at_a_p11)

                    ; #58120: <==negation-removal== 81995 (pos)
                    (not (at_a_p11))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #58120: origin
                    (at_a_p11)

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #38189: origin
                    (at_a_p4)

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #37845: origin
                    (at_a_p5)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #24895: origin
                    (not_at_a_p12)

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #24895: origin
                    (not_at_a_p12)

                    ; #55058: origin
                    (at_a_p9)

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))

                    ; #77915: <==negation-removal== 24895 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #58120: origin
                    (at_a_p11)

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #38189: origin
                    (at_a_p4)

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #37845: origin
                    (at_a_p5)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #28117: origin
                    (not_at_a_p1)

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #28117: origin
                    (not_at_a_p1)

                    ; #55058: origin
                    (at_a_p9)

                    ; #52499: <==negation-removal== 28117 (pos)
                    (not (at_a_p1))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (at_a_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #58120: origin
                    (at_a_p11)

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (at_a_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #38189: origin
                    (at_a_p4)

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #37845: origin
                    (at_a_p5)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #25467: origin
                    (not_at_a_p2)

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (at_a_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #25467: origin
                    (not_at_a_p2)

                    ; #55058: origin
                    (at_a_p9)

                    ; #66615: <==negation-removal== 25467 (pos)
                    (not (at_a_p2))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #58120: origin
                    (at_a_p11)

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #38189: origin
                    (at_a_p4)

                    ; #41882: origin
                    (not_at_a_p3)

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #37845: origin
                    (at_a_p5)

                    ; #41882: origin
                    (not_at_a_p3)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #41882: origin
                    (not_at_a_p3)

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #41882: origin
                    (not_at_a_p3)

                    ; #55058: origin
                    (at_a_p9)

                    ; #62209: <==negation-removal== 41882 (pos)
                    (not (at_a_p3))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #52499: origin
                    (at_a_p1)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #51796: origin
                    (at_a_p10)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (at_a_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #58120: origin
                    (at_a_p11)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #77915: origin
                    (at_a_p12)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #66615: origin
                    (at_a_p2)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #62209: origin
                    (at_a_p3)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #38189: origin
                    (at_a_p4)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #37845: origin
                    (at_a_p5)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #88237: origin
                    (not_at_a_p4)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (at_a_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #51749: origin
                    (at_a_p8)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #55058: origin
                    (at_a_p9)

                    ; #88237: origin
                    (not_at_a_p4)

                    ; #38189: <==negation-removal== 88237 (pos)
                    (not (at_a_p4))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #51796: origin
                    (at_a_p10)

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #58120: origin
                    (at_a_p11)

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #62209: origin
                    (at_a_p3)

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #38189: origin
                    (at_a_p4)

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #37845: origin
                    (at_a_p5)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #35706: origin
                    (not_at_a_p5)

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #35706: origin
                    (not_at_a_p5)

                    ; #55058: origin
                    (at_a_p9)

                    ; #37845: <==negation-removal== 35706 (pos)
                    (not (at_a_p5))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #58120: origin
                    (at_a_p11)

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #38189: origin
                    (at_a_p4)

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #37845: origin
                    (at_a_p5)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #33115: origin
                    (not_at_a_p6)

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #33115: origin
                    (not_at_a_p6)

                    ; #55058: origin
                    (at_a_p9)

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))

                    ; #90626: <==negation-removal== 33115 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #52499: origin
                    (at_a_p1)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #51796: origin
                    (at_a_p10)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #58120: origin
                    (at_a_p11)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #77915: origin
                    (at_a_p12)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #66615: origin
                    (at_a_p2)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #62209: origin
                    (at_a_p3)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #38189: origin
                    (at_a_p4)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #37845: origin
                    (at_a_p5)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #90615: origin
                    (not_at_a_p7)

                    ; #90626: origin
                    (at_a_p6)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_a_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #51749: origin
                    (at_a_p8)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #55058: origin
                    (at_a_p9)

                    ; #90615: origin
                    (not_at_a_p7)

                    ; #24829: <==negation-removal== 90615 (pos)
                    (not (at_a_p7))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #52499: origin
                    (at_a_p1)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #51796: origin
                    (at_a_p10)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #58120: origin
                    (at_a_p11)

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #66615: origin
                    (at_a_p2)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #62209: origin
                    (at_a_p3)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #38189: origin
                    (at_a_p4)

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #37845: origin
                    (at_a_p5)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #24829: origin
                    (at_a_p7)

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #51749: origin
                    (at_a_p8)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #14905: origin
                    (not_at_a_p8)

                    ; #55058: origin
                    (at_a_p9)

                    ; #51749: <==negation-removal== 14905 (pos)
                    (not (at_a_p8))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #52499: origin
                    (at_a_p1)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #28117: <==negation-removal== 52499 (pos)
                    (not (not_at_a_p1))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #51796: origin
                    (at_a_p10)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #43353: <==negation-removal== 51796 (pos)
                    (not (not_at_a_p10))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #58120: origin
                    (at_a_p11)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))

                    ; #81995: <==negation-removal== 58120 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #69958: origin
                    (not_at_a_p9)

                    ; #77915: origin
                    (at_a_p12)

                    ; #24895: <==negation-removal== 77915 (pos)
                    (not (not_at_a_p12))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #66615: origin
                    (at_a_p2)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #25467: <==negation-removal== 66615 (pos)
                    (not (not_at_a_p2))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #62209: origin
                    (at_a_p3)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #41882: <==negation-removal== 62209 (pos)
                    (not (not_at_a_p3))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #38189: origin
                    (at_a_p4)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))

                    ; #88237: <==negation-removal== 38189 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #37845: origin
                    (at_a_p5)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #35706: <==negation-removal== 37845 (pos)
                    (not (not_at_a_p5))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #69958: origin
                    (not_at_a_p9)

                    ; #90626: origin
                    (at_a_p6)

                    ; #33115: <==negation-removal== 90626 (pos)
                    (not (not_at_a_p6))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #24829: origin
                    (at_a_p7)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))

                    ; #90615: <==negation-removal== 24829 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #51749: origin
                    (at_a_p8)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #14905: <==negation-removal== 51749 (pos)
                    (not (not_at_a_p8))

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #55058: origin
                    (at_a_p9)

                    ; #69958: origin
                    (not_at_a_p9)

                    ; #55058: <==negation-removal== 69958 (pos)
                    (not (at_a_p9))

                    ; #69958: <==negation-removal== 55058 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #49629: origin
                    (at_b_p1)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #38398: origin
                    (at_b_p10)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #33730: origin
                    (at_b_p12)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #20431: origin
                    (at_b_p2)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #17543: origin
                    (at_b_p3)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #16033: origin
                    (at_b_p5)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #81403: origin
                    (at_b_p6)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #14145: origin
                    (not_at_b_p10)

                    ; #52814: origin
                    (at_b_p8)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #14145: origin
                    (not_at_b_p10)

                    ; #38398: <==negation-removal== 14145 (pos)
                    (not (at_b_p10))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #49629: origin
                    (at_b_p1)

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #38398: origin
                    (at_b_p10)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #33730: origin
                    (at_b_p12)

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #28061: origin
                    (not_at_b_p11)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #28061: origin
                    (not_at_b_p11)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #28061: origin
                    (not_at_b_p11)

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #81403: origin
                    (at_b_p6)

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #28061: origin
                    (not_at_b_p11)

                    ; #52814: origin
                    (at_b_p8)

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #28061: origin
                    (not_at_b_p11)

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))

                    ; #64864: <==negation-removal== 28061 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #49629: origin
                    (at_b_p1)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #62384: origin
                    (not_at_b_p12)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #62384: origin
                    (not_at_b_p12)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #62384: origin
                    (not_at_b_p12)

                    ; #81403: origin
                    (at_b_p6)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_b_p12))
        :effect (and
                    ; #62384: origin
                    (not_at_b_p12)

                    ; #81823: origin
                    (at_b_p7)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #52814: origin
                    (at_b_p8)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #62384: origin
                    (not_at_b_p12)

                    ; #33730: <==negation-removal== 62384 (pos)
                    (not (at_b_p12))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #49629: origin
                    (at_b_p1)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #55130: origin
                    (not_at_b_p1)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #55130: origin
                    (not_at_b_p1)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #55130: origin
                    (not_at_b_p1)

                    ; #81403: origin
                    (at_b_p6)

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (at_b_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #55130: origin
                    (not_at_b_p1)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #52814: origin
                    (at_b_p8)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #55130: origin
                    (not_at_b_p1)

                    ; #49629: <==negation-removal== 55130 (pos)
                    (not (at_b_p1))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #49629: origin
                    (at_b_p1)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (at_b_p2)
                           (succ_p2_p10))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #38398: origin
                    (at_b_p10)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #64864: origin
                    (at_b_p11)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #33730: origin
                    (at_b_p12)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #20431: origin
                    (at_b_p2)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (at_b_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #17543: origin
                    (at_b_p3)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #16033: origin
                    (at_b_p5)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (at_b_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #81403: origin
                    (at_b_p6)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (at_b_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #81823: origin
                    (at_b_p7)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (at_b_p2)
                           (succ_p2_p8))
        :effect (and
                    ; #14495: origin
                    (not_at_b_p2)

                    ; #52814: origin
                    (at_b_p8)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #14495: origin
                    (not_at_b_p2)

                    ; #20431: <==negation-removal== 14495 (pos)
                    (not (at_b_p2))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #49629: origin
                    (at_b_p1)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #38398: origin
                    (at_b_p10)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #64864: origin
                    (at_b_p11)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #35713: origin
                    (not_at_b_p3)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #35713: origin
                    (not_at_b_p3)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #35713: origin
                    (not_at_b_p3)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #35713: origin
                    (not_at_b_p3)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_b_p3))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #81403: origin
                    (at_b_p6)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #81823: origin
                    (at_b_p7)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #35713: origin
                    (not_at_b_p3)

                    ; #52814: origin
                    (at_b_p8)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #35713: origin
                    (not_at_b_p3)

                    ; #17543: <==negation-removal== 35713 (pos)
                    (not (at_b_p3))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #49629: origin
                    (at_b_p1)

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #38398: origin
                    (at_b_p10)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #33730: origin
                    (at_b_p12)

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #20431: origin
                    (at_b_p2)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #17543: origin
                    (at_b_p3)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #16033: origin
                    (at_b_p5)

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #81403: origin
                    (at_b_p6)

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #52814: origin
                    (at_b_p8)

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #11472: origin
                    (not_at_b_p4)

                    ; #13775: origin
                    (at_b_p9)

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))

                    ; #79190: <==negation-removal== 11472 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #49629: origin
                    (at_b_p1)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #63710: origin
                    (not_at_b_p5)

                    ; #64864: origin
                    (at_b_p11)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #63710: origin
                    (not_at_b_p5)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #63710: origin
                    (not_at_b_p5)

                    ; #81403: origin
                    (at_b_p6)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #63710: origin
                    (not_at_b_p5)

                    ; #81823: origin
                    (at_b_p7)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #52814: origin
                    (at_b_p8)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #63710: origin
                    (not_at_b_p5)

                    ; #16033: <==negation-removal== 63710 (pos)
                    (not (at_b_p5))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #49629: origin
                    (at_b_p1)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #57904: origin
                    (not_at_b_p6)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #57904: origin
                    (not_at_b_p6)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #57904: origin
                    (not_at_b_p6)

                    ; #81403: origin
                    (at_b_p6)

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #57904: origin
                    (not_at_b_p6)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #52814: origin
                    (at_b_p8)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #57904: origin
                    (not_at_b_p6)

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))

                    ; #81403: <==negation-removal== 57904 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #38835: origin
                    (not_at_b_p7)

                    ; #49629: origin
                    (at_b_p1)

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #38835: origin
                    (not_at_b_p7)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #38835: origin
                    (not_at_b_p7)

                    ; #64864: origin
                    (at_b_p11)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (at_b_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #38835: origin
                    (not_at_b_p7)

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #38835: origin
                    (not_at_b_p7)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #38835: origin
                    (not_at_b_p7)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #38835: origin
                    (not_at_b_p7)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #38835: origin
                    (not_at_b_p7)

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (at_b_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #38835: origin
                    (not_at_b_p7)

                    ; #81403: origin
                    (at_b_p6)

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #38835: origin
                    (not_at_b_p7)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (at_b_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #38835: origin
                    (not_at_b_p7)

                    ; #52814: origin
                    (at_b_p8)

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #38835: origin
                    (not_at_b_p7)

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))

                    ; #81823: <==negation-removal== 38835 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #49629: origin
                    (at_b_p1)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_b_p8))
        :effect (and
                    ; #64864: origin
                    (at_b_p11)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_b_p8))
        :effect (and
                    ; #78800: origin
                    (not_at_b_p8)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_b_p8))
        :effect (and
                    ; #78800: origin
                    (not_at_b_p8)

                    ; #81403: origin
                    (at_b_p6)

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #78800: origin
                    (not_at_b_p8)

                    ; #81823: origin
                    (at_b_p7)

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #52814: origin
                    (at_b_p8)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #78800: origin
                    (not_at_b_p8)

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))

                    ; #52814: <==negation-removal== 78800 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #49629: origin
                    (at_b_p1)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #55130: <==negation-removal== 49629 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #38398: origin
                    (at_b_p10)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #14145: <==negation-removal== 38398 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #50534: origin
                    (not_at_b_p9)

                    ; #64864: origin
                    (at_b_p11)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #28061: <==negation-removal== 64864 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #33730: origin
                    (at_b_p12)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #62384: <==negation-removal== 33730 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #20431: origin
                    (at_b_p2)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #14495: <==negation-removal== 20431 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #17543: origin
                    (at_b_p3)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #35713: <==negation-removal== 17543 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #50534: origin
                    (not_at_b_p9)

                    ; #79190: origin
                    (at_b_p4)

                    ; #11472: <==negation-removal== 79190 (pos)
                    (not (not_at_b_p4))

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #16033: origin
                    (at_b_p5)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #63710: <==negation-removal== 16033 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #50534: origin
                    (not_at_b_p9)

                    ; #81403: origin
                    (at_b_p6)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #57904: <==negation-removal== 81403 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #50534: origin
                    (not_at_b_p9)

                    ; #81823: origin
                    (at_b_p7)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #38835: <==negation-removal== 81823 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_b_p9))
        :effect (and
                    ; #50534: origin
                    (not_at_b_p9)

                    ; #52814: origin
                    (at_b_p8)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #78800: <==negation-removal== 52814 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #13775: origin
                    (at_b_p9)

                    ; #50534: origin
                    (not_at_b_p9)

                    ; #13775: <==negation-removal== 50534 (pos)
                    (not (at_b_p9))

                    ; #50534: <==negation-removal== 13775 (pos)
                    (not (not_at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #49026: origin
                    (at_c_p11)

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #75120: origin
                    (at_c_p3)

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #15176: origin
                    (not_at_c_p10)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #19350: origin
                    (at_c_p6)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #15176: origin
                    (not_at_c_p10)

                    ; #82892: origin
                    (at_c_p9)

                    ; #71162: <==negation-removal== 15176 (pos)
                    (not (at_c_p10))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #77499: origin
                    (at_c_p1)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #71162: origin
                    (at_c_p10)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #49026: origin
                    (at_c_p11)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #62298: origin
                    (at_c_p12)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #75753: origin
                    (at_c_p2)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #75120: origin
                    (at_c_p3)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #61479: origin
                    (at_c_p4)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #74312: origin
                    (at_c_p7)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #67728: origin
                    (at_c_p8)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #82892: origin
                    (at_c_p9)

                    ; #83296: origin
                    (not_at_c_p11)

                    ; #49026: <==negation-removal== 83296 (pos)
                    (not (at_c_p11))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #49026: origin
                    (at_c_p11)

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #75120: origin
                    (at_c_p3)

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #16037: origin
                    (not_at_c_p12)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #19350: origin
                    (at_c_p6)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #16037: origin
                    (not_at_c_p12)

                    ; #82892: origin
                    (at_c_p9)

                    ; #62298: <==negation-removal== 16037 (pos)
                    (not (at_c_p12))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #49026: origin
                    (at_c_p11)

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #75120: origin
                    (at_c_p3)

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_c_p1))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #26046: origin
                    (not_at_c_p1)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #26046: origin
                    (not_at_c_p1)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #26046: origin
                    (not_at_c_p1)

                    ; #82892: origin
                    (at_c_p9)

                    ; #77499: <==negation-removal== 26046 (pos)
                    (not (at_c_p1))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #49026: origin
                    (at_c_p11)

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #75120: origin
                    (at_c_p3)

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #23378: origin
                    (not_at_c_p2)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #23378: origin
                    (not_at_c_p2)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #23378: origin
                    (not_at_c_p2)

                    ; #82892: origin
                    (at_c_p9)

                    ; #75753: <==negation-removal== 23378 (pos)
                    (not (at_c_p2))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #75778: origin
                    (not_at_c_p3)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #71162: origin
                    (at_c_p10)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #49026: origin
                    (at_c_p11)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #62298: origin
                    (at_c_p12)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #75753: origin
                    (at_c_p2)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #75120: origin
                    (at_c_p3)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #61479: origin
                    (at_c_p4)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_c_p3))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #74312: origin
                    (at_c_p7)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #67728: origin
                    (at_c_p8)

                    ; #75778: origin
                    (not_at_c_p3)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #75778: origin
                    (not_at_c_p3)

                    ; #82892: origin
                    (at_c_p9)

                    ; #75120: <==negation-removal== 75778 (pos)
                    (not (at_c_p3))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #49026: origin
                    (at_c_p11)

                    ; #61810: origin
                    (not_at_c_p4)

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #75120: origin
                    (at_c_p3)

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: origin
                    (not_at_c_p4)

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #61810: origin
                    (not_at_c_p4)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #61810: origin
                    (not_at_c_p4)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #61810: origin
                    (not_at_c_p4)

                    ; #82892: origin
                    (at_c_p9)

                    ; #61479: <==negation-removal== 61810 (pos)
                    (not (at_c_p4))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #77499: origin
                    (at_c_p1)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #71162: origin
                    (at_c_p10)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #49026: origin
                    (at_c_p11)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #62298: origin
                    (at_c_p12)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #75753: origin
                    (at_c_p2)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (at_c_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #75120: origin
                    (at_c_p3)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #61479: origin
                    (at_c_p4)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #45696: origin
                    (not_at_c_p5)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #45696: origin
                    (not_at_c_p5)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #74312: origin
                    (at_c_p7)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #67728: origin
                    (at_c_p8)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #45696: origin
                    (not_at_c_p5)

                    ; #82892: origin
                    (at_c_p9)

                    ; #13741: <==negation-removal== 45696 (pos)
                    (not (at_c_p5))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #77499: origin
                    (at_c_p1)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #49026: origin
                    (at_c_p11)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #75753: origin
                    (at_c_p2)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #75120: origin
                    (at_c_p3)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #61479: origin
                    (at_c_p4)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #44299: origin
                    (not_at_c_p6)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #44299: origin
                    (not_at_c_p6)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #74312: origin
                    (at_c_p7)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #67728: origin
                    (at_c_p8)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_c_p6))
        :effect (and
                    ; #44299: origin
                    (not_at_c_p6)

                    ; #82892: origin
                    (at_c_p9)

                    ; #19350: <==negation-removal== 44299 (pos)
                    (not (at_c_p6))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #49026: origin
                    (at_c_p11)

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #75120: origin
                    (at_c_p3)

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (at_c_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #24094: origin
                    (not_at_c_p7)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #24094: origin
                    (not_at_c_p7)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #24094: origin
                    (not_at_c_p7)

                    ; #82892: origin
                    (at_c_p9)

                    ; #74312: <==negation-removal== 24094 (pos)
                    (not (at_c_p7))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #77499: origin
                    (at_c_p1)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #71162: origin
                    (at_c_p10)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #49026: origin
                    (at_c_p11)

                    ; #59702: origin
                    (not_at_c_p8)

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #62298: origin
                    (at_c_p12)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #75753: origin
                    (at_c_p2)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #75120: origin
                    (at_c_p3)

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_c_p8))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #61479: origin
                    (at_c_p4)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #59702: origin
                    (not_at_c_p8)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_c_p8))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #59702: origin
                    (not_at_c_p8)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #74312: origin
                    (at_c_p7)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #67728: origin
                    (at_c_p8)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #59702: origin
                    (not_at_c_p8)

                    ; #82892: origin
                    (at_c_p9)

                    ; #67728: <==negation-removal== 59702 (pos)
                    (not (at_c_p8))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (at_c_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #77499: origin
                    (at_c_p1)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #26046: <==negation-removal== 77499 (pos)
                    (not (not_at_c_p1))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (at_c_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #71162: origin
                    (at_c_p10)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #15176: <==negation-removal== 71162 (pos)
                    (not (not_at_c_p10))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #49026: origin
                    (at_c_p11)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))

                    ; #83296: <==negation-removal== 49026 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (at_c_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #62298: origin
                    (at_c_p12)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #16037: <==negation-removal== 62298 (pos)
                    (not (not_at_c_p12))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (at_c_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #75753: origin
                    (at_c_p2)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #23378: <==negation-removal== 75753 (pos)
                    (not (not_at_c_p2))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p3
        :precondition (and (at_c_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #75120: origin
                    (at_c_p3)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #75778: <==negation-removal== 75120 (pos)
                    (not (not_at_c_p3))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (at_c_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #61479: origin
                    (at_c_p4)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #61810: <==negation-removal== 61479 (pos)
                    (not (not_at_c_p4))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #13741: origin
                    (at_c_p5)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #45696: <==negation-removal== 13741 (pos)
                    (not (not_at_c_p5))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #19350: origin
                    (at_c_p6)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #44299: <==negation-removal== 19350 (pos)
                    (not (not_at_c_p6))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (at_c_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #74312: origin
                    (at_c_p7)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #24094: <==negation-removal== 74312 (pos)
                    (not (not_at_c_p7))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #67728: origin
                    (at_c_p8)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #59702: <==negation-removal== 67728 (pos)
                    (not (not_at_c_p8))

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #82892: origin
                    (at_c_p9)

                    ; #85257: origin
                    (not_at_c_p9)

                    ; #82892: <==negation-removal== 85257 (pos)
                    (not (at_c_p9))

                    ; #85257: <==negation-removal== 82892 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15192: <==closure== 31037 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #19157: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #24413: <==commonly_known== 72809 (pos)
                    (Bc_checked_p10)

                    ; #28003: <==closure== 61620 (pos)
                    (Pa_checked_p10)

                    ; #31037: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #34159: <==closure== 19157 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #48710: <==commonly_known== 72809 (pos)
                    (Bb_checked_p10)

                    ; #60750: <==closure== 24413 (pos)
                    (Pc_checked_p10)

                    ; #61620: <==commonly_known== 72809 (pos)
                    (Ba_checked_p10)

                    ; #72809: origin
                    (checked_p10)

                    ; #80370: <==closure== 48710 (pos)
                    (Pb_checked_p10)

                    ; #14806: <==negation-removal== 19157 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #29821: <==uncertain_firing== 19157 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #40769: <==negation-removal== 48710 (pos)
                    (not (Pb_not_checked_p10))

                    ; #47968: <==negation-removal== 34159 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #50945: <==negation-removal== 31037 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #56355: <==negation-removal== 15192 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #63657: <==negation-removal== 61620 (pos)
                    (not (Pa_not_checked_p10))

                    ; #67945: <==uncertain_firing== 31037 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #76612: <==negation-removal== 72809 (pos)
                    (not (not_checked_p10))

                    ; #79015: <==negation-removal== 60750 (pos)
                    (not (Bc_not_checked_p10))

                    ; #81528: <==negation-removal== 80370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #81759: <==negation-removal== 28003 (pos)
                    (not (Ba_not_checked_p10))

                    ; #84726: <==unclosure== 67945 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #84826: <==negation-removal== 24413 (pos)
                    (not (Pc_not_checked_p10))

                    ; #87547: <==unclosure== 29821 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10602: <==closure== 60963 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #20002: <==closure== 50412 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #27856: <==closure== 53911 (pos)
                    (Pc_checked_p11)

                    ; #32681: <==closure== 77300 (pos)
                    (Pb_checked_p11)

                    ; #41431: <==closure== 86144 (pos)
                    (Pa_checked_p11)

                    ; #50412: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #53911: <==commonly_known== 85625 (pos)
                    (Bc_checked_p11)

                    ; #60963: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #77300: <==commonly_known== 85625 (pos)
                    (Bb_checked_p11)

                    ; #85625: origin
                    (checked_p11)

                    ; #86144: <==commonly_known== 85625 (pos)
                    (Ba_checked_p11)

                    ; #28956: <==negation-removal== 77300 (pos)
                    (not (Pb_not_checked_p11))

                    ; #43420: <==negation-removal== 86144 (pos)
                    (not (Pa_not_checked_p11))

                    ; #44448: <==negation-removal== 53911 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44509: <==negation-removal== 32681 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50246: <==negation-removal== 85625 (pos)
                    (not (not_checked_p11))

                    ; #52676: <==uncertain_firing== 60963 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #55731: <==negation-removal== 41431 (pos)
                    (not (Ba_not_checked_p11))

                    ; #56645: <==unclosure== 61881 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #61881: <==uncertain_firing== 50412 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #62754: <==negation-removal== 10602 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #64798: <==negation-removal== 60963 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #65388: <==negation-removal== 27856 (pos)
                    (not (Bc_not_checked_p11))

                    ; #71467: <==unclosure== 52676 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #72639: <==negation-removal== 20002 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #89831: <==negation-removal== 50412 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11163: <==closure== 46684 (pos)
                    (Pa_checked_p12)

                    ; #13723: <==closure== 36712 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #36712: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #38679: <==closure== 88766 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #43204: <==commonly_known== 91927 (pos)
                    (Bc_checked_p12)

                    ; #46684: <==commonly_known== 91927 (pos)
                    (Ba_checked_p12)

                    ; #56962: <==closure== 67539 (pos)
                    (Pb_checked_p12)

                    ; #66007: <==closure== 43204 (pos)
                    (Pc_checked_p12)

                    ; #67539: <==commonly_known== 91927 (pos)
                    (Bb_checked_p12)

                    ; #88766: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #91927: origin
                    (checked_p12)

                    ; #11228: <==uncertain_firing== 88766 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #18823: <==negation-removal== 11163 (pos)
                    (not (Ba_not_checked_p12))

                    ; #23907: <==negation-removal== 38679 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #25091: <==negation-removal== 36712 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #32527: <==negation-removal== 13723 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #37418: <==negation-removal== 46684 (pos)
                    (not (Pa_not_checked_p12))

                    ; #43610: <==unclosure== 11228 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #50513: <==negation-removal== 91927 (pos)
                    (not (not_checked_p12))

                    ; #61518: <==negation-removal== 67539 (pos)
                    (not (Pb_not_checked_p12))

                    ; #82674: <==uncertain_firing== 36712 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #82936: <==negation-removal== 66007 (pos)
                    (not (Bc_not_checked_p12))

                    ; #83055: <==negation-removal== 88766 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #87340: <==negation-removal== 43204 (pos)
                    (not (Pc_not_checked_p12))

                    ; #90653: <==unclosure== 82674 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #91679: <==negation-removal== 56962 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24733: origin
                    (checked_p1)

                    ; #27454: <==commonly_known== 24733 (pos)
                    (Bb_checked_p1)

                    ; #27980: <==closure== 75744 (pos)
                    (Pa_checked_p1)

                    ; #52288: <==closure== 62119 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #53177: <==closure== 96236 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #62119: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #75744: <==commonly_known== 24733 (pos)
                    (Ba_checked_p1)

                    ; #76056: <==commonly_known== 24733 (pos)
                    (Bc_checked_p1)

                    ; #79904: <==closure== 27454 (pos)
                    (Pb_checked_p1)

                    ; #91103: <==closure== 76056 (pos)
                    (Pc_checked_p1)

                    ; #96236: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #21207: <==negation-removal== 53177 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #24186: <==negation-removal== 79904 (pos)
                    (not (Bb_not_checked_p1))

                    ; #30836: <==negation-removal== 27980 (pos)
                    (not (Ba_not_checked_p1))

                    ; #35109: <==unclosure== 49069 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #38710: <==negation-removal== 24733 (pos)
                    (not (not_checked_p1))

                    ; #45704: <==uncertain_firing== 96236 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #47438: <==negation-removal== 62119 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #49069: <==uncertain_firing== 62119 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #54566: <==negation-removal== 27454 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57471: <==negation-removal== 91103 (pos)
                    (not (Bc_not_checked_p1))

                    ; #66331: <==negation-removal== 75744 (pos)
                    (not (Pa_not_checked_p1))

                    ; #69096: <==negation-removal== 52288 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #70515: <==negation-removal== 76056 (pos)
                    (not (Pc_not_checked_p1))

                    ; #71933: <==negation-removal== 96236 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #88124: <==unclosure== 45704 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #15567: <==closure== 31703 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #17181: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #30766: <==closure== 17181 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #31584: <==commonly_known== 51478 (pos)
                    (Bb_checked_p2)

                    ; #31703: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #36851: <==closure== 77479 (pos)
                    (Pa_checked_p2)

                    ; #44200: <==commonly_known== 51478 (pos)
                    (Bc_checked_p2)

                    ; #51478: origin
                    (checked_p2)

                    ; #56228: <==closure== 44200 (pos)
                    (Pc_checked_p2)

                    ; #62537: <==closure== 31584 (pos)
                    (Pb_checked_p2)

                    ; #77479: <==commonly_known== 51478 (pos)
                    (Ba_checked_p2)

                    ; #15391: <==unclosure== 37295 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #37295: <==uncertain_firing== 17181 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #41160: <==negation-removal== 15567 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #43247: <==negation-removal== 44200 (pos)
                    (not (Pc_not_checked_p2))

                    ; #55262: <==uncertain_firing== 31703 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #55396: <==negation-removal== 51478 (pos)
                    (not (not_checked_p2))

                    ; #58801: <==negation-removal== 17181 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #67515: <==negation-removal== 31584 (pos)
                    (not (Pb_not_checked_p2))

                    ; #69552: <==negation-removal== 77479 (pos)
                    (not (Pa_not_checked_p2))

                    ; #71564: <==negation-removal== 31703 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #73765: <==unclosure== 55262 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #81324: <==negation-removal== 62537 (pos)
                    (not (Bb_not_checked_p2))

                    ; #86313: <==negation-removal== 36851 (pos)
                    (not (Ba_not_checked_p2))

                    ; #88485: <==negation-removal== 56228 (pos)
                    (not (Bc_not_checked_p2))

                    ; #90013: <==negation-removal== 30766 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11317: <==closure== 36891 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #32816: <==commonly_known== 62387 (pos)
                    (Ba_checked_p3)

                    ; #34303: <==closure== 41616 (pos)
                    (Pb_checked_p3)

                    ; #36891: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #41616: <==commonly_known== 62387 (pos)
                    (Bb_checked_p3)

                    ; #47393: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #47913: <==closure== 32816 (pos)
                    (Pa_checked_p3)

                    ; #62387: origin
                    (checked_p3)

                    ; #71666: <==closure== 47393 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #75818: <==commonly_known== 62387 (pos)
                    (Bc_checked_p3)

                    ; #89333: <==closure== 75818 (pos)
                    (Pc_checked_p3)

                    ; #11147: <==negation-removal== 62387 (pos)
                    (not (not_checked_p3))

                    ; #12339: <==negation-removal== 47913 (pos)
                    (not (Ba_not_checked_p3))

                    ; #13530: <==negation-removal== 47393 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #17004: <==unclosure== 67161 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #19705: <==negation-removal== 89333 (pos)
                    (not (Bc_not_checked_p3))

                    ; #20180: <==negation-removal== 11317 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #27201: <==negation-removal== 32816 (pos)
                    (not (Pa_not_checked_p3))

                    ; #33737: <==uncertain_firing== 36891 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #35315: <==negation-removal== 36891 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #43682: <==negation-removal== 41616 (pos)
                    (not (Pb_not_checked_p3))

                    ; #67161: <==uncertain_firing== 47393 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #71906: <==negation-removal== 34303 (pos)
                    (not (Bb_not_checked_p3))

                    ; #77315: <==negation-removal== 75818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #81479: <==unclosure== 33737 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #88568: <==negation-removal== 71666 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10516: origin
                    (checked_p4)

                    ; #25447: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #35438: <==closure== 43620 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #35535: <==commonly_known== 10516 (pos)
                    (Ba_checked_p4)

                    ; #43620: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #47703: <==commonly_known== 10516 (pos)
                    (Bc_checked_p4)

                    ; #48677: <==closure== 47703 (pos)
                    (Pc_checked_p4)

                    ; #55259: <==commonly_known== 10516 (pos)
                    (Bb_checked_p4)

                    ; #71371: <==closure== 35535 (pos)
                    (Pa_checked_p4)

                    ; #85357: <==closure== 25447 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #90297: <==closure== 55259 (pos)
                    (Pb_checked_p4)

                    ; #12137: <==uncertain_firing== 43620 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #22763: <==negation-removal== 47703 (pos)
                    (not (Pc_not_checked_p4))

                    ; #29185: <==uncertain_firing== 25447 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #39830: <==negation-removal== 25447 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #39956: <==unclosure== 12137 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #42493: <==negation-removal== 10516 (pos)
                    (not (not_checked_p4))

                    ; #47445: <==negation-removal== 85357 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #51297: <==negation-removal== 43620 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #54739: <==negation-removal== 71371 (pos)
                    (not (Ba_not_checked_p4))

                    ; #63797: <==negation-removal== 55259 (pos)
                    (not (Pb_not_checked_p4))

                    ; #66594: <==unclosure== 29185 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #73381: <==negation-removal== 35535 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77326: <==negation-removal== 48677 (pos)
                    (not (Bc_not_checked_p4))

                    ; #82932: <==negation-removal== 90297 (pos)
                    (not (Bb_not_checked_p4))

                    ; #89683: <==negation-removal== 35438 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12144: origin
                    (checked_p5)

                    ; #13275: <==commonly_known== 12144 (pos)
                    (Bb_checked_p5)

                    ; #14541: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #27148: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #46390: <==closure== 82475 (pos)
                    (Pc_checked_p5)

                    ; #66694: <==closure== 13275 (pos)
                    (Pb_checked_p5)

                    ; #71876: <==closure== 14541 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #82475: <==commonly_known== 12144 (pos)
                    (Bc_checked_p5)

                    ; #82793: <==closure== 85060 (pos)
                    (Pa_checked_p5)

                    ; #85060: <==commonly_known== 12144 (pos)
                    (Ba_checked_p5)

                    ; #94391: <==closure== 27148 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #11086: <==negation-removal== 13275 (pos)
                    (not (Pb_not_checked_p5))

                    ; #15665: <==unclosure== 18529 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18529: <==uncertain_firing== 27148 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #22031: <==negation-removal== 27148 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #28506: <==negation-removal== 82475 (pos)
                    (not (Pc_not_checked_p5))

                    ; #59663: <==negation-removal== 82793 (pos)
                    (not (Ba_not_checked_p5))

                    ; #62022: <==uncertain_firing== 14541 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #66416: <==negation-removal== 94391 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #67950: <==negation-removal== 66694 (pos)
                    (not (Bb_not_checked_p5))

                    ; #73758: <==negation-removal== 14541 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #75545: <==unclosure== 62022 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #76068: <==negation-removal== 46390 (pos)
                    (not (Bc_not_checked_p5))

                    ; #79151: <==negation-removal== 12144 (pos)
                    (not (not_checked_p5))

                    ; #89969: <==negation-removal== 71876 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #91892: <==negation-removal== 85060 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22572: <==commonly_known== 60758 (pos)
                    (Bb_checked_p6)

                    ; #23115: <==closure== 51451 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #24622: <==commonly_known== 60758 (pos)
                    (Ba_checked_p6)

                    ; #33114: <==commonly_known== 60758 (pos)
                    (Bc_checked_p6)

                    ; #50290: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #50406: <==closure== 33114 (pos)
                    (Pc_checked_p6)

                    ; #51451: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #53861: <==closure== 24622 (pos)
                    (Pa_checked_p6)

                    ; #59221: <==closure== 50290 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #60758: origin
                    (checked_p6)

                    ; #79538: <==closure== 22572 (pos)
                    (Pb_checked_p6)

                    ; #19361: <==unclosure== 86289 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #20364: <==negation-removal== 22572 (pos)
                    (not (Pb_not_checked_p6))

                    ; #27173: <==unclosure== 32433 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #32433: <==uncertain_firing== 51451 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #34640: <==negation-removal== 33114 (pos)
                    (not (Pc_not_checked_p6))

                    ; #35418: <==negation-removal== 23115 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #39582: <==negation-removal== 50406 (pos)
                    (not (Bc_not_checked_p6))

                    ; #44272: <==negation-removal== 51451 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #52020: <==negation-removal== 60758 (pos)
                    (not (not_checked_p6))

                    ; #53271: <==negation-removal== 59221 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #58629: <==negation-removal== 24622 (pos)
                    (not (Pa_not_checked_p6))

                    ; #74334: <==negation-removal== 50290 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #80980: <==negation-removal== 79538 (pos)
                    (not (Bb_not_checked_p6))

                    ; #86289: <==uncertain_firing== 50290 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #88970: <==negation-removal== 53861 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12370: <==closure== 13655 (pos)
                    (Pa_checked_p7)

                    ; #13655: <==commonly_known== 83622 (pos)
                    (Ba_checked_p7)

                    ; #14202: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #16023: <==commonly_known== 83622 (pos)
                    (Bc_checked_p7)

                    ; #23400: <==closure== 14202 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #50419: <==closure== 16023 (pos)
                    (Pc_checked_p7)

                    ; #53500: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #53896: <==closure== 53500 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #57369: <==commonly_known== 83622 (pos)
                    (Bb_checked_p7)

                    ; #80051: <==closure== 57369 (pos)
                    (Pb_checked_p7)

                    ; #83622: origin
                    (checked_p7)

                    ; #14471: <==negation-removal== 12370 (pos)
                    (not (Ba_not_checked_p7))

                    ; #22755: <==uncertain_firing== 14202 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #24650: <==unclosure== 22755 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #29898: <==negation-removal== 14202 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #38638: <==negation-removal== 57369 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43302: <==negation-removal== 16023 (pos)
                    (not (Pc_not_checked_p7))

                    ; #44175: <==negation-removal== 23400 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #49917: <==negation-removal== 53896 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #57766: <==negation-removal== 13655 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60590: <==negation-removal== 80051 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64186: <==negation-removal== 50419 (pos)
                    (not (Bc_not_checked_p7))

                    ; #75324: <==uncertain_firing== 53500 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #80136: <==negation-removal== 53500 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #88302: <==unclosure== 75324 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #89303: <==negation-removal== 83622 (pos)
                    (not (not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #28148: <==commonly_known== 44867 (pos)
                    (Bc_checked_p8)

                    ; #28320: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #37513: <==closure== 44709 (pos)
                    (Pb_checked_p8)

                    ; #42462: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #44709: <==commonly_known== 44867 (pos)
                    (Bb_checked_p8)

                    ; #44867: origin
                    (checked_p8)

                    ; #52319: <==closure== 63064 (pos)
                    (Pa_checked_p8)

                    ; #63064: <==commonly_known== 44867 (pos)
                    (Ba_checked_p8)

                    ; #80468: <==closure== 28320 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #86687: <==closure== 28148 (pos)
                    (Pc_checked_p8)

                    ; #91049: <==closure== 42462 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #15088: <==negation-removal== 52319 (pos)
                    (not (Ba_not_checked_p8))

                    ; #18846: <==unclosure== 19983 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #19809: <==negation-removal== 44867 (pos)
                    (not (not_checked_p8))

                    ; #19983: <==uncertain_firing== 28320 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33652: <==unclosure== 55952 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #42295: <==negation-removal== 86687 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49389: <==negation-removal== 42462 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #50280: <==negation-removal== 63064 (pos)
                    (not (Pa_not_checked_p8))

                    ; #55952: <==uncertain_firing== 42462 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #57518: <==negation-removal== 28148 (pos)
                    (not (Pc_not_checked_p8))

                    ; #59918: <==negation-removal== 91049 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #62136: <==negation-removal== 28320 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #65486: <==negation-removal== 37513 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89311: <==negation-removal== 44709 (pos)
                    (not (Pb_not_checked_p8))

                    ; #92163: <==negation-removal== 80468 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #20916: <==commonly_known== 76327 (pos)
                    (Bb_checked_p9)

                    ; #21482: <==commonly_known== 76327 (pos)
                    (Bc_checked_p9)

                    ; #21627: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #25924: <==closure== 55675 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #39037: <==closure== 20916 (pos)
                    (Pb_checked_p9)

                    ; #48815: <==commonly_known== 76327 (pos)
                    (Ba_checked_p9)

                    ; #50307: <==closure== 21482 (pos)
                    (Pc_checked_p9)

                    ; #55675: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #60320: <==closure== 21627 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #63244: <==closure== 48815 (pos)
                    (Pa_checked_p9)

                    ; #76327: origin
                    (checked_p9)

                    ; #14271: <==negation-removal== 39037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #15743: <==unclosure== 45341 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #18136: <==negation-removal== 76327 (pos)
                    (not (not_checked_p9))

                    ; #30499: <==negation-removal== 48815 (pos)
                    (not (Pa_not_checked_p9))

                    ; #35889: <==negation-removal== 25924 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #37633: <==negation-removal== 63244 (pos)
                    (not (Ba_not_checked_p9))

                    ; #42557: <==unclosure== 66131 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #45341: <==uncertain_firing== 21627 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #46529: <==negation-removal== 60320 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #52371: <==negation-removal== 21627 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #57945: <==negation-removal== 55675 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #66131: <==uncertain_firing== 55675 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #68478: <==negation-removal== 21482 (pos)
                    (not (Pc_not_checked_p9))

                    ; #74520: <==negation-removal== 20916 (pos)
                    (not (Pb_not_checked_p9))

                    ; #96250: <==negation-removal== 50307 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #15043: <==closure== 51252 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #24413: <==commonly_known== 72809 (pos)
                    (Bc_checked_p10)

                    ; #28003: <==closure== 61620 (pos)
                    (Pa_checked_p10)

                    ; #40529: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #48710: <==commonly_known== 72809 (pos)
                    (Bb_checked_p10)

                    ; #51252: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #60750: <==closure== 24413 (pos)
                    (Pc_checked_p10)

                    ; #61620: <==commonly_known== 72809 (pos)
                    (Ba_checked_p10)

                    ; #72809: origin
                    (checked_p10)

                    ; #77323: <==closure== 40529 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #80370: <==closure== 48710 (pos)
                    (Pb_checked_p10)

                    ; #27207: <==uncertain_firing== 40529 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #29044: <==negation-removal== 40529 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #31546: <==unclosure== 67070 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #32268: <==negation-removal== 15043 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #40769: <==negation-removal== 48710 (pos)
                    (not (Pb_not_checked_p10))

                    ; #48464: <==negation-removal== 77323 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #49665: <==negation-removal== 51252 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #63657: <==negation-removal== 61620 (pos)
                    (not (Pa_not_checked_p10))

                    ; #67070: <==uncertain_firing== 51252 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #76612: <==negation-removal== 72809 (pos)
                    (not (not_checked_p10))

                    ; #79015: <==negation-removal== 60750 (pos)
                    (not (Bc_not_checked_p10))

                    ; #81528: <==negation-removal== 80370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #81759: <==negation-removal== 28003 (pos)
                    (not (Ba_not_checked_p10))

                    ; #84826: <==negation-removal== 24413 (pos)
                    (not (Pc_not_checked_p10))

                    ; #87603: <==unclosure== 27207 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11232: <==closure== 68488 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #27856: <==closure== 53911 (pos)
                    (Pc_checked_p11)

                    ; #32681: <==closure== 77300 (pos)
                    (Pb_checked_p11)

                    ; #41431: <==closure== 86144 (pos)
                    (Pa_checked_p11)

                    ; #51265: <==closure== 86937 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #53911: <==commonly_known== 85625 (pos)
                    (Bc_checked_p11)

                    ; #68488: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #77300: <==commonly_known== 85625 (pos)
                    (Bb_checked_p11)

                    ; #85625: origin
                    (checked_p11)

                    ; #86144: <==commonly_known== 85625 (pos)
                    (Ba_checked_p11)

                    ; #86937: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #18960: <==negation-removal== 11232 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #27228: <==uncertain_firing== 68488 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #28956: <==negation-removal== 77300 (pos)
                    (not (Pb_not_checked_p11))

                    ; #33206: <==negation-removal== 86937 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #33905: <==unclosure== 69663 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #43420: <==negation-removal== 86144 (pos)
                    (not (Pa_not_checked_p11))

                    ; #44448: <==negation-removal== 53911 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44509: <==negation-removal== 32681 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50246: <==negation-removal== 85625 (pos)
                    (not (not_checked_p11))

                    ; #55731: <==negation-removal== 41431 (pos)
                    (not (Ba_not_checked_p11))

                    ; #61673: <==negation-removal== 68488 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #65388: <==negation-removal== 27856 (pos)
                    (not (Bc_not_checked_p11))

                    ; #66275: <==unclosure== 27228 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #69663: <==uncertain_firing== 86937 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #82731: <==negation-removal== 51265 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11163: <==closure== 46684 (pos)
                    (Pa_checked_p12)

                    ; #33106: <==closure== 84412 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #43204: <==commonly_known== 91927 (pos)
                    (Bc_checked_p12)

                    ; #46684: <==commonly_known== 91927 (pos)
                    (Ba_checked_p12)

                    ; #50561: <==closure== 56997 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #56962: <==closure== 67539 (pos)
                    (Pb_checked_p12)

                    ; #56997: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #66007: <==closure== 43204 (pos)
                    (Pc_checked_p12)

                    ; #67539: <==commonly_known== 91927 (pos)
                    (Bb_checked_p12)

                    ; #84412: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #91927: origin
                    (checked_p12)

                    ; #14232: <==uncertain_firing== 56997 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #18823: <==negation-removal== 11163 (pos)
                    (not (Ba_not_checked_p12))

                    ; #31912: <==uncertain_firing== 84412 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #37418: <==negation-removal== 46684 (pos)
                    (not (Pa_not_checked_p12))

                    ; #47941: <==negation-removal== 56997 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #49207: <==negation-removal== 50561 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #50513: <==negation-removal== 91927 (pos)
                    (not (not_checked_p12))

                    ; #51984: <==negation-removal== 84412 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #61518: <==negation-removal== 67539 (pos)
                    (not (Pb_not_checked_p12))

                    ; #67558: <==negation-removal== 33106 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #75385: <==unclosure== 14232 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #82936: <==negation-removal== 66007 (pos)
                    (not (Bc_not_checked_p12))

                    ; #87340: <==negation-removal== 43204 (pos)
                    (not (Pc_not_checked_p12))

                    ; #91679: <==negation-removal== 56962 (pos)
                    (not (Bb_not_checked_p12))

                    ; #98667: <==unclosure== 31912 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24733: origin
                    (checked_p1)

                    ; #27454: <==commonly_known== 24733 (pos)
                    (Bb_checked_p1)

                    ; #27980: <==closure== 75744 (pos)
                    (Pa_checked_p1)

                    ; #28458: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #50685: <==closure== 28458 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #61896: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #62751: <==closure== 61896 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #75744: <==commonly_known== 24733 (pos)
                    (Ba_checked_p1)

                    ; #76056: <==commonly_known== 24733 (pos)
                    (Bc_checked_p1)

                    ; #79904: <==closure== 27454 (pos)
                    (Pb_checked_p1)

                    ; #91103: <==closure== 76056 (pos)
                    (Pc_checked_p1)

                    ; #11174: <==unclosure== 24591 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #24186: <==negation-removal== 79904 (pos)
                    (not (Bb_not_checked_p1))

                    ; #24591: <==uncertain_firing== 28458 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #30836: <==negation-removal== 27980 (pos)
                    (not (Ba_not_checked_p1))

                    ; #34827: <==negation-removal== 61896 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #38710: <==negation-removal== 24733 (pos)
                    (not (not_checked_p1))

                    ; #46080: <==unclosure== 68811 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #54566: <==negation-removal== 27454 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57471: <==negation-removal== 91103 (pos)
                    (not (Bc_not_checked_p1))

                    ; #57563: <==negation-removal== 50685 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #66331: <==negation-removal== 75744 (pos)
                    (not (Pa_not_checked_p1))

                    ; #68811: <==uncertain_firing== 61896 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #70515: <==negation-removal== 76056 (pos)
                    (not (Pc_not_checked_p1))

                    ; #75506: <==negation-removal== 28458 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #81620: <==negation-removal== 62751 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #27744: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #31584: <==commonly_known== 51478 (pos)
                    (Bb_checked_p2)

                    ; #36851: <==closure== 77479 (pos)
                    (Pa_checked_p2)

                    ; #44200: <==commonly_known== 51478 (pos)
                    (Bc_checked_p2)

                    ; #51478: origin
                    (checked_p2)

                    ; #56228: <==closure== 44200 (pos)
                    (Pc_checked_p2)

                    ; #62537: <==closure== 31584 (pos)
                    (Pb_checked_p2)

                    ; #62607: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #77479: <==commonly_known== 51478 (pos)
                    (Ba_checked_p2)

                    ; #77557: <==closure== 62607 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #89977: <==closure== 27744 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #19327: <==uncertain_firing== 27744 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #43247: <==negation-removal== 44200 (pos)
                    (not (Pc_not_checked_p2))

                    ; #44185: <==unclosure== 19327 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #46046: <==negation-removal== 77557 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #55396: <==negation-removal== 51478 (pos)
                    (not (not_checked_p2))

                    ; #56015: <==unclosure== 71704 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #67515: <==negation-removal== 31584 (pos)
                    (not (Pb_not_checked_p2))

                    ; #69552: <==negation-removal== 77479 (pos)
                    (not (Pa_not_checked_p2))

                    ; #69559: <==negation-removal== 62607 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #71704: <==uncertain_firing== 62607 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #72856: <==negation-removal== 27744 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #81324: <==negation-removal== 62537 (pos)
                    (not (Bb_not_checked_p2))

                    ; #86313: <==negation-removal== 36851 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87233: <==negation-removal== 89977 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #88485: <==negation-removal== 56228 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #32816: <==commonly_known== 62387 (pos)
                    (Ba_checked_p3)

                    ; #34303: <==closure== 41616 (pos)
                    (Pb_checked_p3)

                    ; #40550: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #41616: <==commonly_known== 62387 (pos)
                    (Bb_checked_p3)

                    ; #47913: <==closure== 32816 (pos)
                    (Pa_checked_p3)

                    ; #54541: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #60223: <==closure== 54541 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #62387: origin
                    (checked_p3)

                    ; #74916: <==closure== 40550 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #75818: <==commonly_known== 62387 (pos)
                    (Bc_checked_p3)

                    ; #89333: <==closure== 75818 (pos)
                    (Pc_checked_p3)

                    ; #11147: <==negation-removal== 62387 (pos)
                    (not (not_checked_p3))

                    ; #12339: <==negation-removal== 47913 (pos)
                    (not (Ba_not_checked_p3))

                    ; #19705: <==negation-removal== 89333 (pos)
                    (not (Bc_not_checked_p3))

                    ; #20007: <==uncertain_firing== 54541 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #27201: <==negation-removal== 32816 (pos)
                    (not (Pa_not_checked_p3))

                    ; #37218: <==negation-removal== 54541 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #42243: <==negation-removal== 74916 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #43682: <==negation-removal== 41616 (pos)
                    (not (Pb_not_checked_p3))

                    ; #50199: <==uncertain_firing== 40550 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #56212: <==unclosure== 20007 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #71906: <==negation-removal== 34303 (pos)
                    (not (Bb_not_checked_p3))

                    ; #74548: <==negation-removal== 40550 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #77315: <==negation-removal== 75818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #79322: <==unclosure== 50199 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #85327: <==negation-removal== 60223 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10397: <==closure== 44815 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #10516: origin
                    (checked_p4)

                    ; #22982: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #35535: <==commonly_known== 10516 (pos)
                    (Ba_checked_p4)

                    ; #44815: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #47703: <==commonly_known== 10516 (pos)
                    (Bc_checked_p4)

                    ; #48677: <==closure== 47703 (pos)
                    (Pc_checked_p4)

                    ; #55259: <==commonly_known== 10516 (pos)
                    (Bb_checked_p4)

                    ; #71371: <==closure== 35535 (pos)
                    (Pa_checked_p4)

                    ; #87315: <==closure== 22982 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #90297: <==closure== 55259 (pos)
                    (Pb_checked_p4)

                    ; #17393: <==unclosure== 41919 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #22763: <==negation-removal== 47703 (pos)
                    (not (Pc_not_checked_p4))

                    ; #41919: <==uncertain_firing== 44815 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #42493: <==negation-removal== 10516 (pos)
                    (not (not_checked_p4))

                    ; #47631: <==uncertain_firing== 22982 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #54739: <==negation-removal== 71371 (pos)
                    (not (Ba_not_checked_p4))

                    ; #57608: <==negation-removal== 22982 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #63797: <==negation-removal== 55259 (pos)
                    (not (Pb_not_checked_p4))

                    ; #73381: <==negation-removal== 35535 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77232: <==negation-removal== 44815 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #77326: <==negation-removal== 48677 (pos)
                    (not (Bc_not_checked_p4))

                    ; #77594: <==unclosure== 47631 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #82932: <==negation-removal== 90297 (pos)
                    (not (Bb_not_checked_p4))

                    ; #83657: <==negation-removal== 10397 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #91590: <==negation-removal== 87315 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12144: origin
                    (checked_p5)

                    ; #13275: <==commonly_known== 12144 (pos)
                    (Bb_checked_p5)

                    ; #34802: <==closure== 60797 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #44698: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #46390: <==closure== 82475 (pos)
                    (Pc_checked_p5)

                    ; #60797: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #66694: <==closure== 13275 (pos)
                    (Pb_checked_p5)

                    ; #79363: <==closure== 44698 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #82475: <==commonly_known== 12144 (pos)
                    (Bc_checked_p5)

                    ; #82793: <==closure== 85060 (pos)
                    (Pa_checked_p5)

                    ; #85060: <==commonly_known== 12144 (pos)
                    (Ba_checked_p5)

                    ; #11086: <==negation-removal== 13275 (pos)
                    (not (Pb_not_checked_p5))

                    ; #28506: <==negation-removal== 82475 (pos)
                    (not (Pc_not_checked_p5))

                    ; #33488: <==unclosure== 59808 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #35248: <==uncertain_firing== 44698 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #42919: <==negation-removal== 34802 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #45929: <==unclosure== 35248 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #59663: <==negation-removal== 82793 (pos)
                    (not (Ba_not_checked_p5))

                    ; #59808: <==uncertain_firing== 60797 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #66339: <==negation-removal== 44698 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67950: <==negation-removal== 66694 (pos)
                    (not (Bb_not_checked_p5))

                    ; #74542: <==negation-removal== 79363 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #76068: <==negation-removal== 46390 (pos)
                    (not (Bc_not_checked_p5))

                    ; #76186: <==negation-removal== 60797 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #79151: <==negation-removal== 12144 (pos)
                    (not (not_checked_p5))

                    ; #91892: <==negation-removal== 85060 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22572: <==commonly_known== 60758 (pos)
                    (Bb_checked_p6)

                    ; #24622: <==commonly_known== 60758 (pos)
                    (Ba_checked_p6)

                    ; #33114: <==commonly_known== 60758 (pos)
                    (Bc_checked_p6)

                    ; #47950: <==closure== 51651 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #50406: <==closure== 33114 (pos)
                    (Pc_checked_p6)

                    ; #51651: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #53861: <==closure== 24622 (pos)
                    (Pa_checked_p6)

                    ; #60758: origin
                    (checked_p6)

                    ; #61802: <==closure== 77956 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #77956: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #79538: <==closure== 22572 (pos)
                    (Pb_checked_p6)

                    ; #20364: <==negation-removal== 22572 (pos)
                    (not (Pb_not_checked_p6))

                    ; #21183: <==negation-removal== 61802 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #34640: <==negation-removal== 33114 (pos)
                    (not (Pc_not_checked_p6))

                    ; #38769: <==negation-removal== 47950 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #39582: <==negation-removal== 50406 (pos)
                    (not (Bc_not_checked_p6))

                    ; #47600: <==negation-removal== 77956 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #52020: <==negation-removal== 60758 (pos)
                    (not (not_checked_p6))

                    ; #56116: <==uncertain_firing== 77956 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #58629: <==negation-removal== 24622 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60392: <==negation-removal== 51651 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #74040: <==unclosure== 89394 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #80980: <==negation-removal== 79538 (pos)
                    (not (Bb_not_checked_p6))

                    ; #88970: <==negation-removal== 53861 (pos)
                    (not (Ba_not_checked_p6))

                    ; #89394: <==uncertain_firing== 51651 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #93799: <==unclosure== 56116 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12370: <==closure== 13655 (pos)
                    (Pa_checked_p7)

                    ; #13655: <==commonly_known== 83622 (pos)
                    (Ba_checked_p7)

                    ; #16023: <==commonly_known== 83622 (pos)
                    (Bc_checked_p7)

                    ; #36652: <==closure== 85440 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #50419: <==closure== 16023 (pos)
                    (Pc_checked_p7)

                    ; #57369: <==commonly_known== 83622 (pos)
                    (Bb_checked_p7)

                    ; #70054: <==closure== 77667 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #77667: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #80051: <==closure== 57369 (pos)
                    (Pb_checked_p7)

                    ; #83622: origin
                    (checked_p7)

                    ; #85440: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #14471: <==negation-removal== 12370 (pos)
                    (not (Ba_not_checked_p7))

                    ; #35411: <==uncertain_firing== 85440 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #37515: <==uncertain_firing== 77667 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #38638: <==negation-removal== 57369 (pos)
                    (not (Pb_not_checked_p7))

                    ; #41594: <==negation-removal== 36652 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #43302: <==negation-removal== 16023 (pos)
                    (not (Pc_not_checked_p7))

                    ; #47874: <==negation-removal== 85440 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #56177: <==unclosure== 37515 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #57424: <==negation-removal== 77667 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #57766: <==negation-removal== 13655 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60590: <==negation-removal== 80051 (pos)
                    (not (Bb_not_checked_p7))

                    ; #64186: <==negation-removal== 50419 (pos)
                    (not (Bc_not_checked_p7))

                    ; #65732: <==unclosure== 35411 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #80104: <==negation-removal== 70054 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #89303: <==negation-removal== 83622 (pos)
                    (not (not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #19933: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #28148: <==commonly_known== 44867 (pos)
                    (Bc_checked_p8)

                    ; #37513: <==closure== 44709 (pos)
                    (Pb_checked_p8)

                    ; #43160: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #44709: <==commonly_known== 44867 (pos)
                    (Bb_checked_p8)

                    ; #44867: origin
                    (checked_p8)

                    ; #52319: <==closure== 63064 (pos)
                    (Pa_checked_p8)

                    ; #63064: <==commonly_known== 44867 (pos)
                    (Ba_checked_p8)

                    ; #72025: <==closure== 19933 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #77292: <==closure== 43160 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #86687: <==closure== 28148 (pos)
                    (Pc_checked_p8)

                    ; #12335: <==uncertain_firing== 43160 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #15088: <==negation-removal== 52319 (pos)
                    (not (Ba_not_checked_p8))

                    ; #19809: <==negation-removal== 44867 (pos)
                    (not (not_checked_p8))

                    ; #24708: <==negation-removal== 77292 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #29424: <==negation-removal== 43160 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #42295: <==negation-removal== 86687 (pos)
                    (not (Bc_not_checked_p8))

                    ; #50280: <==negation-removal== 63064 (pos)
                    (not (Pa_not_checked_p8))

                    ; #56760: <==unclosure== 12335 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #57518: <==negation-removal== 28148 (pos)
                    (not (Pc_not_checked_p8))

                    ; #65101: <==negation-removal== 19933 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #65486: <==negation-removal== 37513 (pos)
                    (not (Bb_not_checked_p8))

                    ; #67918: <==unclosure== 73999 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #73999: <==uncertain_firing== 19933 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #85613: <==negation-removal== 72025 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #89311: <==negation-removal== 44709 (pos)
                    (not (Pb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #20916: <==commonly_known== 76327 (pos)
                    (Bb_checked_p9)

                    ; #21482: <==commonly_known== 76327 (pos)
                    (Bc_checked_p9)

                    ; #39037: <==closure== 20916 (pos)
                    (Pb_checked_p9)

                    ; #48815: <==commonly_known== 76327 (pos)
                    (Ba_checked_p9)

                    ; #50307: <==closure== 21482 (pos)
                    (Pc_checked_p9)

                    ; #63244: <==closure== 48815 (pos)
                    (Pa_checked_p9)

                    ; #74195: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #76327: origin
                    (checked_p9)

                    ; #77212: <==closure== 80978 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #80978: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #82037: <==closure== 74195 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #14271: <==negation-removal== 39037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #18136: <==negation-removal== 76327 (pos)
                    (not (not_checked_p9))

                    ; #18428: <==unclosure== 46874 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #21461: <==negation-removal== 82037 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #30499: <==negation-removal== 48815 (pos)
                    (not (Pa_not_checked_p9))

                    ; #34274: <==negation-removal== 77212 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #37633: <==negation-removal== 63244 (pos)
                    (not (Ba_not_checked_p9))

                    ; #44543: <==negation-removal== 74195 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #46874: <==uncertain_firing== 74195 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #50557: <==unclosure== 68943 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #51270: <==negation-removal== 80978 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #68478: <==negation-removal== 21482 (pos)
                    (not (Pc_not_checked_p9))

                    ; #68943: <==uncertain_firing== 80978 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #74520: <==negation-removal== 20916 (pos)
                    (not (Pb_not_checked_p9))

                    ; #96250: <==negation-removal== 50307 (pos)
                    (not (Bc_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #24413: <==commonly_known== 72809 (pos)
                    (Bc_checked_p10)

                    ; #28003: <==closure== 61620 (pos)
                    (Pa_checked_p10)

                    ; #37552: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #39360: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #48710: <==commonly_known== 72809 (pos)
                    (Bb_checked_p10)

                    ; #60750: <==closure== 24413 (pos)
                    (Pc_checked_p10)

                    ; #61620: <==commonly_known== 72809 (pos)
                    (Ba_checked_p10)

                    ; #63538: <==closure== 39360 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #67888: <==closure== 37552 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #72809: origin
                    (checked_p10)

                    ; #80370: <==closure== 48710 (pos)
                    (Pb_checked_p10)

                    ; #14138: <==negation-removal== 67888 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #32078: <==negation-removal== 37552 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #32355: <==uncertain_firing== 37552 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #40769: <==negation-removal== 48710 (pos)
                    (not (Pb_not_checked_p10))

                    ; #57845: <==unclosure== 85500 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #61820: <==unclosure== 32355 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #63657: <==negation-removal== 61620 (pos)
                    (not (Pa_not_checked_p10))

                    ; #74616: <==negation-removal== 39360 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #74836: <==negation-removal== 63538 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #76612: <==negation-removal== 72809 (pos)
                    (not (not_checked_p10))

                    ; #79015: <==negation-removal== 60750 (pos)
                    (not (Bc_not_checked_p10))

                    ; #81528: <==negation-removal== 80370 (pos)
                    (not (Bb_not_checked_p10))

                    ; #81759: <==negation-removal== 28003 (pos)
                    (not (Ba_not_checked_p10))

                    ; #84826: <==negation-removal== 24413 (pos)
                    (not (Pc_not_checked_p10))

                    ; #85500: <==uncertain_firing== 39360 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #10602: <==closure== 50899 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #27856: <==closure== 53911 (pos)
                    (Pc_checked_p11)

                    ; #32681: <==closure== 77300 (pos)
                    (Pb_checked_p11)

                    ; #41431: <==closure== 86144 (pos)
                    (Pa_checked_p11)

                    ; #42682: <==closure== 46961 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #46961: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #50899: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #53911: <==commonly_known== 85625 (pos)
                    (Bc_checked_p11)

                    ; #77300: <==commonly_known== 85625 (pos)
                    (Bb_checked_p11)

                    ; #85625: origin
                    (checked_p11)

                    ; #86144: <==commonly_known== 85625 (pos)
                    (Ba_checked_p11)

                    ; #10848: <==negation-removal== 46961 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #14550: <==negation-removal== 10602 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #28956: <==negation-removal== 77300 (pos)
                    (not (Pb_not_checked_p11))

                    ; #30355: <==uncertain_firing== 50899 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #36142: <==negation-removal== 50899 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #43420: <==negation-removal== 86144 (pos)
                    (not (Pa_not_checked_p11))

                    ; #44448: <==negation-removal== 53911 (pos)
                    (not (Pc_not_checked_p11))

                    ; #44509: <==negation-removal== 32681 (pos)
                    (not (Bb_not_checked_p11))

                    ; #50246: <==negation-removal== 85625 (pos)
                    (not (not_checked_p11))

                    ; #51369: <==negation-removal== 42682 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #55731: <==negation-removal== 41431 (pos)
                    (not (Ba_not_checked_p11))

                    ; #65388: <==negation-removal== 27856 (pos)
                    (not (Bc_not_checked_p11))

                    ; #68365: <==unclosure== 70799 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #70799: <==uncertain_firing== 46961 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #97728: <==unclosure== 30355 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #11163: <==closure== 46684 (pos)
                    (Pa_checked_p12)

                    ; #21602: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #43204: <==commonly_known== 91927 (pos)
                    (Bc_checked_p12)

                    ; #46684: <==commonly_known== 91927 (pos)
                    (Ba_checked_p12)

                    ; #47918: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #52517: <==closure== 21602 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #56962: <==closure== 67539 (pos)
                    (Pb_checked_p12)

                    ; #66007: <==closure== 43204 (pos)
                    (Pc_checked_p12)

                    ; #67539: <==commonly_known== 91927 (pos)
                    (Bb_checked_p12)

                    ; #81452: <==closure== 47918 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #91927: origin
                    (checked_p12)

                    ; #18823: <==negation-removal== 11163 (pos)
                    (not (Ba_not_checked_p12))

                    ; #23934: <==negation-removal== 47918 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #25030: <==uncertain_firing== 21602 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #27718: <==unclosure== 25030 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #37418: <==negation-removal== 46684 (pos)
                    (not (Pa_not_checked_p12))

                    ; #50513: <==negation-removal== 91927 (pos)
                    (not (not_checked_p12))

                    ; #52572: <==unclosure== 81955 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #61460: <==negation-removal== 52517 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #61518: <==negation-removal== 67539 (pos)
                    (not (Pb_not_checked_p12))

                    ; #64786: <==negation-removal== 81452 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #81955: <==uncertain_firing== 47918 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #81978: <==negation-removal== 21602 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #82936: <==negation-removal== 66007 (pos)
                    (not (Bc_not_checked_p12))

                    ; #87340: <==negation-removal== 43204 (pos)
                    (not (Pc_not_checked_p12))

                    ; #91679: <==negation-removal== 56962 (pos)
                    (not (Bb_not_checked_p12))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12635: <==closure== 37885 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #24733: origin
                    (checked_p1)

                    ; #27454: <==commonly_known== 24733 (pos)
                    (Bb_checked_p1)

                    ; #27980: <==closure== 75744 (pos)
                    (Pa_checked_p1)

                    ; #37885: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #52298: <==closure== 54927 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #54927: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #75744: <==commonly_known== 24733 (pos)
                    (Ba_checked_p1)

                    ; #76056: <==commonly_known== 24733 (pos)
                    (Bc_checked_p1)

                    ; #79904: <==closure== 27454 (pos)
                    (Pb_checked_p1)

                    ; #91103: <==closure== 76056 (pos)
                    (Pc_checked_p1)

                    ; #24186: <==negation-removal== 79904 (pos)
                    (not (Bb_not_checked_p1))

                    ; #25357: <==uncertain_firing== 37885 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #30836: <==negation-removal== 27980 (pos)
                    (not (Ba_not_checked_p1))

                    ; #38710: <==negation-removal== 24733 (pos)
                    (not (not_checked_p1))

                    ; #39609: <==negation-removal== 37885 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #54566: <==negation-removal== 27454 (pos)
                    (not (Pb_not_checked_p1))

                    ; #55202: <==negation-removal== 52298 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #57471: <==negation-removal== 91103 (pos)
                    (not (Bc_not_checked_p1))

                    ; #58284: <==uncertain_firing== 54927 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #66331: <==negation-removal== 75744 (pos)
                    (not (Pa_not_checked_p1))

                    ; #70515: <==negation-removal== 76056 (pos)
                    (not (Pc_not_checked_p1))

                    ; #76862: <==unclosure== 58284 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #80507: <==unclosure== 25357 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #87246: <==negation-removal== 12635 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #87438: <==negation-removal== 54927 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #18978: <==closure== 73546 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #23043: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #31584: <==commonly_known== 51478 (pos)
                    (Bb_checked_p2)

                    ; #36851: <==closure== 77479 (pos)
                    (Pa_checked_p2)

                    ; #44200: <==commonly_known== 51478 (pos)
                    (Bc_checked_p2)

                    ; #51478: origin
                    (checked_p2)

                    ; #56228: <==closure== 44200 (pos)
                    (Pc_checked_p2)

                    ; #62537: <==closure== 31584 (pos)
                    (Pb_checked_p2)

                    ; #70326: <==closure== 23043 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #73546: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #77479: <==commonly_known== 51478 (pos)
                    (Ba_checked_p2)

                    ; #16592: <==negation-removal== 73546 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #34287: <==uncertain_firing== 23043 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #36365: <==unclosure== 34287 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #39352: <==uncertain_firing== 73546 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #43247: <==negation-removal== 44200 (pos)
                    (not (Pc_not_checked_p2))

                    ; #50153: <==negation-removal== 23043 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #52738: <==negation-removal== 18978 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #54540: <==unclosure== 39352 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #55396: <==negation-removal== 51478 (pos)
                    (not (not_checked_p2))

                    ; #67515: <==negation-removal== 31584 (pos)
                    (not (Pb_not_checked_p2))

                    ; #69129: <==negation-removal== 70326 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #69552: <==negation-removal== 77479 (pos)
                    (not (Pa_not_checked_p2))

                    ; #81324: <==negation-removal== 62537 (pos)
                    (not (Bb_not_checked_p2))

                    ; #86313: <==negation-removal== 36851 (pos)
                    (not (Ba_not_checked_p2))

                    ; #88485: <==negation-removal== 56228 (pos)
                    (not (Bc_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #32816: <==commonly_known== 62387 (pos)
                    (Ba_checked_p3)

                    ; #34303: <==closure== 41616 (pos)
                    (Pb_checked_p3)

                    ; #35966: <==closure== 77810 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #36847: <==closure== 57825 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #41616: <==commonly_known== 62387 (pos)
                    (Bb_checked_p3)

                    ; #47913: <==closure== 32816 (pos)
                    (Pa_checked_p3)

                    ; #57825: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #62387: origin
                    (checked_p3)

                    ; #75818: <==commonly_known== 62387 (pos)
                    (Bc_checked_p3)

                    ; #77810: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #89333: <==closure== 75818 (pos)
                    (Pc_checked_p3)

                    ; #11147: <==negation-removal== 62387 (pos)
                    (not (not_checked_p3))

                    ; #12339: <==negation-removal== 47913 (pos)
                    (not (Ba_not_checked_p3))

                    ; #12360: <==negation-removal== 57825 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #19705: <==negation-removal== 89333 (pos)
                    (not (Bc_not_checked_p3))

                    ; #24450: <==negation-removal== 36847 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #27201: <==negation-removal== 32816 (pos)
                    (not (Pa_not_checked_p3))

                    ; #43075: <==uncertain_firing== 57825 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #43682: <==negation-removal== 41616 (pos)
                    (not (Pb_not_checked_p3))

                    ; #51998: <==negation-removal== 77810 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #52309: <==uncertain_firing== 77810 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #56514: <==unclosure== 43075 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #71906: <==negation-removal== 34303 (pos)
                    (not (Bb_not_checked_p3))

                    ; #77315: <==negation-removal== 75818 (pos)
                    (not (Pc_not_checked_p3))

                    ; #83085: <==unclosure== 52309 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #86355: <==negation-removal== 35966 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #10516: origin
                    (checked_p4)

                    ; #14205: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #31158: <==closure== 14205 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #34132: <==closure== 53656 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #35535: <==commonly_known== 10516 (pos)
                    (Ba_checked_p4)

                    ; #47703: <==commonly_known== 10516 (pos)
                    (Bc_checked_p4)

                    ; #48677: <==closure== 47703 (pos)
                    (Pc_checked_p4)

                    ; #53656: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #55259: <==commonly_known== 10516 (pos)
                    (Bb_checked_p4)

                    ; #71371: <==closure== 35535 (pos)
                    (Pa_checked_p4)

                    ; #90297: <==closure== 55259 (pos)
                    (Pb_checked_p4)

                    ; #11830: <==unclosure== 42266 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #22763: <==negation-removal== 47703 (pos)
                    (not (Pc_not_checked_p4))

                    ; #23590: <==uncertain_firing== 14205 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #34733: <==negation-removal== 53656 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #42266: <==uncertain_firing== 53656 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #42493: <==negation-removal== 10516 (pos)
                    (not (not_checked_p4))

                    ; #53168: <==negation-removal== 31158 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #54739: <==negation-removal== 71371 (pos)
                    (not (Ba_not_checked_p4))

                    ; #62539: <==negation-removal== 14205 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #63797: <==negation-removal== 55259 (pos)
                    (not (Pb_not_checked_p4))

                    ; #73381: <==negation-removal== 35535 (pos)
                    (not (Pa_not_checked_p4))

                    ; #77326: <==negation-removal== 48677 (pos)
                    (not (Bc_not_checked_p4))

                    ; #78547: <==unclosure== 23590 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #82932: <==negation-removal== 90297 (pos)
                    (not (Bb_not_checked_p4))

                    ; #92000: <==negation-removal== 34132 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12144: origin
                    (checked_p5)

                    ; #13275: <==commonly_known== 12144 (pos)
                    (Bb_checked_p5)

                    ; #22982: <==closure== 74549 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #40340: <==closure== 80263 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #46390: <==closure== 82475 (pos)
                    (Pc_checked_p5)

                    ; #66694: <==closure== 13275 (pos)
                    (Pb_checked_p5)

                    ; #74549: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #80263: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #82475: <==commonly_known== 12144 (pos)
                    (Bc_checked_p5)

                    ; #82793: <==closure== 85060 (pos)
                    (Pa_checked_p5)

                    ; #85060: <==commonly_known== 12144 (pos)
                    (Ba_checked_p5)

                    ; #11086: <==negation-removal== 13275 (pos)
                    (not (Pb_not_checked_p5))

                    ; #17106: <==uncertain_firing== 80263 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #18407: <==negation-removal== 80263 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #23421: <==negation-removal== 22982 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #27356: <==unclosure== 79173 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #28506: <==negation-removal== 82475 (pos)
                    (not (Pc_not_checked_p5))

                    ; #34424: <==unclosure== 17106 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #34567: <==negation-removal== 74549 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #59663: <==negation-removal== 82793 (pos)
                    (not (Ba_not_checked_p5))

                    ; #61192: <==negation-removal== 40340 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #67950: <==negation-removal== 66694 (pos)
                    (not (Bb_not_checked_p5))

                    ; #76068: <==negation-removal== 46390 (pos)
                    (not (Bc_not_checked_p5))

                    ; #79151: <==negation-removal== 12144 (pos)
                    (not (not_checked_p5))

                    ; #79173: <==uncertain_firing== 74549 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #91892: <==negation-removal== 85060 (pos)
                    (not (Pa_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21595: <==closure== 31232 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #22572: <==commonly_known== 60758 (pos)
                    (Bb_checked_p6)

                    ; #24622: <==commonly_known== 60758 (pos)
                    (Ba_checked_p6)

                    ; #31232: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #33114: <==commonly_known== 60758 (pos)
                    (Bc_checked_p6)

                    ; #50406: <==closure== 33114 (pos)
                    (Pc_checked_p6)

                    ; #53861: <==closure== 24622 (pos)
                    (Pa_checked_p6)

                    ; #60758: origin
                    (checked_p6)

                    ; #68971: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #79538: <==closure== 22572 (pos)
                    (Pb_checked_p6)

                    ; #86111: <==closure== 68971 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #20364: <==negation-removal== 22572 (pos)
                    (not (Pb_not_checked_p6))

                    ; #34640: <==negation-removal== 33114 (pos)
                    (not (Pc_not_checked_p6))

                    ; #38919: <==negation-removal== 31232 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #39582: <==negation-removal== 50406 (pos)
                    (not (Bc_not_checked_p6))

                    ; #39620: <==negation-removal== 21595 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #41770: <==uncertain_firing== 31232 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #43286: <==uncertain_firing== 68971 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #45042: <==unclosure== 41770 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #52020: <==negation-removal== 60758 (pos)
                    (not (not_checked_p6))

                    ; #58629: <==negation-removal== 24622 (pos)
                    (not (Pa_not_checked_p6))

                    ; #59600: <==negation-removal== 86111 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #80980: <==negation-removal== 79538 (pos)
                    (not (Bb_not_checked_p6))

                    ; #85473: <==unclosure== 43286 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #86968: <==negation-removal== 68971 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #88970: <==negation-removal== 53861 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #12370: <==closure== 13655 (pos)
                    (Pa_checked_p7)

                    ; #13655: <==commonly_known== 83622 (pos)
                    (Ba_checked_p7)

                    ; #16023: <==commonly_known== 83622 (pos)
                    (Bc_checked_p7)

                    ; #18755: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #50419: <==closure== 16023 (pos)
                    (Pc_checked_p7)

                    ; #57369: <==commonly_known== 83622 (pos)
                    (Bb_checked_p7)

                    ; #63504: <==closure== 86386 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #80051: <==closure== 57369 (pos)
                    (Pb_checked_p7)

                    ; #83622: origin
                    (checked_p7)

                    ; #83756: <==closure== 18755 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #86386: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #14471: <==negation-removal== 12370 (pos)
                    (not (Ba_not_checked_p7))

                    ; #18536: <==unclosure== 25961 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #19614: <==negation-removal== 63504 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #25961: <==uncertain_firing== 18755 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #26135: <==unclosure== 47988 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #38329: <==negation-removal== 18755 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #38638: <==negation-removal== 57369 (pos)
                    (not (Pb_not_checked_p7))

                    ; #43302: <==negation-removal== 16023 (pos)
                    (not (Pc_not_checked_p7))

                    ; #47988: <==uncertain_firing== 86386 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #57766: <==negation-removal== 13655 (pos)
                    (not (Pa_not_checked_p7))

                    ; #60590: <==negation-removal== 80051 (pos)
                    (not (Bb_not_checked_p7))

                    ; #61658: <==negation-removal== 86386 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #64186: <==negation-removal== 50419 (pos)
                    (not (Bc_not_checked_p7))

                    ; #84343: <==negation-removal== 83756 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #89303: <==negation-removal== 83622 (pos)
                    (not (not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #14468: <==closure== 30244 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #28148: <==commonly_known== 44867 (pos)
                    (Bc_checked_p8)

                    ; #30244: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #37513: <==closure== 44709 (pos)
                    (Pb_checked_p8)

                    ; #44709: <==commonly_known== 44867 (pos)
                    (Bb_checked_p8)

                    ; #44867: origin
                    (checked_p8)

                    ; #52319: <==closure== 63064 (pos)
                    (Pa_checked_p8)

                    ; #57221: <==closure== 73731 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #63064: <==commonly_known== 44867 (pos)
                    (Ba_checked_p8)

                    ; #73731: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #86687: <==closure== 28148 (pos)
                    (Pc_checked_p8)

                    ; #15088: <==negation-removal== 52319 (pos)
                    (not (Ba_not_checked_p8))

                    ; #19809: <==negation-removal== 44867 (pos)
                    (not (not_checked_p8))

                    ; #30478: <==negation-removal== 57221 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #36484: <==uncertain_firing== 73731 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #41046: <==unclosure== 83100 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #42295: <==negation-removal== 86687 (pos)
                    (not (Bc_not_checked_p8))

                    ; #49497: <==negation-removal== 14468 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #50280: <==negation-removal== 63064 (pos)
                    (not (Pa_not_checked_p8))

                    ; #57518: <==negation-removal== 28148 (pos)
                    (not (Pc_not_checked_p8))

                    ; #65486: <==negation-removal== 37513 (pos)
                    (not (Bb_not_checked_p8))

                    ; #69101: <==negation-removal== 30244 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #69827: <==negation-removal== 73731 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #83100: <==uncertain_firing== 30244 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #89311: <==negation-removal== 44709 (pos)
                    (not (Pb_not_checked_p8))

                    ; #92118: <==unclosure== 36484 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #20916: <==commonly_known== 76327 (pos)
                    (Bb_checked_p9)

                    ; #21482: <==commonly_known== 76327 (pos)
                    (Bc_checked_p9)

                    ; #24902: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #39037: <==closure== 20916 (pos)
                    (Pb_checked_p9)

                    ; #45075: <==closure== 24902 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #48815: <==commonly_known== 76327 (pos)
                    (Ba_checked_p9)

                    ; #50307: <==closure== 21482 (pos)
                    (Pc_checked_p9)

                    ; #63244: <==closure== 48815 (pos)
                    (Pa_checked_p9)

                    ; #65923: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #76327: origin
                    (checked_p9)

                    ; #87439: <==closure== 65923 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #14271: <==negation-removal== 39037 (pos)
                    (not (Bb_not_checked_p9))

                    ; #18136: <==negation-removal== 76327 (pos)
                    (not (not_checked_p9))

                    ; #20973: <==negation-removal== 87439 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #24471: <==negation-removal== 45075 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #28176: <==negation-removal== 24902 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #30499: <==negation-removal== 48815 (pos)
                    (not (Pa_not_checked_p9))

                    ; #37633: <==negation-removal== 63244 (pos)
                    (not (Ba_not_checked_p9))

                    ; #38256: <==negation-removal== 65923 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #52024: <==uncertain_firing== 24902 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #61119: <==uncertain_firing== 65923 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #68478: <==negation-removal== 21482 (pos)
                    (not (Pc_not_checked_p9))

                    ; #70152: <==unclosure== 61119 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #74520: <==negation-removal== 20916 (pos)
                    (not (Pb_not_checked_p9))

                    ; #77429: <==unclosure== 52024 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #96250: <==negation-removal== 50307 (pos)
                    (not (Bc_not_checked_p9))))

)