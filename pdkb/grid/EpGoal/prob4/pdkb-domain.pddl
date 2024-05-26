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
        :precondition (and (at_a_p10)
                           (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10))
        :effect (and
                    ; #21490: <==closure== 57067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26939: <==closure== 54822 (pos)
                    (Pa_survivorat_s_p10)

                    ; #38089: origin
                    (Bc_survivorat_s_p10)

                    ; #54822: origin
                    (Ba_survivorat_s_p10)

                    ; #57067: origin
                    (Bb_survivorat_s_p10)

                    ; #80233: <==closure== 38089 (pos)
                    (Pc_survivorat_s_p10)

                    ; #23657: <==negation-removal== 57067 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #24751: <==negation-removal== 26939 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #41676: <==negation-removal== 38089 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #51272: <==negation-removal== 80233 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88876: <==negation-removal== 54822 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91420: <==negation-removal== 21490 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (Bb_survivorat_s_p10)
                           (Pb_survivorat_s_p10)
                           (at_b_p10))
        :effect (and
                    ; #21490: <==closure== 57067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26939: <==closure== 54822 (pos)
                    (Pa_survivorat_s_p10)

                    ; #38089: origin
                    (Bc_survivorat_s_p10)

                    ; #54822: origin
                    (Ba_survivorat_s_p10)

                    ; #57067: origin
                    (Bb_survivorat_s_p10)

                    ; #80233: <==closure== 38089 (pos)
                    (Pc_survivorat_s_p10)

                    ; #23657: <==negation-removal== 57067 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #24751: <==negation-removal== 26939 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #41676: <==negation-removal== 38089 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #51272: <==negation-removal== 80233 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88876: <==negation-removal== 54822 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91420: <==negation-removal== 21490 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Bc_survivorat_s_p10)
                           (Pc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #21490: <==closure== 57067 (pos)
                    (Pb_survivorat_s_p10)

                    ; #26939: <==closure== 54822 (pos)
                    (Pa_survivorat_s_p10)

                    ; #38089: origin
                    (Bc_survivorat_s_p10)

                    ; #54822: origin
                    (Ba_survivorat_s_p10)

                    ; #57067: origin
                    (Bb_survivorat_s_p10)

                    ; #80233: <==closure== 38089 (pos)
                    (Pc_survivorat_s_p10)

                    ; #23657: <==negation-removal== 57067 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #24751: <==negation-removal== 26939 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #41676: <==negation-removal== 38089 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #51272: <==negation-removal== 80233 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88876: <==negation-removal== 54822 (pos)
                    (not (Pa_not_survivorat_s_p10))

                    ; #91420: <==negation-removal== 21490 (pos)
                    (not (Bb_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Pa_survivorat_s_p11)
                           (at_a_p11)
                           (Ba_survivorat_s_p11))
        :effect (and
                    ; #14250: origin
                    (Ba_survivorat_s_p11)

                    ; #30611: origin
                    (Bc_survivorat_s_p11)

                    ; #74008: <==closure== 14250 (pos)
                    (Pa_survivorat_s_p11)

                    ; #76282: <==closure== 30611 (pos)
                    (Pc_survivorat_s_p11)

                    ; #88230: <==closure== 95984 (pos)
                    (Pb_survivorat_s_p11)

                    ; #95984: origin
                    (Bb_survivorat_s_p11)

                    ; #25196: <==negation-removal== 95984 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #70098: <==negation-removal== 74008 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #71931: <==negation-removal== 14250 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #73659: <==negation-removal== 76282 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82155: <==negation-removal== 30611 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87094: <==negation-removal== 88230 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11)
                           (at_b_p11))
        :effect (and
                    ; #14250: origin
                    (Ba_survivorat_s_p11)

                    ; #30611: origin
                    (Bc_survivorat_s_p11)

                    ; #74008: <==closure== 14250 (pos)
                    (Pa_survivorat_s_p11)

                    ; #76282: <==closure== 30611 (pos)
                    (Pc_survivorat_s_p11)

                    ; #88230: <==closure== 95984 (pos)
                    (Pb_survivorat_s_p11)

                    ; #95984: origin
                    (Bb_survivorat_s_p11)

                    ; #25196: <==negation-removal== 95984 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #70098: <==negation-removal== 74008 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #71931: <==negation-removal== 14250 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #73659: <==negation-removal== 76282 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82155: <==negation-removal== 30611 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87094: <==negation-removal== 88230 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (at_c_p11)
                           (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11))
        :effect (and
                    ; #14250: origin
                    (Ba_survivorat_s_p11)

                    ; #30611: origin
                    (Bc_survivorat_s_p11)

                    ; #74008: <==closure== 14250 (pos)
                    (Pa_survivorat_s_p11)

                    ; #76282: <==closure== 30611 (pos)
                    (Pc_survivorat_s_p11)

                    ; #88230: <==closure== 95984 (pos)
                    (Pb_survivorat_s_p11)

                    ; #95984: origin
                    (Bb_survivorat_s_p11)

                    ; #25196: <==negation-removal== 95984 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #70098: <==negation-removal== 74008 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #71931: <==negation-removal== 14250 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #73659: <==negation-removal== 76282 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #82155: <==negation-removal== 30611 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #87094: <==negation-removal== 88230 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Ba_survivorat_s_p12)
                           (at_a_p12)
                           (Pa_survivorat_s_p12))
        :effect (and
                    ; #12099: <==closure== 12435 (pos)
                    (Pc_survivorat_s_p12)

                    ; #12435: origin
                    (Bc_survivorat_s_p12)

                    ; #20418: origin
                    (Ba_survivorat_s_p12)

                    ; #37407: <==closure== 55022 (pos)
                    (Pb_survivorat_s_p12)

                    ; #55022: origin
                    (Bb_survivorat_s_p12)

                    ; #58353: <==closure== 20418 (pos)
                    (Pa_survivorat_s_p12)

                    ; #27643: <==negation-removal== 37407 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33377: <==negation-removal== 55022 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #37556: <==negation-removal== 12099 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #81334: <==negation-removal== 58353 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #87173: <==negation-removal== 12435 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #87488: <==negation-removal== 20418 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (at_b_p12)
                           (Pb_survivorat_s_p12)
                           (Bb_survivorat_s_p12))
        :effect (and
                    ; #12099: <==closure== 12435 (pos)
                    (Pc_survivorat_s_p12)

                    ; #12435: origin
                    (Bc_survivorat_s_p12)

                    ; #20418: origin
                    (Ba_survivorat_s_p12)

                    ; #37407: <==closure== 55022 (pos)
                    (Pb_survivorat_s_p12)

                    ; #55022: origin
                    (Bb_survivorat_s_p12)

                    ; #58353: <==closure== 20418 (pos)
                    (Pa_survivorat_s_p12)

                    ; #27643: <==negation-removal== 37407 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33377: <==negation-removal== 55022 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #37556: <==negation-removal== 12099 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #81334: <==negation-removal== 58353 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #87173: <==negation-removal== 12435 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #87488: <==negation-removal== 20418 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Pc_survivorat_s_p12)
                           (Bc_survivorat_s_p12)
                           (at_c_p12))
        :effect (and
                    ; #12099: <==closure== 12435 (pos)
                    (Pc_survivorat_s_p12)

                    ; #12435: origin
                    (Bc_survivorat_s_p12)

                    ; #20418: origin
                    (Ba_survivorat_s_p12)

                    ; #37407: <==closure== 55022 (pos)
                    (Pb_survivorat_s_p12)

                    ; #55022: origin
                    (Bb_survivorat_s_p12)

                    ; #58353: <==closure== 20418 (pos)
                    (Pa_survivorat_s_p12)

                    ; #27643: <==negation-removal== 37407 (pos)
                    (not (Bb_not_survivorat_s_p12))

                    ; #33377: <==negation-removal== 55022 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #37556: <==negation-removal== 12099 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #81334: <==negation-removal== 58353 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #87173: <==negation-removal== 12435 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #87488: <==negation-removal== 20418 (pos)
                    (not (Pa_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Pa_survivorat_s_p1)
                           (Ba_survivorat_s_p1))
        :effect (and
                    ; #11850: <==closure== 43088 (pos)
                    (Pa_survivorat_s_p1)

                    ; #24513: <==closure== 55264 (pos)
                    (Pc_survivorat_s_p1)

                    ; #43088: origin
                    (Ba_survivorat_s_p1)

                    ; #54002: origin
                    (Bb_survivorat_s_p1)

                    ; #55264: origin
                    (Bc_survivorat_s_p1)

                    ; #76562: <==closure== 54002 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12061: <==negation-removal== 55264 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #31448: <==negation-removal== 54002 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #59287: <==negation-removal== 76562 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #68997: <==negation-removal== 43088 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #86378: <==negation-removal== 11850 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #89355: <==negation-removal== 24513 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (at_b_p1)
                           (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1))
        :effect (and
                    ; #11850: <==closure== 43088 (pos)
                    (Pa_survivorat_s_p1)

                    ; #24513: <==closure== 55264 (pos)
                    (Pc_survivorat_s_p1)

                    ; #43088: origin
                    (Ba_survivorat_s_p1)

                    ; #54002: origin
                    (Bb_survivorat_s_p1)

                    ; #55264: origin
                    (Bc_survivorat_s_p1)

                    ; #76562: <==closure== 54002 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12061: <==negation-removal== 55264 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #31448: <==negation-removal== 54002 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #59287: <==negation-removal== 76562 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #68997: <==negation-removal== 43088 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #86378: <==negation-removal== 11850 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #89355: <==negation-removal== 24513 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #11850: <==closure== 43088 (pos)
                    (Pa_survivorat_s_p1)

                    ; #24513: <==closure== 55264 (pos)
                    (Pc_survivorat_s_p1)

                    ; #43088: origin
                    (Ba_survivorat_s_p1)

                    ; #54002: origin
                    (Bb_survivorat_s_p1)

                    ; #55264: origin
                    (Bc_survivorat_s_p1)

                    ; #76562: <==closure== 54002 (pos)
                    (Pb_survivorat_s_p1)

                    ; #12061: <==negation-removal== 55264 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #31448: <==negation-removal== 54002 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #59287: <==negation-removal== 76562 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #68997: <==negation-removal== 43088 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #86378: <==negation-removal== 11850 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #89355: <==negation-removal== 24513 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Pa_survivorat_s_p2)
                           (at_a_p2)
                           (Ba_survivorat_s_p2))
        :effect (and
                    ; #10397: <==closure== 74074 (pos)
                    (Pc_survivorat_s_p2)

                    ; #31521: <==closure== 44120 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44120: origin
                    (Ba_survivorat_s_p2)

                    ; #69617: origin
                    (Bb_survivorat_s_p2)

                    ; #74074: origin
                    (Bc_survivorat_s_p2)

                    ; #90399: <==closure== 69617 (pos)
                    (Pb_survivorat_s_p2)

                    ; #37633: <==negation-removal== 74074 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48215: <==negation-removal== 31521 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #59974: <==negation-removal== 90399 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #67855: <==negation-removal== 10397 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #82194: <==negation-removal== 69617 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90247: <==negation-removal== 44120 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #10397: <==closure== 74074 (pos)
                    (Pc_survivorat_s_p2)

                    ; #31521: <==closure== 44120 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44120: origin
                    (Ba_survivorat_s_p2)

                    ; #69617: origin
                    (Bb_survivorat_s_p2)

                    ; #74074: origin
                    (Bc_survivorat_s_p2)

                    ; #90399: <==closure== 69617 (pos)
                    (Pb_survivorat_s_p2)

                    ; #37633: <==negation-removal== 74074 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48215: <==negation-removal== 31521 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #59974: <==negation-removal== 90399 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #67855: <==negation-removal== 10397 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #82194: <==negation-removal== 69617 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90247: <==negation-removal== 44120 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #10397: <==closure== 74074 (pos)
                    (Pc_survivorat_s_p2)

                    ; #31521: <==closure== 44120 (pos)
                    (Pa_survivorat_s_p2)

                    ; #44120: origin
                    (Ba_survivorat_s_p2)

                    ; #69617: origin
                    (Bb_survivorat_s_p2)

                    ; #74074: origin
                    (Bc_survivorat_s_p2)

                    ; #90399: <==closure== 69617 (pos)
                    (Pb_survivorat_s_p2)

                    ; #37633: <==negation-removal== 74074 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #48215: <==negation-removal== 31521 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #59974: <==negation-removal== 90399 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #67855: <==negation-removal== 10397 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #82194: <==negation-removal== 69617 (pos)
                    (not (Pb_not_survivorat_s_p2))

                    ; #90247: <==negation-removal== 44120 (pos)
                    (not (Pa_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (at_a_p3)
                           (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3))
        :effect (and
                    ; #11953: origin
                    (Ba_survivorat_s_p3)

                    ; #45873: origin
                    (Bb_survivorat_s_p3)

                    ; #46010: <==closure== 11953 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74828: origin
                    (Bc_survivorat_s_p3)

                    ; #81336: <==closure== 74828 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88990: <==closure== 45873 (pos)
                    (Pb_survivorat_s_p3)

                    ; #30472: <==negation-removal== 46010 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52827: <==negation-removal== 74828 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #56961: <==negation-removal== 45873 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63657: <==negation-removal== 88990 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76647: <==negation-removal== 11953 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86531: <==negation-removal== 81336 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (Bb_survivorat_s_p3)
                           (at_b_p3)
                           (Pb_survivorat_s_p3))
        :effect (and
                    ; #11953: origin
                    (Ba_survivorat_s_p3)

                    ; #45873: origin
                    (Bb_survivorat_s_p3)

                    ; #46010: <==closure== 11953 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74828: origin
                    (Bc_survivorat_s_p3)

                    ; #81336: <==closure== 74828 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88990: <==closure== 45873 (pos)
                    (Pb_survivorat_s_p3)

                    ; #30472: <==negation-removal== 46010 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52827: <==negation-removal== 74828 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #56961: <==negation-removal== 45873 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63657: <==negation-removal== 88990 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76647: <==negation-removal== 11953 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86531: <==negation-removal== 81336 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3)
                           (at_c_p3))
        :effect (and
                    ; #11953: origin
                    (Ba_survivorat_s_p3)

                    ; #45873: origin
                    (Bb_survivorat_s_p3)

                    ; #46010: <==closure== 11953 (pos)
                    (Pa_survivorat_s_p3)

                    ; #74828: origin
                    (Bc_survivorat_s_p3)

                    ; #81336: <==closure== 74828 (pos)
                    (Pc_survivorat_s_p3)

                    ; #88990: <==closure== 45873 (pos)
                    (Pb_survivorat_s_p3)

                    ; #30472: <==negation-removal== 46010 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #52827: <==negation-removal== 74828 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #56961: <==negation-removal== 45873 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #63657: <==negation-removal== 88990 (pos)
                    (not (Bb_not_survivorat_s_p3))

                    ; #76647: <==negation-removal== 11953 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #86531: <==negation-removal== 81336 (pos)
                    (not (Bc_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (at_a_p4)
                           (Pa_survivorat_s_p4)
                           (Ba_survivorat_s_p4))
        :effect (and
                    ; #17685: <==closure== 65646 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33616: <==closure== 54352 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54352: origin
                    (Bb_survivorat_s_p4)

                    ; #59290: origin
                    (Ba_survivorat_s_p4)

                    ; #65646: origin
                    (Bc_survivorat_s_p4)

                    ; #80734: <==closure== 59290 (pos)
                    (Pa_survivorat_s_p4)

                    ; #11639: <==negation-removal== 80734 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53842: <==negation-removal== 65646 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #68551: <==negation-removal== 54352 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #73614: <==negation-removal== 17685 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76343: <==negation-removal== 59290 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76831: <==negation-removal== 33616 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (at_b_p4)
                           (Bb_survivorat_s_p4)
                           (Pb_survivorat_s_p4))
        :effect (and
                    ; #17685: <==closure== 65646 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33616: <==closure== 54352 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54352: origin
                    (Bb_survivorat_s_p4)

                    ; #59290: origin
                    (Ba_survivorat_s_p4)

                    ; #65646: origin
                    (Bc_survivorat_s_p4)

                    ; #80734: <==closure== 59290 (pos)
                    (Pa_survivorat_s_p4)

                    ; #11639: <==negation-removal== 80734 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53842: <==negation-removal== 65646 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #68551: <==negation-removal== 54352 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #73614: <==negation-removal== 17685 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76343: <==negation-removal== 59290 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76831: <==negation-removal== 33616 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (Pc_survivorat_s_p4)
                           (Bc_survivorat_s_p4)
                           (at_c_p4))
        :effect (and
                    ; #17685: <==closure== 65646 (pos)
                    (Pc_survivorat_s_p4)

                    ; #33616: <==closure== 54352 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54352: origin
                    (Bb_survivorat_s_p4)

                    ; #59290: origin
                    (Ba_survivorat_s_p4)

                    ; #65646: origin
                    (Bc_survivorat_s_p4)

                    ; #80734: <==closure== 59290 (pos)
                    (Pa_survivorat_s_p4)

                    ; #11639: <==negation-removal== 80734 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #53842: <==negation-removal== 65646 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #68551: <==negation-removal== 54352 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #73614: <==negation-removal== 17685 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #76343: <==negation-removal== 59290 (pos)
                    (not (Pa_not_survivorat_s_p4))

                    ; #76831: <==negation-removal== 33616 (pos)
                    (not (Bb_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Ba_survivorat_s_p5)
                           (Pa_survivorat_s_p5))
        :effect (and
                    ; #13369: <==closure== 52548 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26602: <==closure== 61837 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38368: <==closure== 70843 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52548: origin
                    (Bc_survivorat_s_p5)

                    ; #61837: origin
                    (Ba_survivorat_s_p5)

                    ; #70843: origin
                    (Bb_survivorat_s_p5)

                    ; #33418: <==negation-removal== 61837 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #46090: <==negation-removal== 52548 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #63020: <==negation-removal== 13369 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66561: <==negation-removal== 38368 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69706: <==negation-removal== 26602 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81713: <==negation-removal== 70843 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Bb_survivorat_s_p5)
                           (at_b_p5)
                           (Pb_survivorat_s_p5))
        :effect (and
                    ; #13369: <==closure== 52548 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26602: <==closure== 61837 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38368: <==closure== 70843 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52548: origin
                    (Bc_survivorat_s_p5)

                    ; #61837: origin
                    (Ba_survivorat_s_p5)

                    ; #70843: origin
                    (Bb_survivorat_s_p5)

                    ; #33418: <==negation-removal== 61837 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #46090: <==negation-removal== 52548 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #63020: <==negation-removal== 13369 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66561: <==negation-removal== 38368 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69706: <==negation-removal== 26602 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81713: <==negation-removal== 70843 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (at_c_p5)
                           (Bc_survivorat_s_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #13369: <==closure== 52548 (pos)
                    (Pc_survivorat_s_p5)

                    ; #26602: <==closure== 61837 (pos)
                    (Pa_survivorat_s_p5)

                    ; #38368: <==closure== 70843 (pos)
                    (Pb_survivorat_s_p5)

                    ; #52548: origin
                    (Bc_survivorat_s_p5)

                    ; #61837: origin
                    (Ba_survivorat_s_p5)

                    ; #70843: origin
                    (Bb_survivorat_s_p5)

                    ; #33418: <==negation-removal== 61837 (pos)
                    (not (Pa_not_survivorat_s_p5))

                    ; #46090: <==negation-removal== 52548 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #63020: <==negation-removal== 13369 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #66561: <==negation-removal== 38368 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #69706: <==negation-removal== 26602 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #81713: <==negation-removal== 70843 (pos)
                    (not (Pb_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (Pa_survivorat_s_p6)
                           (Ba_survivorat_s_p6)
                           (at_a_p6))
        :effect (and
                    ; #22790: <==closure== 57337 (pos)
                    (Pc_survivorat_s_p6)

                    ; #38195: <==closure== 45958 (pos)
                    (Pb_survivorat_s_p6)

                    ; #41323: <==closure== 67763 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45958: origin
                    (Bb_survivorat_s_p6)

                    ; #57337: origin
                    (Bc_survivorat_s_p6)

                    ; #67763: origin
                    (Ba_survivorat_s_p6)

                    ; #21821: <==negation-removal== 22790 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34851: <==negation-removal== 57337 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #46446: <==negation-removal== 38195 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #64128: <==negation-removal== 67763 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #72561: <==negation-removal== 41323 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72648: <==negation-removal== 45958 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Pb_survivorat_s_p6)
                           (Bb_survivorat_s_p6)
                           (at_b_p6))
        :effect (and
                    ; #22790: <==closure== 57337 (pos)
                    (Pc_survivorat_s_p6)

                    ; #38195: <==closure== 45958 (pos)
                    (Pb_survivorat_s_p6)

                    ; #41323: <==closure== 67763 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45958: origin
                    (Bb_survivorat_s_p6)

                    ; #57337: origin
                    (Bc_survivorat_s_p6)

                    ; #67763: origin
                    (Ba_survivorat_s_p6)

                    ; #21821: <==negation-removal== 22790 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34851: <==negation-removal== 57337 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #46446: <==negation-removal== 38195 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #64128: <==negation-removal== 67763 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #72561: <==negation-removal== 41323 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72648: <==negation-removal== 45958 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (Bc_survivorat_s_p6)
                           (at_c_p6)
                           (Pc_survivorat_s_p6))
        :effect (and
                    ; #22790: <==closure== 57337 (pos)
                    (Pc_survivorat_s_p6)

                    ; #38195: <==closure== 45958 (pos)
                    (Pb_survivorat_s_p6)

                    ; #41323: <==closure== 67763 (pos)
                    (Pa_survivorat_s_p6)

                    ; #45958: origin
                    (Bb_survivorat_s_p6)

                    ; #57337: origin
                    (Bc_survivorat_s_p6)

                    ; #67763: origin
                    (Ba_survivorat_s_p6)

                    ; #21821: <==negation-removal== 22790 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #34851: <==negation-removal== 57337 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #46446: <==negation-removal== 38195 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #64128: <==negation-removal== 67763 (pos)
                    (not (Pa_not_survivorat_s_p6))

                    ; #72561: <==negation-removal== 41323 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #72648: <==negation-removal== 45958 (pos)
                    (not (Pb_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (at_a_p7)
                           (Ba_survivorat_s_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #16378: origin
                    (Ba_survivorat_s_p7)

                    ; #66083: <==closure== 87626 (pos)
                    (Pb_survivorat_s_p7)

                    ; #79690: origin
                    (Bc_survivorat_s_p7)

                    ; #81972: <==closure== 16378 (pos)
                    (Pa_survivorat_s_p7)

                    ; #87626: origin
                    (Bb_survivorat_s_p7)

                    ; #90112: <==closure== 79690 (pos)
                    (Pc_survivorat_s_p7)

                    ; #36919: <==negation-removal== 90112 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #53620: <==negation-removal== 81972 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #59069: <==negation-removal== 79690 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #65949: <==negation-removal== 66083 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77657: <==negation-removal== 87626 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #79604: <==negation-removal== 16378 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Bb_survivorat_s_p7)
                           (at_b_p7)
                           (Pb_survivorat_s_p7))
        :effect (and
                    ; #16378: origin
                    (Ba_survivorat_s_p7)

                    ; #66083: <==closure== 87626 (pos)
                    (Pb_survivorat_s_p7)

                    ; #79690: origin
                    (Bc_survivorat_s_p7)

                    ; #81972: <==closure== 16378 (pos)
                    (Pa_survivorat_s_p7)

                    ; #87626: origin
                    (Bb_survivorat_s_p7)

                    ; #90112: <==closure== 79690 (pos)
                    (Pc_survivorat_s_p7)

                    ; #36919: <==negation-removal== 90112 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #53620: <==negation-removal== 81972 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #59069: <==negation-removal== 79690 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #65949: <==negation-removal== 66083 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77657: <==negation-removal== 87626 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #79604: <==negation-removal== 16378 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (Pc_survivorat_s_p7)
                           (at_c_p7))
        :effect (and
                    ; #16378: origin
                    (Ba_survivorat_s_p7)

                    ; #66083: <==closure== 87626 (pos)
                    (Pb_survivorat_s_p7)

                    ; #79690: origin
                    (Bc_survivorat_s_p7)

                    ; #81972: <==closure== 16378 (pos)
                    (Pa_survivorat_s_p7)

                    ; #87626: origin
                    (Bb_survivorat_s_p7)

                    ; #90112: <==closure== 79690 (pos)
                    (Pc_survivorat_s_p7)

                    ; #36919: <==negation-removal== 90112 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #53620: <==negation-removal== 81972 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #59069: <==negation-removal== 79690 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #65949: <==negation-removal== 66083 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #77657: <==negation-removal== 87626 (pos)
                    (not (Pb_not_survivorat_s_p7))

                    ; #79604: <==negation-removal== 16378 (pos)
                    (not (Pa_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Ba_survivorat_s_p8)
                           (at_a_p8)
                           (Pa_survivorat_s_p8))
        :effect (and
                    ; #30293: origin
                    (Ba_survivorat_s_p8)

                    ; #33059: <==closure== 30293 (pos)
                    (Pa_survivorat_s_p8)

                    ; #34594: origin
                    (Bc_survivorat_s_p8)

                    ; #51263: <==closure== 83425 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83425: origin
                    (Bb_survivorat_s_p8)

                    ; #83583: <==closure== 34594 (pos)
                    (Pc_survivorat_s_p8)

                    ; #27753: <==negation-removal== 30293 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35842: <==negation-removal== 51263 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #38122: <==negation-removal== 83583 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #67574: <==negation-removal== 34594 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #71691: <==negation-removal== 83425 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #76713: <==negation-removal== 33059 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8)
                           (at_b_p8))
        :effect (and
                    ; #30293: origin
                    (Ba_survivorat_s_p8)

                    ; #33059: <==closure== 30293 (pos)
                    (Pa_survivorat_s_p8)

                    ; #34594: origin
                    (Bc_survivorat_s_p8)

                    ; #51263: <==closure== 83425 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83425: origin
                    (Bb_survivorat_s_p8)

                    ; #83583: <==closure== 34594 (pos)
                    (Pc_survivorat_s_p8)

                    ; #27753: <==negation-removal== 30293 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35842: <==negation-removal== 51263 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #38122: <==negation-removal== 83583 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #67574: <==negation-removal== 34594 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #71691: <==negation-removal== 83425 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #76713: <==negation-removal== 33059 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (at_c_p8)
                           (Bc_survivorat_s_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #30293: origin
                    (Ba_survivorat_s_p8)

                    ; #33059: <==closure== 30293 (pos)
                    (Pa_survivorat_s_p8)

                    ; #34594: origin
                    (Bc_survivorat_s_p8)

                    ; #51263: <==closure== 83425 (pos)
                    (Pb_survivorat_s_p8)

                    ; #83425: origin
                    (Bb_survivorat_s_p8)

                    ; #83583: <==closure== 34594 (pos)
                    (Pc_survivorat_s_p8)

                    ; #27753: <==negation-removal== 30293 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #35842: <==negation-removal== 51263 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #38122: <==negation-removal== 83583 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #67574: <==negation-removal== 34594 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #71691: <==negation-removal== 83425 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #76713: <==negation-removal== 33059 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (at_a_p9)
                           (Ba_survivorat_s_p9)
                           (Pa_survivorat_s_p9))
        :effect (and
                    ; #10415: origin
                    (Bb_survivorat_s_p9)

                    ; #17367: origin
                    (Ba_survivorat_s_p9)

                    ; #31248: <==closure== 17367 (pos)
                    (Pa_survivorat_s_p9)

                    ; #38988: origin
                    (Bc_survivorat_s_p9)

                    ; #45664: <==closure== 38988 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70173: <==closure== 10415 (pos)
                    (Pb_survivorat_s_p9)

                    ; #14259: <==negation-removal== 70173 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #27066: <==negation-removal== 31248 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #38585: <==negation-removal== 45664 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63936: <==negation-removal== 38988 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #85759: <==negation-removal== 10415 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86155: <==negation-removal== 17367 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (at_b_p9)
                           (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9))
        :effect (and
                    ; #10415: origin
                    (Bb_survivorat_s_p9)

                    ; #17367: origin
                    (Ba_survivorat_s_p9)

                    ; #31248: <==closure== 17367 (pos)
                    (Pa_survivorat_s_p9)

                    ; #38988: origin
                    (Bc_survivorat_s_p9)

                    ; #45664: <==closure== 38988 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70173: <==closure== 10415 (pos)
                    (Pb_survivorat_s_p9)

                    ; #14259: <==negation-removal== 70173 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #27066: <==negation-removal== 31248 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #38585: <==negation-removal== 45664 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63936: <==negation-removal== 38988 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #85759: <==negation-removal== 10415 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86155: <==negation-removal== 17367 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (Bc_survivorat_s_p9)
                           (at_c_p9))
        :effect (and
                    ; #10415: origin
                    (Bb_survivorat_s_p9)

                    ; #17367: origin
                    (Ba_survivorat_s_p9)

                    ; #31248: <==closure== 17367 (pos)
                    (Pa_survivorat_s_p9)

                    ; #38988: origin
                    (Bc_survivorat_s_p9)

                    ; #45664: <==closure== 38988 (pos)
                    (Pc_survivorat_s_p9)

                    ; #70173: <==closure== 10415 (pos)
                    (Pb_survivorat_s_p9)

                    ; #14259: <==negation-removal== 70173 (pos)
                    (not (Bb_not_survivorat_s_p9))

                    ; #27066: <==negation-removal== 31248 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #38585: <==negation-removal== 45664 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #63936: <==negation-removal== 38988 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #85759: <==negation-removal== 10415 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #86155: <==negation-removal== 17367 (pos)
                    (not (Pa_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (at_a_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #39447: origin
                    (not_at_a_p10)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p10
        :precondition (and (at_a_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #58061: origin
                    (at_a_p10)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (at_a_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #39447: origin
                    (not_at_a_p10)

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p12
        :precondition (and (at_a_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #40443: origin
                    (at_a_p12)

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p2
        :precondition (and (at_a_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #83897: origin
                    (at_a_p2)

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (at_a_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #56778: origin
                    (at_a_p3)

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (at_a_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #74637: origin
                    (at_a_p4)

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #54929: origin
                    (at_a_p5)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p6
        :precondition (and (at_a_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #55986: origin
                    (at_a_p6)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (at_a_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #53047: origin
                    (at_a_p7)

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (at_a_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #39447: origin
                    (not_at_a_p10)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #39447: origin
                    (not_at_a_p10)

                    ; #74033: origin
                    (at_a_p9)

                    ; #58061: <==negation-removal== 39447 (pos)
                    (not (at_a_p10))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_a_p11))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (at_a_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #57524: origin
                    (not_at_a_p11)

                    ; #58061: origin
                    (at_a_p10)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_a_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_a_p11))
        :effect (and
                    ; #57524: origin
                    (not_at_a_p11)

                    ; #83897: origin
                    (at_a_p2)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p11_p3
        :precondition (and (at_a_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #56778: origin
                    (at_a_p3)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #57524: origin
                    (not_at_a_p11)

                    ; #74637: origin
                    (at_a_p4)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #57524: origin
                    (not_at_a_p11)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #57524: origin
                    (not_at_a_p11)

                    ; #74033: origin
                    (at_a_p9)

                    ; #14070: <==negation-removal== 57524 (pos)
                    (not (at_a_p11))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #55997: origin
                    (not_at_a_p12)

                    ; #58061: origin
                    (at_a_p10)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p12_p12
        :precondition (and (at_a_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (at_a_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #55997: origin
                    (not_at_a_p12)

                    ; #83897: origin
                    (at_a_p2)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p12_p3
        :precondition (and (at_a_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #55997: origin
                    (not_at_a_p12)

                    ; #56778: origin
                    (at_a_p3)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #55997: origin
                    (not_at_a_p12)

                    ; #74637: origin
                    (at_a_p4)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p12_p5
        :precondition (and (at_a_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p12_p6
        :precondition (and (at_a_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (at_a_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (at_a_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #55997: origin
                    (not_at_a_p12)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (at_a_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #55997: origin
                    (not_at_a_p12)

                    ; #74033: origin
                    (at_a_p9)

                    ; #40443: <==negation-removal== 55997 (pos)
                    (not (at_a_p12))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p1_p1
        :precondition (and (at_a_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #53415: origin
                    (not_at_a_p1)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #58061: origin
                    (at_a_p10)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (at_a_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #53415: origin
                    (not_at_a_p1)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (at_a_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #53415: origin
                    (not_at_a_p1)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #83897: origin
                    (at_a_p2)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #56778: origin
                    (at_a_p3)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #74637: origin
                    (at_a_p4)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #54929: origin
                    (at_a_p5)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #55986: origin
                    (at_a_p6)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))))

    (:action move_a_p1_p7
        :precondition (and (at_a_p1)
                           (succ_p1_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #53415: origin
                    (not_at_a_p1)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #53415: origin
                    (not_at_a_p1)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #53415: origin
                    (not_at_a_p1)

                    ; #74033: origin
                    (at_a_p9)

                    ; #19026: <==negation-removal== 53415 (pos)
                    (not (at_a_p1))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (at_a_p2)
                           (succ_p2_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #58061: origin
                    (at_a_p10)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (at_a_p2)
                           (succ_p2_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_a_p2))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #64851: origin
                    (not_at_a_p2)

                    ; #83897: origin
                    (at_a_p2)

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_a_p2))
        :effect (and
                    ; #56778: origin
                    (at_a_p3)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #64851: origin
                    (not_at_a_p2)

                    ; #74637: origin
                    (at_a_p4)

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p6
        :precondition (and (at_a_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #64851: origin
                    (not_at_a_p2)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #64851: origin
                    (not_at_a_p2)

                    ; #74033: origin
                    (at_a_p9)

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))

                    ; #83897: <==negation-removal== 64851 (pos)
                    (not (at_a_p2))))

    (:action move_a_p3_p1
        :precondition (and (at_a_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p10
        :precondition (and (at_a_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #58061: origin
                    (at_a_p10)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (at_a_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (at_a_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (at_a_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #76307: origin
                    (not_at_a_p3)

                    ; #83897: origin
                    (at_a_p2)

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p3_p3
        :precondition (and (at_a_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #56778: origin
                    (at_a_p3)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (at_a_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #74637: origin
                    (at_a_p4)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p3_p5
        :precondition (and (at_a_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p6
        :precondition (and (at_a_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (at_a_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (at_a_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (at_a_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #74033: origin
                    (at_a_p9)

                    ; #76307: origin
                    (not_at_a_p3)

                    ; #56778: <==negation-removal== 76307 (pos)
                    (not (at_a_p3))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #58061: origin
                    (at_a_p10)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #74457: origin
                    (not_at_a_p4)

                    ; #83897: origin
                    (at_a_p2)

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p3
        :precondition (and (at_a_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #56778: origin
                    (at_a_p3)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_a_p4))
        :effect (and
                    ; #74457: origin
                    (not_at_a_p4)

                    ; #74637: origin
                    (at_a_p4)

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_a_p4))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_a_p4))
        :effect (and
                    ; #74033: origin
                    (at_a_p9)

                    ; #74457: origin
                    (not_at_a_p4)

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))

                    ; #74637: <==negation-removal== 74457 (pos)
                    (not (at_a_p4))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #47794: origin
                    (not_at_a_p5)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_a_p5))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #58061: origin
                    (at_a_p10)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #47794: origin
                    (not_at_a_p5)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (at_a_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #47794: origin
                    (not_at_a_p5)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p5_p2
        :precondition (and (at_a_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #83897: origin
                    (at_a_p2)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_a_p5))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #56778: origin
                    (at_a_p3)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #74637: origin
                    (at_a_p4)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #54929: origin
                    (at_a_p5)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (at_a_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #55986: origin
                    (at_a_p6)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_a_p5))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #53047: origin
                    (at_a_p7)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_a_p5))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #47794: origin
                    (not_at_a_p5)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_a_p5))
        :effect (and
                    ; #47794: origin
                    (not_at_a_p5)

                    ; #74033: origin
                    (at_a_p9)

                    ; #54929: <==negation-removal== 47794 (pos)
                    (not (at_a_p5))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #19026: origin
                    (at_a_p1)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #58061: origin
                    (at_a_p10)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #19014: origin
                    (not_at_a_p6)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #40443: origin
                    (at_a_p12)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_a_p6))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #83897: origin
                    (at_a_p2)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #56778: origin
                    (at_a_p3)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #74637: origin
                    (at_a_p4)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_a_p6))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #54929: origin
                    (at_a_p5)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #55986: origin
                    (at_a_p6)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (at_a_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #53047: origin
                    (at_a_p7)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_a_p6))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #20631: origin
                    (at_a_p8)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #19014: origin
                    (not_at_a_p6)

                    ; #74033: origin
                    (at_a_p9)

                    ; #55986: <==negation-removal== 19014 (pos)
                    (not (at_a_p6))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #58061: origin
                    (at_a_p10)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (at_a_p7)
                           (succ_p7_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p7_p2
        :precondition (and (at_a_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #82774: origin
                    (not_at_a_p7)

                    ; #83897: origin
                    (at_a_p2)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #56778: origin
                    (at_a_p3)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #74637: origin
                    (at_a_p4)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p6
        :precondition (and (at_a_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (at_a_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #74033: origin
                    (at_a_p9)

                    ; #82774: origin
                    (not_at_a_p7)

                    ; #53047: <==negation-removal== 82774 (pos)
                    (not (at_a_p7))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #33777: origin
                    (not_at_a_p8)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (at_a_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #58061: origin
                    (at_a_p10)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p8_p11
        :precondition (and (at_a_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #33777: origin
                    (not_at_a_p8)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (at_a_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #40443: origin
                    (at_a_p12)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p8_p2
        :precondition (and (at_a_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #83897: origin
                    (at_a_p2)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #56778: origin
                    (at_a_p3)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p8_p4
        :precondition (and (at_a_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #74637: origin
                    (at_a_p4)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_a_p8))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #54929: origin
                    (at_a_p5)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (at_a_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #55986: origin
                    (at_a_p6)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_a_p8))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #53047: origin
                    (at_a_p7)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_a_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #33777: origin
                    (not_at_a_p8)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #33777: origin
                    (not_at_a_p8)

                    ; #74033: origin
                    (at_a_p9)

                    ; #20631: <==negation-removal== 33777 (pos)
                    (not (at_a_p8))

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (at_a_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #19026: origin
                    (at_a_p1)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #53415: <==negation-removal== 19026 (pos)
                    (not (not_at_a_p1))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p10
        :precondition (and (at_a_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #58061: origin
                    (at_a_p10)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #39447: <==negation-removal== 58061 (pos)
                    (not (not_at_a_p10))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (at_a_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #14070: origin
                    (at_a_p11)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #57524: <==negation-removal== 14070 (pos)
                    (not (not_at_a_p11))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p12
        :precondition (and (at_a_p9)
                           (succ_p9_p12))
        :effect (and
                    ; #40443: origin
                    (at_a_p12)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #55997: <==negation-removal== 40443 (pos)
                    (not (not_at_a_p12))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p2
        :precondition (and (at_a_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #58194: origin
                    (not_at_a_p9)

                    ; #83897: origin
                    (at_a_p2)

                    ; #64851: <==negation-removal== 83897 (pos)
                    (not (not_at_a_p2))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p3
        :precondition (and (at_a_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #56778: origin
                    (at_a_p3)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))

                    ; #76307: <==negation-removal== 56778 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (at_a_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #58194: origin
                    (not_at_a_p9)

                    ; #74637: origin
                    (at_a_p4)

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))

                    ; #74457: <==negation-removal== 74637 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p9_p5
        :precondition (and (at_a_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #54929: origin
                    (at_a_p5)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #47794: <==negation-removal== 54929 (pos)
                    (not (not_at_a_p5))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p6
        :precondition (and (at_a_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #55986: origin
                    (at_a_p6)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #19014: <==negation-removal== 55986 (pos)
                    (not (not_at_a_p6))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (at_a_p9)
                           (succ_p9_p7))
        :effect (and
                    ; #53047: origin
                    (at_a_p7)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))

                    ; #82774: <==negation-removal== 53047 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #20631: origin
                    (at_a_p8)

                    ; #58194: origin
                    (not_at_a_p9)

                    ; #33777: <==negation-removal== 20631 (pos)
                    (not (not_at_a_p8))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p9
        :precondition (and (at_a_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #58194: origin
                    (not_at_a_p9)

                    ; #74033: origin
                    (at_a_p9)

                    ; #58194: <==negation-removal== 74033 (pos)
                    (not (not_at_a_p9))

                    ; #74033: <==negation-removal== 58194 (pos)
                    (not (at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_b_p10))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_b_p10))
        :effect (and
                    ; #82873: origin
                    (not_at_b_p10)

                    ; #82957: origin
                    (at_b_p10)

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_b_p10))
        :effect (and
                    ; #65897: origin
                    (at_b_p11)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_b_p10))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_b_p10))
        :effect (and
                    ; #52385: origin
                    (at_b_p5)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_b_p10))
        :effect (and
                    ; #44313: origin
                    (at_b_p6)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_b_p10))
        :effect (and
                    ; #64815: origin
                    (at_b_p7)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_b_p10))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_b_p10))
        :effect (and
                    ; #59876: origin
                    (at_b_p9)

                    ; #82873: origin
                    (not_at_b_p10)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #82957: <==negation-removal== 82873 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_b_p11))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #82957: origin
                    (at_b_p10)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_b_p11))
        :effect (and
                    ; #65897: origin
                    (at_b_p11)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_b_p11))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_b_p11))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (at_b_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #52385: origin
                    (at_b_p5)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_b_p11))
        :effect (and
                    ; #44313: origin
                    (at_b_p6)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #64815: origin
                    (at_b_p7)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_b_p11))
        :effect (and
                    ; #59876: origin
                    (at_b_p9)

                    ; #84662: origin
                    (not_at_b_p11)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #65897: <==negation-removal== 84662 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (at_b_p12)
                           (succ_p12_p1))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #31068: origin
                    (not_at_b_p12)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p12_p10
        :precondition (and (at_b_p12)
                           (succ_p12_p10))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #82957: origin
                    (at_b_p10)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #65897: origin
                    (at_b_p11)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p12_p12
        :precondition (and (at_b_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #35326: origin
                    (at_b_p12)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (at_b_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #40279: origin
                    (at_b_p2)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #31068: origin
                    (not_at_b_p12)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p12_p4
        :precondition (and (at_b_p12)
                           (succ_p12_p4))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #37149: origin
                    (at_b_p4)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #52385: origin
                    (at_b_p5)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #44313: origin
                    (at_b_p6)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #64815: origin
                    (at_b_p7)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #31068: origin
                    (not_at_b_p12)

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p12_p9
        :precondition (and (at_b_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #31068: origin
                    (not_at_b_p12)

                    ; #59876: origin
                    (at_b_p9)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #35326: <==negation-removal== 31068 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (at_b_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #42772: origin
                    (not_at_b_p1)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #42772: origin
                    (not_at_b_p1)

                    ; #82957: origin
                    (at_b_p10)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (at_b_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #42772: origin
                    (not_at_b_p1)

                    ; #65897: origin
                    (at_b_p11)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (at_b_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #42772: origin
                    (not_at_b_p1)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_b_p1))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #42772: origin
                    (not_at_b_p1)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (at_b_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #42772: origin
                    (not_at_b_p1)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #42772: origin
                    (not_at_b_p1)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_b_p1))
        :effect (and
                    ; #42772: origin
                    (not_at_b_p1)

                    ; #52385: origin
                    (at_b_p5)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (at_b_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #42772: origin
                    (not_at_b_p1)

                    ; #44313: origin
                    (at_b_p6)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #42772: origin
                    (not_at_b_p1)

                    ; #64815: origin
                    (at_b_p7)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #42772: origin
                    (not_at_b_p1)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_b_p1))
        :effect (and
                    ; #42772: origin
                    (not_at_b_p1)

                    ; #59876: origin
                    (at_b_p9)

                    ; #12224: <==negation-removal== 42772 (pos)
                    (not (at_b_p1))

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #26161: origin
                    (not_at_b_p2)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #82957: origin
                    (at_b_p10)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #65897: origin
                    (at_b_p11)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #35326: origin
                    (at_b_p12)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #40279: origin
                    (at_b_p2)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #30494: origin
                    (at_b_p3)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #37149: origin
                    (at_b_p4)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #52385: origin
                    (at_b_p5)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #44313: origin
                    (at_b_p6)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #64815: origin
                    (at_b_p7)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #29518: origin
                    (at_b_p8)

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #26161: origin
                    (not_at_b_p2)

                    ; #59876: origin
                    (at_b_p9)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #40279: <==negation-removal== 26161 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_b_p3))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #36454: origin
                    (not_at_b_p3)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_b_p3))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #82957: origin
                    (at_b_p10)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_b_p3))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #65897: origin
                    (at_b_p11)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_b_p3))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #36454: origin
                    (not_at_b_p3)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #40279: origin
                    (at_b_p2)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #36454: origin
                    (not_at_b_p3)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_b_p3))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #37149: origin
                    (at_b_p4)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #52385: origin
                    (at_b_p5)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #44313: origin
                    (at_b_p6)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_b_p3))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #64815: origin
                    (at_b_p7)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_b_p3))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #36454: origin
                    (not_at_b_p3)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #36454: origin
                    (not_at_b_p3)

                    ; #59876: origin
                    (at_b_p9)

                    ; #30494: <==negation-removal== 36454 (pos)
                    (not (at_b_p3))

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p4_p1
        :precondition (and (at_b_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #60593: origin
                    (not_at_b_p4)

                    ; #82957: origin
                    (at_b_p10)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p4_p11
        :precondition (and (at_b_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #60593: origin
                    (not_at_b_p4)

                    ; #65897: origin
                    (at_b_p11)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p2
        :precondition (and (at_b_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (at_b_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #52385: origin
                    (at_b_p5)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (at_b_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #44313: origin
                    (at_b_p6)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p4_p7
        :precondition (and (at_b_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #60593: origin
                    (not_at_b_p4)

                    ; #64815: origin
                    (at_b_p7)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p4_p8
        :precondition (and (at_b_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p4_p9
        :precondition (and (at_b_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #59876: origin
                    (at_b_p9)

                    ; #60593: origin
                    (not_at_b_p4)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #37149: <==negation-removal== 60593 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (at_b_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #15901: origin
                    (not_at_b_p5)

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_b_p5))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #82957: origin
                    (at_b_p10)

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #65897: origin
                    (at_b_p11)

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p5_p12
        :precondition (and (at_b_p5)
                           (succ_p5_p12))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #35326: origin
                    (at_b_p12)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p2
        :precondition (and (at_b_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #40279: origin
                    (at_b_p2)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #30494: origin
                    (at_b_p3)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p4
        :precondition (and (at_b_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #37149: origin
                    (at_b_p4)

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #52385: origin
                    (at_b_p5)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (at_b_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #44313: origin
                    (at_b_p6)

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #64815: origin
                    (at_b_p7)

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #29518: origin
                    (at_b_p8)

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_b_p5))
        :effect (and
                    ; #15901: origin
                    (not_at_b_p5)

                    ; #59876: origin
                    (at_b_p9)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #52385: <==negation-removal== 15901 (pos)
                    (not (at_b_p5))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (succ_p6_p10)
                           (at_b_p6))
        :effect (and
                    ; #79793: origin
                    (not_at_b_p6)

                    ; #82957: origin
                    (at_b_p10)

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p6_p11
        :precondition (and (succ_p6_p11)
                           (at_b_p6))
        :effect (and
                    ; #65897: origin
                    (at_b_p11)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p3
        :precondition (and (succ_p6_p3)
                           (at_b_p6))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #52385: origin
                    (at_b_p5)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #44313: origin
                    (at_b_p6)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #64815: origin
                    (at_b_p7)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p6_p8
        :precondition (and (succ_p6_p8)
                           (at_b_p6))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p6_p9
        :precondition (and (succ_p6_p9)
                           (at_b_p6))
        :effect (and
                    ; #59876: origin
                    (at_b_p9)

                    ; #79793: origin
                    (not_at_b_p6)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #44313: <==negation-removal== 79793 (pos)
                    (not (at_b_p6))))

    (:action move_b_p7_p1
        :precondition (and (succ_p7_p1)
                           (at_b_p7))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #60920: origin
                    (not_at_b_p7)

                    ; #82957: origin
                    (at_b_p10)

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_b_p7))
        :effect (and
                    ; #60920: origin
                    (not_at_b_p7)

                    ; #65897: origin
                    (at_b_p11)

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p2
        :precondition (and (at_b_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (succ_p7_p3)
                           (at_b_p7))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_b_p7))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_b_p7))
        :effect (and
                    ; #52385: origin
                    (at_b_p5)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #44313: origin
                    (at_b_p6)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_b_p7))
        :effect (and
                    ; #60920: origin
                    (not_at_b_p7)

                    ; #64815: origin
                    (at_b_p7)

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_b_p7))
        :effect (and
                    ; #59876: origin
                    (at_b_p9)

                    ; #60920: origin
                    (not_at_b_p7)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #64815: <==negation-removal== 60920 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_b_p8))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (at_b_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #59155: origin
                    (not_at_b_p8)

                    ; #82957: origin
                    (at_b_p10)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #59155: origin
                    (not_at_b_p8)

                    ; #65897: origin
                    (at_b_p11)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p8_p12
        :precondition (and (at_b_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #35326: origin
                    (at_b_p12)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (at_b_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #40279: origin
                    (at_b_p2)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_b_p8))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #37149: origin
                    (at_b_p4)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_b_p8))
        :effect (and
                    ; #52385: origin
                    (at_b_p5)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #44313: origin
                    (at_b_p6)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_b_p8))
        :effect (and
                    ; #59155: origin
                    (not_at_b_p8)

                    ; #64815: origin
                    (at_b_p7)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_b_p8))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #59155: origin
                    (not_at_b_p8)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #59155: origin
                    (not_at_b_p8)

                    ; #59876: origin
                    (at_b_p9)

                    ; #29518: <==negation-removal== 59155 (pos)
                    (not (at_b_p8))

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (at_b_p9)
                           (succ_p9_p1))
        :effect (and
                    ; #12224: origin
                    (at_b_p1)

                    ; #33863: origin
                    (not_at_b_p9)

                    ; #42772: <==negation-removal== 12224 (pos)
                    (not (not_at_b_p1))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (at_b_p9)
                           (succ_p9_p10))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #82957: origin
                    (at_b_p10)

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))

                    ; #82873: <==negation-removal== 82957 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p9_p11
        :precondition (and (at_b_p9)
                           (succ_p9_p11))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #65897: origin
                    (at_b_p11)

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))

                    ; #84662: <==negation-removal== 65897 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #35326: origin
                    (at_b_p12)

                    ; #31068: <==negation-removal== 35326 (pos)
                    (not (not_at_b_p12))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p2
        :precondition (and (at_b_p9)
                           (succ_p9_p2))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #40279: origin
                    (at_b_p2)

                    ; #26161: <==negation-removal== 40279 (pos)
                    (not (not_at_b_p2))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (at_b_p9)
                           (succ_p9_p3))
        :effect (and
                    ; #30494: origin
                    (at_b_p3)

                    ; #33863: origin
                    (not_at_b_p9)

                    ; #36454: <==negation-removal== 30494 (pos)
                    (not (not_at_b_p3))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p4
        :precondition (and (at_b_p9)
                           (succ_p9_p4))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #37149: origin
                    (at_b_p4)

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))

                    ; #60593: <==negation-removal== 37149 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p9_p5
        :precondition (and (at_b_p9)
                           (succ_p9_p5))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #52385: origin
                    (at_b_p5)

                    ; #15901: <==negation-removal== 52385 (pos)
                    (not (not_at_b_p5))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_b_p9))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #44313: origin
                    (at_b_p6)

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))

                    ; #79793: <==negation-removal== 44313 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #64815: origin
                    (at_b_p7)

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))

                    ; #60920: <==negation-removal== 64815 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #29518: origin
                    (at_b_p8)

                    ; #33863: origin
                    (not_at_b_p9)

                    ; #59155: <==negation-removal== 29518 (pos)
                    (not (not_at_b_p8))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_b_p9))
        :effect (and
                    ; #33863: origin
                    (not_at_b_p9)

                    ; #59876: origin
                    (at_b_p9)

                    ; #33863: <==negation-removal== 59876 (pos)
                    (not (not_at_b_p9))

                    ; #59876: <==negation-removal== 33863 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #50318: origin
                    (not_at_c_p10)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #50318: origin
                    (not_at_c_p10)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #66134: origin
                    (at_c_p11)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (at_c_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #50318: origin
                    (not_at_c_p10)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #70502: origin
                    (at_c_p2)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p10_p3
        :precondition (and (at_c_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #50318: origin
                    (not_at_c_p10)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (at_c_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #50318: origin
                    (not_at_c_p10)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #89624: origin
                    (at_c_p5)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #87731: origin
                    (at_c_p6)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #55257: origin
                    (at_c_p7)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #92047: origin
                    (at_c_p8)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #50318: origin
                    (not_at_c_p10)

                    ; #70519: origin
                    (at_c_p9)

                    ; #40249: <==negation-removal== 50318 (pos)
                    (not (at_c_p10))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p11_p1
        :precondition (and (at_c_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #35785: origin
                    (at_c_p1)

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p11_p10
        :precondition (and (at_c_p11)
                           (succ_p11_p10))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #40249: origin
                    (at_c_p10)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (succ_p11_p11)
                           (at_c_p11))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #66134: origin
                    (at_c_p11)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (at_c_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #40576: origin
                    (at_c_p12)

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #70502: origin
                    (at_c_p2)

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p11_p3
        :precondition (and (at_c_p11)
                           (succ_p11_p3))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #31272: origin
                    (not_at_c_p11)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (at_c_p11)
                           (succ_p11_p4))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #38117: origin
                    (at_c_p4)

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #89624: origin
                    (at_c_p5)

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (at_c_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #87731: origin
                    (at_c_p6)

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #55257: origin
                    (at_c_p7)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p8
        :precondition (and (at_c_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #92047: origin
                    (at_c_p8)

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (at_c_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #31272: origin
                    (not_at_c_p11)

                    ; #70519: origin
                    (at_c_p9)

                    ; #66134: <==negation-removal== 31272 (pos)
                    (not (at_c_p11))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_c_p12))
        :effect (and
                    ; #66134: origin
                    (at_c_p11)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_c_p12))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_c_p12))
        :effect (and
                    ; #70502: origin
                    (at_c_p2)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_c_p12))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_c_p12))
        :effect (and
                    ; #89624: origin
                    (at_c_p5)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_c_p12))
        :effect (and
                    ; #87731: origin
                    (at_c_p6)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_c_p12))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_c_p12))
        :effect (and
                    ; #90761: origin
                    (not_at_c_p12)

                    ; #92047: origin
                    (at_c_p8)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_c_p12))
        :effect (and
                    ; #70519: origin
                    (at_c_p9)

                    ; #90761: origin
                    (not_at_c_p12)

                    ; #40576: <==negation-removal== 90761 (pos)
                    (not (at_c_p12))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (at_c_p1)
                           (succ_p1_p1))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p1_p11
        :precondition (and (at_c_p1)
                           (succ_p1_p11))
        :effect (and
                    ; #66134: origin
                    (at_c_p11)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (at_c_p1)
                           (succ_p1_p12))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p1_p2
        :precondition (and (succ_p1_p2)
                           (at_c_p1))
        :effect (and
                    ; #70502: origin
                    (at_c_p2)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p1_p3
        :precondition (and (at_c_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p1_p5
        :precondition (and (succ_p1_p5)
                           (at_c_p1))
        :effect (and
                    ; #73863: origin
                    (not_at_c_p1)

                    ; #89624: origin
                    (at_c_p5)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p1_p6
        :precondition (and (at_c_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #73863: origin
                    (not_at_c_p1)

                    ; #87731: origin
                    (at_c_p6)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #73863: origin
                    (not_at_c_p1)

                    ; #92047: origin
                    (at_c_p8)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p1_p9
        :precondition (and (succ_p1_p9)
                           (at_c_p1))
        :effect (and
                    ; #70519: origin
                    (at_c_p9)

                    ; #73863: origin
                    (not_at_c_p1)

                    ; #35785: <==negation-removal== 73863 (pos)
                    (not (at_c_p1))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #66134: origin
                    (at_c_p11)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_c_p2))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #70502: origin
                    (at_c_p2)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_c_p2))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #80181: origin
                    (not_at_c_p2)

                    ; #89624: origin
                    (at_c_p5)

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (at_c_p2)
                           (succ_p2_p6))
        :effect (and
                    ; #80181: origin
                    (not_at_c_p2)

                    ; #87731: origin
                    (at_c_p6)

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #80181: origin
                    (not_at_c_p2)

                    ; #92047: origin
                    (at_c_p8)

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #70519: origin
                    (at_c_p9)

                    ; #80181: origin
                    (not_at_c_p2)

                    ; #70502: <==negation-removal== 80181 (pos)
                    (not (at_c_p2))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_c_p3))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #35785: origin
                    (at_c_p1)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_c_p3))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #40249: origin
                    (at_c_p10)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #66134: origin
                    (at_c_p11)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #40576: origin
                    (at_c_p12)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #70502: origin
                    (at_c_p2)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #22023: origin
                    (at_c_p3)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_c_p3))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #38117: origin
                    (at_c_p4)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #89624: origin
                    (at_c_p5)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #87731: origin
                    (at_c_p6)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_c_p3))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #55257: origin
                    (at_c_p7)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_c_p3))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #92047: origin
                    (at_c_p8)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #19092: origin
                    (not_at_c_p3)

                    ; #70519: origin
                    (at_c_p9)

                    ; #22023: <==negation-removal== 19092 (pos)
                    (not (at_c_p3))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #64517: origin
                    (not_at_c_p4)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (succ_p4_p10)
                           (at_c_p4))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #64517: origin
                    (not_at_c_p4)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_c_p4))
        :effect (and
                    ; #64517: origin
                    (not_at_c_p4)

                    ; #66134: origin
                    (at_c_p11)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p12
        :precondition (and (succ_p4_p12)
                           (at_c_p4))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #64517: origin
                    (not_at_c_p4)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_c_p4))
        :effect (and
                    ; #64517: origin
                    (not_at_c_p4)

                    ; #70502: origin
                    (at_c_p2)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_c_p4))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #64517: origin
                    (not_at_c_p4)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (succ_p4_p4)
                           (at_c_p4))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #64517: origin
                    (not_at_c_p4)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (succ_p4_p5)
                           (at_c_p4))
        :effect (and
                    ; #64517: origin
                    (not_at_c_p4)

                    ; #89624: origin
                    (at_c_p5)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_c_p4))
        :effect (and
                    ; #64517: origin
                    (not_at_c_p4)

                    ; #87731: origin
                    (at_c_p6)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_c_p4))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #64517: origin
                    (not_at_c_p4)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_c_p4))
        :effect (and
                    ; #64517: origin
                    (not_at_c_p4)

                    ; #92047: origin
                    (at_c_p8)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_c_p4))
        :effect (and
                    ; #64517: origin
                    (not_at_c_p4)

                    ; #70519: origin
                    (at_c_p9)

                    ; #38117: <==negation-removal== 64517 (pos)
                    (not (at_c_p4))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p10
        :precondition (and (succ_p5_p10)
                           (at_c_p5))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p11
        :precondition (and (succ_p5_p11)
                           (at_c_p5))
        :effect (and
                    ; #66134: origin
                    (at_c_p11)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (at_c_p5)
                           (succ_p5_p2))
        :effect (and
                    ; #70502: origin
                    (at_c_p2)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #89063: origin
                    (not_at_c_p5)

                    ; #89624: origin
                    (at_c_p5)

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (at_c_p5)
                           (succ_p5_p6))
        :effect (and
                    ; #87731: origin
                    (at_c_p6)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_c_p5))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #89063: origin
                    (not_at_c_p5)

                    ; #92047: origin
                    (at_c_p8)

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p9
        :precondition (and (succ_p5_p9)
                           (at_c_p5))
        :effect (and
                    ; #70519: origin
                    (at_c_p9)

                    ; #89063: origin
                    (not_at_c_p5)

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))

                    ; #89624: <==negation-removal== 89063 (pos)
                    (not (at_c_p5))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #66134: origin
                    (at_c_p11)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #70502: origin
                    (at_c_p2)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (at_c_p6)
                           (succ_p6_p4))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #79297: origin
                    (not_at_c_p6)

                    ; #89624: origin
                    (at_c_p5)

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #79297: origin
                    (not_at_c_p6)

                    ; #87731: origin
                    (at_c_p6)

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (at_c_p6)
                           (succ_p6_p7))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #79297: origin
                    (not_at_c_p6)

                    ; #92047: origin
                    (at_c_p8)

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #70519: origin
                    (at_c_p9)

                    ; #79297: origin
                    (not_at_c_p6)

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))

                    ; #87731: <==negation-removal== 79297 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #35785: origin
                    (at_c_p1)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #40249: origin
                    (at_c_p10)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (succ_p7_p11)
                           (at_c_p7))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #66134: origin
                    (at_c_p11)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #40576: origin
                    (at_c_p12)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p7_p2
        :precondition (and (at_c_p7)
                           (succ_p7_p2))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #70502: origin
                    (at_c_p2)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #25478: origin
                    (not_at_c_p7)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (at_c_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #38117: origin
                    (at_c_p4)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #89624: origin
                    (at_c_p5)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p7_p6
        :precondition (and (at_c_p7)
                           (succ_p7_p6))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #87731: origin
                    (at_c_p6)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p7_p7
        :precondition (and (succ_p7_p7)
                           (at_c_p7))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #55257: origin
                    (at_c_p7)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (at_c_p7)
                           (succ_p7_p8))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #92047: origin
                    (at_c_p8)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p7_p9
        :precondition (and (succ_p7_p9)
                           (at_c_p7))
        :effect (and
                    ; #25478: origin
                    (not_at_c_p7)

                    ; #70519: origin
                    (at_c_p9)

                    ; #55257: <==negation-removal== 25478 (pos)
                    (not (at_c_p7))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #64287: origin
                    (not_at_c_p8)

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (at_c_p8)
                           (succ_p8_p10))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #64287: origin
                    (not_at_c_p8)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (at_c_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #64287: origin
                    (not_at_c_p8)

                    ; #66134: origin
                    (at_c_p11)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (at_c_p8)
                           (succ_p8_p12))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #64287: origin
                    (not_at_c_p8)

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (at_c_p8)
                           (succ_p8_p2))
        :effect (and
                    ; #64287: origin
                    (not_at_c_p8)

                    ; #70502: origin
                    (at_c_p2)

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #64287: origin
                    (not_at_c_p8)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #64287: origin
                    (not_at_c_p8)

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (succ_p8_p5)
                           (at_c_p8))
        :effect (and
                    ; #64287: origin
                    (not_at_c_p8)

                    ; #89624: origin
                    (at_c_p5)

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #64287: origin
                    (not_at_c_p8)

                    ; #87731: origin
                    (at_c_p6)

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (succ_p8_p7)
                           (at_c_p8))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #64287: origin
                    (not_at_c_p8)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (succ_p8_p8)
                           (at_c_p8))
        :effect (and
                    ; #64287: origin
                    (not_at_c_p8)

                    ; #92047: origin
                    (at_c_p8)

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #64287: origin
                    (not_at_c_p8)

                    ; #70519: origin
                    (at_c_p9)

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))

                    ; #92047: <==negation-removal== 64287 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #35785: origin
                    (at_c_p1)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))

                    ; #73863: <==negation-removal== 35785 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #40249: origin
                    (at_c_p10)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #50318: <==negation-removal== 40249 (pos)
                    (not (not_at_c_p10))

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #66134: origin
                    (at_c_p11)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #31272: <==negation-removal== 66134 (pos)
                    (not (not_at_c_p11))

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #40576: origin
                    (at_c_p12)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))

                    ; #90761: <==negation-removal== 40576 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #70502: origin
                    (at_c_p2)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))

                    ; #80181: <==negation-removal== 70502 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #22023: origin
                    (at_c_p3)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #19092: <==negation-removal== 22023 (pos)
                    (not (not_at_c_p3))

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #38117: origin
                    (at_c_p4)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #64517: <==negation-removal== 38117 (pos)
                    (not (not_at_c_p4))

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #81914: origin
                    (not_at_c_p9)

                    ; #89624: origin
                    (at_c_p5)

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))

                    ; #89063: <==negation-removal== 89624 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_c_p9))
        :effect (and
                    ; #81914: origin
                    (not_at_c_p9)

                    ; #87731: origin
                    (at_c_p6)

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))

                    ; #79297: <==negation-removal== 87731 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #55257: origin
                    (at_c_p7)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #25478: <==negation-removal== 55257 (pos)
                    (not (not_at_c_p7))

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p8
        :precondition (and (succ_p9_p8)
                           (at_c_p9))
        :effect (and
                    ; #81914: origin
                    (not_at_c_p9)

                    ; #92047: origin
                    (at_c_p8)

                    ; #64287: <==negation-removal== 92047 (pos)
                    (not (not_at_c_p8))

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_c_p9))
        :effect (and
                    ; #70519: origin
                    (at_c_p9)

                    ; #81914: origin
                    (not_at_c_p9)

                    ; #70519: <==negation-removal== 81914 (pos)
                    (not (at_c_p9))

                    ; #81914: <==negation-removal== 70519 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #35365: <==closure== 50916 (pos)
                    (Pa_checked_p10)

                    ; #46729: <==closure== 47762 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #47762: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #50916: <==commonly_known== 89888 (pos)
                    (Ba_checked_p10)

                    ; #65685: <==commonly_known== 89888 (pos)
                    (Bb_checked_p10)

                    ; #66572: <==commonly_known== 89888 (pos)
                    (Bc_checked_p10)

                    ; #71831: <==closure== 72964 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #72964: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #89772: <==closure== 65685 (pos)
                    (Pb_checked_p10)

                    ; #89888: origin
                    (checked_p10)

                    ; #92114: <==closure== 66572 (pos)
                    (Pc_checked_p10)

                    ; #11908: <==negation-removal== 65685 (pos)
                    (not (Pb_not_checked_p10))

                    ; #13935: <==negation-removal== 72964 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #23905: <==negation-removal== 66572 (pos)
                    (not (Pc_not_checked_p10))

                    ; #28568: <==negation-removal== 89888 (pos)
                    (not (not_checked_p10))

                    ; #30795: <==negation-removal== 50916 (pos)
                    (not (Pa_not_checked_p10))

                    ; #33594: <==uncertain_firing== 47762 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #34437: <==negation-removal== 47762 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #36239: <==negation-removal== 92114 (pos)
                    (not (Bc_not_checked_p10))

                    ; #43854: <==negation-removal== 71831 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #52012: <==unclosure== 33594 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #54838: <==negation-removal== 35365 (pos)
                    (not (Ba_not_checked_p10))

                    ; #55173: <==unclosure== 56719 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #56719: <==uncertain_firing== 72964 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #76685: <==negation-removal== 46729 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #84825: <==negation-removal== 89772 (pos)
                    (not (Bb_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #26021: <==commonly_known== 29354 (pos)
                    (Bc_checked_p11)

                    ; #27103: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #27261: <==commonly_known== 29354 (pos)
                    (Bb_checked_p11)

                    ; #29354: origin
                    (checked_p11)

                    ; #35556: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #41918: <==commonly_known== 29354 (pos)
                    (Ba_checked_p11)

                    ; #57109: <==closure== 41918 (pos)
                    (Pa_checked_p11)

                    ; #62033: <==closure== 27103 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #62283: <==closure== 27261 (pos)
                    (Pb_checked_p11)

                    ; #65804: <==closure== 35556 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #81819: <==closure== 26021 (pos)
                    (Pc_checked_p11)

                    ; #10100: <==negation-removal== 27261 (pos)
                    (not (Pb_not_checked_p11))

                    ; #36373: <==negation-removal== 35556 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #37239: <==unclosure== 89006 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #39768: <==negation-removal== 81819 (pos)
                    (not (Bc_not_checked_p11))

                    ; #45677: <==unclosure== 72254 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #51232: <==negation-removal== 65804 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #51780: <==negation-removal== 41918 (pos)
                    (not (Pa_not_checked_p11))

                    ; #54933: <==negation-removal== 62283 (pos)
                    (not (Bb_not_checked_p11))

                    ; #55594: <==negation-removal== 62033 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #72254: <==uncertain_firing== 27103 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #75344: <==negation-removal== 57109 (pos)
                    (not (Ba_not_checked_p11))

                    ; #76718: <==negation-removal== 29354 (pos)
                    (not (not_checked_p11))

                    ; #77990: <==negation-removal== 27103 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #78634: <==negation-removal== 26021 (pos)
                    (not (Pc_not_checked_p11))

                    ; #89006: <==uncertain_firing== 35556 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #24137: <==commonly_known== 77767 (pos)
                    (Ba_checked_p12)

                    ; #54106: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #57855: <==closure== 70797 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #67245: <==commonly_known== 77767 (pos)
                    (Bc_checked_p12)

                    ; #70797: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #72234: <==closure== 67245 (pos)
                    (Pc_checked_p12)

                    ; #73941: <==closure== 24137 (pos)
                    (Pa_checked_p12)

                    ; #77767: origin
                    (checked_p12)

                    ; #81692: <==closure== 91342 (pos)
                    (Pb_checked_p12)

                    ; #89587: <==closure== 54106 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #91342: <==commonly_known== 77767 (pos)
                    (Bb_checked_p12)

                    ; #10079: <==negation-removal== 91342 (pos)
                    (not (Pb_not_checked_p12))

                    ; #11340: <==negation-removal== 24137 (pos)
                    (not (Pa_not_checked_p12))

                    ; #11847: <==negation-removal== 89587 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #14095: <==negation-removal== 57855 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #26262: <==negation-removal== 77767 (pos)
                    (not (not_checked_p12))

                    ; #29423: <==negation-removal== 67245 (pos)
                    (not (Pc_not_checked_p12))

                    ; #36439: <==unclosure== 90959 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #37590: <==uncertain_firing== 70797 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #58535: <==negation-removal== 54106 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #60155: <==negation-removal== 72234 (pos)
                    (not (Bc_not_checked_p12))

                    ; #60734: <==negation-removal== 73941 (pos)
                    (not (Ba_not_checked_p12))

                    ; #70649: <==negation-removal== 81692 (pos)
                    (not (Bb_not_checked_p12))

                    ; #77401: <==unclosure== 37590 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #90500: <==negation-removal== 70797 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #90959: <==uncertain_firing== 54106 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11795: <==closure== 78901 (pos)
                    (Pc_checked_p1)

                    ; #15154: <==commonly_known== 66642 (pos)
                    (Bb_checked_p1)

                    ; #23789: <==commonly_known== 66642 (pos)
                    (Ba_checked_p1)

                    ; #30816: <==closure== 97990 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #39132: <==closure== 15154 (pos)
                    (Pb_checked_p1)

                    ; #59589: <==closure== 61597 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #61597: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #65679: <==closure== 23789 (pos)
                    (Pa_checked_p1)

                    ; #66642: origin
                    (checked_p1)

                    ; #78901: <==commonly_known== 66642 (pos)
                    (Bc_checked_p1)

                    ; #97990: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #11166: <==negation-removal== 97990 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #11920: <==negation-removal== 65679 (pos)
                    (not (Ba_not_checked_p1))

                    ; #27354: <==unclosure== 45977 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #30088: <==negation-removal== 23789 (pos)
                    (not (Pa_not_checked_p1))

                    ; #38638: <==negation-removal== 30816 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #41924: <==negation-removal== 61597 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #45977: <==uncertain_firing== 61597 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #53346: <==negation-removal== 15154 (pos)
                    (not (Pb_not_checked_p1))

                    ; #54191: <==negation-removal== 59589 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #61601: <==unclosure== 74889 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #63735: <==negation-removal== 39132 (pos)
                    (not (Bb_not_checked_p1))

                    ; #74889: <==uncertain_firing== 97990 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #75543: <==negation-removal== 11795 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81169: <==negation-removal== 66642 (pos)
                    (not (not_checked_p1))

                    ; #83328: <==negation-removal== 78901 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19934: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #22175: <==closure== 19934 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #35964: <==closure== 62948 (pos)
                    (Pc_checked_p2)

                    ; #43403: <==closure== 62982 (pos)
                    (Pa_checked_p2)

                    ; #49264: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #59417: <==closure== 75430 (pos)
                    (Pb_checked_p2)

                    ; #62948: <==commonly_known== 79871 (pos)
                    (Bc_checked_p2)

                    ; #62982: <==commonly_known== 79871 (pos)
                    (Ba_checked_p2)

                    ; #64147: <==closure== 49264 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #75430: <==commonly_known== 79871 (pos)
                    (Bb_checked_p2)

                    ; #79871: origin
                    (checked_p2)

                    ; #14596: <==negation-removal== 75430 (pos)
                    (not (Pb_not_checked_p2))

                    ; #20522: <==negation-removal== 59417 (pos)
                    (not (Bb_not_checked_p2))

                    ; #26330: <==negation-removal== 79871 (pos)
                    (not (not_checked_p2))

                    ; #27379: <==uncertain_firing== 49264 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #30234: <==uncertain_firing== 19934 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #32051: <==negation-removal== 49264 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #32149: <==unclosure== 30234 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #35658: <==unclosure== 27379 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #37063: <==negation-removal== 64147 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #41436: <==negation-removal== 62948 (pos)
                    (not (Pc_not_checked_p2))

                    ; #48300: <==negation-removal== 35964 (pos)
                    (not (Bc_not_checked_p2))

                    ; #48956: <==negation-removal== 22175 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #69415: <==negation-removal== 43403 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75272: <==negation-removal== 62982 (pos)
                    (not (Pa_not_checked_p2))

                    ; #83097: <==negation-removal== 19934 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #13186: <==closure== 44646 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #17005: <==closure== 32660 (pos)
                    (Pc_checked_p3)

                    ; #21497: <==commonly_known== 24725 (pos)
                    (Bb_checked_p3)

                    ; #22602: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #24725: origin
                    (checked_p3)

                    ; #31936: <==closure== 22602 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #32660: <==commonly_known== 24725 (pos)
                    (Bc_checked_p3)

                    ; #35875: <==commonly_known== 24725 (pos)
                    (Ba_checked_p3)

                    ; #43606: <==closure== 21497 (pos)
                    (Pb_checked_p3)

                    ; #44646: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #84457: <==closure== 35875 (pos)
                    (Pa_checked_p3)

                    ; #12017: <==negation-removal== 17005 (pos)
                    (not (Bc_not_checked_p3))

                    ; #16422: <==negation-removal== 32660 (pos)
                    (not (Pc_not_checked_p3))

                    ; #19894: <==uncertain_firing== 44646 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #20308: <==negation-removal== 31936 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #31835: <==negation-removal== 13186 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #33730: <==negation-removal== 21497 (pos)
                    (not (Pb_not_checked_p3))

                    ; #38652: <==negation-removal== 44646 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #39176: <==negation-removal== 43606 (pos)
                    (not (Bb_not_checked_p3))

                    ; #41098: <==negation-removal== 35875 (pos)
                    (not (Pa_not_checked_p3))

                    ; #54182: <==negation-removal== 24725 (pos)
                    (not (not_checked_p3))

                    ; #54781: <==negation-removal== 84457 (pos)
                    (not (Ba_not_checked_p3))

                    ; #60067: <==uncertain_firing== 22602 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #64868: <==negation-removal== 22602 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #68432: <==unclosure== 60067 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #97043: <==unclosure== 19894 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11165: <==commonly_known== 16012 (pos)
                    (Ba_checked_p4)

                    ; #16012: origin
                    (checked_p4)

                    ; #23755: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #30378: <==closure== 23755 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #31769: <==commonly_known== 16012 (pos)
                    (Bc_checked_p4)

                    ; #43969: <==closure== 88419 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #55689: <==closure== 31769 (pos)
                    (Pc_checked_p4)

                    ; #59257: <==commonly_known== 16012 (pos)
                    (Bb_checked_p4)

                    ; #63500: <==closure== 11165 (pos)
                    (Pa_checked_p4)

                    ; #83145: <==closure== 59257 (pos)
                    (Pb_checked_p4)

                    ; #88419: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #14603: <==unclosure== 68638 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #15833: <==negation-removal== 55689 (pos)
                    (not (Bc_not_checked_p4))

                    ; #24585: <==uncertain_firing== 88419 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #32996: <==negation-removal== 11165 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35241: <==negation-removal== 16012 (pos)
                    (not (not_checked_p4))

                    ; #39331: <==negation-removal== 31769 (pos)
                    (not (Pc_not_checked_p4))

                    ; #41435: <==negation-removal== 83145 (pos)
                    (not (Bb_not_checked_p4))

                    ; #46306: <==unclosure== 24585 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #46960: <==negation-removal== 30378 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #49707: <==negation-removal== 43969 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #53874: <==negation-removal== 23755 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #63182: <==negation-removal== 63500 (pos)
                    (not (Ba_not_checked_p4))

                    ; #63767: <==negation-removal== 59257 (pos)
                    (not (Pb_not_checked_p4))

                    ; #68638: <==uncertain_firing== 23755 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #80445: <==negation-removal== 88419 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12572: <==commonly_known== 37517 (pos)
                    (Bc_checked_p5)

                    ; #29619: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #37517: origin
                    (checked_p5)

                    ; #48146: <==commonly_known== 37517 (pos)
                    (Bb_checked_p5)

                    ; #67118: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #76829: <==closure== 12572 (pos)
                    (Pc_checked_p5)

                    ; #77541: <==closure== 48146 (pos)
                    (Pb_checked_p5)

                    ; #77574: <==commonly_known== 37517 (pos)
                    (Ba_checked_p5)

                    ; #83638: <==closure== 67118 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #83883: <==closure== 77574 (pos)
                    (Pa_checked_p5)

                    ; #90797: <==closure== 29619 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #13809: <==negation-removal== 83638 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #20359: <==negation-removal== 37517 (pos)
                    (not (not_checked_p5))

                    ; #26929: <==negation-removal== 12572 (pos)
                    (not (Pc_not_checked_p5))

                    ; #29002: <==unclosure== 84211 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #35756: <==uncertain_firing== 29619 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #49341: <==negation-removal== 77574 (pos)
                    (not (Pa_not_checked_p5))

                    ; #52048: <==negation-removal== 76829 (pos)
                    (not (Bc_not_checked_p5))

                    ; #64392: <==negation-removal== 77541 (pos)
                    (not (Bb_not_checked_p5))

                    ; #65444: <==negation-removal== 29619 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #72330: <==negation-removal== 83883 (pos)
                    (not (Ba_not_checked_p5))

                    ; #73778: <==negation-removal== 48146 (pos)
                    (not (Pb_not_checked_p5))

                    ; #77735: <==negation-removal== 90797 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #79842: <==negation-removal== 67118 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #83817: <==unclosure== 35756 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #84211: <==uncertain_firing== 67118 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #12405: <==closure== 52279 (pos)
                    (Pb_checked_p6)

                    ; #12423: <==closure== 38400 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #14556: <==closure== 41770 (pos)
                    (Pa_checked_p6)

                    ; #34056: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #36075: <==closure== 66580 (pos)
                    (Pc_checked_p6)

                    ; #38400: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #41770: <==commonly_known== 89474 (pos)
                    (Ba_checked_p6)

                    ; #52279: <==commonly_known== 89474 (pos)
                    (Bb_checked_p6)

                    ; #66580: <==commonly_known== 89474 (pos)
                    (Bc_checked_p6)

                    ; #75282: <==closure== 34056 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #89474: origin
                    (checked_p6)

                    ; #10594: <==uncertain_firing== 34056 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #12842: <==negation-removal== 52279 (pos)
                    (not (Pb_not_checked_p6))

                    ; #28233: <==uncertain_firing== 38400 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #34273: <==unclosure== 10594 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #34978: <==negation-removal== 75282 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #37854: <==negation-removal== 34056 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #48583: <==negation-removal== 36075 (pos)
                    (not (Bc_not_checked_p6))

                    ; #50881: <==negation-removal== 38400 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #51893: <==negation-removal== 12423 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #60552: <==negation-removal== 41770 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60828: <==negation-removal== 12405 (pos)
                    (not (Bb_not_checked_p6))

                    ; #66859: <==negation-removal== 89474 (pos)
                    (not (not_checked_p6))

                    ; #68330: <==negation-removal== 14556 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69250: <==negation-removal== 66580 (pos)
                    (not (Pc_not_checked_p6))

                    ; #72831: <==unclosure== 28233 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15575: <==commonly_known== 30983 (pos)
                    (Bb_checked_p7)

                    ; #21939: <==commonly_known== 30983 (pos)
                    (Bc_checked_p7)

                    ; #30983: origin
                    (checked_p7)

                    ; #34151: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #54599: <==closure== 62304 (pos)
                    (Pa_checked_p7)

                    ; #58127: <==closure== 34151 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #62304: <==commonly_known== 30983 (pos)
                    (Ba_checked_p7)

                    ; #71678: <==closure== 85631 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #78617: <==closure== 15575 (pos)
                    (Pb_checked_p7)

                    ; #85631: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #91847: <==closure== 21939 (pos)
                    (Pc_checked_p7)

                    ; #10739: <==negation-removal== 34151 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #16126: <==negation-removal== 71678 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #19384: <==negation-removal== 58127 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #21841: <==negation-removal== 78617 (pos)
                    (not (Bb_not_checked_p7))

                    ; #22682: <==negation-removal== 54599 (pos)
                    (not (Ba_not_checked_p7))

                    ; #31497: <==unclosure== 41914 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #34259: <==negation-removal== 91847 (pos)
                    (not (Bc_not_checked_p7))

                    ; #38834: <==uncertain_firing== 34151 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #39084: <==negation-removal== 30983 (pos)
                    (not (not_checked_p7))

                    ; #41914: <==uncertain_firing== 85631 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #50956: <==negation-removal== 21939 (pos)
                    (not (Pc_not_checked_p7))

                    ; #55309: <==negation-removal== 15575 (pos)
                    (not (Pb_not_checked_p7))

                    ; #72473: <==negation-removal== 62304 (pos)
                    (not (Pa_not_checked_p7))

                    ; #73841: <==unclosure== 38834 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #84339: <==negation-removal== 85631 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17142: origin
                    (checked_p8)

                    ; #23906: <==closure== 32919 (pos)
                    (Pa_checked_p8)

                    ; #27314: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #32919: <==commonly_known== 17142 (pos)
                    (Ba_checked_p8)

                    ; #35489: <==commonly_known== 17142 (pos)
                    (Bb_checked_p8)

                    ; #45490: <==closure== 59581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #55408: <==closure== 27314 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #58658: <==closure== 84313 (pos)
                    (Pc_checked_p8)

                    ; #59581: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #79912: <==closure== 35489 (pos)
                    (Pb_checked_p8)

                    ; #84313: <==commonly_known== 17142 (pos)
                    (Bc_checked_p8)

                    ; #14893: <==negation-removal== 32919 (pos)
                    (not (Pa_not_checked_p8))

                    ; #26030: <==negation-removal== 59581 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #37525: <==uncertain_firing== 59581 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #40012: <==negation-removal== 35489 (pos)
                    (not (Pb_not_checked_p8))

                    ; #41370: <==uncertain_firing== 27314 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #45763: <==negation-removal== 84313 (pos)
                    (not (Pc_not_checked_p8))

                    ; #49955: <==negation-removal== 45490 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #50999: <==negation-removal== 55408 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #59154: <==unclosure== 41370 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #60619: <==negation-removal== 17142 (pos)
                    (not (not_checked_p8))

                    ; #62395: <==negation-removal== 27314 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #72382: <==negation-removal== 23906 (pos)
                    (not (Ba_not_checked_p8))

                    ; #81135: <==negation-removal== 58658 (pos)
                    (not (Bc_not_checked_p8))

                    ; #88317: <==negation-removal== 79912 (pos)
                    (not (Bb_not_checked_p8))

                    ; #91549: <==unclosure== 37525 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10034: <==commonly_known== 58925 (pos)
                    (Ba_checked_p9)

                    ; #12545: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #16347: <==closure== 54651 (pos)
                    (Pc_checked_p9)

                    ; #16850: <==commonly_known== 58925 (pos)
                    (Bb_checked_p9)

                    ; #30062: <==closure== 16850 (pos)
                    (Pb_checked_p9)

                    ; #43319: <==closure== 10034 (pos)
                    (Pa_checked_p9)

                    ; #54651: <==commonly_known== 58925 (pos)
                    (Bc_checked_p9)

                    ; #56316: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #58925: origin
                    (checked_p9)

                    ; #60388: <==closure== 56316 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #71557: <==closure== 12545 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #25778: <==negation-removal== 16850 (pos)
                    (not (Pb_not_checked_p9))

                    ; #32684: <==negation-removal== 12545 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #33495: <==negation-removal== 10034 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36349: <==negation-removal== 16347 (pos)
                    (not (Bc_not_checked_p9))

                    ; #38969: <==negation-removal== 71557 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #44591: <==negation-removal== 60388 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #45741: <==uncertain_firing== 56316 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #51162: <==negation-removal== 43319 (pos)
                    (not (Ba_not_checked_p9))

                    ; #51550: <==unclosure== 45741 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))

                    ; #56348: <==negation-removal== 30062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #68920: <==uncertain_firing== 12545 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #71534: <==negation-removal== 54651 (pos)
                    (not (Pc_not_checked_p9))

                    ; #76347: <==unclosure== 68920 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #80149: <==negation-removal== 58925 (pos)
                    (not (not_checked_p9))

                    ; #88557: <==negation-removal== 56316 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #11259: <==closure== 78856 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #14610: <==closure== 42226 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #35365: <==closure== 50916 (pos)
                    (Pa_checked_p10)

                    ; #42226: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #50916: <==commonly_known== 89888 (pos)
                    (Ba_checked_p10)

                    ; #65685: <==commonly_known== 89888 (pos)
                    (Bb_checked_p10)

                    ; #66572: <==commonly_known== 89888 (pos)
                    (Bc_checked_p10)

                    ; #78856: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #89772: <==closure== 65685 (pos)
                    (Pb_checked_p10)

                    ; #89888: origin
                    (checked_p10)

                    ; #92114: <==closure== 66572 (pos)
                    (Pc_checked_p10)

                    ; #11908: <==negation-removal== 65685 (pos)
                    (not (Pb_not_checked_p10))

                    ; #18157: <==unclosure== 83446 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #23905: <==negation-removal== 66572 (pos)
                    (not (Pc_not_checked_p10))

                    ; #28568: <==negation-removal== 89888 (pos)
                    (not (not_checked_p10))

                    ; #30795: <==negation-removal== 50916 (pos)
                    (not (Pa_not_checked_p10))

                    ; #36239: <==negation-removal== 92114 (pos)
                    (not (Bc_not_checked_p10))

                    ; #44847: <==uncertain_firing== 42226 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #54838: <==negation-removal== 35365 (pos)
                    (not (Ba_not_checked_p10))

                    ; #76214: <==negation-removal== 78856 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #79732: <==unclosure== 44847 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #83446: <==uncertain_firing== 78856 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #84825: <==negation-removal== 89772 (pos)
                    (not (Bb_not_checked_p10))

                    ; #84858: <==negation-removal== 11259 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #87246: <==negation-removal== 14610 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #90719: <==negation-removal== 42226 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #11543: <==closure== 89344 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #26021: <==commonly_known== 29354 (pos)
                    (Bc_checked_p11)

                    ; #27261: <==commonly_known== 29354 (pos)
                    (Bb_checked_p11)

                    ; #29354: origin
                    (checked_p11)

                    ; #31047: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #41918: <==commonly_known== 29354 (pos)
                    (Ba_checked_p11)

                    ; #57109: <==closure== 41918 (pos)
                    (Pa_checked_p11)

                    ; #62283: <==closure== 27261 (pos)
                    (Pb_checked_p11)

                    ; #81819: <==closure== 26021 (pos)
                    (Pc_checked_p11)

                    ; #83495: <==closure== 31047 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #89344: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #10100: <==negation-removal== 27261 (pos)
                    (not (Pb_not_checked_p11))

                    ; #11628: <==negation-removal== 11543 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #11866: <==unclosure== 27037 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #16468: <==negation-removal== 83495 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #27037: <==uncertain_firing== 31047 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #28384: <==negation-removal== 31047 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #34140: <==negation-removal== 89344 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #39768: <==negation-removal== 81819 (pos)
                    (not (Bc_not_checked_p11))

                    ; #51780: <==negation-removal== 41918 (pos)
                    (not (Pa_not_checked_p11))

                    ; #54933: <==negation-removal== 62283 (pos)
                    (not (Bb_not_checked_p11))

                    ; #74889: <==unclosure== 81387 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #75344: <==negation-removal== 57109 (pos)
                    (not (Ba_not_checked_p11))

                    ; #76718: <==negation-removal== 29354 (pos)
                    (not (not_checked_p11))

                    ; #78634: <==negation-removal== 26021 (pos)
                    (not (Pc_not_checked_p11))

                    ; #81387: <==uncertain_firing== 89344 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #24137: <==commonly_known== 77767 (pos)
                    (Ba_checked_p12)

                    ; #35519: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #67245: <==commonly_known== 77767 (pos)
                    (Bc_checked_p12)

                    ; #72234: <==closure== 67245 (pos)
                    (Pc_checked_p12)

                    ; #73941: <==closure== 24137 (pos)
                    (Pa_checked_p12)

                    ; #74489: <==closure== 35519 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #76077: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #77767: origin
                    (checked_p12)

                    ; #81692: <==closure== 91342 (pos)
                    (Pb_checked_p12)

                    ; #87878: <==closure== 76077 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #91342: <==commonly_known== 77767 (pos)
                    (Bb_checked_p12)

                    ; #10079: <==negation-removal== 91342 (pos)
                    (not (Pb_not_checked_p12))

                    ; #10714: <==unclosure== 80164 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #11340: <==negation-removal== 24137 (pos)
                    (not (Pa_not_checked_p12))

                    ; #19442: <==negation-removal== 76077 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #21614: <==negation-removal== 74489 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #26262: <==negation-removal== 77767 (pos)
                    (not (not_checked_p12))

                    ; #26905: <==uncertain_firing== 76077 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #29423: <==negation-removal== 67245 (pos)
                    (not (Pc_not_checked_p12))

                    ; #60155: <==negation-removal== 72234 (pos)
                    (not (Bc_not_checked_p12))

                    ; #60734: <==negation-removal== 73941 (pos)
                    (not (Ba_not_checked_p12))

                    ; #65899: <==unclosure== 26905 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #70649: <==negation-removal== 81692 (pos)
                    (not (Bb_not_checked_p12))

                    ; #80164: <==uncertain_firing== 35519 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))

                    ; #84130: <==negation-removal== 87878 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #92052: <==negation-removal== 35519 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11795: <==closure== 78901 (pos)
                    (Pc_checked_p1)

                    ; #14004: <==closure== 36634 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #15154: <==commonly_known== 66642 (pos)
                    (Bb_checked_p1)

                    ; #23789: <==commonly_known== 66642 (pos)
                    (Ba_checked_p1)

                    ; #34774: <==closure== 60289 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #36634: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #39132: <==closure== 15154 (pos)
                    (Pb_checked_p1)

                    ; #60289: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #65679: <==closure== 23789 (pos)
                    (Pa_checked_p1)

                    ; #66642: origin
                    (checked_p1)

                    ; #78901: <==commonly_known== 66642 (pos)
                    (Bc_checked_p1)

                    ; #11920: <==negation-removal== 65679 (pos)
                    (not (Ba_not_checked_p1))

                    ; #20382: <==uncertain_firing== 60289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #30088: <==negation-removal== 23789 (pos)
                    (not (Pa_not_checked_p1))

                    ; #33619: <==negation-removal== 14004 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #39187: <==unclosure== 81210 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #46744: <==negation-removal== 34774 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #52298: <==unclosure== 20382 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #53346: <==negation-removal== 15154 (pos)
                    (not (Pb_not_checked_p1))

                    ; #63735: <==negation-removal== 39132 (pos)
                    (not (Bb_not_checked_p1))

                    ; #63795: <==negation-removal== 36634 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))

                    ; #71231: <==negation-removal== 60289 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #75543: <==negation-removal== 11795 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81169: <==negation-removal== 66642 (pos)
                    (not (not_checked_p1))

                    ; #81210: <==uncertain_firing== 36634 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #83328: <==negation-removal== 78901 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #19323: <==closure== 80537 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #28555: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #35964: <==closure== 62948 (pos)
                    (Pc_checked_p2)

                    ; #43403: <==closure== 62982 (pos)
                    (Pa_checked_p2)

                    ; #44399: <==closure== 28555 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #59417: <==closure== 75430 (pos)
                    (Pb_checked_p2)

                    ; #62948: <==commonly_known== 79871 (pos)
                    (Bc_checked_p2)

                    ; #62982: <==commonly_known== 79871 (pos)
                    (Ba_checked_p2)

                    ; #75430: <==commonly_known== 79871 (pos)
                    (Bb_checked_p2)

                    ; #79871: origin
                    (checked_p2)

                    ; #80537: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #10613: <==unclosure== 96528 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #14596: <==negation-removal== 75430 (pos)
                    (not (Pb_not_checked_p2))

                    ; #15124: <==negation-removal== 19323 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #16996: <==negation-removal== 44399 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #20522: <==negation-removal== 59417 (pos)
                    (not (Bb_not_checked_p2))

                    ; #26330: <==negation-removal== 79871 (pos)
                    (not (not_checked_p2))

                    ; #41436: <==negation-removal== 62948 (pos)
                    (not (Pc_not_checked_p2))

                    ; #47305: <==negation-removal== 80537 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #48300: <==negation-removal== 35964 (pos)
                    (not (Bc_not_checked_p2))

                    ; #62727: <==unclosure== 83557 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #69415: <==negation-removal== 43403 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75272: <==negation-removal== 62982 (pos)
                    (not (Pa_not_checked_p2))

                    ; #76726: <==negation-removal== 28555 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #83557: <==uncertain_firing== 28555 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #96528: <==uncertain_firing== 80537 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17005: <==closure== 32660 (pos)
                    (Pc_checked_p3)

                    ; #21497: <==commonly_known== 24725 (pos)
                    (Bb_checked_p3)

                    ; #24725: origin
                    (checked_p3)

                    ; #28790: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #32660: <==commonly_known== 24725 (pos)
                    (Bc_checked_p3)

                    ; #35875: <==commonly_known== 24725 (pos)
                    (Ba_checked_p3)

                    ; #38288: <==closure== 54894 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #43606: <==closure== 21497 (pos)
                    (Pb_checked_p3)

                    ; #54894: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #60922: <==closure== 28790 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #84457: <==closure== 35875 (pos)
                    (Pa_checked_p3)

                    ; #12017: <==negation-removal== 17005 (pos)
                    (not (Bc_not_checked_p3))

                    ; #13041: <==uncertain_firing== 28790 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #16422: <==negation-removal== 32660 (pos)
                    (not (Pc_not_checked_p3))

                    ; #18546: <==negation-removal== 38288 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #33730: <==negation-removal== 21497 (pos)
                    (not (Pb_not_checked_p3))

                    ; #36216: <==negation-removal== 28790 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #39176: <==negation-removal== 43606 (pos)
                    (not (Bb_not_checked_p3))

                    ; #41098: <==negation-removal== 35875 (pos)
                    (not (Pa_not_checked_p3))

                    ; #46120: <==uncertain_firing== 54894 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #52560: <==negation-removal== 54894 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #54182: <==negation-removal== 24725 (pos)
                    (not (not_checked_p3))

                    ; #54537: <==unclosure== 46120 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #54781: <==negation-removal== 84457 (pos)
                    (not (Ba_not_checked_p3))

                    ; #56320: <==negation-removal== 60922 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #82016: <==unclosure== 13041 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11165: <==commonly_known== 16012 (pos)
                    (Ba_checked_p4)

                    ; #12237: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #16012: origin
                    (checked_p4)

                    ; #27658: <==closure== 12237 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #31769: <==commonly_known== 16012 (pos)
                    (Bc_checked_p4)

                    ; #55689: <==closure== 31769 (pos)
                    (Pc_checked_p4)

                    ; #59257: <==commonly_known== 16012 (pos)
                    (Bb_checked_p4)

                    ; #60528: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #63500: <==closure== 11165 (pos)
                    (Pa_checked_p4)

                    ; #76997: <==closure== 60528 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #83145: <==closure== 59257 (pos)
                    (Pb_checked_p4)

                    ; #15833: <==negation-removal== 55689 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20412: <==uncertain_firing== 60528 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #28047: <==negation-removal== 27658 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #32996: <==negation-removal== 11165 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35241: <==negation-removal== 16012 (pos)
                    (not (not_checked_p4))

                    ; #39331: <==negation-removal== 31769 (pos)
                    (not (Pc_not_checked_p4))

                    ; #40880: <==uncertain_firing== 12237 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #41435: <==negation-removal== 83145 (pos)
                    (not (Bb_not_checked_p4))

                    ; #48737: <==unclosure== 20412 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #50355: <==negation-removal== 60528 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #51032: <==negation-removal== 12237 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #54965: <==unclosure== 40880 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #57645: <==negation-removal== 76997 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #63182: <==negation-removal== 63500 (pos)
                    (not (Ba_not_checked_p4))

                    ; #63767: <==negation-removal== 59257 (pos)
                    (not (Pb_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12572: <==commonly_known== 37517 (pos)
                    (Bc_checked_p5)

                    ; #27132: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #37517: origin
                    (checked_p5)

                    ; #37762: <==closure== 27132 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #48146: <==commonly_known== 37517 (pos)
                    (Bb_checked_p5)

                    ; #68520: <==closure== 91015 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #76829: <==closure== 12572 (pos)
                    (Pc_checked_p5)

                    ; #77541: <==closure== 48146 (pos)
                    (Pb_checked_p5)

                    ; #77574: <==commonly_known== 37517 (pos)
                    (Ba_checked_p5)

                    ; #83883: <==closure== 77574 (pos)
                    (Pa_checked_p5)

                    ; #91015: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #11218: <==unclosure== 63411 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))

                    ; #14271: <==negation-removal== 68520 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #16730: <==negation-removal== 37762 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #20359: <==negation-removal== 37517 (pos)
                    (not (not_checked_p5))

                    ; #26929: <==negation-removal== 12572 (pos)
                    (not (Pc_not_checked_p5))

                    ; #49341: <==negation-removal== 77574 (pos)
                    (not (Pa_not_checked_p5))

                    ; #52048: <==negation-removal== 76829 (pos)
                    (not (Bc_not_checked_p5))

                    ; #62937: <==uncertain_firing== 91015 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #63411: <==uncertain_firing== 27132 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #64392: <==negation-removal== 77541 (pos)
                    (not (Bb_not_checked_p5))

                    ; #66751: <==unclosure== 62937 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #72330: <==negation-removal== 83883 (pos)
                    (not (Ba_not_checked_p5))

                    ; #73778: <==negation-removal== 48146 (pos)
                    (not (Pb_not_checked_p5))

                    ; #79817: <==negation-removal== 91015 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #82368: <==negation-removal== 27132 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10591: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #12405: <==closure== 52279 (pos)
                    (Pb_checked_p6)

                    ; #14556: <==closure== 41770 (pos)
                    (Pa_checked_p6)

                    ; #26923: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #36075: <==closure== 66580 (pos)
                    (Pc_checked_p6)

                    ; #41770: <==commonly_known== 89474 (pos)
                    (Ba_checked_p6)

                    ; #52279: <==commonly_known== 89474 (pos)
                    (Bb_checked_p6)

                    ; #66300: <==closure== 26923 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #66580: <==commonly_known== 89474 (pos)
                    (Bc_checked_p6)

                    ; #87915: <==closure== 10591 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #89474: origin
                    (checked_p6)

                    ; #12842: <==negation-removal== 52279 (pos)
                    (not (Pb_not_checked_p6))

                    ; #19415: <==negation-removal== 87915 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #43910: <==negation-removal== 66300 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #48583: <==negation-removal== 36075 (pos)
                    (not (Bc_not_checked_p6))

                    ; #54847: <==uncertain_firing== 26923 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #55638: <==unclosure== 58159 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #58159: <==uncertain_firing== 10591 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #60106: <==negation-removal== 26923 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #60552: <==negation-removal== 41770 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60828: <==negation-removal== 12405 (pos)
                    (not (Bb_not_checked_p6))

                    ; #66859: <==negation-removal== 89474 (pos)
                    (not (not_checked_p6))

                    ; #68330: <==negation-removal== 14556 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69250: <==negation-removal== 66580 (pos)
                    (not (Pc_not_checked_p6))

                    ; #78757: <==unclosure== 54847 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #83163: <==negation-removal== 10591 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #15575: <==commonly_known== 30983 (pos)
                    (Bb_checked_p7)

                    ; #16129: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #21939: <==commonly_known== 30983 (pos)
                    (Bc_checked_p7)

                    ; #30983: origin
                    (checked_p7)

                    ; #37276: <==closure== 16129 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #54599: <==closure== 62304 (pos)
                    (Pa_checked_p7)

                    ; #62304: <==commonly_known== 30983 (pos)
                    (Ba_checked_p7)

                    ; #65579: <==closure== 74875 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #74875: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #78617: <==closure== 15575 (pos)
                    (Pb_checked_p7)

                    ; #91847: <==closure== 21939 (pos)
                    (Pc_checked_p7)

                    ; #10658: <==uncertain_firing== 16129 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #11526: <==negation-removal== 37276 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #13130: <==unclosure== 86344 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #21841: <==negation-removal== 78617 (pos)
                    (not (Bb_not_checked_p7))

                    ; #22682: <==negation-removal== 54599 (pos)
                    (not (Ba_not_checked_p7))

                    ; #25787: <==negation-removal== 74875 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #31996: <==negation-removal== 65579 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #34259: <==negation-removal== 91847 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39084: <==negation-removal== 30983 (pos)
                    (not (not_checked_p7))

                    ; #50956: <==negation-removal== 21939 (pos)
                    (not (Pc_not_checked_p7))

                    ; #55309: <==negation-removal== 15575 (pos)
                    (not (Pb_not_checked_p7))

                    ; #72473: <==negation-removal== 62304 (pos)
                    (not (Pa_not_checked_p7))

                    ; #82253: <==negation-removal== 16129 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #86344: <==uncertain_firing== 74875 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #93030: <==unclosure== 10658 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10606: <==closure== 62888 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #17142: origin
                    (checked_p8)

                    ; #23906: <==closure== 32919 (pos)
                    (Pa_checked_p8)

                    ; #32919: <==commonly_known== 17142 (pos)
                    (Ba_checked_p8)

                    ; #35489: <==commonly_known== 17142 (pos)
                    (Bb_checked_p8)

                    ; #58658: <==closure== 84313 (pos)
                    (Pc_checked_p8)

                    ; #62888: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #69229: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #72810: <==closure== 69229 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #79912: <==closure== 35489 (pos)
                    (Pb_checked_p8)

                    ; #84313: <==commonly_known== 17142 (pos)
                    (Bc_checked_p8)

                    ; #14893: <==negation-removal== 32919 (pos)
                    (not (Pa_not_checked_p8))

                    ; #17940: <==negation-removal== 10606 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #27747: <==unclosure== 74645 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #32102: <==negation-removal== 72810 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #40012: <==negation-removal== 35489 (pos)
                    (not (Pb_not_checked_p8))

                    ; #45763: <==negation-removal== 84313 (pos)
                    (not (Pc_not_checked_p8))

                    ; #59273: <==uncertain_firing== 62888 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #60619: <==negation-removal== 17142 (pos)
                    (not (not_checked_p8))

                    ; #72382: <==negation-removal== 23906 (pos)
                    (not (Ba_not_checked_p8))

                    ; #73270: <==negation-removal== 69229 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #74645: <==uncertain_firing== 69229 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #81135: <==negation-removal== 58658 (pos)
                    (not (Bc_not_checked_p8))

                    ; #86041: <==negation-removal== 62888 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #86195: <==unclosure== 59273 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #88317: <==negation-removal== 79912 (pos)
                    (not (Bb_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10034: <==commonly_known== 58925 (pos)
                    (Ba_checked_p9)

                    ; #10488: <==closure== 55479 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #16347: <==closure== 54651 (pos)
                    (Pc_checked_p9)

                    ; #16850: <==commonly_known== 58925 (pos)
                    (Bb_checked_p9)

                    ; #30062: <==closure== 16850 (pos)
                    (Pb_checked_p9)

                    ; #43319: <==closure== 10034 (pos)
                    (Pa_checked_p9)

                    ; #54651: <==commonly_known== 58925 (pos)
                    (Bc_checked_p9)

                    ; #55479: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #58925: origin
                    (checked_p9)

                    ; #79920: <==closure== 83903 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #83903: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #25778: <==negation-removal== 16850 (pos)
                    (not (Pb_not_checked_p9))

                    ; #25938: <==negation-removal== 55479 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #28337: <==uncertain_firing== 55479 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #32741: <==negation-removal== 79920 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #33495: <==negation-removal== 10034 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36349: <==negation-removal== 16347 (pos)
                    (not (Bc_not_checked_p9))

                    ; #46189: <==unclosure== 50164 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #49223: <==unclosure== 28337 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #50164: <==uncertain_firing== 83903 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #51162: <==negation-removal== 43319 (pos)
                    (not (Ba_not_checked_p9))

                    ; #56348: <==negation-removal== 30062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #71534: <==negation-removal== 54651 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77567: <==negation-removal== 10488 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #80149: <==negation-removal== 58925 (pos)
                    (not (not_checked_p9))

                    ; #84682: <==negation-removal== 83903 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #35365: <==closure== 50916 (pos)
                    (Pa_checked_p10)

                    ; #43724: <==closure== 60040 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #43991: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #50916: <==commonly_known== 89888 (pos)
                    (Ba_checked_p10)

                    ; #59680: <==closure== 43991 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #60040: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #65685: <==commonly_known== 89888 (pos)
                    (Bb_checked_p10)

                    ; #66572: <==commonly_known== 89888 (pos)
                    (Bc_checked_p10)

                    ; #89772: <==closure== 65685 (pos)
                    (Pb_checked_p10)

                    ; #89888: origin
                    (checked_p10)

                    ; #92114: <==closure== 66572 (pos)
                    (Pc_checked_p10)

                    ; #11908: <==negation-removal== 65685 (pos)
                    (not (Pb_not_checked_p10))

                    ; #14735: <==negation-removal== 60040 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #23905: <==negation-removal== 66572 (pos)
                    (not (Pc_not_checked_p10))

                    ; #28568: <==negation-removal== 89888 (pos)
                    (not (not_checked_p10))

                    ; #30795: <==negation-removal== 50916 (pos)
                    (not (Pa_not_checked_p10))

                    ; #36239: <==negation-removal== 92114 (pos)
                    (not (Bc_not_checked_p10))

                    ; #40811: <==negation-removal== 43724 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #46974: <==uncertain_firing== 43991 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #54838: <==negation-removal== 35365 (pos)
                    (not (Ba_not_checked_p10))

                    ; #75899: <==unclosure== 46974 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #83025: <==negation-removal== 43991 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #83467: <==uncertain_firing== 60040 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #84825: <==negation-removal== 89772 (pos)
                    (not (Bb_not_checked_p10))

                    ; #87932: <==negation-removal== 59680 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #88181: <==unclosure== 83467 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #26021: <==commonly_known== 29354 (pos)
                    (Bc_checked_p11)

                    ; #27261: <==commonly_known== 29354 (pos)
                    (Bb_checked_p11)

                    ; #29354: origin
                    (checked_p11)

                    ; #39548: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #41918: <==commonly_known== 29354 (pos)
                    (Ba_checked_p11)

                    ; #44072: <==closure== 67584 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #57109: <==closure== 41918 (pos)
                    (Pa_checked_p11)

                    ; #62283: <==closure== 27261 (pos)
                    (Pb_checked_p11)

                    ; #67584: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #71331: <==closure== 39548 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #81819: <==closure== 26021 (pos)
                    (Pc_checked_p11)

                    ; #10100: <==negation-removal== 27261 (pos)
                    (not (Pb_not_checked_p11))

                    ; #28521: <==negation-removal== 39548 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #39768: <==negation-removal== 81819 (pos)
                    (not (Bc_not_checked_p11))

                    ; #40842: <==negation-removal== 67584 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #47177: <==uncertain_firing== 39548 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #47311: <==uncertain_firing== 67584 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #48964: <==unclosure== 47177 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #51406: <==negation-removal== 71331 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #51780: <==negation-removal== 41918 (pos)
                    (not (Pa_not_checked_p11))

                    ; #53251: <==unclosure== 47311 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #54933: <==negation-removal== 62283 (pos)
                    (not (Bb_not_checked_p11))

                    ; #58671: <==negation-removal== 44072 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #75344: <==negation-removal== 57109 (pos)
                    (not (Ba_not_checked_p11))

                    ; #76718: <==negation-removal== 29354 (pos)
                    (not (not_checked_p11))

                    ; #78634: <==negation-removal== 26021 (pos)
                    (not (Pc_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #24137: <==commonly_known== 77767 (pos)
                    (Ba_checked_p12)

                    ; #26111: <==closure== 72600 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #67218: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #67245: <==commonly_known== 77767 (pos)
                    (Bc_checked_p12)

                    ; #72234: <==closure== 67245 (pos)
                    (Pc_checked_p12)

                    ; #72600: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #73941: <==closure== 24137 (pos)
                    (Pa_checked_p12)

                    ; #76462: <==closure== 67218 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #77767: origin
                    (checked_p12)

                    ; #81692: <==closure== 91342 (pos)
                    (Pb_checked_p12)

                    ; #91342: <==commonly_known== 77767 (pos)
                    (Bb_checked_p12)

                    ; #10079: <==negation-removal== 91342 (pos)
                    (not (Pb_not_checked_p12))

                    ; #11340: <==negation-removal== 24137 (pos)
                    (not (Pa_not_checked_p12))

                    ; #23462: <==negation-removal== 67218 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #26262: <==negation-removal== 77767 (pos)
                    (not (not_checked_p12))

                    ; #29423: <==negation-removal== 67245 (pos)
                    (not (Pc_not_checked_p12))

                    ; #33654: <==unclosure== 49087 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #36941: <==unclosure== 81141 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #48020: <==negation-removal== 72600 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #49087: <==uncertain_firing== 67218 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #59459: <==negation-removal== 76462 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #60155: <==negation-removal== 72234 (pos)
                    (not (Bc_not_checked_p12))

                    ; #60734: <==negation-removal== 73941 (pos)
                    (not (Ba_not_checked_p12))

                    ; #70649: <==negation-removal== 81692 (pos)
                    (not (Bb_not_checked_p12))

                    ; #79750: <==negation-removal== 26111 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #81141: <==uncertain_firing== 72600 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #11795: <==closure== 78901 (pos)
                    (Pc_checked_p1)

                    ; #15154: <==commonly_known== 66642 (pos)
                    (Bb_checked_p1)

                    ; #23789: <==commonly_known== 66642 (pos)
                    (Ba_checked_p1)

                    ; #31104: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #39132: <==closure== 15154 (pos)
                    (Pb_checked_p1)

                    ; #41144: <==closure== 31104 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #65679: <==closure== 23789 (pos)
                    (Pa_checked_p1)

                    ; #66642: origin
                    (checked_p1)

                    ; #75781: <==closure== 76140 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #76140: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #78901: <==commonly_known== 66642 (pos)
                    (Bc_checked_p1)

                    ; #11920: <==negation-removal== 65679 (pos)
                    (not (Ba_not_checked_p1))

                    ; #21171: <==negation-removal== 76140 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #27741: <==unclosure== 46783 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #30088: <==negation-removal== 23789 (pos)
                    (not (Pa_not_checked_p1))

                    ; #46783: <==uncertain_firing== 76140 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #47456: <==uncertain_firing== 31104 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #53346: <==negation-removal== 15154 (pos)
                    (not (Pb_not_checked_p1))

                    ; #53848: <==negation-removal== 41144 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #57626: <==unclosure== 47456 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #63735: <==negation-removal== 39132 (pos)
                    (not (Bb_not_checked_p1))

                    ; #64619: <==negation-removal== 75781 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #65759: <==negation-removal== 31104 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #75543: <==negation-removal== 11795 (pos)
                    (not (Bc_not_checked_p1))

                    ; #81169: <==negation-removal== 66642 (pos)
                    (not (not_checked_p1))

                    ; #83328: <==negation-removal== 78901 (pos)
                    (not (Pc_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #35964: <==closure== 62948 (pos)
                    (Pc_checked_p2)

                    ; #39870: <==closure== 80282 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #43403: <==closure== 62982 (pos)
                    (Pa_checked_p2)

                    ; #44985: <==closure== 63525 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #59417: <==closure== 75430 (pos)
                    (Pb_checked_p2)

                    ; #62948: <==commonly_known== 79871 (pos)
                    (Bc_checked_p2)

                    ; #62982: <==commonly_known== 79871 (pos)
                    (Ba_checked_p2)

                    ; #63525: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #75430: <==commonly_known== 79871 (pos)
                    (Bb_checked_p2)

                    ; #79871: origin
                    (checked_p2)

                    ; #80282: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #11275: <==negation-removal== 39870 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #14596: <==negation-removal== 75430 (pos)
                    (not (Pb_not_checked_p2))

                    ; #20522: <==negation-removal== 59417 (pos)
                    (not (Bb_not_checked_p2))

                    ; #21395: <==negation-removal== 80282 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #26330: <==negation-removal== 79871 (pos)
                    (not (not_checked_p2))

                    ; #35358: <==negation-removal== 63525 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #41436: <==negation-removal== 62948 (pos)
                    (not (Pc_not_checked_p2))

                    ; #43850: <==negation-removal== 44985 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #48300: <==negation-removal== 35964 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56543: <==unclosure== 76858 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #69415: <==negation-removal== 43403 (pos)
                    (not (Ba_not_checked_p2))

                    ; #75272: <==negation-removal== 62982 (pos)
                    (not (Pa_not_checked_p2))

                    ; #76858: <==uncertain_firing== 80282 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #78307: <==unclosure== 84950 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #84950: <==uncertain_firing== 63525 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #17005: <==closure== 32660 (pos)
                    (Pc_checked_p3)

                    ; #21497: <==commonly_known== 24725 (pos)
                    (Bb_checked_p3)

                    ; #22705: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #24725: origin
                    (checked_p3)

                    ; #32660: <==commonly_known== 24725 (pos)
                    (Bc_checked_p3)

                    ; #35875: <==commonly_known== 24725 (pos)
                    (Ba_checked_p3)

                    ; #43606: <==closure== 21497 (pos)
                    (Pb_checked_p3)

                    ; #48087: <==closure== 22705 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #55038: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #67429: <==closure== 55038 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #84457: <==closure== 35875 (pos)
                    (Pa_checked_p3)

                    ; #12017: <==negation-removal== 17005 (pos)
                    (not (Bc_not_checked_p3))

                    ; #16125: <==unclosure== 27263 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #16422: <==negation-removal== 32660 (pos)
                    (not (Pc_not_checked_p3))

                    ; #23703: <==negation-removal== 55038 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #25168: <==unclosure== 62916 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #27263: <==uncertain_firing== 22705 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #33730: <==negation-removal== 21497 (pos)
                    (not (Pb_not_checked_p3))

                    ; #39176: <==negation-removal== 43606 (pos)
                    (not (Bb_not_checked_p3))

                    ; #41098: <==negation-removal== 35875 (pos)
                    (not (Pa_not_checked_p3))

                    ; #54182: <==negation-removal== 24725 (pos)
                    (not (not_checked_p3))

                    ; #54781: <==negation-removal== 84457 (pos)
                    (not (Ba_not_checked_p3))

                    ; #62916: <==uncertain_firing== 55038 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #67495: <==negation-removal== 22705 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #78882: <==negation-removal== 48087 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #84317: <==negation-removal== 67429 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #11165: <==commonly_known== 16012 (pos)
                    (Ba_checked_p4)

                    ; #15048: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #16012: origin
                    (checked_p4)

                    ; #24740: <==closure== 15048 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #31769: <==commonly_known== 16012 (pos)
                    (Bc_checked_p4)

                    ; #38465: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #55689: <==closure== 31769 (pos)
                    (Pc_checked_p4)

                    ; #59257: <==commonly_known== 16012 (pos)
                    (Bb_checked_p4)

                    ; #63500: <==closure== 11165 (pos)
                    (Pa_checked_p4)

                    ; #83145: <==closure== 59257 (pos)
                    (Pb_checked_p4)

                    ; #87475: <==closure== 38465 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #15833: <==negation-removal== 55689 (pos)
                    (not (Bc_not_checked_p4))

                    ; #20059: <==negation-removal== 38465 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #23380: <==uncertain_firing== 38465 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #28811: <==uncertain_firing== 15048 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #30764: <==unclosure== 28811 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #32996: <==negation-removal== 11165 (pos)
                    (not (Pa_not_checked_p4))

                    ; #35241: <==negation-removal== 16012 (pos)
                    (not (not_checked_p4))

                    ; #39331: <==negation-removal== 31769 (pos)
                    (not (Pc_not_checked_p4))

                    ; #41435: <==negation-removal== 83145 (pos)
                    (not (Bb_not_checked_p4))

                    ; #42922: <==negation-removal== 87475 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #63093: <==negation-removal== 24740 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #63182: <==negation-removal== 63500 (pos)
                    (not (Ba_not_checked_p4))

                    ; #63767: <==negation-removal== 59257 (pos)
                    (not (Pb_not_checked_p4))

                    ; #64599: <==unclosure== 23380 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #88349: <==negation-removal== 15048 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #12572: <==commonly_known== 37517 (pos)
                    (Bc_checked_p5)

                    ; #34094: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #37517: origin
                    (checked_p5)

                    ; #41545: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #48146: <==commonly_known== 37517 (pos)
                    (Bb_checked_p5)

                    ; #76276: <==closure== 34094 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #76829: <==closure== 12572 (pos)
                    (Pc_checked_p5)

                    ; #77541: <==closure== 48146 (pos)
                    (Pb_checked_p5)

                    ; #77574: <==commonly_known== 37517 (pos)
                    (Ba_checked_p5)

                    ; #83883: <==closure== 77574 (pos)
                    (Pa_checked_p5)

                    ; #90692: <==closure== 41545 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #20359: <==negation-removal== 37517 (pos)
                    (not (not_checked_p5))

                    ; #26929: <==negation-removal== 12572 (pos)
                    (not (Pc_not_checked_p5))

                    ; #43714: <==uncertain_firing== 34094 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #49113: <==negation-removal== 41545 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #49341: <==negation-removal== 77574 (pos)
                    (not (Pa_not_checked_p5))

                    ; #51035: <==unclosure== 53740 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #51500: <==negation-removal== 34094 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #52048: <==negation-removal== 76829 (pos)
                    (not (Bc_not_checked_p5))

                    ; #53305: <==unclosure== 43714 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #53740: <==uncertain_firing== 41545 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #64392: <==negation-removal== 77541 (pos)
                    (not (Bb_not_checked_p5))

                    ; #67765: <==negation-removal== 90692 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #71860: <==negation-removal== 76276 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #72330: <==negation-removal== 83883 (pos)
                    (not (Ba_not_checked_p5))

                    ; #73778: <==negation-removal== 48146 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #10289: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #12405: <==closure== 52279 (pos)
                    (Pb_checked_p6)

                    ; #14556: <==closure== 41770 (pos)
                    (Pa_checked_p6)

                    ; #25132: <==closure== 33409 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #33173: <==closure== 10289 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #33409: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #36075: <==closure== 66580 (pos)
                    (Pc_checked_p6)

                    ; #41770: <==commonly_known== 89474 (pos)
                    (Ba_checked_p6)

                    ; #52279: <==commonly_known== 89474 (pos)
                    (Bb_checked_p6)

                    ; #66580: <==commonly_known== 89474 (pos)
                    (Bc_checked_p6)

                    ; #89474: origin
                    (checked_p6)

                    ; #12842: <==negation-removal== 52279 (pos)
                    (not (Pb_not_checked_p6))

                    ; #14814: <==negation-removal== 25132 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #14818: <==uncertain_firing== 10289 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #17345: <==unclosure== 14818 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #38353: <==negation-removal== 33173 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #39381: <==negation-removal== 10289 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #48583: <==negation-removal== 36075 (pos)
                    (not (Bc_not_checked_p6))

                    ; #52868: <==unclosure== 87597 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #60552: <==negation-removal== 41770 (pos)
                    (not (Pa_not_checked_p6))

                    ; #60828: <==negation-removal== 12405 (pos)
                    (not (Bb_not_checked_p6))

                    ; #61433: <==negation-removal== 33409 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #66859: <==negation-removal== 89474 (pos)
                    (not (not_checked_p6))

                    ; #68330: <==negation-removal== 14556 (pos)
                    (not (Ba_not_checked_p6))

                    ; #69250: <==negation-removal== 66580 (pos)
                    (not (Pc_not_checked_p6))

                    ; #87597: <==uncertain_firing== 33409 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #10694: <==closure== 55712 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #15575: <==commonly_known== 30983 (pos)
                    (Bb_checked_p7)

                    ; #21939: <==commonly_known== 30983 (pos)
                    (Bc_checked_p7)

                    ; #27019: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #30983: origin
                    (checked_p7)

                    ; #49899: <==closure== 27019 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #54599: <==closure== 62304 (pos)
                    (Pa_checked_p7)

                    ; #55712: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #62304: <==commonly_known== 30983 (pos)
                    (Ba_checked_p7)

                    ; #78617: <==closure== 15575 (pos)
                    (Pb_checked_p7)

                    ; #91847: <==closure== 21939 (pos)
                    (Pc_checked_p7)

                    ; #15010: <==uncertain_firing== 55712 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #15013: <==unclosure== 15411 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #15411: <==uncertain_firing== 27019 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #21841: <==negation-removal== 78617 (pos)
                    (not (Bb_not_checked_p7))

                    ; #22682: <==negation-removal== 54599 (pos)
                    (not (Ba_not_checked_p7))

                    ; #25727: <==negation-removal== 55712 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #34259: <==negation-removal== 91847 (pos)
                    (not (Bc_not_checked_p7))

                    ; #39084: <==negation-removal== 30983 (pos)
                    (not (not_checked_p7))

                    ; #50956: <==negation-removal== 21939 (pos)
                    (not (Pc_not_checked_p7))

                    ; #55309: <==negation-removal== 15575 (pos)
                    (not (Pb_not_checked_p7))

                    ; #60855: <==negation-removal== 27019 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #72227: <==negation-removal== 49899 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #72473: <==negation-removal== 62304 (pos)
                    (not (Pa_not_checked_p7))

                    ; #77288: <==unclosure== 15010 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))

                    ; #90936: <==negation-removal== 10694 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #17142: origin
                    (checked_p8)

                    ; #23906: <==closure== 32919 (pos)
                    (Pa_checked_p8)

                    ; #32919: <==commonly_known== 17142 (pos)
                    (Ba_checked_p8)

                    ; #35489: <==commonly_known== 17142 (pos)
                    (Bb_checked_p8)

                    ; #41128: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #45504: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #58658: <==closure== 84313 (pos)
                    (Pc_checked_p8)

                    ; #70406: <==closure== 41128 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #79912: <==closure== 35489 (pos)
                    (Pb_checked_p8)

                    ; #84313: <==commonly_known== 17142 (pos)
                    (Bc_checked_p8)

                    ; #87237: <==closure== 45504 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #10582: <==negation-removal== 70406 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #13390: <==negation-removal== 45504 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #14893: <==negation-removal== 32919 (pos)
                    (not (Pa_not_checked_p8))

                    ; #21030: <==unclosure== 30523 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #25080: <==negation-removal== 87237 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #30523: <==uncertain_firing== 41128 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #34872: <==negation-removal== 41128 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #40012: <==negation-removal== 35489 (pos)
                    (not (Pb_not_checked_p8))

                    ; #45763: <==negation-removal== 84313 (pos)
                    (not (Pc_not_checked_p8))

                    ; #46542: <==uncertain_firing== 45504 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))

                    ; #60619: <==negation-removal== 17142 (pos)
                    (not (not_checked_p8))

                    ; #72382: <==negation-removal== 23906 (pos)
                    (not (Ba_not_checked_p8))

                    ; #81135: <==negation-removal== 58658 (pos)
                    (not (Bc_not_checked_p8))

                    ; #88317: <==negation-removal== 79912 (pos)
                    (not (Bb_not_checked_p8))

                    ; #89406: <==unclosure== 46542 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #10034: <==commonly_known== 58925 (pos)
                    (Ba_checked_p9)

                    ; #16347: <==closure== 54651 (pos)
                    (Pc_checked_p9)

                    ; #16850: <==commonly_known== 58925 (pos)
                    (Bb_checked_p9)

                    ; #30062: <==closure== 16850 (pos)
                    (Pb_checked_p9)

                    ; #43319: <==closure== 10034 (pos)
                    (Pa_checked_p9)

                    ; #54651: <==commonly_known== 58925 (pos)
                    (Bc_checked_p9)

                    ; #58925: origin
                    (checked_p9)

                    ; #60127: <==closure== 81271 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #61890: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #68077: <==closure== 61890 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #81271: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #25778: <==negation-removal== 16850 (pos)
                    (not (Pb_not_checked_p9))

                    ; #26798: <==uncertain_firing== 61890 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #33495: <==negation-removal== 10034 (pos)
                    (not (Pa_not_checked_p9))

                    ; #36349: <==negation-removal== 16347 (pos)
                    (not (Bc_not_checked_p9))

                    ; #50439: <==negation-removal== 61890 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #51162: <==negation-removal== 43319 (pos)
                    (not (Ba_not_checked_p9))

                    ; #55091: <==unclosure== 84669 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #56348: <==negation-removal== 30062 (pos)
                    (not (Bb_not_checked_p9))

                    ; #67971: <==unclosure== 26798 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #69303: <==negation-removal== 60127 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #71534: <==negation-removal== 54651 (pos)
                    (not (Pc_not_checked_p9))

                    ; #77690: <==negation-removal== 68077 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #78047: <==negation-removal== 81271 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #80149: <==negation-removal== 58925 (pos)
                    (not (not_checked_p9))

                    ; #84669: <==uncertain_firing== 81271 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))))

)