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

    (:action comm_p10_a_s
        :precondition (and (Ba_survivorat_s_p10)
                           (Pa_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #10288: <==closure== 86553 (pos)
                    (Pa_survivorat_s_p10)

                    ; #18008: origin
                    (Bb_survivorat_s_p10)

                    ; #37280: <==closure== 59752 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53113: <==closure== 18008 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59752: origin
                    (Bc_survivorat_s_p10)

                    ; #86553: origin
                    (Ba_survivorat_s_p10)

                    ; #28077: <==negation-removal== 53113 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #28329: <==negation-removal== 37280 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #38745: <==negation-removal== 10288 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #45733: <==negation-removal== 18008 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54554: <==negation-removal== 86553 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #79151: <==negation-removal== 59752 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Pb_survivorat_s_p10)
                           (at_b_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #10288: <==closure== 86553 (pos)
                    (Pa_survivorat_s_p10)

                    ; #18008: origin
                    (Bb_survivorat_s_p10)

                    ; #37280: <==closure== 59752 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53113: <==closure== 18008 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59752: origin
                    (Bc_survivorat_s_p10)

                    ; #86553: origin
                    (Ba_survivorat_s_p10)

                    ; #28077: <==negation-removal== 53113 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #28329: <==negation-removal== 37280 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #38745: <==negation-removal== 10288 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #45733: <==negation-removal== 18008 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54554: <==negation-removal== 86553 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #79151: <==negation-removal== 59752 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (at_c_p10)
                           (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10))
        :effect (and
                    ; #10288: <==closure== 86553 (pos)
                    (Pa_survivorat_s_p10)

                    ; #18008: origin
                    (Bb_survivorat_s_p10)

                    ; #37280: <==closure== 59752 (pos)
                    (Pc_survivorat_s_p10)

                    ; #53113: <==closure== 18008 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59752: origin
                    (Bc_survivorat_s_p10)

                    ; #86553: origin
                    (Ba_survivorat_s_p10)

                    ; #28077: <==negation-removal== 53113 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #28329: <==negation-removal== 37280 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #38745: <==negation-removal== 10288 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #45733: <==negation-removal== 18008 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #54554: <==negation-removal== 86553 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #79151: <==negation-removal== 59752 (pos)
                    (not (Pc_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #25125: origin
                    (Bc_survivorat_s_p11)

                    ; #27864: <==closure== 61174 (pos)
                    (Pb_survivorat_s_p11)

                    ; #44395: <==closure== 25125 (pos)
                    (Pc_survivorat_s_p11)

                    ; #61174: origin
                    (Bb_survivorat_s_p11)

                    ; #66233: origin
                    (Ba_survivorat_s_p11)

                    ; #81459: <==closure== 66233 (pos)
                    (Pa_survivorat_s_p11)

                    ; #12729: <==negation-removal== 44395 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #21664: <==negation-removal== 81459 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #28441: <==negation-removal== 61174 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #29611: <==negation-removal== 66233 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #63852: <==negation-removal== 27864 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #81545: <==negation-removal== 25125 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Pb_survivorat_s_p11)
                           (Bb_survivorat_s_p11))
        :effect (and
                    ; #25125: origin
                    (Bc_survivorat_s_p11)

                    ; #27864: <==closure== 61174 (pos)
                    (Pb_survivorat_s_p11)

                    ; #44395: <==closure== 25125 (pos)
                    (Pc_survivorat_s_p11)

                    ; #61174: origin
                    (Bb_survivorat_s_p11)

                    ; #66233: origin
                    (Ba_survivorat_s_p11)

                    ; #81459: <==closure== 66233 (pos)
                    (Pa_survivorat_s_p11)

                    ; #12729: <==negation-removal== 44395 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #21664: <==negation-removal== 81459 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #28441: <==negation-removal== 61174 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #29611: <==negation-removal== 66233 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #63852: <==negation-removal== 27864 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #81545: <==negation-removal== 25125 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #25125: origin
                    (Bc_survivorat_s_p11)

                    ; #27864: <==closure== 61174 (pos)
                    (Pb_survivorat_s_p11)

                    ; #44395: <==closure== 25125 (pos)
                    (Pc_survivorat_s_p11)

                    ; #61174: origin
                    (Bb_survivorat_s_p11)

                    ; #66233: origin
                    (Ba_survivorat_s_p11)

                    ; #81459: <==closure== 66233 (pos)
                    (Pa_survivorat_s_p11)

                    ; #12729: <==negation-removal== 44395 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #21664: <==negation-removal== 81459 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #28441: <==negation-removal== 61174 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #29611: <==negation-removal== 66233 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #63852: <==negation-removal== 27864 (pos)
                    (not (Bb_not_survivorat_s_p11))

                    ; #81545: <==negation-removal== 25125 (pos)
                    (not (Pc_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #70045: origin
                    (Bb_survivorat_s_p12)

                    ; #83961: <==closure== 90774 (pos)
                    (Pc_survivorat_s_p12)

                    ; #86414: origin
                    (Ba_survivorat_s_p12)

                    ; #90348: <==closure== 70045 (pos)
                    (Pb_survivorat_s_p12)

                    ; #90774: origin
                    (Bc_survivorat_s_p12)

                    ; #91487: <==closure== 86414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #22019: <==negation-removal== 91487 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #30653: <==negation-removal== 83961 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #67560: <==negation-removal== 86414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #76943: <==negation-removal== 90774 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81176: <==negation-removal== 70045 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #84754: <==negation-removal== 90348 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Pb_survivorat_s_p12)
                           (at_b_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #70045: origin
                    (Bb_survivorat_s_p12)

                    ; #83961: <==closure== 90774 (pos)
                    (Pc_survivorat_s_p12)

                    ; #86414: origin
                    (Ba_survivorat_s_p12)

                    ; #90348: <==closure== 70045 (pos)
                    (Pb_survivorat_s_p12)

                    ; #90774: origin
                    (Bc_survivorat_s_p12)

                    ; #91487: <==closure== 86414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #22019: <==negation-removal== 91487 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #30653: <==negation-removal== 83961 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #67560: <==negation-removal== 86414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #76943: <==negation-removal== 90774 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81176: <==negation-removal== 70045 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #84754: <==negation-removal== 90348 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #70045: origin
                    (Bb_survivorat_s_p12)

                    ; #83961: <==closure== 90774 (pos)
                    (Pc_survivorat_s_p12)

                    ; #86414: origin
                    (Ba_survivorat_s_p12)

                    ; #90348: <==closure== 70045 (pos)
                    (Pb_survivorat_s_p12)

                    ; #90774: origin
                    (Bc_survivorat_s_p12)

                    ; #91487: <==closure== 86414 (pos)
                    (Pa_survivorat_s_p12)

                    ; #22019: <==negation-removal== 91487 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #30653: <==negation-removal== 83961 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #67560: <==negation-removal== 86414 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #76943: <==negation-removal== 90774 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #81176: <==negation-removal== 70045 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #84754: <==negation-removal== 90348 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1)
                           (at_a_p1))
        :effect (and
                    ; #29698: origin
                    (Bc_survivorat_s_p1)

                    ; #35044: origin
                    (Ba_survivorat_s_p1)

                    ; #42178: <==closure== 29698 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75407: <==closure== 79145 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79145: origin
                    (Bb_survivorat_s_p1)

                    ; #83694: <==closure== 35044 (pos)
                    (Pa_survivorat_s_p1)

                    ; #10102: <==negation-removal== 42178 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #27010: <==negation-removal== 75407 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #42302: <==negation-removal== 35044 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #49601: <==negation-removal== 83694 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #68534: <==negation-removal== 29698 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #88262: <==negation-removal== 79145 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #29698: origin
                    (Bc_survivorat_s_p1)

                    ; #35044: origin
                    (Ba_survivorat_s_p1)

                    ; #42178: <==closure== 29698 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75407: <==closure== 79145 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79145: origin
                    (Bb_survivorat_s_p1)

                    ; #83694: <==closure== 35044 (pos)
                    (Pa_survivorat_s_p1)

                    ; #10102: <==negation-removal== 42178 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #27010: <==negation-removal== 75407 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #42302: <==negation-removal== 35044 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #49601: <==negation-removal== 83694 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #68534: <==negation-removal== 29698 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #88262: <==negation-removal== 79145 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (at_c_p1)
                           (Bc_survivorat_s_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #29698: origin
                    (Bc_survivorat_s_p1)

                    ; #35044: origin
                    (Ba_survivorat_s_p1)

                    ; #42178: <==closure== 29698 (pos)
                    (Pc_survivorat_s_p1)

                    ; #75407: <==closure== 79145 (pos)
                    (Pb_survivorat_s_p1)

                    ; #79145: origin
                    (Bb_survivorat_s_p1)

                    ; #83694: <==closure== 35044 (pos)
                    (Pa_survivorat_s_p1)

                    ; #10102: <==negation-removal== 42178 (pos)
                    (not (Bc_not_survivorat_s_p1))

                    ; #27010: <==negation-removal== 75407 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #42302: <==negation-removal== 35044 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #49601: <==negation-removal== 83694 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #68534: <==negation-removal== 29698 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #88262: <==negation-removal== 79145 (pos)
                    (not (Pb_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #20528: origin
                    (Bb_survivorat_s_p2)

                    ; #34395: <==closure== 20528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #37534: origin
                    (Bc_survivorat_s_p2)

                    ; #71457: <==closure== 92126 (pos)
                    (Pa_survivorat_s_p2)

                    ; #87050: <==closure== 37534 (pos)
                    (Pc_survivorat_s_p2)

                    ; #92126: origin
                    (Ba_survivorat_s_p2)

                    ; #12541: <==negation-removal== 92126 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #12772: <==negation-removal== 34395 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39320: <==negation-removal== 20528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #47957: <==negation-removal== 37534 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #57089: <==negation-removal== 71457 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #76174: <==negation-removal== 87050 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Bb_survivorat_s_p2)
                           (Pb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #20528: origin
                    (Bb_survivorat_s_p2)

                    ; #34395: <==closure== 20528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #37534: origin
                    (Bc_survivorat_s_p2)

                    ; #71457: <==closure== 92126 (pos)
                    (Pa_survivorat_s_p2)

                    ; #87050: <==closure== 37534 (pos)
                    (Pc_survivorat_s_p2)

                    ; #92126: origin
                    (Ba_survivorat_s_p2)

                    ; #12541: <==negation-removal== 92126 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #12772: <==negation-removal== 34395 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39320: <==negation-removal== 20528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #47957: <==negation-removal== 37534 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #57089: <==negation-removal== 71457 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #76174: <==negation-removal== 87050 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (at_c_p2)
                           (Pc_survivorat_s_p2)
                           (Bc_survivorat_s_p2))
        :effect (and
                    ; #20528: origin
                    (Bb_survivorat_s_p2)

                    ; #34395: <==closure== 20528 (pos)
                    (Pb_survivorat_s_p2)

                    ; #37534: origin
                    (Bc_survivorat_s_p2)

                    ; #71457: <==closure== 92126 (pos)
                    (Pa_survivorat_s_p2)

                    ; #87050: <==closure== 37534 (pos)
                    (Pc_survivorat_s_p2)

                    ; #92126: origin
                    (Ba_survivorat_s_p2)

                    ; #12541: <==negation-removal== 92126 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #12772: <==negation-removal== 34395 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #39320: <==negation-removal== 20528 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #47957: <==negation-removal== 37534 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #57089: <==negation-removal== 71457 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #76174: <==negation-removal== 87050 (pos)
                    (not (Bc_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #14719: <==closure== 79893 (pos)
                    (Pa_survivorat_s_p3)

                    ; #35849: <==closure== 37403 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37403: origin
                    (Bc_survivorat_s_p3)

                    ; #64724: origin
                    (Bb_survivorat_s_p3)

                    ; #72118: <==closure== 64724 (pos)
                    (Pb_survivorat_s_p3)

                    ; #79893: origin
                    (Ba_survivorat_s_p3)

                    ; #11239: <==negation-removal== 72118 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #15177: <==negation-removal== 14719 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #29173: <==negation-removal== 37403 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40612: <==negation-removal== 64724 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60147: <==negation-removal== 79893 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #72729: <==negation-removal== 35849 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Pb_survivorat_s_p3)
                           (at_b_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #14719: <==closure== 79893 (pos)
                    (Pa_survivorat_s_p3)

                    ; #35849: <==closure== 37403 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37403: origin
                    (Bc_survivorat_s_p3)

                    ; #64724: origin
                    (Bb_survivorat_s_p3)

                    ; #72118: <==closure== 64724 (pos)
                    (Pb_survivorat_s_p3)

                    ; #79893: origin
                    (Ba_survivorat_s_p3)

                    ; #11239: <==negation-removal== 72118 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #15177: <==negation-removal== 14719 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #29173: <==negation-removal== 37403 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40612: <==negation-removal== 64724 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60147: <==negation-removal== 79893 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #72729: <==negation-removal== 35849 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #14719: <==closure== 79893 (pos)
                    (Pa_survivorat_s_p3)

                    ; #35849: <==closure== 37403 (pos)
                    (Pc_survivorat_s_p3)

                    ; #37403: origin
                    (Bc_survivorat_s_p3)

                    ; #64724: origin
                    (Bb_survivorat_s_p3)

                    ; #72118: <==closure== 64724 (pos)
                    (Pb_survivorat_s_p3)

                    ; #79893: origin
                    (Ba_survivorat_s_p3)

                    ; #11239: <==negation-removal== 72118 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #15177: <==negation-removal== 14719 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #29173: <==negation-removal== 37403 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #40612: <==negation-removal== 64724 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #60147: <==negation-removal== 79893 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #72729: <==negation-removal== 35849 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (at_a_p4)
                           (Pa_survivorat_s_p4))
        :effect (and
                    ; #14422: <==closure== 25634 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25634: origin
                    (Bc_survivorat_s_p4)

                    ; #26251: <==closure== 29283 (pos)
                    (Pb_survivorat_s_p4)

                    ; #29283: origin
                    (Bb_survivorat_s_p4)

                    ; #66843: origin
                    (Ba_survivorat_s_p4)

                    ; #78183: <==closure== 66843 (pos)
                    (Pa_survivorat_s_p4)

                    ; #21015: <==negation-removal== 25634 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #24455: <==negation-removal== 78183 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #25802: <==negation-removal== 29283 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #32228: <==negation-removal== 66843 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #43922: <==negation-removal== 26251 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47028: <==negation-removal== 14422 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (Bb_survivorat_s_p4)
                           (at_b_p4))
        :effect (and
                    ; #14422: <==closure== 25634 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25634: origin
                    (Bc_survivorat_s_p4)

                    ; #26251: <==closure== 29283 (pos)
                    (Pb_survivorat_s_p4)

                    ; #29283: origin
                    (Bb_survivorat_s_p4)

                    ; #66843: origin
                    (Ba_survivorat_s_p4)

                    ; #78183: <==closure== 66843 (pos)
                    (Pa_survivorat_s_p4)

                    ; #21015: <==negation-removal== 25634 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #24455: <==negation-removal== 78183 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #25802: <==negation-removal== 29283 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #32228: <==negation-removal== 66843 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #43922: <==negation-removal== 26251 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47028: <==negation-removal== 14422 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Bc_survivorat_s_p4)
                           (at_c_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #14422: <==closure== 25634 (pos)
                    (Pc_survivorat_s_p4)

                    ; #25634: origin
                    (Bc_survivorat_s_p4)

                    ; #26251: <==closure== 29283 (pos)
                    (Pb_survivorat_s_p4)

                    ; #29283: origin
                    (Bb_survivorat_s_p4)

                    ; #66843: origin
                    (Ba_survivorat_s_p4)

                    ; #78183: <==closure== 66843 (pos)
                    (Pa_survivorat_s_p4)

                    ; #21015: <==negation-removal== 25634 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #24455: <==negation-removal== 78183 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #25802: <==negation-removal== 29283 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #32228: <==negation-removal== 66843 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #43922: <==negation-removal== 26251 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #47028: <==negation-removal== 14422 (pos)
                    (not (Bc_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #17136: origin
                    (Bc_survivorat_s_p5)

                    ; #62236: origin
                    (Bb_survivorat_s_p5)

                    ; #63127: <==closure== 62236 (pos)
                    (Pb_survivorat_s_p5)

                    ; #70824: origin
                    (Ba_survivorat_s_p5)

                    ; #72457: <==closure== 70824 (pos)
                    (Pa_survivorat_s_p5)

                    ; #87823: <==closure== 17136 (pos)
                    (Pc_survivorat_s_p5)

                    ; #19100: <==negation-removal== 63127 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29858: <==negation-removal== 87823 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #40499: <==negation-removal== 62236 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #42666: <==negation-removal== 70824 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #60091: <==negation-removal== 72457 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60159: <==negation-removal== 17136 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (at_b_p5)
                           (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5))
        :effect (and
                    ; #17136: origin
                    (Bc_survivorat_s_p5)

                    ; #62236: origin
                    (Bb_survivorat_s_p5)

                    ; #63127: <==closure== 62236 (pos)
                    (Pb_survivorat_s_p5)

                    ; #70824: origin
                    (Ba_survivorat_s_p5)

                    ; #72457: <==closure== 70824 (pos)
                    (Pa_survivorat_s_p5)

                    ; #87823: <==closure== 17136 (pos)
                    (Pc_survivorat_s_p5)

                    ; #19100: <==negation-removal== 63127 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29858: <==negation-removal== 87823 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #40499: <==negation-removal== 62236 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #42666: <==negation-removal== 70824 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #60091: <==negation-removal== 72457 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60159: <==negation-removal== 17136 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #17136: origin
                    (Bc_survivorat_s_p5)

                    ; #62236: origin
                    (Bb_survivorat_s_p5)

                    ; #63127: <==closure== 62236 (pos)
                    (Pb_survivorat_s_p5)

                    ; #70824: origin
                    (Ba_survivorat_s_p5)

                    ; #72457: <==closure== 70824 (pos)
                    (Pa_survivorat_s_p5)

                    ; #87823: <==closure== 17136 (pos)
                    (Pc_survivorat_s_p5)

                    ; #19100: <==negation-removal== 63127 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #29858: <==negation-removal== 87823 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #40499: <==negation-removal== 62236 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #42666: <==negation-removal== 70824 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #60091: <==negation-removal== 72457 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #60159: <==negation-removal== 17136 (pos)
                    (not (Pc_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #19601: origin
                    (Bc_survivorat_s_p6)

                    ; #21050: <==closure== 19601 (pos)
                    (Pc_survivorat_s_p6)

                    ; #49927: origin
                    (Bb_survivorat_s_p6)

                    ; #52155: <==closure== 49927 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80388: <==closure== 88745 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88745: origin
                    (Ba_survivorat_s_p6)

                    ; #12295: <==negation-removal== 21050 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #28750: <==negation-removal== 80388 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30148: <==negation-removal== 19601 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #54356: <==negation-removal== 52155 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #89122: <==negation-removal== 88745 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #90495: <==negation-removal== 49927 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (Pb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #19601: origin
                    (Bc_survivorat_s_p6)

                    ; #21050: <==closure== 19601 (pos)
                    (Pc_survivorat_s_p6)

                    ; #49927: origin
                    (Bb_survivorat_s_p6)

                    ; #52155: <==closure== 49927 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80388: <==closure== 88745 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88745: origin
                    (Ba_survivorat_s_p6)

                    ; #12295: <==negation-removal== 21050 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #28750: <==negation-removal== 80388 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30148: <==negation-removal== 19601 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #54356: <==negation-removal== 52155 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #89122: <==negation-removal== 88745 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #90495: <==negation-removal== 49927 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #19601: origin
                    (Bc_survivorat_s_p6)

                    ; #21050: <==closure== 19601 (pos)
                    (Pc_survivorat_s_p6)

                    ; #49927: origin
                    (Bb_survivorat_s_p6)

                    ; #52155: <==closure== 49927 (pos)
                    (Pb_survivorat_s_p6)

                    ; #80388: <==closure== 88745 (pos)
                    (Pa_survivorat_s_p6)

                    ; #88745: origin
                    (Ba_survivorat_s_p6)

                    ; #12295: <==negation-removal== 21050 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #28750: <==negation-removal== 80388 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #30148: <==negation-removal== 19601 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #54356: <==negation-removal== 52155 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #89122: <==negation-removal== 88745 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #90495: <==negation-removal== 49927 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Pa_survivorat_s_p7)
                           (Ba_survivorat_s_p7)
                           (at_a_p7))
        :effect (and
                    ; #17098: <==closure== 49996 (pos)
                    (Pa_survivorat_s_p7)

                    ; #38299: origin
                    (Bc_survivorat_s_p7)

                    ; #38346: origin
                    (Bb_survivorat_s_p7)

                    ; #49996: origin
                    (Ba_survivorat_s_p7)

                    ; #77232: <==closure== 38299 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83824: <==closure== 38346 (pos)
                    (Pb_survivorat_s_p7)

                    ; #35153: <==negation-removal== 49996 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #47499: <==negation-removal== 38346 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #52860: <==negation-removal== 38299 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77260: <==negation-removal== 77232 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #81166: <==negation-removal== 83824 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #98521: <==negation-removal== 17098 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (Bb_survivorat_s_p7)
                           (at_b_p7))
        :effect (and
                    ; #17098: <==closure== 49996 (pos)
                    (Pa_survivorat_s_p7)

                    ; #38299: origin
                    (Bc_survivorat_s_p7)

                    ; #38346: origin
                    (Bb_survivorat_s_p7)

                    ; #49996: origin
                    (Ba_survivorat_s_p7)

                    ; #77232: <==closure== 38299 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83824: <==closure== 38346 (pos)
                    (Pb_survivorat_s_p7)

                    ; #35153: <==negation-removal== 49996 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #47499: <==negation-removal== 38346 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #52860: <==negation-removal== 38299 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77260: <==negation-removal== 77232 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #81166: <==negation-removal== 83824 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #98521: <==negation-removal== 17098 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Pc_survivorat_s_p7)
                           (at_c_p7)
                           (Bc_survivorat_s_p7))
        :effect (and
                    ; #17098: <==closure== 49996 (pos)
                    (Pa_survivorat_s_p7)

                    ; #38299: origin
                    (Bc_survivorat_s_p7)

                    ; #38346: origin
                    (Bb_survivorat_s_p7)

                    ; #49996: origin
                    (Ba_survivorat_s_p7)

                    ; #77232: <==closure== 38299 (pos)
                    (Pc_survivorat_s_p7)

                    ; #83824: <==closure== 38346 (pos)
                    (Pb_survivorat_s_p7)

                    ; #35153: <==negation-removal== 49996 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #47499: <==negation-removal== 38346 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #52860: <==negation-removal== 38299 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #77260: <==negation-removal== 77232 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #81166: <==negation-removal== 83824 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #98521: <==negation-removal== 17098 (pos)
                    (not (Ba_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (Pa_survivorat_s_p8)
                           (at_a_p8))
        :effect (and
                    ; #67323: origin
                    (Bc_survivorat_s_p8)

                    ; #70988: <==closure== 90296 (pos)
                    (Pb_survivorat_s_p8)

                    ; #74072: <==closure== 76268 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76268: origin
                    (Ba_survivorat_s_p8)

                    ; #89556: <==closure== 67323 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90296: origin
                    (Bb_survivorat_s_p8)

                    ; #21406: <==negation-removal== 67323 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #21791: <==negation-removal== 89556 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #38014: <==negation-removal== 74072 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65546: <==negation-removal== 90296 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #65954: <==negation-removal== 76268 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71810: <==negation-removal== 70988 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Bb_survivorat_s_p8)
                           (Pb_survivorat_s_p8))
        :effect (and
                    ; #67323: origin
                    (Bc_survivorat_s_p8)

                    ; #70988: <==closure== 90296 (pos)
                    (Pb_survivorat_s_p8)

                    ; #74072: <==closure== 76268 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76268: origin
                    (Ba_survivorat_s_p8)

                    ; #89556: <==closure== 67323 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90296: origin
                    (Bb_survivorat_s_p8)

                    ; #21406: <==negation-removal== 67323 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #21791: <==negation-removal== 89556 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #38014: <==negation-removal== 74072 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65546: <==negation-removal== 90296 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #65954: <==negation-removal== 76268 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71810: <==negation-removal== 70988 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Pc_survivorat_s_p8)
                           (Bc_survivorat_s_p8))
        :effect (and
                    ; #67323: origin
                    (Bc_survivorat_s_p8)

                    ; #70988: <==closure== 90296 (pos)
                    (Pb_survivorat_s_p8)

                    ; #74072: <==closure== 76268 (pos)
                    (Pa_survivorat_s_p8)

                    ; #76268: origin
                    (Ba_survivorat_s_p8)

                    ; #89556: <==closure== 67323 (pos)
                    (Pc_survivorat_s_p8)

                    ; #90296: origin
                    (Bb_survivorat_s_p8)

                    ; #21406: <==negation-removal== 67323 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #21791: <==negation-removal== 89556 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #38014: <==negation-removal== 74072 (pos)
                    (not (Ba_not_survivorat_s_p8))

                    ; #65546: <==negation-removal== 90296 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #65954: <==negation-removal== 76268 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #71810: <==negation-removal== 70988 (pos)
                    (not (Bb_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Ba_survivorat_s_p9)
                           (at_a_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #12830: <==closure== 43099 (pos)
                    (Pb_survivorat_s_p9)

                    ; #14576: origin
                    (Ba_survivorat_s_p9)

                    ; #43099: origin
                    (Bb_survivorat_s_p9)

                    ; #54132: origin
                    (Bc_survivorat_s_p9)

                    ; #64396: <==closure== 54132 (pos)
                    (Pc_survivorat_s_p9)

                    ; #64942: <==closure== 14576 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22163: <==negation-removal== 12830 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #59886: <==negation-removal== 64396 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #66684: <==negation-removal== 54132 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82972: <==negation-removal== 43099 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #83689: <==negation-removal== 14576 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #92080: <==negation-removal== 64942 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #12830: <==closure== 43099 (pos)
                    (Pb_survivorat_s_p9)

                    ; #14576: origin
                    (Ba_survivorat_s_p9)

                    ; #43099: origin
                    (Bb_survivorat_s_p9)

                    ; #54132: origin
                    (Bc_survivorat_s_p9)

                    ; #64396: <==closure== 54132 (pos)
                    (Pc_survivorat_s_p9)

                    ; #64942: <==closure== 14576 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22163: <==negation-removal== 12830 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #59886: <==negation-removal== 64396 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #66684: <==negation-removal== 54132 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82972: <==negation-removal== 43099 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #83689: <==negation-removal== 14576 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #92080: <==negation-removal== 64942 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (at_c_p9)
                           (Bc_survivorat_s_p9)
                           (Pc_survivorat_s_p9))
        :effect (and
                    ; #12830: <==closure== 43099 (pos)
                    (Pb_survivorat_s_p9)

                    ; #14576: origin
                    (Ba_survivorat_s_p9)

                    ; #43099: origin
                    (Bb_survivorat_s_p9)

                    ; #54132: origin
                    (Bc_survivorat_s_p9)

                    ; #64396: <==closure== 54132 (pos)
                    (Pc_survivorat_s_p9)

                    ; #64942: <==closure== 14576 (pos)
                    (Pa_survivorat_s_p9)

                    ; #22163: <==negation-removal== 12830 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #59886: <==negation-removal== 64396 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #66684: <==negation-removal== 54132 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #82972: <==negation-removal== 43099 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #83689: <==negation-removal== 14576 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #92080: <==negation-removal== 64942 (pos)
                    (not (Ba_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #47112: origin
                    (at_a_p2)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #52217: origin
                    (not_at_a_p10)

                    ; #53882: origin
                    (at_a_p3)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #52217: origin
                    (not_at_a_p10)

                    ; #61463: origin
                    (at_a_p4)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #48914: origin
                    (at_a_p6)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #52217: origin
                    (not_at_a_p10)

                    ; #66742: origin
                    (at_a_p7)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #52217: origin
                    (not_at_a_p10)

                    ; #83439: origin
                    (at_a_p8)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #52217: origin
                    (not_at_a_p10)

                    ; #12813: <==negation-removal== 52217 (pos)
                    (not (at_a_p10))

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #33980: origin
                    (not_at_a_p11)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #33980: origin
                    (not_at_a_p11)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #33980: origin
                    (not_at_a_p11)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_a_p11))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #33980: origin
                    (not_at_a_p11)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #33980: origin
                    (not_at_a_p11)

                    ; #47112: origin
                    (at_a_p2)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #33980: origin
                    (not_at_a_p11)

                    ; #53882: origin
                    (at_a_p3)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (at_a_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #33980: origin
                    (not_at_a_p11)

                    ; #61463: origin
                    (at_a_p4)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #33980: origin
                    (not_at_a_p11)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_a_p11))
        :effect (and
                    ; #33980: origin
                    (not_at_a_p11)

                    ; #48914: origin
                    (at_a_p6)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #33980: origin
                    (not_at_a_p11)

                    ; #66742: origin
                    (at_a_p7)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #33980: origin
                    (not_at_a_p11)

                    ; #83439: origin
                    (at_a_p8)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #33980: origin
                    (not_at_a_p11)

                    ; #25895: <==negation-removal== 33980 (pos)
                    (not (at_a_p11))

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #47112: origin
                    (at_a_p2)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #49729: origin
                    (not_at_a_p12)

                    ; #53882: origin
                    (at_a_p3)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #49729: origin
                    (not_at_a_p12)

                    ; #61463: origin
                    (at_a_p4)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #48914: origin
                    (at_a_p6)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #49729: origin
                    (not_at_a_p12)

                    ; #66742: origin
                    (at_a_p7)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #49729: origin
                    (not_at_a_p12)

                    ; #83439: origin
                    (at_a_p8)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #49729: origin
                    (not_at_a_p12)

                    ; #21366: <==negation-removal== 49729 (pos)
                    (not (at_a_p12))

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #31991: origin
                    (not_at_a_p1)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_a_p1))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #31991: origin
                    (not_at_a_p1)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #31991: origin
                    (not_at_a_p1)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #31991: origin
                    (not_at_a_p1)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #47112: origin
                    (at_a_p2)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #53882: origin
                    (at_a_p3)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #61463: origin
                    (at_a_p4)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #33433: origin
                    (at_a_p5)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #48914: origin
                    (at_a_p6)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #66742: origin
                    (at_a_p7)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_a_p1))
        :effect (and
                    ; #31991: origin
                    (not_at_a_p1)

                    ; #83439: origin
                    (at_a_p8)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_a_p1))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #31991: origin
                    (not_at_a_p1)

                    ; #20706: <==negation-removal== 31991 (pos)
                    (not (at_a_p1))

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #47112: origin
                    (at_a_p2)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #53882: origin
                    (at_a_p3)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #61463: origin
                    (at_a_p4)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (at_a_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #48914: origin
                    (at_a_p6)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_a_p2))
        :effect (and
                    ; #66742: origin
                    (at_a_p7)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #78882: origin
                    (not_at_a_p2)

                    ; #83439: origin
                    (at_a_p8)

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #78882: origin
                    (not_at_a_p2)

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))

                    ; #47112: <==negation-removal== 78882 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #47112: origin
                    (at_a_p2)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #53882: origin
                    (at_a_p3)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #61463: origin
                    (at_a_p4)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #48914: origin
                    (at_a_p6)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #66742: origin
                    (at_a_p7)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #69573: origin
                    (not_at_a_p3)

                    ; #83439: origin
                    (at_a_p8)

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #69573: origin
                    (not_at_a_p3)

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))

                    ; #53882: <==negation-removal== 69573 (pos)
                    (not (at_a_p3))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #37104: origin
                    (not_at_a_p4)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_a_p4))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #37104: origin
                    (not_at_a_p4)

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #37104: origin
                    (not_at_a_p4)

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_a_p4))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #37104: origin
                    (not_at_a_p4)

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #37104: origin
                    (not_at_a_p4)

                    ; #47112: origin
                    (at_a_p2)

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #37104: origin
                    (not_at_a_p4)

                    ; #53882: origin
                    (at_a_p3)

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #37104: origin
                    (not_at_a_p4)

                    ; #61463: origin
                    (at_a_p4)

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #37104: origin
                    (not_at_a_p4)

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_a_p4))
        :effect (and
                    ; #37104: origin
                    (not_at_a_p4)

                    ; #48914: origin
                    (at_a_p6)

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #37104: origin
                    (not_at_a_p4)

                    ; #66742: origin
                    (at_a_p7)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_a_p4))
        :effect (and
                    ; #37104: origin
                    (not_at_a_p4)

                    ; #83439: origin
                    (at_a_p8)

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #37104: origin
                    (not_at_a_p4)

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))

                    ; #61463: <==negation-removal== 37104 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #47112: origin
                    (at_a_p2)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #53882: origin
                    (at_a_p3)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #61463: origin
                    (at_a_p4)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #48914: origin
                    (at_a_p6)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #62592: origin
                    (not_at_a_p5)

                    ; #66742: origin
                    (at_a_p7)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #62592: origin
                    (not_at_a_p5)

                    ; #83439: origin
                    (at_a_p8)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #62592: origin
                    (not_at_a_p5)

                    ; #33433: <==negation-removal== 62592 (pos)
                    (not (at_a_p5))

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #41537: origin
                    (not_at_a_p6)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_a_p6))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #41537: origin
                    (not_at_a_p6)

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #41537: origin
                    (not_at_a_p6)

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #41537: origin
                    (not_at_a_p6)

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #41537: origin
                    (not_at_a_p6)

                    ; #47112: origin
                    (at_a_p2)

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #41537: origin
                    (not_at_a_p6)

                    ; #53882: origin
                    (at_a_p3)

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (at_a_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #41537: origin
                    (not_at_a_p6)

                    ; #61463: origin
                    (at_a_p4)

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #41537: origin
                    (not_at_a_p6)

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #41537: origin
                    (not_at_a_p6)

                    ; #48914: origin
                    (at_a_p6)

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #41537: origin
                    (not_at_a_p6)

                    ; #66742: origin
                    (at_a_p7)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #41537: origin
                    (not_at_a_p6)

                    ; #83439: origin
                    (at_a_p8)

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_a_p6))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #41537: origin
                    (not_at_a_p6)

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))

                    ; #48914: <==negation-removal== 41537 (pos)
                    (not (at_a_p6))))

    (:action move_a_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_a_p7))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #32128: origin
                    (not_at_a_p7)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p10
        :precondition (and (at_a_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #32128: origin
                    (not_at_a_p7)

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_a_p7))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #32128: origin
                    (not_at_a_p7)

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #32128: origin
                    (not_at_a_p7)

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #47112: origin
                    (at_a_p2)

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_a_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #53882: origin
                    (at_a_p3)

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_a_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #61463: origin
                    (at_a_p4)

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_a_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #33433: origin
                    (at_a_p5)

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #48914: origin
                    (at_a_p6)

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #66742: origin
                    (at_a_p7)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #32128: origin
                    (not_at_a_p7)

                    ; #83439: origin
                    (at_a_p8)

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #32128: origin
                    (not_at_a_p7)

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))

                    ; #66742: <==negation-removal== 32128 (pos)
                    (not (at_a_p7))))

    (:action move_a_p8_p1
        :precondition (and (at_a_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #43391: origin
                    (not_at_a_p8)

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #43391: origin
                    (not_at_a_p8)

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #43391: origin
                    (not_at_a_p8)

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #43391: origin
                    (not_at_a_p8)

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #43391: origin
                    (not_at_a_p8)

                    ; #47112: origin
                    (at_a_p2)

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (at_a_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #43391: origin
                    (not_at_a_p8)

                    ; #53882: origin
                    (at_a_p3)

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #43391: origin
                    (not_at_a_p8)

                    ; #61463: origin
                    (at_a_p4)

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #43391: origin
                    (not_at_a_p8)

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #43391: origin
                    (not_at_a_p8)

                    ; #48914: origin
                    (at_a_p6)

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #43391: origin
                    (not_at_a_p8)

                    ; #66742: origin
                    (at_a_p7)

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #43391: origin
                    (not_at_a_p8)

                    ; #83439: origin
                    (at_a_p8)

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_a_p8))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #43391: origin
                    (not_at_a_p8)

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))

                    ; #83439: <==negation-removal== 43391 (pos)
                    (not (at_a_p8))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #20706: origin
                    (at_a_p1)

                    ; #44347: origin
                    (not_at_a_p9)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #31991: <==negation-removal== 20706 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #12813: origin
                    (at_a_p10)

                    ; #44347: origin
                    (not_at_a_p9)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #52217: <==negation-removal== 12813 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #25895: origin
                    (at_a_p11)

                    ; #44347: origin
                    (not_at_a_p9)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #33980: <==negation-removal== 25895 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #21366: origin
                    (at_a_p12)

                    ; #44347: origin
                    (not_at_a_p9)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #49729: <==negation-removal== 21366 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #44347: origin
                    (not_at_a_p9)

                    ; #47112: origin
                    (at_a_p2)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #78882: <==negation-removal== 47112 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #44347: origin
                    (not_at_a_p9)

                    ; #53882: origin
                    (at_a_p3)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #69573: <==negation-removal== 53882 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #44347: origin
                    (not_at_a_p9)

                    ; #61463: origin
                    (at_a_p4)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #37104: <==negation-removal== 61463 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #33433: origin
                    (at_a_p5)

                    ; #44347: origin
                    (not_at_a_p9)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #62592: <==negation-removal== 33433 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #44347: origin
                    (not_at_a_p9)

                    ; #48914: origin
                    (at_a_p6)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #41537: <==negation-removal== 48914 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #44347: origin
                    (not_at_a_p9)

                    ; #66742: origin
                    (at_a_p7)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #32128: <==negation-removal== 66742 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_a_p9))
        :effect (and
                    ; #44347: origin
                    (not_at_a_p9)

                    ; #83439: origin
                    (at_a_p8)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #43391: <==negation-removal== 83439 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #20672: origin
                    (at_a_p9)

                    ; #44347: origin
                    (not_at_a_p9)

                    ; #20672: <==negation-removal== 44347 (pos)
                    (not (at_a_p9))

                    ; #44347: <==negation-removal== 20672 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_b_p10))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #46780: origin
                    (at_b_p12)

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #67300: origin
                    (at_b_p3)

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #40399: origin
                    (at_b_p4)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #50989: origin
                    (at_b_p5)

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #60249: origin
                    (at_b_p6)

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #37524: origin
                    (at_b_p8)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #30622: origin
                    (not_at_b_p10)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #49066: <==negation-removal== 30622 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (at_b_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #46780: origin
                    (at_b_p12)

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #67300: origin
                    (at_b_p3)

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (at_b_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #40399: origin
                    (at_b_p4)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (at_b_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #50989: origin
                    (at_b_p5)

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #60249: origin
                    (at_b_p6)

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #37524: origin
                    (at_b_p8)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #34590: origin
                    (not_at_b_p11)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #66067: <==negation-removal== 34590 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #77154: origin
                    (not_at_b_p12)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #49066: origin
                    (at_b_p10)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_b_p12))
        :effect (and
                    ; #66067: origin
                    (at_b_p11)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #46780: origin
                    (at_b_p12)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #68772: origin
                    (at_b_p2)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_b_p12))
        :effect (and
                    ; #67300: origin
                    (at_b_p3)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #40399: origin
                    (at_b_p4)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_b_p12))
        :effect (and
                    ; #50989: origin
                    (at_b_p5)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_b_p12))
        :effect (and
                    ; #60249: origin
                    (at_b_p6)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #41376: origin
                    (at_b_p7)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_b_p12))
        :effect (and
                    ; #37524: origin
                    (at_b_p8)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #43271: origin
                    (at_b_p9)

                    ; #77154: origin
                    (not_at_b_p12)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #46780: <==negation-removal== 77154 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (succ_p1_p10)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #46780: origin
                    (at_b_p12)

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #67300: origin
                    (at_b_p3)

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p4
        :precondition (and (succ_p1_p4)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #40399: origin
                    (at_b_p4)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #50989: origin
                    (at_b_p5)

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #60249: origin
                    (at_b_p6)

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #37524: origin
                    (at_b_p8)

                    ; #39999: origin
                    (not_at_b_p1)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #39999: origin
                    (not_at_b_p1)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #79678: <==negation-removal== 39999 (pos)
                    (not (at_b_p1))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #46780: origin
                    (at_b_p12)

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #67300: origin
                    (at_b_p3)

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #40399: origin
                    (at_b_p4)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #50989: origin
                    (at_b_p5)

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #60249: origin
                    (at_b_p6)

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #37524: origin
                    (at_b_p8)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #18426: origin
                    (not_at_b_p2)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #68772: <==negation-removal== 18426 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #59533: origin
                    (not_at_b_p3)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #49066: origin
                    (at_b_p10)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #59533: origin
                    (not_at_b_p3)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #46780: origin
                    (at_b_p12)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_b_p3))
        :effect (and
                    ; #59533: origin
                    (not_at_b_p3)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #59533: origin
                    (not_at_b_p3)

                    ; #67300: origin
                    (at_b_p3)

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #40399: origin
                    (at_b_p4)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_b_p3))
        :effect (and
                    ; #50989: origin
                    (at_b_p5)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #59533: origin
                    (not_at_b_p3)

                    ; #60249: origin
                    (at_b_p6)

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #41376: origin
                    (at_b_p7)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #37524: origin
                    (at_b_p8)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_b_p3))
        :effect (and
                    ; #43271: origin
                    (at_b_p9)

                    ; #59533: origin
                    (not_at_b_p3)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #67300: <==negation-removal== 59533 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #46780: origin
                    (at_b_p12)

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #67300: origin
                    (at_b_p3)

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_b_p4))
        :effect (and
                    ; #40399: origin
                    (at_b_p4)

                    ; #44246: origin
                    (not_at_b_p4)

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #50989: origin
                    (at_b_p5)

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #44246: origin
                    (not_at_b_p4)

                    ; #60249: origin
                    (at_b_p6)

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #41376: origin
                    (at_b_p7)

                    ; #44246: origin
                    (not_at_b_p4)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #37524: origin
                    (at_b_p8)

                    ; #44246: origin
                    (not_at_b_p4)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #43271: origin
                    (at_b_p9)

                    ; #44246: origin
                    (not_at_b_p4)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #40399: <==negation-removal== 44246 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #79678: origin
                    (at_b_p1)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #49066: origin
                    (at_b_p10)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #66067: origin
                    (at_b_p11)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #46780: origin
                    (at_b_p12)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #68772: origin
                    (at_b_p2)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (at_b_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #67300: origin
                    (at_b_p3)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #40399: origin
                    (at_b_p4)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #50989: origin
                    (at_b_p5)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #60249: origin
                    (at_b_p6)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (at_b_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #41376: origin
                    (at_b_p7)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (at_b_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #37524: origin
                    (at_b_p8)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #43271: origin
                    (at_b_p9)

                    ; #96350: origin
                    (not_at_b_p5)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #50989: <==negation-removal== 96350 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #51684: origin
                    (not_at_b_p6)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #49066: origin
                    (at_b_p10)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #51684: origin
                    (not_at_b_p6)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #46780: origin
                    (at_b_p12)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (at_b_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #51684: origin
                    (not_at_b_p6)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #51684: origin
                    (not_at_b_p6)

                    ; #67300: origin
                    (at_b_p3)

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #40399: origin
                    (at_b_p4)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #50989: origin
                    (at_b_p5)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #51684: origin
                    (not_at_b_p6)

                    ; #60249: origin
                    (at_b_p6)

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #41376: origin
                    (at_b_p7)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #37524: origin
                    (at_b_p8)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #43271: origin
                    (at_b_p9)

                    ; #51684: origin
                    (not_at_b_p6)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #60249: <==negation-removal== 51684 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (at_b_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #46780: origin
                    (at_b_p12)

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #67300: origin
                    (at_b_p3)

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #40399: origin
                    (at_b_p4)

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #50989: origin
                    (at_b_p5)

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #60249: origin
                    (at_b_p6)

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #37524: origin
                    (at_b_p8)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #12228: origin
                    (not_at_b_p7)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #41376: <==negation-removal== 12228 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #79678: origin
                    (at_b_p1)

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #46780: origin
                    (at_b_p12)

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #67300: origin
                    (at_b_p3)

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #40399: origin
                    (at_b_p4)

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #50989: origin
                    (at_b_p5)

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #60249: origin
                    (at_b_p6)

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #37524: origin
                    (at_b_p8)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_b_p8))
        :effect (and
                    ; #10506: origin
                    (not_at_b_p8)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #37524: <==negation-removal== 10506 (pos)
                    (not (at_b_p8))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #79678: origin
                    (at_b_p1)

                    ; #39999: <==negation-removal== 79678 (pos)
                    (not (not_at_b_p1))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #49066: origin
                    (at_b_p10)

                    ; #30622: <==negation-removal== 49066 (pos)
                    (not (not_at_b_p10))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #66067: origin
                    (at_b_p11)

                    ; #34590: <==negation-removal== 66067 (pos)
                    (not (not_at_b_p11))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (at_b_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #46780: origin
                    (at_b_p12)

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))

                    ; #77154: <==negation-removal== 46780 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #68772: origin
                    (at_b_p2)

                    ; #18426: <==negation-removal== 68772 (pos)
                    (not (not_at_b_p2))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #67300: origin
                    (at_b_p3)

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))

                    ; #59533: <==negation-removal== 67300 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #40399: origin
                    (at_b_p4)

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))

                    ; #44246: <==negation-removal== 40399 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #50989: origin
                    (at_b_p5)

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))

                    ; #96350: <==negation-removal== 50989 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #60249: origin
                    (at_b_p6)

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))

                    ; #51684: <==negation-removal== 60249 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (at_b_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #41376: origin
                    (at_b_p7)

                    ; #12228: <==negation-removal== 41376 (pos)
                    (not (not_at_b_p7))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #37524: origin
                    (at_b_p8)

                    ; #10506: <==negation-removal== 37524 (pos)
                    (not (not_at_b_p8))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #17971: origin
                    (not_at_b_p9)

                    ; #43271: origin
                    (at_b_p9)

                    ; #17971: <==negation-removal== 43271 (pos)
                    (not (not_at_b_p9))

                    ; #43271: <==negation-removal== 17971 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (at_c_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #24259: origin
                    (not_at_c_p10)

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (at_c_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (at_c_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #43971: origin
                    (at_c_p11)

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #29337: origin
                    (at_c_p12)

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (at_c_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #24259: origin
                    (not_at_c_p10)

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #30381: origin
                    (at_c_p4)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p5
        :precondition (and (at_c_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #76337: origin
                    (at_c_p5)

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p6
        :precondition (and (at_c_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #61945: origin
                    (at_c_p6)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (at_c_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #69048: origin
                    (at_c_p7)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (at_c_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #24259: origin
                    (not_at_c_p10)

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (at_c_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #24259: origin
                    (not_at_c_p10)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #61472: <==negation-removal== 24259 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #61472: origin
                    (at_c_p10)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #43971: origin
                    (at_c_p11)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (at_c_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p11)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (at_c_p11)
                           (succ_p11_p5))
        :effect (and
                    ; #73479: origin
                    (not_at_c_p11)

                    ; #76337: origin
                    (at_c_p5)

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #61945: origin
                    (at_c_p6)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #69048: origin
                    (at_c_p7)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #56872: origin
                    (at_c_p9)

                    ; #73479: origin
                    (not_at_c_p11)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #43971: <==negation-removal== 73479 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (at_c_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #55923: origin
                    (not_at_c_p12)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (at_c_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #55923: origin
                    (not_at_c_p12)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #43971: origin
                    (at_c_p11)

                    ; #55923: origin
                    (not_at_c_p12)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #55923: origin
                    (not_at_c_p12)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #55923: origin
                    (not_at_c_p12)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #55923: origin
                    (not_at_c_p12)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (at_c_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #55923: origin
                    (not_at_c_p12)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #55923: origin
                    (not_at_c_p12)

                    ; #76337: origin
                    (at_c_p5)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #55923: origin
                    (not_at_c_p12)

                    ; #61945: origin
                    (at_c_p6)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #55923: origin
                    (not_at_c_p12)

                    ; #69048: origin
                    (at_c_p7)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #55923: origin
                    (not_at_c_p12)

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #55923: origin
                    (not_at_c_p12)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #29337: <==negation-removal== 55923 (pos)
                    (not (at_c_p12))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #61472: origin
                    (at_c_p10)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #43971: origin
                    (at_c_p11)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #87616: origin
                    (not_at_c_p1)

                    ; #92206: origin
                    (at_c_p3)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #76337: origin
                    (at_c_p5)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #61945: origin
                    (at_c_p6)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (at_c_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #69048: origin
                    (at_c_p7)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p1_p8
        :precondition (and (at_c_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #56872: origin
                    (at_c_p9)

                    ; #87616: origin
                    (not_at_c_p1)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #16690: <==negation-removal== 87616 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (at_c_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #61472: origin
                    (at_c_p10)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #43971: origin
                    (at_c_p11)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #76854: origin
                    (not_at_c_p2)

                    ; #92206: origin
                    (at_c_p3)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p2_p4
        :precondition (and (at_c_p2)
                           (succ_p2_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (at_c_p2)
                           (succ_p2_p5))
        :effect (and
                    ; #76337: origin
                    (at_c_p5)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #61945: origin
                    (at_c_p6)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_c_p2))
        :effect (and
                    ; #69048: origin
                    (at_c_p7)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #56872: origin
                    (at_c_p9)

                    ; #76854: origin
                    (not_at_c_p2)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #15649: <==negation-removal== 76854 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #24790: origin
                    (not_at_c_p3)

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_c_p3))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #43971: origin
                    (at_c_p11)

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #29337: origin
                    (at_c_p12)

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #24790: origin
                    (not_at_c_p3)

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #30381: origin
                    (at_c_p4)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_c_p3))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #76337: origin
                    (at_c_p5)

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #61945: origin
                    (at_c_p6)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #69048: origin
                    (at_c_p7)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #24790: origin
                    (not_at_c_p3)

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_c_p3))
        :effect (and
                    ; #24790: origin
                    (not_at_c_p3)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #92206: <==negation-removal== 24790 (pos)
                    (not (at_c_p3))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #31964: origin
                    (not_at_c_p4)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #43971: origin
                    (at_c_p11)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #31964: origin
                    (not_at_c_p4)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #31964: origin
                    (not_at_c_p4)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #31964: origin
                    (not_at_c_p4)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #76337: origin
                    (at_c_p5)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #61945: origin
                    (at_c_p6)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #69048: origin
                    (at_c_p7)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #31964: origin
                    (not_at_c_p4)

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #31964: origin
                    (not_at_c_p4)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #30381: <==negation-removal== 31964 (pos)
                    (not (at_c_p4))))

    (:action move_c_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_c_p5))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #46709: origin
                    (not_at_c_p5)

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #46709: origin
                    (not_at_c_p5)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #43971: origin
                    (at_c_p11)

                    ; #46709: origin
                    (not_at_c_p5)

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (at_c_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #46709: origin
                    (not_at_c_p5)

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #46709: origin
                    (not_at_c_p5)

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #46709: origin
                    (not_at_c_p5)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_c_p5))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #46709: origin
                    (not_at_c_p5)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (succ_p5_p5)
                           (at_c_p5))
        :effect (and
                    ; #46709: origin
                    (not_at_c_p5)

                    ; #76337: origin
                    (at_c_p5)

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #46709: origin
                    (not_at_c_p5)

                    ; #61945: origin
                    (at_c_p6)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #46709: origin
                    (not_at_c_p5)

                    ; #69048: origin
                    (at_c_p7)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (at_c_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #46709: origin
                    (not_at_c_p5)

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #46709: origin
                    (not_at_c_p5)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #76337: <==negation-removal== 46709 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #43578: origin
                    (not_at_c_p6)

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_c_p6))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #43971: origin
                    (at_c_p11)

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #43578: origin
                    (not_at_c_p6)

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #43578: origin
                    (not_at_c_p6)

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #43578: origin
                    (not_at_c_p6)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_c_p6))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #76337: origin
                    (at_c_p5)

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #61945: origin
                    (at_c_p6)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #69048: origin
                    (at_c_p7)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #43578: origin
                    (not_at_c_p6)

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #43578: origin
                    (not_at_c_p6)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #61945: <==negation-removal== 43578 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_c_p7))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #32862: origin
                    (not_at_c_p7)

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (at_c_p7)
                           (succ_p7_p10))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #43971: origin
                    (at_c_p11)

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #32862: origin
                    (not_at_c_p7)

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #32862: origin
                    (not_at_c_p7)

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_c_p7))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #32862: origin
                    (not_at_c_p7)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #76337: origin
                    (at_c_p5)

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #61945: origin
                    (at_c_p6)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #69048: origin
                    (at_c_p7)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #32862: origin
                    (not_at_c_p7)

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #32862: origin
                    (not_at_c_p7)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #69048: <==negation-removal== 32862 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (at_c_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #16690: origin
                    (at_c_p1)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #61472: origin
                    (at_c_p10)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #43971: origin
                    (at_c_p11)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #29337: origin
                    (at_c_p12)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #15649: origin
                    (at_c_p2)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p8_p3
        :precondition (and (at_c_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #89685: origin
                    (not_at_c_p8)

                    ; #92206: origin
                    (at_c_p3)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #30381: origin
                    (at_c_p4)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #76337: origin
                    (at_c_p5)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #61945: origin
                    (at_c_p6)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #69048: origin
                    (at_c_p7)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (succ_p8_p9)
                           (at_c_p8))
        :effect (and
                    ; #56872: origin
                    (at_c_p9)

                    ; #89685: origin
                    (not_at_c_p8)

                    ; #13064: <==negation-removal== 89685 (pos)
                    (not (at_c_p8))

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #16690: origin
                    (at_c_p1)

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))

                    ; #87616: <==negation-removal== 16690 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #61472: origin
                    (at_c_p10)

                    ; #24259: <==negation-removal== 61472 (pos)
                    (not (not_at_c_p10))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #43971: origin
                    (at_c_p11)

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))

                    ; #73479: <==negation-removal== 43971 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #29337: origin
                    (at_c_p12)

                    ; #55923: <==negation-removal== 29337 (pos)
                    (not (not_at_c_p12))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #15649: origin
                    (at_c_p2)

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))

                    ; #76854: <==negation-removal== 15649 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #92206: origin
                    (at_c_p3)

                    ; #24790: <==negation-removal== 92206 (pos)
                    (not (not_at_c_p3))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #30381: origin
                    (at_c_p4)

                    ; #31964: <==negation-removal== 30381 (pos)
                    (not (not_at_c_p4))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #76337: origin
                    (at_c_p5)

                    ; #46709: <==negation-removal== 76337 (pos)
                    (not (not_at_c_p5))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #61945: origin
                    (at_c_p6)

                    ; #43578: <==negation-removal== 61945 (pos)
                    (not (not_at_c_p6))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #69048: origin
                    (at_c_p7)

                    ; #32862: <==negation-removal== 69048 (pos)
                    (not (not_at_c_p7))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #13064: origin
                    (at_c_p8)

                    ; #15207: origin
                    (not_at_c_p9)

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))

                    ; #89685: <==negation-removal== 13064 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #15207: origin
                    (not_at_c_p9)

                    ; #56872: origin
                    (at_c_p9)

                    ; #15207: <==negation-removal== 56872 (pos)
                    (not (not_at_c_p9))

                    ; #56872: <==negation-removal== 15207 (pos)
                    (not (at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #26676: origin
                    (checked_p10)

                    ; #31921: <==commonly_known== 26676 (pos)
                    (Ba_checked_p10)

                    ; #32367: <==closure== 93155 (pos)
                    (Pb_checked_p10)

                    ; #40708: <==closure== 31921 (pos)
                    (Pa_checked_p10)

                    ; #46414: <==closure== 75006 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #48401: <==closure== 85803 (pos)
                    (Pc_checked_p10)

                    ; #56505: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #70822: <==closure== 56505 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #75006: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #85803: <==commonly_known== 26676 (pos)
                    (Bc_checked_p10)

                    ; #93155: <==commonly_known== 26676 (pos)
                    (Bb_checked_p10)

                    ; #16320: <==uncertain_firing== 56505 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #17450: <==uncertain_firing== 75006 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #24546: <==negation-removal== 70822 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #25477: <==negation-removal== 48401 (pos)
                    (not (Bc_not_checked_p10))

                    ; #27075: <==negation-removal== 46414 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #28630: <==negation-removal== 93155 (pos)
                    (not (Pb_not_checked_p10))

                    ; #29097: <==unclosure== 17450 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #31054: <==negation-removal== 32367 (pos)
                    (not (Bb_not_checked_p10))

                    ; #38197: <==negation-removal== 85803 (pos)
                    (not (Pc_not_checked_p10))

                    ; #41522: <==negation-removal== 56505 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #44591: <==negation-removal== 40708 (pos)
                    (not (Ba_not_checked_p10))

                    ; #70468: <==negation-removal== 75006 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #70853: <==unclosure== 16320 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #73815: <==negation-removal== 31921 (pos)
                    (not (Pa_not_checked_p10))

                    ; #77584: <==negation-removal== 26676 (pos)
                    (not (not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #23872: <==commonly_known== 82307 (pos)
                    (Bb_checked_p11)

                    ; #37319: <==closure== 88461 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #39960: <==commonly_known== 82307 (pos)
                    (Bc_checked_p11)

                    ; #46472: <==closure== 23872 (pos)
                    (Pb_checked_p11)

                    ; #66594: <==closure== 39960 (pos)
                    (Pc_checked_p11)

                    ; #70441: <==closure== 82841 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #74260: <==closure== 96751 (pos)
                    (Pa_checked_p11)

                    ; #82307: origin
                    (checked_p11)

                    ; #82841: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #88461: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #96751: <==commonly_known== 82307 (pos)
                    (Ba_checked_p11)

                    ; #18268: <==negation-removal== 37319 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #27577: <==negation-removal== 88461 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #27604: <==unclosure== 89984 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #40581: <==negation-removal== 70441 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #49741: <==negation-removal== 82307 (pos)
                    (not (not_checked_p11))

                    ; #71009: <==uncertain_firing== 88461 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #72399: <==negation-removal== 66594 (pos)
                    (not (Bc_not_checked_p11))

                    ; #75230: <==unclosure== 71009 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #75328: <==negation-removal== 46472 (pos)
                    (not (Bb_not_checked_p11))

                    ; #79137: <==negation-removal== 23872 (pos)
                    (not (Pb_not_checked_p11))

                    ; #82593: <==negation-removal== 82841 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #89537: <==negation-removal== 96751 (pos)
                    (not (Pa_not_checked_p11))

                    ; #89984: <==uncertain_firing== 82841 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #91896: <==negation-removal== 74260 (pos)
                    (not (Ba_not_checked_p11))

                    ; #95353: <==negation-removal== 39960 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10352: <==commonly_known== 70803 (pos)
                    (Ba_checked_p12)

                    ; #16477: <==closure== 98363 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #26076: <==closure== 68233 (pos)
                    (Pc_checked_p12)

                    ; #43933: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #54628: <==closure== 67661 (pos)
                    (Pb_checked_p12)

                    ; #57364: <==closure== 43933 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #65834: <==closure== 10352 (pos)
                    (Pa_checked_p12)

                    ; #67661: <==commonly_known== 70803 (pos)
                    (Bb_checked_p12)

                    ; #68233: <==commonly_known== 70803 (pos)
                    (Bc_checked_p12)

                    ; #70803: origin
                    (checked_p12)

                    ; #98363: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #10263: <==negation-removal== 10352 (pos)
                    (not (Pa_not_checked_p12))

                    ; #21757: <==uncertain_firing== 43933 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #33702: <==negation-removal== 26076 (pos)
                    (not (Bc_not_checked_p12))

                    ; #34565: <==uncertain_firing== 98363 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #37421: <==negation-removal== 70803 (pos)
                    (not (not_checked_p12))

                    ; #41332: <==negation-removal== 54628 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49274: <==negation-removal== 65834 (pos)
                    (not (Ba_not_checked_p12))

                    ; #55395: <==negation-removal== 68233 (pos)
                    (not (Pc_not_checked_p12))

                    ; #59883: <==negation-removal== 67661 (pos)
                    (not (Pb_not_checked_p12))

                    ; #65452: <==negation-removal== 16477 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #68538: <==unclosure== 34565 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #69153: <==negation-removal== 98363 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #73065: <==negation-removal== 57364 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #76837: <==unclosure== 21757 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #80299: <==negation-removal== 43933 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12111: <==closure== 70765 (pos)
                    (Pc_checked_p1)

                    ; #25730: <==commonly_known== 85804 (pos)
                    (Ba_checked_p1)

                    ; #41300: <==closure== 55750 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #42376: <==closure== 50085 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #44342: <==closure== 25730 (pos)
                    (Pa_checked_p1)

                    ; #50085: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #55750: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #58045: <==closure== 81460 (pos)
                    (Pb_checked_p1)

                    ; #70765: <==commonly_known== 85804 (pos)
                    (Bc_checked_p1)

                    ; #81460: <==commonly_known== 85804 (pos)
                    (Bb_checked_p1)

                    ; #85804: origin
                    (checked_p1)

                    ; #29844: <==negation-removal== 58045 (pos)
                    (not (Bb_not_checked_p1))

                    ; #30444: <==negation-removal== 42376 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #38606: <==uncertain_firing== 50085 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #46809: <==negation-removal== 55750 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #47743: <==uncertain_firing== 55750 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #50421: <==unclosure== 47743 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #56219: <==negation-removal== 41300 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #58163: <==negation-removal== 81460 (pos)
                    (not (Pb_not_checked_p1))

                    ; #67363: <==unclosure== 38606 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #72721: <==negation-removal== 44342 (pos)
                    (not (Ba_not_checked_p1))

                    ; #77420: <==negation-removal== 12111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #82165: <==negation-removal== 85804 (pos)
                    (not (not_checked_p1))

                    ; #87172: <==negation-removal== 25730 (pos)
                    (not (Pa_not_checked_p1))

                    ; #89603: <==negation-removal== 50085 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #90891: <==negation-removal== 70765 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16438: <==commonly_known== 52269 (pos)
                    (Bb_checked_p2)

                    ; #23732: <==commonly_known== 52269 (pos)
                    (Bc_checked_p2)

                    ; #27960: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #28592: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #30127: <==closure== 16438 (pos)
                    (Pb_checked_p2)

                    ; #52269: origin
                    (checked_p2)

                    ; #55142: <==closure== 27960 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #61864: <==commonly_known== 52269 (pos)
                    (Ba_checked_p2)

                    ; #75768: <==closure== 61864 (pos)
                    (Pa_checked_p2)

                    ; #75924: <==closure== 23732 (pos)
                    (Pc_checked_p2)

                    ; #81599: <==closure== 28592 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #19018: <==negation-removal== 52269 (pos)
                    (not (not_checked_p2))

                    ; #19843: <==negation-removal== 28592 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #22390: <==uncertain_firing== 28592 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #34258: <==negation-removal== 61864 (pos)
                    (not (Pa_not_checked_p2))

                    ; #37192: <==negation-removal== 75924 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41213: <==negation-removal== 55142 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #43833: <==negation-removal== 23732 (pos)
                    (not (Pc_not_checked_p2))

                    ; #49329: <==negation-removal== 81599 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #70925: <==negation-removal== 30127 (pos)
                    (not (Bb_not_checked_p2))

                    ; #75650: <==negation-removal== 16438 (pos)
                    (not (Pb_not_checked_p2))

                    ; #76886: <==unclosure== 78247 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #78247: <==uncertain_firing== 27960 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #85945: <==negation-removal== 75768 (pos)
                    (not (Ba_not_checked_p2))

                    ; #87632: <==negation-removal== 27960 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #89534: <==unclosure== 22390 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11802: <==closure== 52611 (pos)
                    (Pb_checked_p3)

                    ; #15061: <==closure== 49583 (pos)
                    (Pc_checked_p3)

                    ; #15157: <==closure== 43013 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #42747: <==commonly_known== 70622 (pos)
                    (Ba_checked_p3)

                    ; #43013: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #49583: <==commonly_known== 70622 (pos)
                    (Bc_checked_p3)

                    ; #52611: <==commonly_known== 70622 (pos)
                    (Bb_checked_p3)

                    ; #60363: <==closure== 42747 (pos)
                    (Pa_checked_p3)

                    ; #68076: <==closure== 86055 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #70622: origin
                    (checked_p3)

                    ; #86055: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #11424: <==negation-removal== 70622 (pos)
                    (not (not_checked_p3))

                    ; #15332: <==negation-removal== 15157 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #18188: <==negation-removal== 43013 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #20491: <==uncertain_firing== 43013 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #20666: <==negation-removal== 49583 (pos)
                    (not (Pc_not_checked_p3))

                    ; #26149: <==uncertain_firing== 86055 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #35055: <==negation-removal== 15061 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35120: <==unclosure== 26149 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #38005: <==negation-removal== 68076 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #54839: <==unclosure== 20491 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #56675: <==negation-removal== 11802 (pos)
                    (not (Bb_not_checked_p3))

                    ; #68865: <==negation-removal== 86055 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #70861: <==negation-removal== 42747 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85848: <==negation-removal== 52611 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87816: <==negation-removal== 60363 (pos)
                    (not (Ba_not_checked_p3))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #32390: <==closure== 71428 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #39219: <==closure== 60184 (pos)
                    (Pa_checked_p4)

                    ; #41155: <==commonly_known== 73758 (pos)
                    (Bc_checked_p4)

                    ; #60184: <==commonly_known== 73758 (pos)
                    (Ba_checked_p4)

                    ; #68796: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #71029: <==closure== 68796 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #71428: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #73758: origin
                    (checked_p4)

                    ; #79274: <==commonly_known== 73758 (pos)
                    (Bb_checked_p4)

                    ; #81068: <==closure== 79274 (pos)
                    (Pb_checked_p4)

                    ; #81207: <==closure== 41155 (pos)
                    (Pc_checked_p4)

                    ; #41453: <==negation-removal== 71428 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #44478: <==negation-removal== 73758 (pos)
                    (not (not_checked_p4))

                    ; #44629: <==negation-removal== 71029 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #45976: <==negation-removal== 79274 (pos)
                    (not (Pb_not_checked_p4))

                    ; #54869: <==unclosure== 65304 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #57372: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p4))

                    ; #62591: <==unclosure== 66130 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #63040: <==negation-removal== 68796 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #65304: <==uncertain_firing== 68796 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #66130: <==uncertain_firing== 71428 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #71474: <==negation-removal== 32390 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #72259: <==negation-removal== 39219 (pos)
                    (not (Ba_not_checked_p4))

                    ; #83121: <==negation-removal== 60184 (pos)
                    (not (Pa_not_checked_p4))

                    ; #88032: <==negation-removal== 81207 (pos)
                    (not (Bc_not_checked_p4))

                    ; #88819: <==negation-removal== 81068 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #20298: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #30185: origin
                    (checked_p5)

                    ; #34327: <==closure== 89610 (pos)
                    (Pa_checked_p5)

                    ; #38637: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #38674: <==closure== 20298 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #39095: <==commonly_known== 30185 (pos)
                    (Bc_checked_p5)

                    ; #42919: <==closure== 46313 (pos)
                    (Pb_checked_p5)

                    ; #46313: <==commonly_known== 30185 (pos)
                    (Bb_checked_p5)

                    ; #67059: <==closure== 39095 (pos)
                    (Pc_checked_p5)

                    ; #89610: <==commonly_known== 30185 (pos)
                    (Ba_checked_p5)

                    ; #91745: <==closure== 38637 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #10875: <==uncertain_firing== 20298 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #21314: <==uncertain_firing== 38637 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #33590: <==negation-removal== 67059 (pos)
                    (not (Bc_not_checked_p5))

                    ; #35983: <==unclosure== 21314 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #42650: <==negation-removal== 46313 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50162: <==negation-removal== 89610 (pos)
                    (not (Pa_not_checked_p5))

                    ; #53323: <==negation-removal== 20298 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #54324: <==negation-removal== 39095 (pos)
                    (not (Pc_not_checked_p5))

                    ; #58078: <==negation-removal== 38674 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #61119: <==negation-removal== 30185 (pos)
                    (not (not_checked_p5))

                    ; #61233: <==unclosure== 10875 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #78779: <==negation-removal== 91745 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #80477: <==negation-removal== 38637 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #81749: <==negation-removal== 42919 (pos)
                    (not (Bb_not_checked_p5))

                    ; #90633: <==negation-removal== 34327 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #24805: <==closure== 68122 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #49927: origin
                    (checked_p6)

                    ; #55854: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #64596: <==closure== 89857 (pos)
                    (Pb_checked_p6)

                    ; #68122: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #70535: <==closure== 55854 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #77890: <==closure== 79926 (pos)
                    (Pc_checked_p6)

                    ; #79926: <==commonly_known== 49927 (pos)
                    (Bc_checked_p6)

                    ; #80051: <==commonly_known== 49927 (pos)
                    (Ba_checked_p6)

                    ; #89857: <==commonly_known== 49927 (pos)
                    (Bb_checked_p6)

                    ; #91924: <==closure== 80051 (pos)
                    (Pa_checked_p6)

                    ; #12799: <==negation-removal== 55854 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #14908: <==negation-removal== 77890 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20259: <==negation-removal== 79926 (pos)
                    (not (Pc_not_checked_p6))

                    ; #27539: <==negation-removal== 70535 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #30460: <==negation-removal== 89857 (pos)
                    (not (Pb_not_checked_p6))

                    ; #31110: <==unclosure== 85813 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #33052: <==negation-removal== 49927 (pos)
                    (not (not_checked_p6))

                    ; #59659: <==negation-removal== 64596 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59997: <==negation-removal== 80051 (pos)
                    (not (Pa_not_checked_p6))

                    ; #65797: <==negation-removal== 68122 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #69913: <==negation-removal== 24805 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #80310: <==negation-removal== 91924 (pos)
                    (not (Ba_not_checked_p6))

                    ; #81081: <==uncertain_firing== 55854 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #84453: <==unclosure== 81081 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #85813: <==uncertain_firing== 68122 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10878: <==commonly_known== 87970 (pos)
                    (Bc_checked_p7)

                    ; #19042: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #22100: <==closure== 35018 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #28670: <==closure== 19042 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #35018: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #48032: <==commonly_known== 87970 (pos)
                    (Bb_checked_p7)

                    ; #52002: <==closure== 10878 (pos)
                    (Pc_checked_p7)

                    ; #61014: <==commonly_known== 87970 (pos)
                    (Ba_checked_p7)

                    ; #84393: <==closure== 48032 (pos)
                    (Pb_checked_p7)

                    ; #87970: origin
                    (checked_p7)

                    ; #89170: <==closure== 61014 (pos)
                    (Pa_checked_p7)

                    ; #16343: <==negation-removal== 10878 (pos)
                    (not (Pc_not_checked_p7))

                    ; #16508: <==negation-removal== 87970 (pos)
                    (not (not_checked_p7))

                    ; #17910: <==uncertain_firing== 35018 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #20847: <==unclosure== 46594 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #22695: <==unclosure== 17910 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #32206: <==negation-removal== 19042 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #38650: <==negation-removal== 35018 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #46594: <==uncertain_firing== 19042 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50398: <==negation-removal== 48032 (pos)
                    (not (Pb_not_checked_p7))

                    ; #51537: <==negation-removal== 28670 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #51878: <==negation-removal== 84393 (pos)
                    (not (Bb_not_checked_p7))

                    ; #75692: <==negation-removal== 89170 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79767: <==negation-removal== 22100 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #86994: <==negation-removal== 61014 (pos)
                    (not (Pa_not_checked_p7))

                    ; #87778: <==negation-removal== 52002 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #16943: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #18018: <==closure== 16943 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #19994: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #27442: origin
                    (checked_p8)

                    ; #27528: <==commonly_known== 27442 (pos)
                    (Ba_checked_p8)

                    ; #31699: <==commonly_known== 27442 (pos)
                    (Bb_checked_p8)

                    ; #44670: <==closure== 31699 (pos)
                    (Pb_checked_p8)

                    ; #47407: <==closure== 27528 (pos)
                    (Pa_checked_p8)

                    ; #60692: <==commonly_known== 27442 (pos)
                    (Bc_checked_p8)

                    ; #62445: <==closure== 19994 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #64222: <==closure== 60692 (pos)
                    (Pc_checked_p8)

                    ; #16019: <==negation-removal== 62445 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #16262: <==negation-removal== 64222 (pos)
                    (not (Bc_not_checked_p8))

                    ; #17987: <==negation-removal== 60692 (pos)
                    (not (Pc_not_checked_p8))

                    ; #26816: <==negation-removal== 16943 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #31243: <==unclosure== 70502 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #32615: <==uncertain_firing== 19994 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #33411: <==negation-removal== 31699 (pos)
                    (not (Pb_not_checked_p8))

                    ; #40168: <==negation-removal== 19994 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #44294: <==negation-removal== 44670 (pos)
                    (not (Bb_not_checked_p8))

                    ; #56731: <==negation-removal== 27442 (pos)
                    (not (not_checked_p8))

                    ; #70502: <==uncertain_firing== 16943 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #81663: <==negation-removal== 27528 (pos)
                    (not (Pa_not_checked_p8))

                    ; #82630: <==unclosure== 32615 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #82804: <==negation-removal== 47407 (pos)
                    (not (Ba_not_checked_p8))

                    ; #83603: <==negation-removal== 18018 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16941: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #34042: origin
                    (checked_p9)

                    ; #36117: <==closure== 64730 (pos)
                    (Pa_checked_p9)

                    ; #41737: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #54529: <==closure== 41737 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #64730: <==commonly_known== 34042 (pos)
                    (Ba_checked_p9)

                    ; #64757: <==commonly_known== 34042 (pos)
                    (Bb_checked_p9)

                    ; #65124: <==closure== 91764 (pos)
                    (Pc_checked_p9)

                    ; #80802: <==closure== 64757 (pos)
                    (Pb_checked_p9)

                    ; #91680: <==closure== 16941 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #91764: <==commonly_known== 34042 (pos)
                    (Bc_checked_p9)

                    ; #14488: <==negation-removal== 54529 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #14720: <==negation-removal== 16941 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #15285: <==negation-removal== 64730 (pos)
                    (not (Pa_not_checked_p9))

                    ; #16608: <==negation-removal== 41737 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #20246: <==negation-removal== 80802 (pos)
                    (not (Bb_not_checked_p9))

                    ; #39089: <==negation-removal== 91764 (pos)
                    (not (Pc_not_checked_p9))

                    ; #39934: <==unclosure== 88488 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #43004: <==unclosure== 71583 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63417: <==negation-removal== 64757 (pos)
                    (not (Pb_not_checked_p9))

                    ; #66953: <==negation-removal== 65124 (pos)
                    (not (Bc_not_checked_p9))

                    ; #71583: <==uncertain_firing== 16941 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #78172: <==negation-removal== 91680 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #87177: <==negation-removal== 34042 (pos)
                    (not (not_checked_p9))

                    ; #88488: <==uncertain_firing== 41737 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #99184: <==negation-removal== 36117 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #16307: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #26676: origin
                    (checked_p10)

                    ; #27506: <==closure== 73638 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #31921: <==commonly_known== 26676 (pos)
                    (Ba_checked_p10)

                    ; #32367: <==closure== 93155 (pos)
                    (Pb_checked_p10)

                    ; #40708: <==closure== 31921 (pos)
                    (Pa_checked_p10)

                    ; #48401: <==closure== 85803 (pos)
                    (Pc_checked_p10)

                    ; #73638: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #75914: <==closure== 16307 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #85803: <==commonly_known== 26676 (pos)
                    (Bc_checked_p10)

                    ; #93155: <==commonly_known== 26676 (pos)
                    (Bb_checked_p10)

                    ; #11390: <==uncertain_firing== 16307 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #20004: <==negation-removal== 16307 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #25477: <==negation-removal== 48401 (pos)
                    (not (Bc_not_checked_p10))

                    ; #28630: <==negation-removal== 93155 (pos)
                    (not (Pb_not_checked_p10))

                    ; #31054: <==negation-removal== 32367 (pos)
                    (not (Bb_not_checked_p10))

                    ; #35876: <==negation-removal== 73638 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #38197: <==negation-removal== 85803 (pos)
                    (not (Pc_not_checked_p10))

                    ; #38339: <==negation-removal== 75914 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #44591: <==negation-removal== 40708 (pos)
                    (not (Ba_not_checked_p10))

                    ; #57620: <==unclosure== 86878 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #73815: <==negation-removal== 31921 (pos)
                    (not (Pa_not_checked_p10))

                    ; #77584: <==negation-removal== 26676 (pos)
                    (not (not_checked_p10))

                    ; #79665: <==negation-removal== 27506 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #86878: <==uncertain_firing== 73638 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #92106: <==unclosure== 11390 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #14469: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #20786: <==closure== 32998 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #23872: <==commonly_known== 82307 (pos)
                    (Bb_checked_p11)

                    ; #32998: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #39960: <==commonly_known== 82307 (pos)
                    (Bc_checked_p11)

                    ; #46472: <==closure== 23872 (pos)
                    (Pb_checked_p11)

                    ; #66594: <==closure== 39960 (pos)
                    (Pc_checked_p11)

                    ; #74260: <==closure== 96751 (pos)
                    (Pa_checked_p11)

                    ; #76031: <==closure== 14469 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #82307: origin
                    (checked_p11)

                    ; #96751: <==commonly_known== 82307 (pos)
                    (Ba_checked_p11)

                    ; #21404: <==unclosure== 77702 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #21641: <==negation-removal== 32998 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #40848: <==negation-removal== 76031 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #49741: <==negation-removal== 82307 (pos)
                    (not (not_checked_p11))

                    ; #56457: <==unclosure== 69821 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #58741: <==negation-removal== 20786 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #59468: <==negation-removal== 14469 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #69821: <==uncertain_firing== 32998 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #72399: <==negation-removal== 66594 (pos)
                    (not (Bc_not_checked_p11))

                    ; #75328: <==negation-removal== 46472 (pos)
                    (not (Bb_not_checked_p11))

                    ; #77702: <==uncertain_firing== 14469 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #79137: <==negation-removal== 23872 (pos)
                    (not (Pb_not_checked_p11))

                    ; #89537: <==negation-removal== 96751 (pos)
                    (not (Pa_not_checked_p11))

                    ; #91896: <==negation-removal== 74260 (pos)
                    (not (Ba_not_checked_p11))

                    ; #95353: <==negation-removal== 39960 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10352: <==commonly_known== 70803 (pos)
                    (Ba_checked_p12)

                    ; #22261: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #26076: <==closure== 68233 (pos)
                    (Pc_checked_p12)

                    ; #30300: <==closure== 82790 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #34206: <==closure== 22261 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #54628: <==closure== 67661 (pos)
                    (Pb_checked_p12)

                    ; #65834: <==closure== 10352 (pos)
                    (Pa_checked_p12)

                    ; #67661: <==commonly_known== 70803 (pos)
                    (Bb_checked_p12)

                    ; #68233: <==commonly_known== 70803 (pos)
                    (Bc_checked_p12)

                    ; #70803: origin
                    (checked_p12)

                    ; #82790: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #10263: <==negation-removal== 10352 (pos)
                    (not (Pa_not_checked_p12))

                    ; #12367: <==uncertain_firing== 22261 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #15618: <==unclosure== 66130 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #33702: <==negation-removal== 26076 (pos)
                    (not (Bc_not_checked_p12))

                    ; #37421: <==negation-removal== 70803 (pos)
                    (not (not_checked_p12))

                    ; #39507: <==negation-removal== 30300 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #41332: <==negation-removal== 54628 (pos)
                    (not (Bb_not_checked_p12))

                    ; #49274: <==negation-removal== 65834 (pos)
                    (not (Ba_not_checked_p12))

                    ; #55395: <==negation-removal== 68233 (pos)
                    (not (Pc_not_checked_p12))

                    ; #59883: <==negation-removal== 67661 (pos)
                    (not (Pb_not_checked_p12))

                    ; #61161: <==unclosure== 12367 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #62383: <==negation-removal== 82790 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #66130: <==uncertain_firing== 82790 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #81114: <==negation-removal== 22261 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #84318: <==negation-removal== 34206 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #10846: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #12111: <==closure== 70765 (pos)
                    (Pc_checked_p1)

                    ; #25730: <==commonly_known== 85804 (pos)
                    (Ba_checked_p1)

                    ; #44342: <==closure== 25730 (pos)
                    (Pa_checked_p1)

                    ; #48909: <==closure== 10846 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #58045: <==closure== 81460 (pos)
                    (Pb_checked_p1)

                    ; #58541: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #62773: <==closure== 58541 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #70765: <==commonly_known== 85804 (pos)
                    (Bc_checked_p1)

                    ; #81460: <==commonly_known== 85804 (pos)
                    (Bb_checked_p1)

                    ; #85804: origin
                    (checked_p1)

                    ; #14041: <==uncertain_firing== 10846 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #29844: <==negation-removal== 58045 (pos)
                    (not (Bb_not_checked_p1))

                    ; #40626: <==negation-removal== 48909 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #42810: <==uncertain_firing== 58541 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #58163: <==negation-removal== 81460 (pos)
                    (not (Pb_not_checked_p1))

                    ; #64500: <==unclosure== 14041 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #72721: <==negation-removal== 44342 (pos)
                    (not (Ba_not_checked_p1))

                    ; #75117: <==negation-removal== 58541 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #77420: <==negation-removal== 12111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81692: <==unclosure== 42810 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #82165: <==negation-removal== 85804 (pos)
                    (not (not_checked_p1))

                    ; #84604: <==negation-removal== 62773 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #87172: <==negation-removal== 25730 (pos)
                    (not (Pa_not_checked_p1))

                    ; #90891: <==negation-removal== 70765 (pos)
                    (not (Pc_not_checked_p1))

                    ; #94836: <==negation-removal== 10846 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16438: <==commonly_known== 52269 (pos)
                    (Bb_checked_p2)

                    ; #23732: <==commonly_known== 52269 (pos)
                    (Bc_checked_p2)

                    ; #30127: <==closure== 16438 (pos)
                    (Pb_checked_p2)

                    ; #40700: <==closure== 77982 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #45094: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #52269: origin
                    (checked_p2)

                    ; #61864: <==commonly_known== 52269 (pos)
                    (Ba_checked_p2)

                    ; #75768: <==closure== 61864 (pos)
                    (Pa_checked_p2)

                    ; #75924: <==closure== 23732 (pos)
                    (Pc_checked_p2)

                    ; #77982: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #81351: <==closure== 45094 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #13966: <==negation-removal== 40700 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #19018: <==negation-removal== 52269 (pos)
                    (not (not_checked_p2))

                    ; #34258: <==negation-removal== 61864 (pos)
                    (not (Pa_not_checked_p2))

                    ; #36427: <==negation-removal== 81351 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #37192: <==negation-removal== 75924 (pos)
                    (not (Bc_not_checked_p2))

                    ; #43833: <==negation-removal== 23732 (pos)
                    (not (Pc_not_checked_p2))

                    ; #52026: <==unclosure== 61713 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #55858: <==uncertain_firing== 45094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #61713: <==uncertain_firing== 77982 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #64565: <==negation-removal== 45094 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #70925: <==negation-removal== 30127 (pos)
                    (not (Bb_not_checked_p2))

                    ; #75650: <==negation-removal== 16438 (pos)
                    (not (Pb_not_checked_p2))

                    ; #78884: <==negation-removal== 77982 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #85945: <==negation-removal== 75768 (pos)
                    (not (Ba_not_checked_p2))

                    ; #88052: <==unclosure== 55858 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11661: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #11802: <==closure== 52611 (pos)
                    (Pb_checked_p3)

                    ; #15061: <==closure== 49583 (pos)
                    (Pc_checked_p3)

                    ; #17254: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #37996: <==closure== 17254 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #42747: <==commonly_known== 70622 (pos)
                    (Ba_checked_p3)

                    ; #49138: <==closure== 11661 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #49583: <==commonly_known== 70622 (pos)
                    (Bc_checked_p3)

                    ; #52611: <==commonly_known== 70622 (pos)
                    (Bb_checked_p3)

                    ; #60363: <==closure== 42747 (pos)
                    (Pa_checked_p3)

                    ; #70622: origin
                    (checked_p3)

                    ; #11424: <==negation-removal== 70622 (pos)
                    (not (not_checked_p3))

                    ; #17071: <==unclosure== 77190 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #20666: <==negation-removal== 49583 (pos)
                    (not (Pc_not_checked_p3))

                    ; #35055: <==negation-removal== 15061 (pos)
                    (not (Bc_not_checked_p3))

                    ; #35359: <==negation-removal== 11661 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #56675: <==negation-removal== 11802 (pos)
                    (not (Bb_not_checked_p3))

                    ; #56688: <==negation-removal== 17254 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #57793: <==negation-removal== 37996 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #61882: <==uncertain_firing== 11661 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #70861: <==negation-removal== 42747 (pos)
                    (not (Pa_not_checked_p3))

                    ; #77190: <==uncertain_firing== 17254 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #77490: <==negation-removal== 49138 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #85848: <==negation-removal== 52611 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87816: <==negation-removal== 60363 (pos)
                    (not (Ba_not_checked_p3))

                    ; #87841: <==unclosure== 61882 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #23952: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #30651: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #39219: <==closure== 60184 (pos)
                    (Pa_checked_p4)

                    ; #41155: <==commonly_known== 73758 (pos)
                    (Bc_checked_p4)

                    ; #60184: <==commonly_known== 73758 (pos)
                    (Ba_checked_p4)

                    ; #62382: <==closure== 30651 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #73758: origin
                    (checked_p4)

                    ; #78461: <==closure== 23952 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #79274: <==commonly_known== 73758 (pos)
                    (Bb_checked_p4)

                    ; #81068: <==closure== 79274 (pos)
                    (Pb_checked_p4)

                    ; #81207: <==closure== 41155 (pos)
                    (Pc_checked_p4)

                    ; #12110: <==uncertain_firing== 30651 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #32537: <==unclosure== 12110 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #42639: <==uncertain_firing== 23952 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #44478: <==negation-removal== 73758 (pos)
                    (not (not_checked_p4))

                    ; #45976: <==negation-removal== 79274 (pos)
                    (not (Pb_not_checked_p4))

                    ; #46062: <==unclosure== 42639 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #51203: <==negation-removal== 23952 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #57372: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p4))

                    ; #62353: <==negation-removal== 78461 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #63839: <==negation-removal== 30651 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #72027: <==negation-removal== 62382 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #72259: <==negation-removal== 39219 (pos)
                    (not (Ba_not_checked_p4))

                    ; #83121: <==negation-removal== 60184 (pos)
                    (not (Pa_not_checked_p4))

                    ; #88032: <==negation-removal== 81207 (pos)
                    (not (Bc_not_checked_p4))

                    ; #88819: <==negation-removal== 81068 (pos)
                    (not (Bb_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #30185: origin
                    (checked_p5)

                    ; #34327: <==closure== 89610 (pos)
                    (Pa_checked_p5)

                    ; #39095: <==commonly_known== 30185 (pos)
                    (Bc_checked_p5)

                    ; #42919: <==closure== 46313 (pos)
                    (Pb_checked_p5)

                    ; #44177: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #46313: <==commonly_known== 30185 (pos)
                    (Bb_checked_p5)

                    ; #47339: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #67059: <==closure== 39095 (pos)
                    (Pc_checked_p5)

                    ; #69062: <==closure== 44177 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #69353: <==closure== 47339 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #89610: <==commonly_known== 30185 (pos)
                    (Ba_checked_p5)

                    ; #25745: <==negation-removal== 69353 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #31068: <==unclosure== 83227 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #33590: <==negation-removal== 67059 (pos)
                    (not (Bc_not_checked_p5))

                    ; #42650: <==negation-removal== 46313 (pos)
                    (not (Pb_not_checked_p5))

                    ; #50162: <==negation-removal== 89610 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54324: <==negation-removal== 39095 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61119: <==negation-removal== 30185 (pos)
                    (not (not_checked_p5))

                    ; #61724: <==negation-removal== 44177 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #67165: <==negation-removal== 47339 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #67440: <==negation-removal== 69062 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #81749: <==negation-removal== 42919 (pos)
                    (not (Bb_not_checked_p5))

                    ; #83227: <==uncertain_firing== 44177 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #88560: <==uncertain_firing== 47339 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #90633: <==negation-removal== 34327 (pos)
                    (not (Ba_not_checked_p5))

                    ; #94571: <==unclosure== 88560 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #21862: <==closure== 53286 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #40175: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #49927: origin
                    (checked_p6)

                    ; #53286: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #64596: <==closure== 89857 (pos)
                    (Pb_checked_p6)

                    ; #77890: <==closure== 79926 (pos)
                    (Pc_checked_p6)

                    ; #79926: <==commonly_known== 49927 (pos)
                    (Bc_checked_p6)

                    ; #80051: <==commonly_known== 49927 (pos)
                    (Ba_checked_p6)

                    ; #89857: <==commonly_known== 49927 (pos)
                    (Bb_checked_p6)

                    ; #91924: <==closure== 80051 (pos)
                    (Pa_checked_p6)

                    ; #93405: <==closure== 40175 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #14908: <==negation-removal== 77890 (pos)
                    (not (Bc_not_checked_p6))

                    ; #20259: <==negation-removal== 79926 (pos)
                    (not (Pc_not_checked_p6))

                    ; #30460: <==negation-removal== 89857 (pos)
                    (not (Pb_not_checked_p6))

                    ; #33052: <==negation-removal== 49927 (pos)
                    (not (not_checked_p6))

                    ; #35553: <==negation-removal== 53286 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #45498: <==unclosure== 50977 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #50187: <==negation-removal== 40175 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #50641: <==negation-removal== 21862 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #50977: <==uncertain_firing== 53286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #59659: <==negation-removal== 64596 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59997: <==negation-removal== 80051 (pos)
                    (not (Pa_not_checked_p6))

                    ; #64831: <==unclosure== 73534 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #73534: <==uncertain_firing== 40175 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #79820: <==negation-removal== 93405 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #80310: <==negation-removal== 91924 (pos)
                    (not (Ba_not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10878: <==commonly_known== 87970 (pos)
                    (Bc_checked_p7)

                    ; #48032: <==commonly_known== 87970 (pos)
                    (Bb_checked_p7)

                    ; #52002: <==closure== 10878 (pos)
                    (Pc_checked_p7)

                    ; #61014: <==commonly_known== 87970 (pos)
                    (Ba_checked_p7)

                    ; #77501: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #84393: <==closure== 48032 (pos)
                    (Pb_checked_p7)

                    ; #86623: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #87516: <==closure== 86623 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #87970: origin
                    (checked_p7)

                    ; #89170: <==closure== 61014 (pos)
                    (Pa_checked_p7)

                    ; #89980: <==closure== 77501 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #16343: <==negation-removal== 10878 (pos)
                    (not (Pc_not_checked_p7))

                    ; #16508: <==negation-removal== 87970 (pos)
                    (not (not_checked_p7))

                    ; #22180: <==uncertain_firing== 86623 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #34426: <==uncertain_firing== 77501 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #50398: <==negation-removal== 48032 (pos)
                    (not (Pb_not_checked_p7))

                    ; #51878: <==negation-removal== 84393 (pos)
                    (not (Bb_not_checked_p7))

                    ; #52837: <==negation-removal== 86623 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #54254: <==negation-removal== 87516 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #55957: <==negation-removal== 89980 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #60796: <==unclosure== 22180 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #70631: <==unclosure== 34426 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #73362: <==negation-removal== 77501 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #75692: <==negation-removal== 89170 (pos)
                    (not (Ba_not_checked_p7))

                    ; #86994: <==negation-removal== 61014 (pos)
                    (not (Pa_not_checked_p7))

                    ; #87778: <==negation-removal== 52002 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #27442: origin
                    (checked_p8)

                    ; #27528: <==commonly_known== 27442 (pos)
                    (Ba_checked_p8)

                    ; #31699: <==commonly_known== 27442 (pos)
                    (Bb_checked_p8)

                    ; #39536: <==closure== 69583 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #44670: <==closure== 31699 (pos)
                    (Pb_checked_p8)

                    ; #47407: <==closure== 27528 (pos)
                    (Pa_checked_p8)

                    ; #60692: <==commonly_known== 27442 (pos)
                    (Bc_checked_p8)

                    ; #61750: <==closure== 79051 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #64222: <==closure== 60692 (pos)
                    (Pc_checked_p8)

                    ; #69583: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #79051: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #14592: <==uncertain_firing== 69583 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #16262: <==negation-removal== 64222 (pos)
                    (not (Bc_not_checked_p8))

                    ; #16456: <==unclosure== 14592 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #17987: <==negation-removal== 60692 (pos)
                    (not (Pc_not_checked_p8))

                    ; #33411: <==negation-removal== 31699 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44294: <==negation-removal== 44670 (pos)
                    (not (Bb_not_checked_p8))

                    ; #49519: <==negation-removal== 39536 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #53814: <==uncertain_firing== 79051 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #56731: <==negation-removal== 27442 (pos)
                    (not (not_checked_p8))

                    ; #61886: <==negation-removal== 69583 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #67053: <==unclosure== 53814 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #81663: <==negation-removal== 27528 (pos)
                    (not (Pa_not_checked_p8))

                    ; #82627: <==negation-removal== 61750 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #82804: <==negation-removal== 47407 (pos)
                    (not (Ba_not_checked_p8))

                    ; #94325: <==negation-removal== 79051 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #34042: origin
                    (checked_p9)

                    ; #36117: <==closure== 64730 (pos)
                    (Pa_checked_p9)

                    ; #37909: <==closure== 80233 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #41183: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #58163: <==closure== 41183 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #64730: <==commonly_known== 34042 (pos)
                    (Ba_checked_p9)

                    ; #64757: <==commonly_known== 34042 (pos)
                    (Bb_checked_p9)

                    ; #65124: <==closure== 91764 (pos)
                    (Pc_checked_p9)

                    ; #80233: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #80802: <==closure== 64757 (pos)
                    (Pb_checked_p9)

                    ; #91764: <==commonly_known== 34042 (pos)
                    (Bc_checked_p9)

                    ; #11158: <==unclosure== 35945 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #12359: <==uncertain_firing== 80233 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #15285: <==negation-removal== 64730 (pos)
                    (not (Pa_not_checked_p9))

                    ; #20246: <==negation-removal== 80802 (pos)
                    (not (Bb_not_checked_p9))

                    ; #29293: <==unclosure== 12359 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #35945: <==uncertain_firing== 41183 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #38199: <==negation-removal== 58163 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #38267: <==negation-removal== 80233 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #39089: <==negation-removal== 91764 (pos)
                    (not (Pc_not_checked_p9))

                    ; #63417: <==negation-removal== 64757 (pos)
                    (not (Pb_not_checked_p9))

                    ; #66953: <==negation-removal== 65124 (pos)
                    (not (Bc_not_checked_p9))

                    ; #71091: <==negation-removal== 41183 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #78997: <==negation-removal== 37909 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #87177: <==negation-removal== 34042 (pos)
                    (not (not_checked_p9))

                    ; #99184: <==negation-removal== 36117 (pos)
                    (not (Ba_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #23695: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #26676: origin
                    (checked_p10)

                    ; #31921: <==commonly_known== 26676 (pos)
                    (Ba_checked_p10)

                    ; #32367: <==closure== 93155 (pos)
                    (Pb_checked_p10)

                    ; #40708: <==closure== 31921 (pos)
                    (Pa_checked_p10)

                    ; #48401: <==closure== 85803 (pos)
                    (Pc_checked_p10)

                    ; #63820: <==closure== 23695 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #67859: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #81345: <==closure== 67859 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #85803: <==commonly_known== 26676 (pos)
                    (Bc_checked_p10)

                    ; #93155: <==commonly_known== 26676 (pos)
                    (Bb_checked_p10)

                    ; #21545: <==uncertain_firing== 67859 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #25477: <==negation-removal== 48401 (pos)
                    (not (Bc_not_checked_p10))

                    ; #28630: <==negation-removal== 93155 (pos)
                    (not (Pb_not_checked_p10))

                    ; #31054: <==negation-removal== 32367 (pos)
                    (not (Bb_not_checked_p10))

                    ; #32457: <==negation-removal== 81345 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #38197: <==negation-removal== 85803 (pos)
                    (not (Pc_not_checked_p10))

                    ; #44136: <==uncertain_firing== 23695 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #44591: <==negation-removal== 40708 (pos)
                    (not (Ba_not_checked_p10))

                    ; #54413: <==unclosure== 44136 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #64168: <==negation-removal== 63820 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #73815: <==negation-removal== 31921 (pos)
                    (not (Pa_not_checked_p10))

                    ; #77584: <==negation-removal== 26676 (pos)
                    (not (not_checked_p10))

                    ; #81524: <==negation-removal== 67859 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #86062: <==negation-removal== 23695 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #91612: <==unclosure== 21545 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #19192: <==closure== 33440 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #23872: <==commonly_known== 82307 (pos)
                    (Bb_checked_p11)

                    ; #26972: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #33440: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #35567: <==closure== 26972 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #39960: <==commonly_known== 82307 (pos)
                    (Bc_checked_p11)

                    ; #46472: <==closure== 23872 (pos)
                    (Pb_checked_p11)

                    ; #66594: <==closure== 39960 (pos)
                    (Pc_checked_p11)

                    ; #74260: <==closure== 96751 (pos)
                    (Pa_checked_p11)

                    ; #82307: origin
                    (checked_p11)

                    ; #96751: <==commonly_known== 82307 (pos)
                    (Ba_checked_p11)

                    ; #15484: <==negation-removal== 35567 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #28814: <==unclosure== 58306 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #37361: <==negation-removal== 26972 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #49741: <==negation-removal== 82307 (pos)
                    (not (not_checked_p11))

                    ; #51235: <==negation-removal== 19192 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #56048: <==negation-removal== 33440 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #58306: <==uncertain_firing== 26972 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #72399: <==negation-removal== 66594 (pos)
                    (not (Bc_not_checked_p11))

                    ; #75328: <==negation-removal== 46472 (pos)
                    (not (Bb_not_checked_p11))

                    ; #75398: <==uncertain_firing== 33440 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #79137: <==negation-removal== 23872 (pos)
                    (not (Pb_not_checked_p11))

                    ; #87690: <==unclosure== 75398 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #89537: <==negation-removal== 96751 (pos)
                    (not (Pa_not_checked_p11))

                    ; #91896: <==negation-removal== 74260 (pos)
                    (not (Ba_not_checked_p11))

                    ; #95353: <==negation-removal== 39960 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #10352: <==commonly_known== 70803 (pos)
                    (Ba_checked_p12)

                    ; #26076: <==closure== 68233 (pos)
                    (Pc_checked_p12)

                    ; #50395: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #54628: <==closure== 67661 (pos)
                    (Pb_checked_p12)

                    ; #58083: <==closure== 87333 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #65834: <==closure== 10352 (pos)
                    (Pa_checked_p12)

                    ; #67661: <==commonly_known== 70803 (pos)
                    (Bb_checked_p12)

                    ; #68233: <==commonly_known== 70803 (pos)
                    (Bc_checked_p12)

                    ; #70803: origin
                    (checked_p12)

                    ; #87333: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #89473: <==closure== 50395 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #10263: <==negation-removal== 10352 (pos)
                    (not (Pa_not_checked_p12))

                    ; #12279: <==uncertain_firing== 50395 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #21840: <==unclosure== 12279 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #31420: <==negation-removal== 58083 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #33504: <==uncertain_firing== 87333 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #33702: <==negation-removal== 26076 (pos)
                    (not (Bc_not_checked_p12))

                    ; #35715: <==negation-removal== 50395 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #37421: <==negation-removal== 70803 (pos)
                    (not (not_checked_p12))

                    ; #41332: <==negation-removal== 54628 (pos)
                    (not (Bb_not_checked_p12))

                    ; #41538: <==unclosure== 33504 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #49274: <==negation-removal== 65834 (pos)
                    (not (Ba_not_checked_p12))

                    ; #55395: <==negation-removal== 68233 (pos)
                    (not (Pc_not_checked_p12))

                    ; #59883: <==negation-removal== 67661 (pos)
                    (not (Pb_not_checked_p12))

                    ; #79883: <==negation-removal== 87333 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #85768: <==negation-removal== 89473 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #12111: <==closure== 70765 (pos)
                    (Pc_checked_p1)

                    ; #25730: <==commonly_known== 85804 (pos)
                    (Ba_checked_p1)

                    ; #26159: <==closure== 85004 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #44342: <==closure== 25730 (pos)
                    (Pa_checked_p1)

                    ; #58045: <==closure== 81460 (pos)
                    (Pb_checked_p1)

                    ; #58628: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #70765: <==commonly_known== 85804 (pos)
                    (Bc_checked_p1)

                    ; #78731: <==closure== 58628 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #81460: <==commonly_known== 85804 (pos)
                    (Bb_checked_p1)

                    ; #85004: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #85804: origin
                    (checked_p1)

                    ; #28274: <==unclosure== 55943 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #29844: <==negation-removal== 58045 (pos)
                    (not (Bb_not_checked_p1))

                    ; #55943: <==uncertain_firing== 58628 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #58163: <==negation-removal== 81460 (pos)
                    (not (Pb_not_checked_p1))

                    ; #61168: <==unclosure== 88164 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #68049: <==negation-removal== 85004 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #68445: <==negation-removal== 26159 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #72721: <==negation-removal== 44342 (pos)
                    (not (Ba_not_checked_p1))

                    ; #77420: <==negation-removal== 12111 (pos)
                    (not (Bc_not_checked_p1))

                    ; #77496: <==negation-removal== 58628 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #82165: <==negation-removal== 85804 (pos)
                    (not (not_checked_p1))

                    ; #87172: <==negation-removal== 25730 (pos)
                    (not (Pa_not_checked_p1))

                    ; #88164: <==uncertain_firing== 85004 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #90891: <==negation-removal== 70765 (pos)
                    (not (Pc_not_checked_p1))

                    ; #90990: <==negation-removal== 78731 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #16438: <==commonly_known== 52269 (pos)
                    (Bb_checked_p2)

                    ; #23732: <==commonly_known== 52269 (pos)
                    (Bc_checked_p2)

                    ; #30127: <==closure== 16438 (pos)
                    (Pb_checked_p2)

                    ; #40486: <==closure== 64690 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #44075: <==closure== 73141 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #52269: origin
                    (checked_p2)

                    ; #61864: <==commonly_known== 52269 (pos)
                    (Ba_checked_p2)

                    ; #64690: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #73141: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #75768: <==closure== 61864 (pos)
                    (Pa_checked_p2)

                    ; #75924: <==closure== 23732 (pos)
                    (Pc_checked_p2)

                    ; #19018: <==negation-removal== 52269 (pos)
                    (not (not_checked_p2))

                    ; #23272: <==negation-removal== 44075 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #27897: <==unclosure== 81381 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #31868: <==negation-removal== 73141 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #34258: <==negation-removal== 61864 (pos)
                    (not (Pa_not_checked_p2))

                    ; #37192: <==negation-removal== 75924 (pos)
                    (not (Bc_not_checked_p2))

                    ; #41971: <==negation-removal== 64690 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #43833: <==negation-removal== 23732 (pos)
                    (not (Pc_not_checked_p2))

                    ; #50420: <==unclosure== 67545 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #57525: <==negation-removal== 40486 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #67545: <==uncertain_firing== 73141 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #70925: <==negation-removal== 30127 (pos)
                    (not (Bb_not_checked_p2))

                    ; #75650: <==negation-removal== 16438 (pos)
                    (not (Pb_not_checked_p2))

                    ; #81381: <==uncertain_firing== 64690 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #85945: <==negation-removal== 75768 (pos)
                    (not (Ba_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11802: <==closure== 52611 (pos)
                    (Pb_checked_p3)

                    ; #15061: <==closure== 49583 (pos)
                    (Pc_checked_p3)

                    ; #42747: <==commonly_known== 70622 (pos)
                    (Ba_checked_p3)

                    ; #49583: <==commonly_known== 70622 (pos)
                    (Bc_checked_p3)

                    ; #51498: <==closure== 60479 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #52611: <==commonly_known== 70622 (pos)
                    (Bb_checked_p3)

                    ; #59427: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #60363: <==closure== 42747 (pos)
                    (Pa_checked_p3)

                    ; #60479: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #70282: <==closure== 59427 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #70622: origin
                    (checked_p3)

                    ; #11424: <==negation-removal== 70622 (pos)
                    (not (not_checked_p3))

                    ; #20666: <==negation-removal== 49583 (pos)
                    (not (Pc_not_checked_p3))

                    ; #28000: <==unclosure== 32251 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #32251: <==uncertain_firing== 59427 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #35055: <==negation-removal== 15061 (pos)
                    (not (Bc_not_checked_p3))

                    ; #39735: <==negation-removal== 60479 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #50586: <==negation-removal== 70282 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #56675: <==negation-removal== 11802 (pos)
                    (not (Bb_not_checked_p3))

                    ; #57255: <==unclosure== 63792 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #61753: <==negation-removal== 51498 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #63792: <==uncertain_firing== 60479 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #70861: <==negation-removal== 42747 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85848: <==negation-removal== 52611 (pos)
                    (not (Pb_not_checked_p3))

                    ; #87816: <==negation-removal== 60363 (pos)
                    (not (Ba_not_checked_p3))

                    ; #89015: <==negation-removal== 59427 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #37635: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #38799: <==closure== 65640 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #39219: <==closure== 60184 (pos)
                    (Pa_checked_p4)

                    ; #41155: <==commonly_known== 73758 (pos)
                    (Bc_checked_p4)

                    ; #60184: <==commonly_known== 73758 (pos)
                    (Ba_checked_p4)

                    ; #65640: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #73758: origin
                    (checked_p4)

                    ; #79274: <==commonly_known== 73758 (pos)
                    (Bb_checked_p4)

                    ; #81068: <==closure== 79274 (pos)
                    (Pb_checked_p4)

                    ; #81207: <==closure== 41155 (pos)
                    (Pc_checked_p4)

                    ; #87214: <==closure== 37635 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #14007: <==negation-removal== 38799 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #33643: <==negation-removal== 65640 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #39466: <==unclosure== 57361 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #44478: <==negation-removal== 73758 (pos)
                    (not (not_checked_p4))

                    ; #45976: <==negation-removal== 79274 (pos)
                    (not (Pb_not_checked_p4))

                    ; #49096: <==negation-removal== 37635 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #57361: <==uncertain_firing== 37635 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #57372: <==negation-removal== 41155 (pos)
                    (not (Pc_not_checked_p4))

                    ; #64147: <==negation-removal== 87214 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #67297: <==uncertain_firing== 65640 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #72259: <==negation-removal== 39219 (pos)
                    (not (Ba_not_checked_p4))

                    ; #83121: <==negation-removal== 60184 (pos)
                    (not (Pa_not_checked_p4))

                    ; #88032: <==negation-removal== 81207 (pos)
                    (not (Bc_not_checked_p4))

                    ; #88819: <==negation-removal== 81068 (pos)
                    (not (Bb_not_checked_p4))

                    ; #90904: <==unclosure== 67297 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #30185: origin
                    (checked_p5)

                    ; #34327: <==closure== 89610 (pos)
                    (Pa_checked_p5)

                    ; #39095: <==commonly_known== 30185 (pos)
                    (Bc_checked_p5)

                    ; #42216: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #42919: <==closure== 46313 (pos)
                    (Pb_checked_p5)

                    ; #46313: <==commonly_known== 30185 (pos)
                    (Bb_checked_p5)

                    ; #52286: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #63793: <==closure== 52286 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #67059: <==closure== 39095 (pos)
                    (Pc_checked_p5)

                    ; #72974: <==closure== 42216 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #89610: <==commonly_known== 30185 (pos)
                    (Ba_checked_p5)

                    ; #17693: <==unclosure== 63718 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #23865: <==negation-removal== 52286 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #33590: <==negation-removal== 67059 (pos)
                    (not (Bc_not_checked_p5))

                    ; #38325: <==unclosure== 82945 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #42650: <==negation-removal== 46313 (pos)
                    (not (Pb_not_checked_p5))

                    ; #48277: <==negation-removal== 63793 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #50162: <==negation-removal== 89610 (pos)
                    (not (Pa_not_checked_p5))

                    ; #54324: <==negation-removal== 39095 (pos)
                    (not (Pc_not_checked_p5))

                    ; #61119: <==negation-removal== 30185 (pos)
                    (not (not_checked_p5))

                    ; #63718: <==uncertain_firing== 42216 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #76935: <==negation-removal== 42216 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #79722: <==negation-removal== 72974 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #81749: <==negation-removal== 42919 (pos)
                    (not (Bb_not_checked_p5))

                    ; #82945: <==uncertain_firing== 52286 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #90633: <==negation-removal== 34327 (pos)
                    (not (Ba_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #14703: <==closure== 71907 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #49927: origin
                    (checked_p6)

                    ; #64596: <==closure== 89857 (pos)
                    (Pb_checked_p6)

                    ; #71907: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #77890: <==closure== 79926 (pos)
                    (Pc_checked_p6)

                    ; #79926: <==commonly_known== 49927 (pos)
                    (Bc_checked_p6)

                    ; #80051: <==commonly_known== 49927 (pos)
                    (Ba_checked_p6)

                    ; #81885: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #89414: <==closure== 81885 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #89857: <==commonly_known== 49927 (pos)
                    (Bb_checked_p6)

                    ; #91924: <==closure== 80051 (pos)
                    (Pa_checked_p6)

                    ; #14908: <==negation-removal== 77890 (pos)
                    (not (Bc_not_checked_p6))

                    ; #19086: <==negation-removal== 14703 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #20259: <==negation-removal== 79926 (pos)
                    (not (Pc_not_checked_p6))

                    ; #22524: <==unclosure== 80946 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #27630: <==uncertain_firing== 71907 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #30460: <==negation-removal== 89857 (pos)
                    (not (Pb_not_checked_p6))

                    ; #33052: <==negation-removal== 49927 (pos)
                    (not (not_checked_p6))

                    ; #58895: <==negation-removal== 89414 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #59659: <==negation-removal== 64596 (pos)
                    (not (Bb_not_checked_p6))

                    ; #59997: <==negation-removal== 80051 (pos)
                    (not (Pa_not_checked_p6))

                    ; #61466: <==negation-removal== 81885 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #63753: <==unclosure== 27630 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #72934: <==negation-removal== 71907 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #80310: <==negation-removal== 91924 (pos)
                    (not (Ba_not_checked_p6))

                    ; #80946: <==uncertain_firing== 81885 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10878: <==commonly_known== 87970 (pos)
                    (Bc_checked_p7)

                    ; #14420: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #31448: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #45161: <==closure== 14420 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #48032: <==commonly_known== 87970 (pos)
                    (Bb_checked_p7)

                    ; #52002: <==closure== 10878 (pos)
                    (Pc_checked_p7)

                    ; #61014: <==commonly_known== 87970 (pos)
                    (Ba_checked_p7)

                    ; #74146: <==closure== 31448 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #84393: <==closure== 48032 (pos)
                    (Pb_checked_p7)

                    ; #87970: origin
                    (checked_p7)

                    ; #89170: <==closure== 61014 (pos)
                    (Pa_checked_p7)

                    ; #16343: <==negation-removal== 10878 (pos)
                    (not (Pc_not_checked_p7))

                    ; #16508: <==negation-removal== 87970 (pos)
                    (not (not_checked_p7))

                    ; #32910: <==negation-removal== 74146 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #38609: <==negation-removal== 45161 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #46260: <==negation-removal== 14420 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #50398: <==negation-removal== 48032 (pos)
                    (not (Pb_not_checked_p7))

                    ; #51878: <==negation-removal== 84393 (pos)
                    (not (Bb_not_checked_p7))

                    ; #62486: <==uncertain_firing== 14420 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #63949: <==negation-removal== 31448 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #75692: <==negation-removal== 89170 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79114: <==unclosure== 62486 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #81284: <==uncertain_firing== 31448 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #81487: <==unclosure== 81284 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #86994: <==negation-removal== 61014 (pos)
                    (not (Pa_not_checked_p7))

                    ; #87778: <==negation-removal== 52002 (pos)
                    (not (Bc_not_checked_p7))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #18807: <==closure== 58628 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #23099: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #27442: origin
                    (checked_p8)

                    ; #27528: <==commonly_known== 27442 (pos)
                    (Ba_checked_p8)

                    ; #31506: <==closure== 23099 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #31699: <==commonly_known== 27442 (pos)
                    (Bb_checked_p8)

                    ; #44670: <==closure== 31699 (pos)
                    (Pb_checked_p8)

                    ; #47407: <==closure== 27528 (pos)
                    (Pa_checked_p8)

                    ; #58628: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #60692: <==commonly_known== 27442 (pos)
                    (Bc_checked_p8)

                    ; #64222: <==closure== 60692 (pos)
                    (Pc_checked_p8)

                    ; #16262: <==negation-removal== 64222 (pos)
                    (not (Bc_not_checked_p8))

                    ; #16963: <==negation-removal== 18807 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #17987: <==negation-removal== 60692 (pos)
                    (not (Pc_not_checked_p8))

                    ; #33411: <==negation-removal== 31699 (pos)
                    (not (Pb_not_checked_p8))

                    ; #44294: <==negation-removal== 44670 (pos)
                    (not (Bb_not_checked_p8))

                    ; #47789: <==negation-removal== 31506 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #47950: <==negation-removal== 58628 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #51622: <==negation-removal== 23099 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #56731: <==negation-removal== 27442 (pos)
                    (not (not_checked_p8))

                    ; #58997: <==uncertain_firing== 23099 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #61924: <==unclosure== 58997 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #81663: <==negation-removal== 27528 (pos)
                    (not (Pa_not_checked_p8))

                    ; #82804: <==negation-removal== 47407 (pos)
                    (not (Ba_not_checked_p8))

                    ; #87960: <==uncertain_firing== 58628 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #91534: <==unclosure== 87960 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #21810: <==closure== 68319 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #34042: origin
                    (checked_p9)

                    ; #36117: <==closure== 64730 (pos)
                    (Pa_checked_p9)

                    ; #44254: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #64730: <==commonly_known== 34042 (pos)
                    (Ba_checked_p9)

                    ; #64757: <==commonly_known== 34042 (pos)
                    (Bb_checked_p9)

                    ; #65124: <==closure== 91764 (pos)
                    (Pc_checked_p9)

                    ; #68319: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #80802: <==closure== 64757 (pos)
                    (Pb_checked_p9)

                    ; #84061: <==closure== 44254 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #91764: <==commonly_known== 34042 (pos)
                    (Bc_checked_p9)

                    ; #15285: <==negation-removal== 64730 (pos)
                    (not (Pa_not_checked_p9))

                    ; #20246: <==negation-removal== 80802 (pos)
                    (not (Bb_not_checked_p9))

                    ; #21044: <==negation-removal== 68319 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #28210: <==negation-removal== 44254 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #30671: <==unclosure== 64104 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #38511: <==uncertain_firing== 44254 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #39089: <==negation-removal== 91764 (pos)
                    (not (Pc_not_checked_p9))

                    ; #53337: <==unclosure== 38511 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #58214: <==negation-removal== 84061 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #63417: <==negation-removal== 64757 (pos)
                    (not (Pb_not_checked_p9))

                    ; #63961: <==negation-removal== 21810 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #64104: <==uncertain_firing== 68319 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #66953: <==negation-removal== 65124 (pos)
                    (not (Bc_not_checked_p9))

                    ; #87177: <==negation-removal== 34042 (pos)
                    (not (not_checked_p9))

                    ; #99184: <==negation-removal== 36117 (pos)
                    (not (Ba_not_checked_p9))))

)