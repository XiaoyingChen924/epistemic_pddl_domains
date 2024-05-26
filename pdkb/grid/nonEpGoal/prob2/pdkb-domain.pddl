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
        :precondition (and (Pa_survivorat_s_p10)
                           (Ba_survivorat_s_p10)
                           (at_a_p10))
        :effect (and
                    ; #17468: <==closure== 59976 (pos)
                    (Pc_survivorat_s_p10)

                    ; #18373: <==closure== 78598 (pos)
                    (Pa_survivorat_s_p10)

                    ; #50028: <==closure== 84588 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59976: origin
                    (Bc_survivorat_s_p10)

                    ; #78598: origin
                    (Ba_survivorat_s_p10)

                    ; #84588: origin
                    (Bb_survivorat_s_p10)

                    ; #34699: <==negation-removal== 18373 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #58623: <==negation-removal== 84588 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #66143: <==negation-removal== 59976 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #74025: <==negation-removal== 17468 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88239: <==negation-removal== 50028 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88997: <==negation-removal== 78598 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_b_s
        :precondition (and (at_b_p10)
                           (Pb_survivorat_s_p10)
                           (Bb_survivorat_s_p10))
        :effect (and
                    ; #17468: <==closure== 59976 (pos)
                    (Pc_survivorat_s_p10)

                    ; #18373: <==closure== 78598 (pos)
                    (Pa_survivorat_s_p10)

                    ; #50028: <==closure== 84588 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59976: origin
                    (Bc_survivorat_s_p10)

                    ; #78598: origin
                    (Ba_survivorat_s_p10)

                    ; #84588: origin
                    (Bb_survivorat_s_p10)

                    ; #34699: <==negation-removal== 18373 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #58623: <==negation-removal== 84588 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #66143: <==negation-removal== 59976 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #74025: <==negation-removal== 17468 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88239: <==negation-removal== 50028 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88997: <==negation-removal== 78598 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p10_c_s
        :precondition (and (Pc_survivorat_s_p10)
                           (Bc_survivorat_s_p10)
                           (at_c_p10))
        :effect (and
                    ; #17468: <==closure== 59976 (pos)
                    (Pc_survivorat_s_p10)

                    ; #18373: <==closure== 78598 (pos)
                    (Pa_survivorat_s_p10)

                    ; #50028: <==closure== 84588 (pos)
                    (Pb_survivorat_s_p10)

                    ; #59976: origin
                    (Bc_survivorat_s_p10)

                    ; #78598: origin
                    (Ba_survivorat_s_p10)

                    ; #84588: origin
                    (Bb_survivorat_s_p10)

                    ; #34699: <==negation-removal== 18373 (pos)
                    (not (Ba_not_survivorat_s_p10))

                    ; #58623: <==negation-removal== 84588 (pos)
                    (not (Pb_not_survivorat_s_p10))

                    ; #66143: <==negation-removal== 59976 (pos)
                    (not (Pc_not_survivorat_s_p10))

                    ; #74025: <==negation-removal== 17468 (pos)
                    (not (Bc_not_survivorat_s_p10))

                    ; #88239: <==negation-removal== 50028 (pos)
                    (not (Bb_not_survivorat_s_p10))

                    ; #88997: <==negation-removal== 78598 (pos)
                    (not (Pa_not_survivorat_s_p10))))

    (:action comm_p11_a_s
        :precondition (and (Ba_survivorat_s_p11)
                           (at_a_p11)
                           (Pa_survivorat_s_p11))
        :effect (and
                    ; #13686: origin
                    (Bb_survivorat_s_p11)

                    ; #14537: <==closure== 84282 (pos)
                    (Pc_survivorat_s_p11)

                    ; #47367: origin
                    (Ba_survivorat_s_p11)

                    ; #74570: <==closure== 47367 (pos)
                    (Pa_survivorat_s_p11)

                    ; #84282: origin
                    (Bc_survivorat_s_p11)

                    ; #84497: <==closure== 13686 (pos)
                    (Pb_survivorat_s_p11)

                    ; #15817: <==negation-removal== 47367 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #23172: <==negation-removal== 84282 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #30317: <==negation-removal== 13686 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #38167: <==negation-removal== 14537 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #92150: <==negation-removal== 74570 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #94038: <==negation-removal== 84497 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_b_s
        :precondition (and (at_b_p11)
                           (Bb_survivorat_s_p11)
                           (Pb_survivorat_s_p11))
        :effect (and
                    ; #13686: origin
                    (Bb_survivorat_s_p11)

                    ; #14537: <==closure== 84282 (pos)
                    (Pc_survivorat_s_p11)

                    ; #47367: origin
                    (Ba_survivorat_s_p11)

                    ; #74570: <==closure== 47367 (pos)
                    (Pa_survivorat_s_p11)

                    ; #84282: origin
                    (Bc_survivorat_s_p11)

                    ; #84497: <==closure== 13686 (pos)
                    (Pb_survivorat_s_p11)

                    ; #15817: <==negation-removal== 47367 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #23172: <==negation-removal== 84282 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #30317: <==negation-removal== 13686 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #38167: <==negation-removal== 14537 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #92150: <==negation-removal== 74570 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #94038: <==negation-removal== 84497 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p11_c_s
        :precondition (and (Bc_survivorat_s_p11)
                           (Pc_survivorat_s_p11)
                           (at_c_p11))
        :effect (and
                    ; #13686: origin
                    (Bb_survivorat_s_p11)

                    ; #14537: <==closure== 84282 (pos)
                    (Pc_survivorat_s_p11)

                    ; #47367: origin
                    (Ba_survivorat_s_p11)

                    ; #74570: <==closure== 47367 (pos)
                    (Pa_survivorat_s_p11)

                    ; #84282: origin
                    (Bc_survivorat_s_p11)

                    ; #84497: <==closure== 13686 (pos)
                    (Pb_survivorat_s_p11)

                    ; #15817: <==negation-removal== 47367 (pos)
                    (not (Pa_not_survivorat_s_p11))

                    ; #23172: <==negation-removal== 84282 (pos)
                    (not (Pc_not_survivorat_s_p11))

                    ; #30317: <==negation-removal== 13686 (pos)
                    (not (Pb_not_survivorat_s_p11))

                    ; #38167: <==negation-removal== 14537 (pos)
                    (not (Bc_not_survivorat_s_p11))

                    ; #92150: <==negation-removal== 74570 (pos)
                    (not (Ba_not_survivorat_s_p11))

                    ; #94038: <==negation-removal== 84497 (pos)
                    (not (Bb_not_survivorat_s_p11))))

    (:action comm_p12_a_s
        :precondition (and (Pa_survivorat_s_p12)
                           (Ba_survivorat_s_p12)
                           (at_a_p12))
        :effect (and
                    ; #30726: <==closure== 32435 (pos)
                    (Pb_survivorat_s_p12)

                    ; #32435: origin
                    (Bb_survivorat_s_p12)

                    ; #41364: <==closure== 44339 (pos)
                    (Pc_survivorat_s_p12)

                    ; #44339: origin
                    (Bc_survivorat_s_p12)

                    ; #50575: <==closure== 72014 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72014: origin
                    (Ba_survivorat_s_p12)

                    ; #18755: <==negation-removal== 72014 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #22568: <==negation-removal== 50575 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28079: <==negation-removal== 41364 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #29632: <==negation-removal== 44339 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #42336: <==negation-removal== 32435 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44880: <==negation-removal== 30726 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_b_s
        :precondition (and (Bb_survivorat_s_p12)
                           (Pb_survivorat_s_p12)
                           (at_b_p12))
        :effect (and
                    ; #30726: <==closure== 32435 (pos)
                    (Pb_survivorat_s_p12)

                    ; #32435: origin
                    (Bb_survivorat_s_p12)

                    ; #41364: <==closure== 44339 (pos)
                    (Pc_survivorat_s_p12)

                    ; #44339: origin
                    (Bc_survivorat_s_p12)

                    ; #50575: <==closure== 72014 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72014: origin
                    (Ba_survivorat_s_p12)

                    ; #18755: <==negation-removal== 72014 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #22568: <==negation-removal== 50575 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28079: <==negation-removal== 41364 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #29632: <==negation-removal== 44339 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #42336: <==negation-removal== 32435 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44880: <==negation-removal== 30726 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p12_c_s
        :precondition (and (Bc_survivorat_s_p12)
                           (at_c_p12)
                           (Pc_survivorat_s_p12))
        :effect (and
                    ; #30726: <==closure== 32435 (pos)
                    (Pb_survivorat_s_p12)

                    ; #32435: origin
                    (Bb_survivorat_s_p12)

                    ; #41364: <==closure== 44339 (pos)
                    (Pc_survivorat_s_p12)

                    ; #44339: origin
                    (Bc_survivorat_s_p12)

                    ; #50575: <==closure== 72014 (pos)
                    (Pa_survivorat_s_p12)

                    ; #72014: origin
                    (Ba_survivorat_s_p12)

                    ; #18755: <==negation-removal== 72014 (pos)
                    (not (Pa_not_survivorat_s_p12))

                    ; #22568: <==negation-removal== 50575 (pos)
                    (not (Ba_not_survivorat_s_p12))

                    ; #28079: <==negation-removal== 41364 (pos)
                    (not (Bc_not_survivorat_s_p12))

                    ; #29632: <==negation-removal== 44339 (pos)
                    (not (Pc_not_survivorat_s_p12))

                    ; #42336: <==negation-removal== 32435 (pos)
                    (not (Pb_not_survivorat_s_p12))

                    ; #44880: <==negation-removal== 30726 (pos)
                    (not (Bb_not_survivorat_s_p12))))

    (:action comm_p1_a_s
        :precondition (and (at_a_p1)
                           (Ba_survivorat_s_p1)
                           (Pa_survivorat_s_p1))
        :effect (and
                    ; #17021: <==closure== 57614 (pos)
                    (Pb_survivorat_s_p1)

                    ; #38283: origin
                    (Bc_survivorat_s_p1)

                    ; #48937: <==closure== 80062 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57614: origin
                    (Bb_survivorat_s_p1)

                    ; #73150: <==closure== 38283 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80062: origin
                    (Ba_survivorat_s_p1)

                    ; #24108: <==negation-removal== 38283 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #37925: <==negation-removal== 48937 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #45779: <==negation-removal== 17021 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #49303: <==negation-removal== 80062 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #52330: <==negation-removal== 57614 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #63360: <==negation-removal== 73150 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_b_s
        :precondition (and (Bb_survivorat_s_p1)
                           (Pb_survivorat_s_p1)
                           (at_b_p1))
        :effect (and
                    ; #17021: <==closure== 57614 (pos)
                    (Pb_survivorat_s_p1)

                    ; #38283: origin
                    (Bc_survivorat_s_p1)

                    ; #48937: <==closure== 80062 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57614: origin
                    (Bb_survivorat_s_p1)

                    ; #73150: <==closure== 38283 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80062: origin
                    (Ba_survivorat_s_p1)

                    ; #24108: <==negation-removal== 38283 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #37925: <==negation-removal== 48937 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #45779: <==negation-removal== 17021 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #49303: <==negation-removal== 80062 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #52330: <==negation-removal== 57614 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #63360: <==negation-removal== 73150 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p1_c_s
        :precondition (and (Bc_survivorat_s_p1)
                           (at_c_p1)
                           (Pc_survivorat_s_p1))
        :effect (and
                    ; #17021: <==closure== 57614 (pos)
                    (Pb_survivorat_s_p1)

                    ; #38283: origin
                    (Bc_survivorat_s_p1)

                    ; #48937: <==closure== 80062 (pos)
                    (Pa_survivorat_s_p1)

                    ; #57614: origin
                    (Bb_survivorat_s_p1)

                    ; #73150: <==closure== 38283 (pos)
                    (Pc_survivorat_s_p1)

                    ; #80062: origin
                    (Ba_survivorat_s_p1)

                    ; #24108: <==negation-removal== 38283 (pos)
                    (not (Pc_not_survivorat_s_p1))

                    ; #37925: <==negation-removal== 48937 (pos)
                    (not (Ba_not_survivorat_s_p1))

                    ; #45779: <==negation-removal== 17021 (pos)
                    (not (Bb_not_survivorat_s_p1))

                    ; #49303: <==negation-removal== 80062 (pos)
                    (not (Pa_not_survivorat_s_p1))

                    ; #52330: <==negation-removal== 57614 (pos)
                    (not (Pb_not_survivorat_s_p1))

                    ; #63360: <==negation-removal== 73150 (pos)
                    (not (Bc_not_survivorat_s_p1))))

    (:action comm_p2_a_s
        :precondition (and (Ba_survivorat_s_p2)
                           (at_a_p2)
                           (Pa_survivorat_s_p2))
        :effect (and
                    ; #13249: origin
                    (Bb_survivorat_s_p2)

                    ; #13866: <==closure== 91361 (pos)
                    (Pc_survivorat_s_p2)

                    ; #41605: <==closure== 13249 (pos)
                    (Pb_survivorat_s_p2)

                    ; #82523: origin
                    (Ba_survivorat_s_p2)

                    ; #89651: <==closure== 82523 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91361: origin
                    (Bc_survivorat_s_p2)

                    ; #21419: <==negation-removal== 82523 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #47133: <==negation-removal== 13866 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #48157: <==negation-removal== 41605 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69058: <==negation-removal== 89651 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #74900: <==negation-removal== 91361 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #81122: <==negation-removal== 13249 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_b_s
        :precondition (and (Pb_survivorat_s_p2)
                           (Bb_survivorat_s_p2)
                           (at_b_p2))
        :effect (and
                    ; #13249: origin
                    (Bb_survivorat_s_p2)

                    ; #13866: <==closure== 91361 (pos)
                    (Pc_survivorat_s_p2)

                    ; #41605: <==closure== 13249 (pos)
                    (Pb_survivorat_s_p2)

                    ; #82523: origin
                    (Ba_survivorat_s_p2)

                    ; #89651: <==closure== 82523 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91361: origin
                    (Bc_survivorat_s_p2)

                    ; #21419: <==negation-removal== 82523 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #47133: <==negation-removal== 13866 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #48157: <==negation-removal== 41605 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69058: <==negation-removal== 89651 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #74900: <==negation-removal== 91361 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #81122: <==negation-removal== 13249 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p2_c_s
        :precondition (and (Bc_survivorat_s_p2)
                           (at_c_p2)
                           (Pc_survivorat_s_p2))
        :effect (and
                    ; #13249: origin
                    (Bb_survivorat_s_p2)

                    ; #13866: <==closure== 91361 (pos)
                    (Pc_survivorat_s_p2)

                    ; #41605: <==closure== 13249 (pos)
                    (Pb_survivorat_s_p2)

                    ; #82523: origin
                    (Ba_survivorat_s_p2)

                    ; #89651: <==closure== 82523 (pos)
                    (Pa_survivorat_s_p2)

                    ; #91361: origin
                    (Bc_survivorat_s_p2)

                    ; #21419: <==negation-removal== 82523 (pos)
                    (not (Pa_not_survivorat_s_p2))

                    ; #47133: <==negation-removal== 13866 (pos)
                    (not (Bc_not_survivorat_s_p2))

                    ; #48157: <==negation-removal== 41605 (pos)
                    (not (Bb_not_survivorat_s_p2))

                    ; #69058: <==negation-removal== 89651 (pos)
                    (not (Ba_not_survivorat_s_p2))

                    ; #74900: <==negation-removal== 91361 (pos)
                    (not (Pc_not_survivorat_s_p2))

                    ; #81122: <==negation-removal== 13249 (pos)
                    (not (Pb_not_survivorat_s_p2))))

    (:action comm_p3_a_s
        :precondition (and (Pa_survivorat_s_p3)
                           (Ba_survivorat_s_p3)
                           (at_a_p3))
        :effect (and
                    ; #17970: origin
                    (Ba_survivorat_s_p3)

                    ; #44501: origin
                    (Bc_survivorat_s_p3)

                    ; #66811: <==closure== 75971 (pos)
                    (Pb_survivorat_s_p3)

                    ; #75971: origin
                    (Bb_survivorat_s_p3)

                    ; #79726: <==closure== 17970 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84781: <==closure== 44501 (pos)
                    (Pc_survivorat_s_p3)

                    ; #12681: <==negation-removal== 79726 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #25396: <==negation-removal== 75971 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34773: <==negation-removal== 17970 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #52353: <==negation-removal== 84781 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #56679: <==negation-removal== 44501 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #64428: <==negation-removal== 66811 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_b_s
        :precondition (and (at_b_p3)
                           (Pb_survivorat_s_p3)
                           (Bb_survivorat_s_p3))
        :effect (and
                    ; #17970: origin
                    (Ba_survivorat_s_p3)

                    ; #44501: origin
                    (Bc_survivorat_s_p3)

                    ; #66811: <==closure== 75971 (pos)
                    (Pb_survivorat_s_p3)

                    ; #75971: origin
                    (Bb_survivorat_s_p3)

                    ; #79726: <==closure== 17970 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84781: <==closure== 44501 (pos)
                    (Pc_survivorat_s_p3)

                    ; #12681: <==negation-removal== 79726 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #25396: <==negation-removal== 75971 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34773: <==negation-removal== 17970 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #52353: <==negation-removal== 84781 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #56679: <==negation-removal== 44501 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #64428: <==negation-removal== 66811 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p3_c_s
        :precondition (and (at_c_p3)
                           (Bc_survivorat_s_p3)
                           (Pc_survivorat_s_p3))
        :effect (and
                    ; #17970: origin
                    (Ba_survivorat_s_p3)

                    ; #44501: origin
                    (Bc_survivorat_s_p3)

                    ; #66811: <==closure== 75971 (pos)
                    (Pb_survivorat_s_p3)

                    ; #75971: origin
                    (Bb_survivorat_s_p3)

                    ; #79726: <==closure== 17970 (pos)
                    (Pa_survivorat_s_p3)

                    ; #84781: <==closure== 44501 (pos)
                    (Pc_survivorat_s_p3)

                    ; #12681: <==negation-removal== 79726 (pos)
                    (not (Ba_not_survivorat_s_p3))

                    ; #25396: <==negation-removal== 75971 (pos)
                    (not (Pb_not_survivorat_s_p3))

                    ; #34773: <==negation-removal== 17970 (pos)
                    (not (Pa_not_survivorat_s_p3))

                    ; #52353: <==negation-removal== 84781 (pos)
                    (not (Bc_not_survivorat_s_p3))

                    ; #56679: <==negation-removal== 44501 (pos)
                    (not (Pc_not_survivorat_s_p3))

                    ; #64428: <==negation-removal== 66811 (pos)
                    (not (Bb_not_survivorat_s_p3))))

    (:action comm_p4_a_s
        :precondition (and (Ba_survivorat_s_p4)
                           (Pa_survivorat_s_p4)
                           (at_a_p4))
        :effect (and
                    ; #12444: <==closure== 39300 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18512: origin
                    (Bc_survivorat_s_p4)

                    ; #21305: origin
                    (Bb_survivorat_s_p4)

                    ; #39300: origin
                    (Ba_survivorat_s_p4)

                    ; #74131: <==closure== 18512 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79467: <==closure== 21305 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54249: <==negation-removal== 18512 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69432: <==negation-removal== 79467 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72936: <==negation-removal== 12444 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #84235: <==negation-removal== 21305 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #85215: <==negation-removal== 74131 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #87548: <==negation-removal== 39300 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_b_s
        :precondition (and (Pb_survivorat_s_p4)
                           (at_b_p4)
                           (Bb_survivorat_s_p4))
        :effect (and
                    ; #12444: <==closure== 39300 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18512: origin
                    (Bc_survivorat_s_p4)

                    ; #21305: origin
                    (Bb_survivorat_s_p4)

                    ; #39300: origin
                    (Ba_survivorat_s_p4)

                    ; #74131: <==closure== 18512 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79467: <==closure== 21305 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54249: <==negation-removal== 18512 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69432: <==negation-removal== 79467 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72936: <==negation-removal== 12444 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #84235: <==negation-removal== 21305 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #85215: <==negation-removal== 74131 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #87548: <==negation-removal== 39300 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p4_c_s
        :precondition (and (at_c_p4)
                           (Bc_survivorat_s_p4)
                           (Pc_survivorat_s_p4))
        :effect (and
                    ; #12444: <==closure== 39300 (pos)
                    (Pa_survivorat_s_p4)

                    ; #18512: origin
                    (Bc_survivorat_s_p4)

                    ; #21305: origin
                    (Bb_survivorat_s_p4)

                    ; #39300: origin
                    (Ba_survivorat_s_p4)

                    ; #74131: <==closure== 18512 (pos)
                    (Pc_survivorat_s_p4)

                    ; #79467: <==closure== 21305 (pos)
                    (Pb_survivorat_s_p4)

                    ; #54249: <==negation-removal== 18512 (pos)
                    (not (Pc_not_survivorat_s_p4))

                    ; #69432: <==negation-removal== 79467 (pos)
                    (not (Bb_not_survivorat_s_p4))

                    ; #72936: <==negation-removal== 12444 (pos)
                    (not (Ba_not_survivorat_s_p4))

                    ; #84235: <==negation-removal== 21305 (pos)
                    (not (Pb_not_survivorat_s_p4))

                    ; #85215: <==negation-removal== 74131 (pos)
                    (not (Bc_not_survivorat_s_p4))

                    ; #87548: <==negation-removal== 39300 (pos)
                    (not (Pa_not_survivorat_s_p4))))

    (:action comm_p5_a_s
        :precondition (and (at_a_p5)
                           (Pa_survivorat_s_p5)
                           (Ba_survivorat_s_p5))
        :effect (and
                    ; #12604: origin
                    (Ba_survivorat_s_p5)

                    ; #18426: <==closure== 47736 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38548: origin
                    (Bc_survivorat_s_p5)

                    ; #47736: origin
                    (Bb_survivorat_s_p5)

                    ; #58727: <==closure== 38548 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91279: <==closure== 12604 (pos)
                    (Pa_survivorat_s_p5)

                    ; #13303: <==negation-removal== 91279 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29494: <==negation-removal== 58727 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #39398: <==negation-removal== 38548 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55432: <==negation-removal== 18426 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #56701: <==negation-removal== 47736 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #79318: <==negation-removal== 12604 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_b_s
        :precondition (and (Pb_survivorat_s_p5)
                           (Bb_survivorat_s_p5)
                           (at_b_p5))
        :effect (and
                    ; #12604: origin
                    (Ba_survivorat_s_p5)

                    ; #18426: <==closure== 47736 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38548: origin
                    (Bc_survivorat_s_p5)

                    ; #47736: origin
                    (Bb_survivorat_s_p5)

                    ; #58727: <==closure== 38548 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91279: <==closure== 12604 (pos)
                    (Pa_survivorat_s_p5)

                    ; #13303: <==negation-removal== 91279 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29494: <==negation-removal== 58727 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #39398: <==negation-removal== 38548 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55432: <==negation-removal== 18426 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #56701: <==negation-removal== 47736 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #79318: <==negation-removal== 12604 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p5_c_s
        :precondition (and (Bc_survivorat_s_p5)
                           (at_c_p5)
                           (Pc_survivorat_s_p5))
        :effect (and
                    ; #12604: origin
                    (Ba_survivorat_s_p5)

                    ; #18426: <==closure== 47736 (pos)
                    (Pb_survivorat_s_p5)

                    ; #38548: origin
                    (Bc_survivorat_s_p5)

                    ; #47736: origin
                    (Bb_survivorat_s_p5)

                    ; #58727: <==closure== 38548 (pos)
                    (Pc_survivorat_s_p5)

                    ; #91279: <==closure== 12604 (pos)
                    (Pa_survivorat_s_p5)

                    ; #13303: <==negation-removal== 91279 (pos)
                    (not (Ba_not_survivorat_s_p5))

                    ; #29494: <==negation-removal== 58727 (pos)
                    (not (Bc_not_survivorat_s_p5))

                    ; #39398: <==negation-removal== 38548 (pos)
                    (not (Pc_not_survivorat_s_p5))

                    ; #55432: <==negation-removal== 18426 (pos)
                    (not (Bb_not_survivorat_s_p5))

                    ; #56701: <==negation-removal== 47736 (pos)
                    (not (Pb_not_survivorat_s_p5))

                    ; #79318: <==negation-removal== 12604 (pos)
                    (not (Pa_not_survivorat_s_p5))))

    (:action comm_p6_a_s
        :precondition (and (at_a_p6)
                           (Ba_survivorat_s_p6)
                           (Pa_survivorat_s_p6))
        :effect (and
                    ; #13857: origin
                    (Bc_survivorat_s_p6)

                    ; #24459: origin
                    (Bb_survivorat_s_p6)

                    ; #42496: <==closure== 62639 (pos)
                    (Pa_survivorat_s_p6)

                    ; #55309: <==closure== 24459 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62639: origin
                    (Ba_survivorat_s_p6)

                    ; #85450: <==closure== 13857 (pos)
                    (Pc_survivorat_s_p6)

                    ; #21746: <==negation-removal== 55309 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #34704: <==negation-removal== 85450 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #37232: <==negation-removal== 24459 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72141: <==negation-removal== 42496 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #80770: <==negation-removal== 13857 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89846: <==negation-removal== 62639 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_b_s
        :precondition (and (Bb_survivorat_s_p6)
                           (at_b_p6)
                           (Pb_survivorat_s_p6))
        :effect (and
                    ; #13857: origin
                    (Bc_survivorat_s_p6)

                    ; #24459: origin
                    (Bb_survivorat_s_p6)

                    ; #42496: <==closure== 62639 (pos)
                    (Pa_survivorat_s_p6)

                    ; #55309: <==closure== 24459 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62639: origin
                    (Ba_survivorat_s_p6)

                    ; #85450: <==closure== 13857 (pos)
                    (Pc_survivorat_s_p6)

                    ; #21746: <==negation-removal== 55309 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #34704: <==negation-removal== 85450 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #37232: <==negation-removal== 24459 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72141: <==negation-removal== 42496 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #80770: <==negation-removal== 13857 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89846: <==negation-removal== 62639 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p6_c_s
        :precondition (and (at_c_p6)
                           (Pc_survivorat_s_p6)
                           (Bc_survivorat_s_p6))
        :effect (and
                    ; #13857: origin
                    (Bc_survivorat_s_p6)

                    ; #24459: origin
                    (Bb_survivorat_s_p6)

                    ; #42496: <==closure== 62639 (pos)
                    (Pa_survivorat_s_p6)

                    ; #55309: <==closure== 24459 (pos)
                    (Pb_survivorat_s_p6)

                    ; #62639: origin
                    (Ba_survivorat_s_p6)

                    ; #85450: <==closure== 13857 (pos)
                    (Pc_survivorat_s_p6)

                    ; #21746: <==negation-removal== 55309 (pos)
                    (not (Bb_not_survivorat_s_p6))

                    ; #34704: <==negation-removal== 85450 (pos)
                    (not (Bc_not_survivorat_s_p6))

                    ; #37232: <==negation-removal== 24459 (pos)
                    (not (Pb_not_survivorat_s_p6))

                    ; #72141: <==negation-removal== 42496 (pos)
                    (not (Ba_not_survivorat_s_p6))

                    ; #80770: <==negation-removal== 13857 (pos)
                    (not (Pc_not_survivorat_s_p6))

                    ; #89846: <==negation-removal== 62639 (pos)
                    (not (Pa_not_survivorat_s_p6))))

    (:action comm_p7_a_s
        :precondition (and (Ba_survivorat_s_p7)
                           (at_a_p7)
                           (Pa_survivorat_s_p7))
        :effect (and
                    ; #16973: origin
                    (Bb_survivorat_s_p7)

                    ; #27649: <==closure== 16973 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32972: <==closure== 52642 (pos)
                    (Pa_survivorat_s_p7)

                    ; #52642: origin
                    (Ba_survivorat_s_p7)

                    ; #55425: origin
                    (Bc_survivorat_s_p7)

                    ; #56251: <==closure== 55425 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43091: <==negation-removal== 32972 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #54727: <==negation-removal== 27649 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #68318: <==negation-removal== 56251 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #73805: <==negation-removal== 52642 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #88227: <==negation-removal== 55425 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #99824: <==negation-removal== 16973 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_b_s
        :precondition (and (Pb_survivorat_s_p7)
                           (at_b_p7)
                           (Bb_survivorat_s_p7))
        :effect (and
                    ; #16973: origin
                    (Bb_survivorat_s_p7)

                    ; #27649: <==closure== 16973 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32972: <==closure== 52642 (pos)
                    (Pa_survivorat_s_p7)

                    ; #52642: origin
                    (Ba_survivorat_s_p7)

                    ; #55425: origin
                    (Bc_survivorat_s_p7)

                    ; #56251: <==closure== 55425 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43091: <==negation-removal== 32972 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #54727: <==negation-removal== 27649 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #68318: <==negation-removal== 56251 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #73805: <==negation-removal== 52642 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #88227: <==negation-removal== 55425 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #99824: <==negation-removal== 16973 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p7_c_s
        :precondition (and (Bc_survivorat_s_p7)
                           (at_c_p7)
                           (Pc_survivorat_s_p7))
        :effect (and
                    ; #16973: origin
                    (Bb_survivorat_s_p7)

                    ; #27649: <==closure== 16973 (pos)
                    (Pb_survivorat_s_p7)

                    ; #32972: <==closure== 52642 (pos)
                    (Pa_survivorat_s_p7)

                    ; #52642: origin
                    (Ba_survivorat_s_p7)

                    ; #55425: origin
                    (Bc_survivorat_s_p7)

                    ; #56251: <==closure== 55425 (pos)
                    (Pc_survivorat_s_p7)

                    ; #43091: <==negation-removal== 32972 (pos)
                    (not (Ba_not_survivorat_s_p7))

                    ; #54727: <==negation-removal== 27649 (pos)
                    (not (Bb_not_survivorat_s_p7))

                    ; #68318: <==negation-removal== 56251 (pos)
                    (not (Bc_not_survivorat_s_p7))

                    ; #73805: <==negation-removal== 52642 (pos)
                    (not (Pa_not_survivorat_s_p7))

                    ; #88227: <==negation-removal== 55425 (pos)
                    (not (Pc_not_survivorat_s_p7))

                    ; #99824: <==negation-removal== 16973 (pos)
                    (not (Pb_not_survivorat_s_p7))))

    (:action comm_p8_a_s
        :precondition (and (Pa_survivorat_s_p8)
                           (at_a_p8)
                           (Ba_survivorat_s_p8))
        :effect (and
                    ; #17736: <==closure== 43528 (pos)
                    (Pb_survivorat_s_p8)

                    ; #30716: <==closure== 32309 (pos)
                    (Pa_survivorat_s_p8)

                    ; #32309: origin
                    (Ba_survivorat_s_p8)

                    ; #43528: origin
                    (Bb_survivorat_s_p8)

                    ; #56888: origin
                    (Bc_survivorat_s_p8)

                    ; #87790: <==closure== 56888 (pos)
                    (Pc_survivorat_s_p8)

                    ; #12853: <==negation-removal== 87790 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #21776: <==negation-removal== 17736 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #32911: <==negation-removal== 56888 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #39263: <==negation-removal== 43528 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #61304: <==negation-removal== 32309 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #86903: <==negation-removal== 30716 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_b_s
        :precondition (and (at_b_p8)
                           (Pb_survivorat_s_p8)
                           (Bb_survivorat_s_p8))
        :effect (and
                    ; #17736: <==closure== 43528 (pos)
                    (Pb_survivorat_s_p8)

                    ; #30716: <==closure== 32309 (pos)
                    (Pa_survivorat_s_p8)

                    ; #32309: origin
                    (Ba_survivorat_s_p8)

                    ; #43528: origin
                    (Bb_survivorat_s_p8)

                    ; #56888: origin
                    (Bc_survivorat_s_p8)

                    ; #87790: <==closure== 56888 (pos)
                    (Pc_survivorat_s_p8)

                    ; #12853: <==negation-removal== 87790 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #21776: <==negation-removal== 17736 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #32911: <==negation-removal== 56888 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #39263: <==negation-removal== 43528 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #61304: <==negation-removal== 32309 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #86903: <==negation-removal== 30716 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p8_c_s
        :precondition (and (Bc_survivorat_s_p8)
                           (at_c_p8)
                           (Pc_survivorat_s_p8))
        :effect (and
                    ; #17736: <==closure== 43528 (pos)
                    (Pb_survivorat_s_p8)

                    ; #30716: <==closure== 32309 (pos)
                    (Pa_survivorat_s_p8)

                    ; #32309: origin
                    (Ba_survivorat_s_p8)

                    ; #43528: origin
                    (Bb_survivorat_s_p8)

                    ; #56888: origin
                    (Bc_survivorat_s_p8)

                    ; #87790: <==closure== 56888 (pos)
                    (Pc_survivorat_s_p8)

                    ; #12853: <==negation-removal== 87790 (pos)
                    (not (Bc_not_survivorat_s_p8))

                    ; #21776: <==negation-removal== 17736 (pos)
                    (not (Bb_not_survivorat_s_p8))

                    ; #32911: <==negation-removal== 56888 (pos)
                    (not (Pc_not_survivorat_s_p8))

                    ; #39263: <==negation-removal== 43528 (pos)
                    (not (Pb_not_survivorat_s_p8))

                    ; #61304: <==negation-removal== 32309 (pos)
                    (not (Pa_not_survivorat_s_p8))

                    ; #86903: <==negation-removal== 30716 (pos)
                    (not (Ba_not_survivorat_s_p8))))

    (:action comm_p9_a_s
        :precondition (and (Pa_survivorat_s_p9)
                           (at_a_p9)
                           (Ba_survivorat_s_p9))
        :effect (and
                    ; #23375: <==closure== 89945 (pos)
                    (Pc_survivorat_s_p9)

                    ; #28862: <==closure== 37251 (pos)
                    (Pa_survivorat_s_p9)

                    ; #37251: origin
                    (Ba_survivorat_s_p9)

                    ; #42513: <==closure== 66819 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66819: origin
                    (Bb_survivorat_s_p9)

                    ; #89945: origin
                    (Bc_survivorat_s_p9)

                    ; #50768: <==negation-removal== 37251 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #57974: <==negation-removal== 89945 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #62178: <==negation-removal== 28862 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82456: <==negation-removal== 66819 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #84793: <==negation-removal== 23375 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #86858: <==negation-removal== 42513 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_b_s
        :precondition (and (Bb_survivorat_s_p9)
                           (Pb_survivorat_s_p9)
                           (at_b_p9))
        :effect (and
                    ; #23375: <==closure== 89945 (pos)
                    (Pc_survivorat_s_p9)

                    ; #28862: <==closure== 37251 (pos)
                    (Pa_survivorat_s_p9)

                    ; #37251: origin
                    (Ba_survivorat_s_p9)

                    ; #42513: <==closure== 66819 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66819: origin
                    (Bb_survivorat_s_p9)

                    ; #89945: origin
                    (Bc_survivorat_s_p9)

                    ; #50768: <==negation-removal== 37251 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #57974: <==negation-removal== 89945 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #62178: <==negation-removal== 28862 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82456: <==negation-removal== 66819 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #84793: <==negation-removal== 23375 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #86858: <==negation-removal== 42513 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action comm_p9_c_s
        :precondition (and (Pc_survivorat_s_p9)
                           (at_c_p9)
                           (Bc_survivorat_s_p9))
        :effect (and
                    ; #23375: <==closure== 89945 (pos)
                    (Pc_survivorat_s_p9)

                    ; #28862: <==closure== 37251 (pos)
                    (Pa_survivorat_s_p9)

                    ; #37251: origin
                    (Ba_survivorat_s_p9)

                    ; #42513: <==closure== 66819 (pos)
                    (Pb_survivorat_s_p9)

                    ; #66819: origin
                    (Bb_survivorat_s_p9)

                    ; #89945: origin
                    (Bc_survivorat_s_p9)

                    ; #50768: <==negation-removal== 37251 (pos)
                    (not (Pa_not_survivorat_s_p9))

                    ; #57974: <==negation-removal== 89945 (pos)
                    (not (Pc_not_survivorat_s_p9))

                    ; #62178: <==negation-removal== 28862 (pos)
                    (not (Ba_not_survivorat_s_p9))

                    ; #82456: <==negation-removal== 66819 (pos)
                    (not (Pb_not_survivorat_s_p9))

                    ; #84793: <==negation-removal== 23375 (pos)
                    (not (Bc_not_survivorat_s_p9))

                    ; #86858: <==negation-removal== 42513 (pos)
                    (not (Bb_not_survivorat_s_p9))))

    (:action move_a_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_a_p10))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #34617: origin
                    (not_at_a_p10)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_a_p10))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #34617: origin
                    (not_at_a_p10)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #80846: origin
                    (at_a_p11)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #77415: origin
                    (at_a_p12)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #44863: origin
                    (at_a_p2)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #73269: origin
                    (at_a_p3)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_a_p10))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #34617: origin
                    (not_at_a_p10)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #73304: origin
                    (at_a_p5)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #70514: origin
                    (at_a_p6)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))))

    (:action move_a_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #63871: origin
                    (at_a_p7)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #68099: origin
                    (at_a_p8)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_a_p10))
        :effect (and
                    ; #34617: origin
                    (not_at_a_p10)

                    ; #52423: origin
                    (at_a_p9)

                    ; #29502: <==negation-removal== 34617 (pos)
                    (not (at_a_p10))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p11_p1
        :precondition (and (at_a_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_a_p11))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p11
        :precondition (and (at_a_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #73536: origin
                    (not_at_a_p11)

                    ; #80846: origin
                    (at_a_p11)

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p12
        :precondition (and (at_a_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #73536: origin
                    (not_at_a_p11)

                    ; #77415: origin
                    (at_a_p12)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p2
        :precondition (and (at_a_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_a_p11))
        :effect (and
                    ; #73269: origin
                    (at_a_p3)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_a_p11))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_a_p11))
        :effect (and
                    ; #73304: origin
                    (at_a_p5)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p6
        :precondition (and (at_a_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #70514: origin
                    (at_a_p6)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p7
        :precondition (and (at_a_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p8
        :precondition (and (at_a_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #68099: origin
                    (at_a_p8)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p11_p9
        :precondition (and (at_a_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #73536: origin
                    (not_at_a_p11)

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))

                    ; #80846: <==negation-removal== 73536 (pos)
                    (not (at_a_p11))))

    (:action move_a_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_a_p12))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #54031: origin
                    (not_at_a_p12)

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_a_p12))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #54031: origin
                    (not_at_a_p12)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p11
        :precondition (and (succ_p12_p11)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #80846: origin
                    (at_a_p11)

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #77415: origin
                    (at_a_p12)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_a_p12))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #54031: origin
                    (not_at_a_p12)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p3
        :precondition (and (succ_p12_p3)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #73269: origin
                    (at_a_p3)

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_a_p12))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #54031: origin
                    (not_at_a_p12)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p5
        :precondition (and (succ_p12_p5)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #73304: origin
                    (at_a_p5)

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p6
        :precondition (and (succ_p12_p6)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #70514: origin
                    (at_a_p6)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p7
        :precondition (and (succ_p12_p7)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #63871: origin
                    (at_a_p7)

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p12_p8
        :precondition (and (succ_p12_p8)
                           (at_a_p12))
        :effect (and
                    ; #54031: origin
                    (not_at_a_p12)

                    ; #68099: origin
                    (at_a_p8)

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_a_p12))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #54031: origin
                    (not_at_a_p12)

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))

                    ; #77415: <==negation-removal== 54031 (pos)
                    (not (at_a_p12))))

    (:action move_a_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_a_p1))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p1_p10
        :precondition (and (at_a_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_a_p1))
        :effect (and
                    ; #80846: origin
                    (at_a_p11)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_a_p1))
        :effect (and
                    ; #77415: origin
                    (at_a_p12)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p1_p2
        :precondition (and (at_a_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p1_p3
        :precondition (and (at_a_p1)
                           (succ_p1_p3))
        :effect (and
                    ; #73269: origin
                    (at_a_p3)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p1_p4
        :precondition (and (at_a_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p1_p5
        :precondition (and (at_a_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #73304: origin
                    (at_a_p5)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p1_p6
        :precondition (and (at_a_p1)
                           (succ_p1_p6))
        :effect (and
                    ; #70514: origin
                    (at_a_p6)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_a_p1))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p1_p8
        :precondition (and (at_a_p1)
                           (succ_p1_p8))
        :effect (and
                    ; #68099: origin
                    (at_a_p8)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p1_p9
        :precondition (and (at_a_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #89101: origin
                    (not_at_a_p1)

                    ; #25514: <==negation-removal== 89101 (pos)
                    (not (at_a_p1))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_a_p2))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #62114: origin
                    (not_at_a_p2)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_a_p2))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #62114: origin
                    (not_at_a_p2)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_a_p2))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #80846: origin
                    (at_a_p11)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p2_p12
        :precondition (and (at_a_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #77415: origin
                    (at_a_p12)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_a_p2))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #62114: origin
                    (not_at_a_p2)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p2_p3
        :precondition (and (at_a_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #73269: origin
                    (at_a_p3)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_a_p2))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #62114: origin
                    (not_at_a_p2)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_a_p2))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #73304: origin
                    (at_a_p5)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_a_p2))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #70514: origin
                    (at_a_p6)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))))

    (:action move_a_p2_p7
        :precondition (and (at_a_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #63871: origin
                    (at_a_p7)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_a_p2))
        :effect (and
                    ; #62114: origin
                    (not_at_a_p2)

                    ; #68099: origin
                    (at_a_p8)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_a_p2))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #62114: origin
                    (not_at_a_p2)

                    ; #44863: <==negation-removal== 62114 (pos)
                    (not (at_a_p2))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p3_p1
        :precondition (and (succ_p3_p1)
                           (at_a_p3))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #68060: origin
                    (not_at_a_p3)

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p3_p10
        :precondition (and (succ_p3_p10)
                           (at_a_p3))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #68060: origin
                    (not_at_a_p3)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p11
        :precondition (and (succ_p3_p11)
                           (at_a_p3))
        :effect (and
                    ; #68060: origin
                    (not_at_a_p3)

                    ; #80846: origin
                    (at_a_p11)

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p3_p12
        :precondition (and (succ_p3_p12)
                           (at_a_p3))
        :effect (and
                    ; #68060: origin
                    (not_at_a_p3)

                    ; #77415: origin
                    (at_a_p12)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p2
        :precondition (and (succ_p3_p2)
                           (at_a_p3))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #68060: origin
                    (not_at_a_p3)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p3
        :precondition (and (succ_p3_p3)
                           (at_a_p3))
        :effect (and
                    ; #68060: origin
                    (not_at_a_p3)

                    ; #73269: origin
                    (at_a_p3)

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p4
        :precondition (and (succ_p3_p4)
                           (at_a_p3))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #68060: origin
                    (not_at_a_p3)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p5
        :precondition (and (succ_p3_p5)
                           (at_a_p3))
        :effect (and
                    ; #68060: origin
                    (not_at_a_p3)

                    ; #73304: origin
                    (at_a_p5)

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p3_p6
        :precondition (and (succ_p3_p6)
                           (at_a_p3))
        :effect (and
                    ; #68060: origin
                    (not_at_a_p3)

                    ; #70514: origin
                    (at_a_p6)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p7
        :precondition (and (succ_p3_p7)
                           (at_a_p3))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #68060: origin
                    (not_at_a_p3)

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p3_p8
        :precondition (and (succ_p3_p8)
                           (at_a_p3))
        :effect (and
                    ; #68060: origin
                    (not_at_a_p3)

                    ; #68099: origin
                    (at_a_p8)

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))))

    (:action move_a_p3_p9
        :precondition (and (succ_p3_p9)
                           (at_a_p3))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #68060: origin
                    (not_at_a_p3)

                    ; #73269: <==negation-removal== 68060 (pos)
                    (not (at_a_p3))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p4_p1
        :precondition (and (at_a_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #27860: origin
                    (not_at_a_p4)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p4_p10
        :precondition (and (at_a_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #29502: origin
                    (at_a_p10)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))))

    (:action move_a_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_a_p4))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #80846: origin
                    (at_a_p11)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p4_p12
        :precondition (and (at_a_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #77415: origin
                    (at_a_p12)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p4_p2
        :precondition (and (at_a_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #44863: origin
                    (at_a_p2)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_a_p4))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #73269: origin
                    (at_a_p3)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p4_p4
        :precondition (and (at_a_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #27860: origin
                    (not_at_a_p4)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))))

    (:action move_a_p4_p5
        :precondition (and (at_a_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #73304: origin
                    (at_a_p5)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p4_p6
        :precondition (and (at_a_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #70514: origin
                    (at_a_p6)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))))

    (:action move_a_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_a_p4))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #63871: origin
                    (at_a_p7)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p4_p8
        :precondition (and (at_a_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #68099: origin
                    (at_a_p8)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p4_p9
        :precondition (and (at_a_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #27860: origin
                    (not_at_a_p4)

                    ; #52423: origin
                    (at_a_p9)

                    ; #17499: <==negation-removal== 27860 (pos)
                    (not (at_a_p4))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p5_p1
        :precondition (and (at_a_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p5_p10
        :precondition (and (at_a_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p11
        :precondition (and (at_a_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #74727: origin
                    (not_at_a_p5)

                    ; #80846: origin
                    (at_a_p11)

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_a_p5))
        :effect (and
                    ; #74727: origin
                    (not_at_a_p5)

                    ; #77415: origin
                    (at_a_p12)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_a_p5))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p3
        :precondition (and (at_a_p5)
                           (succ_p5_p3))
        :effect (and
                    ; #73269: origin
                    (at_a_p3)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p4
        :precondition (and (at_a_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p5
        :precondition (and (at_a_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #73304: origin
                    (at_a_p5)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_a_p5))
        :effect (and
                    ; #70514: origin
                    (at_a_p6)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p7
        :precondition (and (at_a_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p5_p8
        :precondition (and (at_a_p5)
                           (succ_p5_p8))
        :effect (and
                    ; #68099: origin
                    (at_a_p8)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))))

    (:action move_a_p5_p9
        :precondition (and (at_a_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #74727: origin
                    (not_at_a_p5)

                    ; #73304: <==negation-removal== 74727 (pos)
                    (not (at_a_p5))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p6_p1
        :precondition (and (at_a_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #29390: origin
                    (not_at_a_p6)

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p6_p10
        :precondition (and (at_a_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #29502: origin
                    (at_a_p10)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p11
        :precondition (and (at_a_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #80846: origin
                    (at_a_p11)

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p6_p12
        :precondition (and (at_a_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #77415: origin
                    (at_a_p12)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p2
        :precondition (and (at_a_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #44863: origin
                    (at_a_p2)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p3
        :precondition (and (at_a_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #73269: origin
                    (at_a_p3)

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_a_p6))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #29390: origin
                    (not_at_a_p6)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p5
        :precondition (and (at_a_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #73304: origin
                    (at_a_p5)

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_a_p6))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #70514: origin
                    (at_a_p6)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_a_p6))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #63871: origin
                    (at_a_p7)

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p6_p8
        :precondition (and (at_a_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #68099: origin
                    (at_a_p8)

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))))

    (:action move_a_p6_p9
        :precondition (and (at_a_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #29390: origin
                    (not_at_a_p6)

                    ; #52423: origin
                    (at_a_p9)

                    ; #70514: <==negation-removal== 29390 (pos)
                    (not (at_a_p6))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p7_p1
        :precondition (and (at_a_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_a_p7))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p11
        :precondition (and (at_a_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #79174: origin
                    (not_at_a_p7)

                    ; #80846: origin
                    (at_a_p11)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_a_p7))
        :effect (and
                    ; #77415: origin
                    (at_a_p12)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_a_p7))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p3
        :precondition (and (at_a_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #73269: origin
                    (at_a_p3)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p7_p4
        :precondition (and (at_a_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p5
        :precondition (and (at_a_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #73304: origin
                    (at_a_p5)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_a_p7))
        :effect (and
                    ; #70514: origin
                    (at_a_p6)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))))

    (:action move_a_p7_p7
        :precondition (and (at_a_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_a_p7))
        :effect (and
                    ; #68099: origin
                    (at_a_p8)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p7_p9
        :precondition (and (at_a_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #79174: origin
                    (not_at_a_p7)

                    ; #63871: <==negation-removal== 79174 (pos)
                    (not (at_a_p7))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_a_p8))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #66494: origin
                    (not_at_a_p8)

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_a_p8))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #66494: origin
                    (not_at_a_p8)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_a_p8))
        :effect (and
                    ; #66494: origin
                    (not_at_a_p8)

                    ; #80846: origin
                    (at_a_p11)

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_a_p8))
        :effect (and
                    ; #66494: origin
                    (not_at_a_p8)

                    ; #77415: origin
                    (at_a_p12)

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_a_p8))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #66494: origin
                    (not_at_a_p8)

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_a_p8))
        :effect (and
                    ; #66494: origin
                    (not_at_a_p8)

                    ; #73269: origin
                    (at_a_p3)

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p4
        :precondition (and (succ_p8_p4)
                           (at_a_p8))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #66494: origin
                    (not_at_a_p8)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p5
        :precondition (and (at_a_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #66494: origin
                    (not_at_a_p8)

                    ; #73304: origin
                    (at_a_p5)

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p8_p6
        :precondition (and (succ_p8_p6)
                           (at_a_p8))
        :effect (and
                    ; #66494: origin
                    (not_at_a_p8)

                    ; #70514: origin
                    (at_a_p6)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p7
        :precondition (and (at_a_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #66494: origin
                    (not_at_a_p8)

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p8_p8
        :precondition (and (at_a_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #66494: origin
                    (not_at_a_p8)

                    ; #68099: origin
                    (at_a_p8)

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))))

    (:action move_a_p8_p9
        :precondition (and (at_a_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #66494: origin
                    (not_at_a_p8)

                    ; #68099: <==negation-removal== 66494 (pos)
                    (not (at_a_p8))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_a_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_a_p9))
        :effect (and
                    ; #25514: origin
                    (at_a_p1)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #89101: <==negation-removal== 25514 (pos)
                    (not (not_at_a_p1))))

    (:action move_a_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_a_p9))
        :effect (and
                    ; #29502: origin
                    (at_a_p10)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #34617: <==negation-removal== 29502 (pos)
                    (not (not_at_a_p10))

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_a_p9))
        :effect (and
                    ; #73378: origin
                    (not_at_a_p9)

                    ; #80846: origin
                    (at_a_p11)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #73536: <==negation-removal== 80846 (pos)
                    (not (not_at_a_p11))))

    (:action move_a_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_a_p9))
        :effect (and
                    ; #73378: origin
                    (not_at_a_p9)

                    ; #77415: origin
                    (at_a_p12)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #54031: <==negation-removal== 77415 (pos)
                    (not (not_at_a_p12))))

    (:action move_a_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_a_p9))
        :effect (and
                    ; #44863: origin
                    (at_a_p2)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #62114: <==negation-removal== 44863 (pos)
                    (not (not_at_a_p2))))

    (:action move_a_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_a_p9))
        :effect (and
                    ; #73269: origin
                    (at_a_p3)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #68060: <==negation-removal== 73269 (pos)
                    (not (not_at_a_p3))))

    (:action move_a_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_a_p9))
        :effect (and
                    ; #17499: origin
                    (at_a_p4)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #27860: <==negation-removal== 17499 (pos)
                    (not (not_at_a_p4))

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_a_p9))
        :effect (and
                    ; #73304: origin
                    (at_a_p5)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #74727: <==negation-removal== 73304 (pos)
                    (not (not_at_a_p5))))

    (:action move_a_p9_p6
        :precondition (and (succ_p9_p6)
                           (at_a_p9))
        :effect (and
                    ; #70514: origin
                    (at_a_p6)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #29390: <==negation-removal== 70514 (pos)
                    (not (not_at_a_p6))

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))))

    (:action move_a_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_a_p9))
        :effect (and
                    ; #63871: origin
                    (at_a_p7)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #79174: <==negation-removal== 63871 (pos)
                    (not (not_at_a_p7))))

    (:action move_a_p9_p8
        :precondition (and (at_a_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #68099: origin
                    (at_a_p8)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #66494: <==negation-removal== 68099 (pos)
                    (not (not_at_a_p8))))

    (:action move_a_p9_p9
        :precondition (and (succ_p9_p9)
                           (at_a_p9))
        :effect (and
                    ; #52423: origin
                    (at_a_p9)

                    ; #73378: origin
                    (not_at_a_p9)

                    ; #52423: <==negation-removal== 73378 (pos)
                    (not (at_a_p9))

                    ; #73378: <==negation-removal== 52423 (pos)
                    (not (not_at_a_p9))))

    (:action move_b_p10_p1
        :precondition (and (at_b_p10)
                           (succ_p10_p1))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #21884: origin
                    (not_at_b_p10)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p10
        :precondition (and (at_b_p10)
                           (succ_p10_p10))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p11
        :precondition (and (at_b_p10)
                           (succ_p10_p11))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p12
        :precondition (and (at_b_p10)
                           (succ_p10_p12))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #91283: origin
                    (at_b_p12)

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p10_p2
        :precondition (and (at_b_p10)
                           (succ_p10_p2))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #49937: origin
                    (at_b_p2)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p3
        :precondition (and (at_b_p10)
                           (succ_p10_p3))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #62567: origin
                    (at_b_p3)

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p10_p4
        :precondition (and (at_b_p10)
                           (succ_p10_p4))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p5
        :precondition (and (at_b_p10)
                           (succ_p10_p5))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #28400: origin
                    (at_b_p5)

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p10_p6
        :precondition (and (at_b_p10)
                           (succ_p10_p6))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #44331: origin
                    (at_b_p6)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p7
        :precondition (and (at_b_p10)
                           (succ_p10_p7))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p8
        :precondition (and (at_b_p10)
                           (succ_p10_p8))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #30776: origin
                    (at_b_p8)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p10_p9
        :precondition (and (at_b_p10)
                           (succ_p10_p9))
        :effect (and
                    ; #21884: origin
                    (not_at_b_p10)

                    ; #55265: origin
                    (at_b_p9)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #54864: <==negation-removal== 21884 (pos)
                    (not (at_b_p10))))

    (:action move_b_p11_p1
        :precondition (and (at_b_p11)
                           (succ_p11_p1))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #23414: origin
                    (not_at_b_p11)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_b_p11))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p11
        :precondition (and (at_b_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p12
        :precondition (and (at_b_p11)
                           (succ_p11_p12))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #91283: origin
                    (at_b_p12)

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p2
        :precondition (and (at_b_p11)
                           (succ_p11_p2))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #49937: origin
                    (at_b_p2)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_b_p11))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #62567: origin
                    (at_b_p3)

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_b_p11))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_b_p11))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #28400: origin
                    (at_b_p5)

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p6
        :precondition (and (at_b_p11)
                           (succ_p11_p6))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #44331: origin
                    (at_b_p6)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p7
        :precondition (and (at_b_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p8
        :precondition (and (at_b_p11)
                           (succ_p11_p8))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #30776: origin
                    (at_b_p8)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p11_p9
        :precondition (and (at_b_p11)
                           (succ_p11_p9))
        :effect (and
                    ; #23414: origin
                    (not_at_b_p11)

                    ; #55265: origin
                    (at_b_p9)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #92226: <==negation-removal== 23414 (pos)
                    (not (at_b_p11))))

    (:action move_b_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_b_p12))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_b_p12))
        :effect (and
                    ; #54864: origin
                    (at_b_p10)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p11
        :precondition (and (at_b_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #88819: origin
                    (not_at_b_p12)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p12
        :precondition (and (succ_p12_p12)
                           (at_b_p12))
        :effect (and
                    ; #88819: origin
                    (not_at_b_p12)

                    ; #91283: origin
                    (at_b_p12)

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p2
        :precondition (and (succ_p12_p2)
                           (at_b_p12))
        :effect (and
                    ; #49937: origin
                    (at_b_p2)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p3
        :precondition (and (at_b_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #62567: origin
                    (at_b_p3)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_b_p12))
        :effect (and
                    ; #83761: origin
                    (at_b_p4)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p5
        :precondition (and (at_b_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p6
        :precondition (and (at_b_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #44331: origin
                    (at_b_p6)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p7
        :precondition (and (at_b_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #58777: origin
                    (at_b_p7)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p8
        :precondition (and (at_b_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p12_p9
        :precondition (and (succ_p12_p9)
                           (at_b_p12))
        :effect (and
                    ; #55265: origin
                    (at_b_p9)

                    ; #88819: origin
                    (not_at_b_p12)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #91283: <==negation-removal== 88819 (pos)
                    (not (at_b_p12))))

    (:action move_b_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_b_p1))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #38035: origin
                    (not_at_b_p1)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p1_p10
        :precondition (and (at_b_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #54864: origin
                    (at_b_p10)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))))

    (:action move_b_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_b_p1))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #92226: origin
                    (at_b_p11)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))))

    (:action move_b_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_b_p1))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #91283: origin
                    (at_b_p12)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p1_p2
        :precondition (and (at_b_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #49937: origin
                    (at_b_p2)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_b_p1))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #62567: origin
                    (at_b_p3)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p1_p4
        :precondition (and (at_b_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #83761: origin
                    (at_b_p4)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p1_p5
        :precondition (and (at_b_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #38035: origin
                    (not_at_b_p1)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_b_p1))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #44331: origin
                    (at_b_p6)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))))

    (:action move_b_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_b_p1))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #58777: origin
                    (at_b_p7)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))))

    (:action move_b_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_b_p1))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #38035: origin
                    (not_at_b_p1)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))))

    (:action move_b_p1_p9
        :precondition (and (at_b_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #38035: origin
                    (not_at_b_p1)

                    ; #55265: origin
                    (at_b_p9)

                    ; #11722: <==negation-removal== 38035 (pos)
                    (not (at_b_p1))

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_b_p2))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #45383: origin
                    (not_at_b_p2)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p12
        :precondition (and (succ_p2_p12)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #91283: origin
                    (at_b_p12)

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #49937: origin
                    (at_b_p2)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p3
        :precondition (and (succ_p2_p3)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #62567: origin
                    (at_b_p3)

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_b_p2))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #45383: origin
                    (not_at_b_p2)

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_b_p2))
        :effect (and
                    ; #44331: origin
                    (at_b_p6)

                    ; #45383: origin
                    (not_at_b_p2)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p7
        :precondition (and (succ_p2_p7)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_b_p2))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #45383: origin
                    (not_at_b_p2)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_b_p2))
        :effect (and
                    ; #45383: origin
                    (not_at_b_p2)

                    ; #55265: origin
                    (at_b_p9)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #49937: <==negation-removal== 45383 (pos)
                    (not (at_b_p2))))

    (:action move_b_p3_p1
        :precondition (and (at_b_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p10
        :precondition (and (at_b_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #54864: origin
                    (at_b_p10)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p11
        :precondition (and (at_b_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #62655: origin
                    (not_at_b_p3)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p12
        :precondition (and (at_b_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #62655: origin
                    (not_at_b_p3)

                    ; #91283: origin
                    (at_b_p12)

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p3_p2
        :precondition (and (at_b_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #49937: origin
                    (at_b_p2)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p3
        :precondition (and (at_b_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #62567: origin
                    (at_b_p3)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p3_p4
        :precondition (and (at_b_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #62655: origin
                    (not_at_b_p3)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p5
        :precondition (and (at_b_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p3_p6
        :precondition (and (at_b_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #44331: origin
                    (at_b_p6)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p7
        :precondition (and (at_b_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #58777: origin
                    (at_b_p7)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p8
        :precondition (and (at_b_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p3_p9
        :precondition (and (at_b_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #55265: origin
                    (at_b_p9)

                    ; #62655: origin
                    (not_at_b_p3)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #62567: <==negation-removal== 62655 (pos)
                    (not (at_b_p3))))

    (:action move_b_p4_p1
        :precondition (and (succ_p4_p1)
                           (at_b_p4))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #32750: origin
                    (not_at_b_p4)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p10
        :precondition (and (at_b_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p11
        :precondition (and (succ_p4_p11)
                           (at_b_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p12
        :precondition (and (at_b_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #91283: origin
                    (at_b_p12)

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p4_p2
        :precondition (and (succ_p4_p2)
                           (at_b_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #49937: origin
                    (at_b_p2)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p3
        :precondition (and (succ_p4_p3)
                           (at_b_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #62567: origin
                    (at_b_p3)

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p4
        :precondition (and (at_b_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p5
        :precondition (and (at_b_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #32750: origin
                    (not_at_b_p4)

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p6
        :precondition (and (succ_p4_p6)
                           (at_b_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #44331: origin
                    (at_b_p6)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p7
        :precondition (and (succ_p4_p7)
                           (at_b_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p8
        :precondition (and (succ_p4_p8)
                           (at_b_p4))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #32750: origin
                    (not_at_b_p4)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p4_p9
        :precondition (and (succ_p4_p9)
                           (at_b_p4))
        :effect (and
                    ; #32750: origin
                    (not_at_b_p4)

                    ; #55265: origin
                    (at_b_p9)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #83761: <==negation-removal== 32750 (pos)
                    (not (at_b_p4))))

    (:action move_b_p5_p1
        :precondition (and (succ_p5_p1)
                           (at_b_p5))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p5_p10
        :precondition (and (at_b_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #54864: origin
                    (at_b_p10)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p11
        :precondition (and (at_b_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #71323: origin
                    (not_at_b_p5)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_b_p5))
        :effect (and
                    ; #71323: origin
                    (not_at_b_p5)

                    ; #91283: origin
                    (at_b_p12)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_b_p5))
        :effect (and
                    ; #49937: origin
                    (at_b_p2)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_b_p5))
        :effect (and
                    ; #62567: origin
                    (at_b_p3)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p5_p4
        :precondition (and (succ_p5_p4)
                           (at_b_p5))
        :effect (and
                    ; #71323: origin
                    (not_at_b_p5)

                    ; #83761: origin
                    (at_b_p4)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p5_p5
        :precondition (and (at_b_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_b_p5))
        :effect (and
                    ; #44331: origin
                    (at_b_p6)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p7
        :precondition (and (succ_p5_p7)
                           (at_b_p5))
        :effect (and
                    ; #58777: origin
                    (at_b_p7)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_b_p5))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))))

    (:action move_b_p5_p9
        :precondition (and (at_b_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #55265: origin
                    (at_b_p9)

                    ; #71323: origin
                    (not_at_b_p5)

                    ; #28400: <==negation-removal== 71323 (pos)
                    (not (at_b_p5))

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p6_p1
        :precondition (and (succ_p6_p1)
                           (at_b_p6))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #24103: origin
                    (not_at_b_p6)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p10
        :precondition (and (at_b_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p11
        :precondition (and (at_b_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p12
        :precondition (and (succ_p6_p12)
                           (at_b_p6))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #91283: origin
                    (at_b_p12)

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p6_p2
        :precondition (and (succ_p6_p2)
                           (at_b_p6))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #49937: origin
                    (at_b_p2)

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p6_p3
        :precondition (and (at_b_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #62567: origin
                    (at_b_p3)

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_b_p6))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p5
        :precondition (and (succ_p6_p5)
                           (at_b_p6))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #28400: origin
                    (at_b_p5)

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_b_p6))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #44331: origin
                    (at_b_p6)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_b_p6))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p8
        :precondition (and (at_b_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #30776: origin
                    (at_b_p8)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))))

    (:action move_b_p6_p9
        :precondition (and (at_b_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #24103: origin
                    (not_at_b_p6)

                    ; #55265: origin
                    (at_b_p9)

                    ; #44331: <==negation-removal== 24103 (pos)
                    (not (at_b_p6))

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p7_p1
        :precondition (and (at_b_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #26849: origin
                    (not_at_b_p7)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_b_p7))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p11
        :precondition (and (at_b_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_b_p7))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #91283: origin
                    (at_b_p12)

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_b_p7))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #49937: origin
                    (at_b_p2)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p3
        :precondition (and (at_b_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #62567: origin
                    (at_b_p3)

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p7_p4
        :precondition (and (at_b_p7)
                           (succ_p7_p4))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p5
        :precondition (and (at_b_p7)
                           (succ_p7_p5))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #28400: origin
                    (at_b_p5)

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_b_p7))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #44331: origin
                    (at_b_p6)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p7
        :precondition (and (at_b_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_b_p7))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #30776: origin
                    (at_b_p8)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p7_p9
        :precondition (and (at_b_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #26849: origin
                    (not_at_b_p7)

                    ; #55265: origin
                    (at_b_p9)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #58777: <==negation-removal== 26849 (pos)
                    (not (at_b_p7))))

    (:action move_b_p8_p1
        :precondition (and (at_b_p8)
                           (succ_p8_p1))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #15678: origin
                    (not_at_b_p8)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))))

    (:action move_b_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_b_p8))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p11
        :precondition (and (at_b_p8)
                           (succ_p8_p11))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_b_p8))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #91283: origin
                    (at_b_p12)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_b_p8))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #49937: origin
                    (at_b_p2)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))))

    (:action move_b_p8_p3
        :precondition (and (at_b_p8)
                           (succ_p8_p3))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #62567: origin
                    (at_b_p3)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p8_p4
        :precondition (and (at_b_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #83761: origin
                    (at_b_p4)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))))

    (:action move_b_p8_p5
        :precondition (and (at_b_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #28400: origin
                    (at_b_p5)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p8_p6
        :precondition (and (at_b_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #44331: origin
                    (at_b_p6)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p7
        :precondition (and (at_b_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p8
        :precondition (and (at_b_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #30776: origin
                    (at_b_p8)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))))

    (:action move_b_p8_p9
        :precondition (and (at_b_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #15678: origin
                    (not_at_b_p8)

                    ; #55265: origin
                    (at_b_p9)

                    ; #30776: <==negation-removal== 15678 (pos)
                    (not (at_b_p8))

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))))

    (:action move_b_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_b_p9))
        :effect (and
                    ; #11722: origin
                    (at_b_p1)

                    ; #49230: origin
                    (not_at_b_p9)

                    ; #38035: <==negation-removal== 11722 (pos)
                    (not (not_at_b_p1))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #54864: origin
                    (at_b_p10)

                    ; #21884: <==negation-removal== 54864 (pos)
                    (not (not_at_b_p10))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #92226: origin
                    (at_b_p11)

                    ; #23414: <==negation-removal== 92226 (pos)
                    (not (not_at_b_p11))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #91283: origin
                    (at_b_p12)

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))

                    ; #88819: <==negation-removal== 91283 (pos)
                    (not (not_at_b_p12))))

    (:action move_b_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #49937: origin
                    (at_b_p2)

                    ; #45383: <==negation-removal== 49937 (pos)
                    (not (not_at_b_p2))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #62567: origin
                    (at_b_p3)

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))

                    ; #62655: <==negation-removal== 62567 (pos)
                    (not (not_at_b_p3))))

    (:action move_b_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #83761: origin
                    (at_b_p4)

                    ; #32750: <==negation-removal== 83761 (pos)
                    (not (not_at_b_p4))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_b_p9))
        :effect (and
                    ; #28400: origin
                    (at_b_p5)

                    ; #49230: origin
                    (not_at_b_p9)

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))

                    ; #71323: <==negation-removal== 28400 (pos)
                    (not (not_at_b_p5))))

    (:action move_b_p9_p6
        :precondition (and (at_b_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #44331: origin
                    (at_b_p6)

                    ; #49230: origin
                    (not_at_b_p9)

                    ; #24103: <==negation-removal== 44331 (pos)
                    (not (not_at_b_p6))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_b_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #58777: origin
                    (at_b_p7)

                    ; #26849: <==negation-removal== 58777 (pos)
                    (not (not_at_b_p7))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p8
        :precondition (and (at_b_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #30776: origin
                    (at_b_p8)

                    ; #49230: origin
                    (not_at_b_p9)

                    ; #15678: <==negation-removal== 30776 (pos)
                    (not (not_at_b_p8))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_b_p9_p9
        :precondition (and (at_b_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #49230: origin
                    (not_at_b_p9)

                    ; #55265: origin
                    (at_b_p9)

                    ; #49230: <==negation-removal== 55265 (pos)
                    (not (not_at_b_p9))

                    ; #55265: <==negation-removal== 49230 (pos)
                    (not (at_b_p9))))

    (:action move_c_p10_p1
        :precondition (and (succ_p10_p1)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p10
        :precondition (and (succ_p10_p10)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p11
        :precondition (and (succ_p10_p11)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p12
        :precondition (and (succ_p10_p12)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #32359: origin
                    (at_c_p12)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p2
        :precondition (and (succ_p10_p2)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #51743: origin
                    (at_c_p2)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p3
        :precondition (and (succ_p10_p3)
                           (at_c_p10))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #21089: origin
                    (not_at_c_p10)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p4
        :precondition (and (succ_p10_p4)
                           (at_c_p10))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #21089: origin
                    (not_at_c_p10)

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p10_p5
        :precondition (and (succ_p10_p5)
                           (at_c_p10))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #21089: origin
                    (not_at_c_p10)

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p10_p6
        :precondition (and (succ_p10_p6)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p7
        :precondition (and (succ_p10_p7)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #85169: origin
                    (at_c_p7)

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p10_p8
        :precondition (and (succ_p10_p8)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p10_p9
        :precondition (and (succ_p10_p9)
                           (at_c_p10))
        :effect (and
                    ; #21089: origin
                    (not_at_c_p10)

                    ; #30570: origin
                    (at_c_p9)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #52379: <==negation-removal== 21089 (pos)
                    (not (at_c_p10))))

    (:action move_c_p11_p1
        :precondition (and (succ_p11_p1)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p10
        :precondition (and (succ_p11_p10)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p11
        :precondition (and (at_c_p11)
                           (succ_p11_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p12
        :precondition (and (succ_p11_p12)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #32359: origin
                    (at_c_p12)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p2
        :precondition (and (succ_p11_p2)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #51743: origin
                    (at_c_p2)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p3
        :precondition (and (succ_p11_p3)
                           (at_c_p11))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #20819: origin
                    (not_at_c_p11)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p4
        :precondition (and (succ_p11_p4)
                           (at_c_p11))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #20819: origin
                    (not_at_c_p11)

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p11_p5
        :precondition (and (succ_p11_p5)
                           (at_c_p11))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #20819: origin
                    (not_at_c_p11)

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p11_p6
        :precondition (and (succ_p11_p6)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p7
        :precondition (and (at_c_p11)
                           (succ_p11_p7))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #85169: origin
                    (at_c_p7)

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p11_p8
        :precondition (and (succ_p11_p8)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p11_p9
        :precondition (and (succ_p11_p9)
                           (at_c_p11))
        :effect (and
                    ; #20819: origin
                    (not_at_c_p11)

                    ; #30570: origin
                    (at_c_p9)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #57751: <==negation-removal== 20819 (pos)
                    (not (at_c_p11))))

    (:action move_c_p12_p1
        :precondition (and (succ_p12_p1)
                           (at_c_p12))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p10
        :precondition (and (succ_p12_p10)
                           (at_c_p12))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p11
        :precondition (and (at_c_p12)
                           (succ_p12_p11))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p12
        :precondition (and (at_c_p12)
                           (succ_p12_p12))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #48254: origin
                    (not_at_c_p12)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p12_p2
        :precondition (and (at_c_p12)
                           (succ_p12_p2))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #51743: origin
                    (at_c_p2)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p12_p3
        :precondition (and (at_c_p12)
                           (succ_p12_p3))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #48254: origin
                    (not_at_c_p12)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p4
        :precondition (and (succ_p12_p4)
                           (at_c_p12))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #48254: origin
                    (not_at_c_p12)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p12_p5
        :precondition (and (at_c_p12)
                           (succ_p12_p5))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #48254: origin
                    (not_at_c_p12)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p12_p6
        :precondition (and (at_c_p12)
                           (succ_p12_p6))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))))

    (:action move_c_p12_p7
        :precondition (and (at_c_p12)
                           (succ_p12_p7))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #85169: origin
                    (at_c_p7)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p12_p8
        :precondition (and (at_c_p12)
                           (succ_p12_p8))
        :effect (and
                    ; #48254: origin
                    (not_at_c_p12)

                    ; #85205: origin
                    (at_c_p8)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p12_p9
        :precondition (and (at_c_p12)
                           (succ_p12_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #48254: origin
                    (not_at_c_p12)

                    ; #32359: <==negation-removal== 48254 (pos)
                    (not (at_c_p12))

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p1_p1
        :precondition (and (succ_p1_p1)
                           (at_c_p1))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p10
        :precondition (and (at_c_p1)
                           (succ_p1_p10))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p11
        :precondition (and (succ_p1_p11)
                           (at_c_p1))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p12
        :precondition (and (succ_p1_p12)
                           (at_c_p1))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #32359: origin
                    (at_c_p12)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p2
        :precondition (and (at_c_p1)
                           (succ_p1_p2))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #51743: origin
                    (at_c_p2)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p3
        :precondition (and (succ_p1_p3)
                           (at_c_p1))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #25682: origin
                    (not_at_c_p1)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p4
        :precondition (and (at_c_p1)
                           (succ_p1_p4))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #25682: origin
                    (not_at_c_p1)

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p5
        :precondition (and (at_c_p1)
                           (succ_p1_p5))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #25682: origin
                    (not_at_c_p1)

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p6
        :precondition (and (succ_p1_p6)
                           (at_c_p1))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p7
        :precondition (and (succ_p1_p7)
                           (at_c_p1))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #85169: origin
                    (at_c_p7)

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p8
        :precondition (and (succ_p1_p8)
                           (at_c_p1))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p1_p9
        :precondition (and (at_c_p1)
                           (succ_p1_p9))
        :effect (and
                    ; #25682: origin
                    (not_at_c_p1)

                    ; #30570: origin
                    (at_c_p9)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #76786: <==negation-removal== 25682 (pos)
                    (not (at_c_p1))))

    (:action move_c_p2_p1
        :precondition (and (succ_p2_p1)
                           (at_c_p2))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p10
        :precondition (and (succ_p2_p10)
                           (at_c_p2))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p11
        :precondition (and (succ_p2_p11)
                           (at_c_p2))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p12
        :precondition (and (at_c_p2)
                           (succ_p2_p12))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #40722: origin
                    (not_at_c_p2)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p2
        :precondition (and (succ_p2_p2)
                           (at_c_p2))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #51743: origin
                    (at_c_p2)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p3
        :precondition (and (at_c_p2)
                           (succ_p2_p3))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #40722: origin
                    (not_at_c_p2)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p4
        :precondition (and (succ_p2_p4)
                           (at_c_p2))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #40722: origin
                    (not_at_c_p2)

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p2_p5
        :precondition (and (succ_p2_p5)
                           (at_c_p2))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #40722: origin
                    (not_at_c_p2)

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p2_p6
        :precondition (and (succ_p2_p6)
                           (at_c_p2))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p7
        :precondition (and (at_c_p2)
                           (succ_p2_p7))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #85169: origin
                    (at_c_p7)

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p2_p8
        :precondition (and (succ_p2_p8)
                           (at_c_p2))
        :effect (and
                    ; #40722: origin
                    (not_at_c_p2)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p2_p9
        :precondition (and (succ_p2_p9)
                           (at_c_p2))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #40722: origin
                    (not_at_c_p2)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #51743: <==negation-removal== 40722 (pos)
                    (not (at_c_p2))))

    (:action move_c_p3_p1
        :precondition (and (at_c_p3)
                           (succ_p3_p1))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #76786: origin
                    (at_c_p1)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p3_p10
        :precondition (and (at_c_p3)
                           (succ_p3_p10))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #52379: origin
                    (at_c_p10)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p3_p11
        :precondition (and (at_c_p3)
                           (succ_p3_p11))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #57751: origin
                    (at_c_p11)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p3_p12
        :precondition (and (at_c_p3)
                           (succ_p3_p12))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #32359: origin
                    (at_c_p12)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p3_p2
        :precondition (and (at_c_p3)
                           (succ_p3_p2))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #51743: origin
                    (at_c_p2)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p3_p3
        :precondition (and (at_c_p3)
                           (succ_p3_p3))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #18363: origin
                    (not_at_c_p3)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))))

    (:action move_c_p3_p4
        :precondition (and (at_c_p3)
                           (succ_p3_p4))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #20615: origin
                    (at_c_p4)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p3_p5
        :precondition (and (at_c_p3)
                           (succ_p3_p5))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #19432: origin
                    (at_c_p5)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p3_p6
        :precondition (and (at_c_p3)
                           (succ_p3_p6))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #69871: origin
                    (at_c_p6)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p3_p7
        :precondition (and (at_c_p3)
                           (succ_p3_p7))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #85169: origin
                    (at_c_p7)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p3_p8
        :precondition (and (at_c_p3)
                           (succ_p3_p8))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #85205: origin
                    (at_c_p8)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p3_p9
        :precondition (and (at_c_p3)
                           (succ_p3_p9))
        :effect (and
                    ; #18363: origin
                    (not_at_c_p3)

                    ; #30570: origin
                    (at_c_p9)

                    ; #15846: <==negation-removal== 18363 (pos)
                    (not (at_c_p3))

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p4_p1
        :precondition (and (at_c_p4)
                           (succ_p4_p1))
        :effect (and
                    ; #69205: origin
                    (not_at_c_p4)

                    ; #76786: origin
                    (at_c_p1)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p4_p10
        :precondition (and (at_c_p4)
                           (succ_p4_p10))
        :effect (and
                    ; #52379: origin
                    (at_c_p10)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p4_p11
        :precondition (and (at_c_p4)
                           (succ_p4_p11))
        :effect (and
                    ; #57751: origin
                    (at_c_p11)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p4_p12
        :precondition (and (at_c_p4)
                           (succ_p4_p12))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p4_p2
        :precondition (and (at_c_p4)
                           (succ_p4_p2))
        :effect (and
                    ; #51743: origin
                    (at_c_p2)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p4_p3
        :precondition (and (at_c_p4)
                           (succ_p4_p3))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))))

    (:action move_c_p4_p4
        :precondition (and (at_c_p4)
                           (succ_p4_p4))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p4_p5
        :precondition (and (at_c_p4)
                           (succ_p4_p5))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p4_p6
        :precondition (and (at_c_p4)
                           (succ_p4_p6))
        :effect (and
                    ; #69205: origin
                    (not_at_c_p4)

                    ; #69871: origin
                    (at_c_p6)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p4_p7
        :precondition (and (at_c_p4)
                           (succ_p4_p7))
        :effect (and
                    ; #69205: origin
                    (not_at_c_p4)

                    ; #85169: origin
                    (at_c_p7)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p4_p8
        :precondition (and (at_c_p4)
                           (succ_p4_p8))
        :effect (and
                    ; #69205: origin
                    (not_at_c_p4)

                    ; #85205: origin
                    (at_c_p8)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p4_p9
        :precondition (and (at_c_p4)
                           (succ_p4_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #69205: origin
                    (not_at_c_p4)

                    ; #20615: <==negation-removal== 69205 (pos)
                    (not (at_c_p4))

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p5_p1
        :precondition (and (at_c_p5)
                           (succ_p5_p1))
        :effect (and
                    ; #73718: origin
                    (not_at_c_p5)

                    ; #76786: origin
                    (at_c_p1)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))))

    (:action move_c_p5_p10
        :precondition (and (at_c_p5)
                           (succ_p5_p10))
        :effect (and
                    ; #52379: origin
                    (at_c_p10)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))))

    (:action move_c_p5_p11
        :precondition (and (at_c_p5)
                           (succ_p5_p11))
        :effect (and
                    ; #57751: origin
                    (at_c_p11)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))))

    (:action move_c_p5_p12
        :precondition (and (succ_p5_p12)
                           (at_c_p5))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p5_p2
        :precondition (and (succ_p5_p2)
                           (at_c_p5))
        :effect (and
                    ; #51743: origin
                    (at_c_p2)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p5_p3
        :precondition (and (succ_p5_p3)
                           (at_c_p5))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))))

    (:action move_c_p5_p4
        :precondition (and (at_c_p5)
                           (succ_p5_p4))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p5_p5
        :precondition (and (at_c_p5)
                           (succ_p5_p5))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p5_p6
        :precondition (and (succ_p5_p6)
                           (at_c_p5))
        :effect (and
                    ; #69871: origin
                    (at_c_p6)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p5_p7
        :precondition (and (at_c_p5)
                           (succ_p5_p7))
        :effect (and
                    ; #73718: origin
                    (not_at_c_p5)

                    ; #85169: origin
                    (at_c_p7)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p5_p8
        :precondition (and (succ_p5_p8)
                           (at_c_p5))
        :effect (and
                    ; #73718: origin
                    (not_at_c_p5)

                    ; #85205: origin
                    (at_c_p8)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p5_p9
        :precondition (and (at_c_p5)
                           (succ_p5_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #73718: origin
                    (not_at_c_p5)

                    ; #19432: <==negation-removal== 73718 (pos)
                    (not (at_c_p5))

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))))

    (:action move_c_p6_p1
        :precondition (and (at_c_p6)
                           (succ_p6_p1))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p10
        :precondition (and (at_c_p6)
                           (succ_p6_p10))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p11
        :precondition (and (at_c_p6)
                           (succ_p6_p11))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p12
        :precondition (and (at_c_p6)
                           (succ_p6_p12))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #32359: origin
                    (at_c_p12)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p2
        :precondition (and (at_c_p6)
                           (succ_p6_p2))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #51743: origin
                    (at_c_p2)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p3
        :precondition (and (at_c_p6)
                           (succ_p6_p3))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #32209: origin
                    (not_at_c_p6)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p4
        :precondition (and (succ_p6_p4)
                           (at_c_p6))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #32209: origin
                    (not_at_c_p6)

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p5
        :precondition (and (at_c_p6)
                           (succ_p6_p5))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #32209: origin
                    (not_at_c_p6)

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p6_p6
        :precondition (and (succ_p6_p6)
                           (at_c_p6))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p7
        :precondition (and (succ_p6_p7)
                           (at_c_p6))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #85169: origin
                    (at_c_p7)

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p8
        :precondition (and (at_c_p6)
                           (succ_p6_p8))
        :effect (and
                    ; #32209: origin
                    (not_at_c_p6)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p6_p9
        :precondition (and (at_c_p6)
                           (succ_p6_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #32209: origin
                    (not_at_c_p6)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #69871: <==negation-removal== 32209 (pos)
                    (not (at_c_p6))))

    (:action move_c_p7_p1
        :precondition (and (at_c_p7)
                           (succ_p7_p1))
        :effect (and
                    ; #60323: origin
                    (not_at_c_p7)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p10
        :precondition (and (succ_p7_p10)
                           (at_c_p7))
        :effect (and
                    ; #52379: origin
                    (at_c_p10)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p11
        :precondition (and (at_c_p7)
                           (succ_p7_p11))
        :effect (and
                    ; #57751: origin
                    (at_c_p11)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p12
        :precondition (and (succ_p7_p12)
                           (at_c_p7))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p2
        :precondition (and (succ_p7_p2)
                           (at_c_p7))
        :effect (and
                    ; #51743: origin
                    (at_c_p2)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p3
        :precondition (and (at_c_p7)
                           (succ_p7_p3))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p4
        :precondition (and (succ_p7_p4)
                           (at_c_p7))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p5
        :precondition (and (succ_p7_p5)
                           (at_c_p7))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p6
        :precondition (and (succ_p7_p6)
                           (at_c_p7))
        :effect (and
                    ; #60323: origin
                    (not_at_c_p7)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p7
        :precondition (and (at_c_p7)
                           (succ_p7_p7))
        :effect (and
                    ; #60323: origin
                    (not_at_c_p7)

                    ; #85169: origin
                    (at_c_p7)

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p8
        :precondition (and (succ_p7_p8)
                           (at_c_p7))
        :effect (and
                    ; #60323: origin
                    (not_at_c_p7)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p7_p9
        :precondition (and (at_c_p7)
                           (succ_p7_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #60323: origin
                    (not_at_c_p7)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #85169: <==negation-removal== 60323 (pos)
                    (not (at_c_p7))))

    (:action move_c_p8_p1
        :precondition (and (succ_p8_p1)
                           (at_c_p8))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p10
        :precondition (and (succ_p8_p10)
                           (at_c_p8))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p11
        :precondition (and (succ_p8_p11)
                           (at_c_p8))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p12
        :precondition (and (succ_p8_p12)
                           (at_c_p8))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #36698: origin
                    (not_at_c_p8)

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p2
        :precondition (and (succ_p8_p2)
                           (at_c_p8))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #51743: origin
                    (at_c_p2)

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p3
        :precondition (and (succ_p8_p3)
                           (at_c_p8))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #36698: origin
                    (not_at_c_p8)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p4
        :precondition (and (at_c_p8)
                           (succ_p8_p4))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #36698: origin
                    (not_at_c_p8)

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p5
        :precondition (and (at_c_p8)
                           (succ_p8_p5))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #36698: origin
                    (not_at_c_p8)

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p6
        :precondition (and (at_c_p8)
                           (succ_p8_p6))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #69871: origin
                    (at_c_p6)

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p7
        :precondition (and (at_c_p8)
                           (succ_p8_p7))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #85169: origin
                    (at_c_p7)

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p8
        :precondition (and (at_c_p8)
                           (succ_p8_p8))
        :effect (and
                    ; #36698: origin
                    (not_at_c_p8)

                    ; #85205: origin
                    (at_c_p8)

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p8_p9
        :precondition (and (at_c_p8)
                           (succ_p8_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #36698: origin
                    (not_at_c_p8)

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))

                    ; #85205: <==negation-removal== 36698 (pos)
                    (not (at_c_p8))))

    (:action move_c_p9_p1
        :precondition (and (succ_p9_p1)
                           (at_c_p9))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #76786: origin
                    (at_c_p1)

                    ; #25682: <==negation-removal== 76786 (pos)
                    (not (not_at_c_p1))

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p10
        :precondition (and (succ_p9_p10)
                           (at_c_p9))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #52379: origin
                    (at_c_p10)

                    ; #21089: <==negation-removal== 52379 (pos)
                    (not (not_at_c_p10))

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p11
        :precondition (and (succ_p9_p11)
                           (at_c_p9))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #57751: origin
                    (at_c_p11)

                    ; #20819: <==negation-removal== 57751 (pos)
                    (not (not_at_c_p11))

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p12
        :precondition (and (succ_p9_p12)
                           (at_c_p9))
        :effect (and
                    ; #32359: origin
                    (at_c_p12)

                    ; #49725: origin
                    (not_at_c_p9)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #48254: <==negation-removal== 32359 (pos)
                    (not (not_at_c_p12))))

    (:action move_c_p9_p2
        :precondition (and (succ_p9_p2)
                           (at_c_p9))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #51743: origin
                    (at_c_p2)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #40722: <==negation-removal== 51743 (pos)
                    (not (not_at_c_p2))))

    (:action move_c_p9_p3
        :precondition (and (succ_p9_p3)
                           (at_c_p9))
        :effect (and
                    ; #15846: origin
                    (at_c_p3)

                    ; #49725: origin
                    (not_at_c_p9)

                    ; #18363: <==negation-removal== 15846 (pos)
                    (not (not_at_c_p3))

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))))

    (:action move_c_p9_p4
        :precondition (and (succ_p9_p4)
                           (at_c_p9))
        :effect (and
                    ; #20615: origin
                    (at_c_p4)

                    ; #49725: origin
                    (not_at_c_p9)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #69205: <==negation-removal== 20615 (pos)
                    (not (not_at_c_p4))))

    (:action move_c_p9_p5
        :precondition (and (succ_p9_p5)
                           (at_c_p9))
        :effect (and
                    ; #19432: origin
                    (at_c_p5)

                    ; #49725: origin
                    (not_at_c_p9)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #73718: <==negation-removal== 19432 (pos)
                    (not (not_at_c_p5))))

    (:action move_c_p9_p6
        :precondition (and (at_c_p9)
                           (succ_p9_p6))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #69871: origin
                    (at_c_p6)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #32209: <==negation-removal== 69871 (pos)
                    (not (not_at_c_p6))))

    (:action move_c_p9_p7
        :precondition (and (succ_p9_p7)
                           (at_c_p9))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #85169: origin
                    (at_c_p7)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #60323: <==negation-removal== 85169 (pos)
                    (not (not_at_c_p7))))

    (:action move_c_p9_p8
        :precondition (and (at_c_p9)
                           (succ_p9_p8))
        :effect (and
                    ; #49725: origin
                    (not_at_c_p9)

                    ; #85205: origin
                    (at_c_p8)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #36698: <==negation-removal== 85205 (pos)
                    (not (not_at_c_p8))))

    (:action move_c_p9_p9
        :precondition (and (at_c_p9)
                           (succ_p9_p9))
        :effect (and
                    ; #30570: origin
                    (at_c_p9)

                    ; #49725: origin
                    (not_at_c_p9)

                    ; #30570: <==negation-removal== 49725 (pos)
                    (not (at_c_p9))

                    ; #49725: <==negation-removal== 30570 (pos)
                    (not (not_at_c_p9))))

    (:action observ_a_p10_s
        :precondition (and (at_a_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #23303: <==closure== 70323 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pa_survivorat_s_p10))

                    ; #31541: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Ba_not_survivorat_s_p10))

                    ; #47578: <==closure== 31541 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pa_not_survivorat_s_p10))

                    ; #53364: <==commonly_known== 92199 (pos)
                    (Bc_checked_p10)

                    ; #65095: <==commonly_known== 92199 (pos)
                    (Bb_checked_p10)

                    ; #70323: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Ba_survivorat_s_p10))

                    ; #82646: <==closure== 53364 (pos)
                    (Pc_checked_p10)

                    ; #86372: <==closure== 65095 (pos)
                    (Pb_checked_p10)

                    ; #86914: <==commonly_known== 92199 (pos)
                    (Ba_checked_p10)

                    ; #89067: <==closure== 86914 (pos)
                    (Pa_checked_p10)

                    ; #92199: origin
                    (checked_p10)

                    ; #16945: <==unclosure== 87694 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Ba_survivorat_s_p10)))

                    ; #19493: <==negation-removal== 86372 (pos)
                    (not (Bb_not_checked_p10))

                    ; #22977: <==negation-removal== 92199 (pos)
                    (not (not_checked_p10))

                    ; #27046: <==negation-removal== 82646 (pos)
                    (not (Bc_not_checked_p10))

                    ; #36585: <==negation-removal== 89067 (pos)
                    (not (Ba_not_checked_p10))

                    ; #39583: <==negation-removal== 70323 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #41823: <==negation-removal== 31541 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pa_survivorat_s_p10)))

                    ; #49053: <==negation-removal== 23303 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #60189: <==negation-removal== 65095 (pos)
                    (not (Pb_not_checked_p10))

                    ; #60864: <==negation-removal== 47578 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Ba_survivorat_s_p10)))

                    ; #67374: <==negation-removal== 86914 (pos)
                    (not (Pa_not_checked_p10))

                    ; #69098: <==uncertain_firing== 70323 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pa_not_survivorat_s_p10)))

                    ; #70656: <==unclosure== 69098 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Ba_not_survivorat_s_p10)))

                    ; #87694: <==uncertain_firing== 31541 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pa_survivorat_s_p10)))

                    ; #92139: <==negation-removal== 53364 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_a_p11_s
        :precondition (and (at_a_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #15504: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Ba_survivorat_s_p11))

                    ; #50378: <==closure== 15504 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pa_survivorat_s_p11))

                    ; #56455: <==closure== 61567 (pos)
                    (Pa_checked_p11)

                    ; #59986: <==commonly_known== 63246 (pos)
                    (Bb_checked_p11)

                    ; #60739: <==commonly_known== 63246 (pos)
                    (Bc_checked_p11)

                    ; #61567: <==commonly_known== 63246 (pos)
                    (Ba_checked_p11)

                    ; #63246: origin
                    (checked_p11)

                    ; #69495: <==closure== 80025 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pa_not_survivorat_s_p11))

                    ; #79873: <==closure== 59986 (pos)
                    (Pb_checked_p11)

                    ; #80025: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Ba_not_survivorat_s_p11))

                    ; #91368: <==closure== 60739 (pos)
                    (Pc_checked_p11)

                    ; #13558: <==unclosure== 70482 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Ba_survivorat_s_p11)))

                    ; #15823: <==negation-removal== 59986 (pos)
                    (not (Pb_not_checked_p11))

                    ; #30621: <==unclosure== 48761 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #33124: <==negation-removal== 50378 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Ba_not_survivorat_s_p11)))

                    ; #33725: <==negation-removal== 63246 (pos)
                    (not (not_checked_p11))

                    ; #43956: <==negation-removal== 80025 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pa_survivorat_s_p11)))

                    ; #45967: <==negation-removal== 69495 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Ba_survivorat_s_p11)))

                    ; #48761: <==uncertain_firing== 15504 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #58861: <==negation-removal== 79873 (pos)
                    (not (Bb_not_checked_p11))

                    ; #59669: <==negation-removal== 56455 (pos)
                    (not (Ba_not_checked_p11))

                    ; #70482: <==uncertain_firing== 80025 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pa_survivorat_s_p11)))

                    ; #70696: <==negation-removal== 60739 (pos)
                    (not (Pc_not_checked_p11))

                    ; #76462: <==negation-removal== 15504 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pa_not_survivorat_s_p11)))

                    ; #87273: <==negation-removal== 61567 (pos)
                    (not (Pa_not_checked_p11))

                    ; #90821: <==negation-removal== 91368 (pos)
                    (not (Bc_not_checked_p11))))

    (:action observ_a_p12_s
        :precondition (and (at_a_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #15045: <==closure== 24446 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pa_survivorat_s_p12))

                    ; #24340: <==closure== 41373 (pos)
                    (Pa_checked_p12)

                    ; #24446: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Ba_survivorat_s_p12))

                    ; #25322: <==commonly_known== 33188 (pos)
                    (Bb_checked_p12)

                    ; #33188: origin
                    (checked_p12)

                    ; #38699: <==closure== 60514 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pa_not_survivorat_s_p12))

                    ; #41373: <==commonly_known== 33188 (pos)
                    (Ba_checked_p12)

                    ; #57541: <==commonly_known== 33188 (pos)
                    (Bc_checked_p12)

                    ; #60514: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Ba_not_survivorat_s_p12))

                    ; #62384: <==closure== 25322 (pos)
                    (Pb_checked_p12)

                    ; #66510: <==closure== 57541 (pos)
                    (Pc_checked_p12)

                    ; #15897: <==negation-removal== 24340 (pos)
                    (not (Ba_not_checked_p12))

                    ; #18901: <==negation-removal== 15045 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Ba_not_survivorat_s_p12)))

                    ; #29153: <==negation-removal== 24446 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #33062: <==negation-removal== 66510 (pos)
                    (not (Bc_not_checked_p12))

                    ; #42775: <==negation-removal== 25322 (pos)
                    (not (Pb_not_checked_p12))

                    ; #47360: <==negation-removal== 33188 (pos)
                    (not (not_checked_p12))

                    ; #59166: <==negation-removal== 57541 (pos)
                    (not (Pc_not_checked_p12))

                    ; #60538: <==negation-removal== 62384 (pos)
                    (not (Bb_not_checked_p12))

                    ; #68636: <==negation-removal== 41373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #75480: <==uncertain_firing== 24446 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pa_not_survivorat_s_p12)))

                    ; #75831: <==negation-removal== 38699 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Ba_survivorat_s_p12)))

                    ; #84208: <==unclosure== 91089 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Ba_survivorat_s_p12)))

                    ; #85226: <==negation-removal== 60514 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pa_survivorat_s_p12)))

                    ; #91089: <==uncertain_firing== 60514 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pa_survivorat_s_p12)))

                    ; #92277: <==unclosure== 75480 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Ba_not_survivorat_s_p12)))))

    (:action observ_a_p1_s
        :precondition (and (at_a_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #24322: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Ba_survivorat_s_p1))

                    ; #30693: <==commonly_known== 48183 (pos)
                    (Bb_checked_p1)

                    ; #36591: <==closure== 77896 (pos)
                    (Pa_checked_p1)

                    ; #48183: origin
                    (checked_p1)

                    ; #50256: <==closure== 86746 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pa_not_survivorat_s_p1))

                    ; #63968: <==closure== 66054 (pos)
                    (Pc_checked_p1)

                    ; #66054: <==commonly_known== 48183 (pos)
                    (Bc_checked_p1)

                    ; #69485: <==closure== 24322 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pa_survivorat_s_p1))

                    ; #70799: <==closure== 30693 (pos)
                    (Pb_checked_p1)

                    ; #77896: <==commonly_known== 48183 (pos)
                    (Ba_checked_p1)

                    ; #86746: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Ba_not_survivorat_s_p1))

                    ; #13885: <==negation-removal== 48183 (pos)
                    (not (not_checked_p1))

                    ; #15523: <==negation-removal== 63968 (pos)
                    (not (Bc_not_checked_p1))

                    ; #21513: <==negation-removal== 24322 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #23826: <==unclosure== 36616 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #25333: <==negation-removal== 70799 (pos)
                    (not (Bb_not_checked_p1))

                    ; #36616: <==uncertain_firing== 24322 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pa_not_survivorat_s_p1)))

                    ; #39466: <==negation-removal== 66054 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39588: <==negation-removal== 36591 (pos)
                    (not (Ba_not_checked_p1))

                    ; #43018: <==negation-removal== 69485 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Ba_not_survivorat_s_p1)))

                    ; #50008: <==negation-removal== 30693 (pos)
                    (not (Pb_not_checked_p1))

                    ; #57065: <==uncertain_firing== 86746 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pa_survivorat_s_p1)))

                    ; #58810: <==negation-removal== 50256 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Ba_survivorat_s_p1)))

                    ; #72687: <==unclosure== 57065 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Ba_survivorat_s_p1)))

                    ; #74985: <==negation-removal== 86746 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pa_survivorat_s_p1)))

                    ; #84069: <==negation-removal== 77896 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_a_p2_s
        :precondition (and (at_a_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12190: <==commonly_known== 57642 (pos)
                    (Bb_checked_p2)

                    ; #25957: <==closure== 12190 (pos)
                    (Pb_checked_p2)

                    ; #37256: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Ba_not_survivorat_s_p2))

                    ; #39946: <==commonly_known== 57642 (pos)
                    (Bc_checked_p2)

                    ; #40771: <==closure== 61966 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pa_survivorat_s_p2))

                    ; #43781: <==closure== 75670 (pos)
                    (Pa_checked_p2)

                    ; #56931: <==closure== 37256 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pa_not_survivorat_s_p2))

                    ; #57642: origin
                    (checked_p2)

                    ; #61936: <==closure== 39946 (pos)
                    (Pc_checked_p2)

                    ; #61966: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Ba_survivorat_s_p2))

                    ; #75670: <==commonly_known== 57642 (pos)
                    (Ba_checked_p2)

                    ; #11224: <==uncertain_firing== 61966 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pa_not_survivorat_s_p2)))

                    ; #19320: <==negation-removal== 40771 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #19654: <==uncertain_firing== 37256 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pa_survivorat_s_p2)))

                    ; #26579: <==unclosure== 11224 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Ba_not_survivorat_s_p2)))

                    ; #30640: <==negation-removal== 39946 (pos)
                    (not (Pc_not_checked_p2))

                    ; #39306: <==negation-removal== 43781 (pos)
                    (not (Ba_not_checked_p2))

                    ; #41123: <==negation-removal== 37256 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pa_survivorat_s_p2)))

                    ; #46614: <==negation-removal== 57642 (pos)
                    (not (not_checked_p2))

                    ; #51957: <==negation-removal== 61936 (pos)
                    (not (Bc_not_checked_p2))

                    ; #57677: <==negation-removal== 75670 (pos)
                    (not (Pa_not_checked_p2))

                    ; #59277: <==unclosure== 19654 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Ba_survivorat_s_p2)))

                    ; #60800: <==negation-removal== 12190 (pos)
                    (not (Pb_not_checked_p2))

                    ; #64970: <==negation-removal== 56931 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Ba_survivorat_s_p2)))

                    ; #87474: <==negation-removal== 25957 (pos)
                    (not (Bb_not_checked_p2))

                    ; #90000: <==negation-removal== 61966 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pa_not_survivorat_s_p2)))))

    (:action observ_a_p3_s
        :precondition (and (at_a_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11326: <==closure== 30166 (pos)
                    (Pa_checked_p3)

                    ; #13842: <==closure== 35869 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pa_survivorat_s_p3))

                    ; #21291: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Ba_not_survivorat_s_p3))

                    ; #30166: <==commonly_known== 62025 (pos)
                    (Ba_checked_p3)

                    ; #34841: <==closure== 49989 (pos)
                    (Pc_checked_p3)

                    ; #34895: <==closure== 76081 (pos)
                    (Pb_checked_p3)

                    ; #35869: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Ba_survivorat_s_p3))

                    ; #46439: <==closure== 21291 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pa_not_survivorat_s_p3))

                    ; #49989: <==commonly_known== 62025 (pos)
                    (Bc_checked_p3)

                    ; #62025: origin
                    (checked_p3)

                    ; #76081: <==commonly_known== 62025 (pos)
                    (Bb_checked_p3)

                    ; #17093: <==negation-removal== 11326 (pos)
                    (not (Ba_not_checked_p3))

                    ; #23751: <==negation-removal== 49989 (pos)
                    (not (Pc_not_checked_p3))

                    ; #30069: <==negation-removal== 34841 (pos)
                    (not (Bc_not_checked_p3))

                    ; #31652: <==negation-removal== 35869 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #52649: <==negation-removal== 34895 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58105: <==negation-removal== 62025 (pos)
                    (not (not_checked_p3))

                    ; #62210: <==uncertain_firing== 21291 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pa_survivorat_s_p3)))

                    ; #64819: <==negation-removal== 13842 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Ba_not_survivorat_s_p3)))

                    ; #66442: <==uncertain_firing== 35869 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pa_not_survivorat_s_p3)))

                    ; #69340: <==negation-removal== 76081 (pos)
                    (not (Pb_not_checked_p3))

                    ; #72437: <==negation-removal== 46439 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Ba_survivorat_s_p3)))

                    ; #76165: <==negation-removal== 21291 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pa_survivorat_s_p3)))

                    ; #78142: <==negation-removal== 30166 (pos)
                    (not (Pa_not_checked_p3))

                    ; #80358: <==unclosure== 62210 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Ba_survivorat_s_p3)))

                    ; #83258: <==unclosure== 66442 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Ba_not_survivorat_s_p3)))))

    (:action observ_a_p4_s
        :precondition (and (at_a_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #15554: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Ba_survivorat_s_p4))

                    ; #19135: <==commonly_known== 27908 (pos)
                    (Ba_checked_p4)

                    ; #27908: origin
                    (checked_p4)

                    ; #42127: <==closure== 48026 (pos)
                    (Pb_checked_p4)

                    ; #44861: <==closure== 19135 (pos)
                    (Pa_checked_p4)

                    ; #48026: <==commonly_known== 27908 (pos)
                    (Bb_checked_p4)

                    ; #57480: <==commonly_known== 27908 (pos)
                    (Bc_checked_p4)

                    ; #69306: <==closure== 57480 (pos)
                    (Pc_checked_p4)

                    ; #72644: <==closure== 83233 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pa_not_survivorat_s_p4))

                    ; #83233: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Ba_not_survivorat_s_p4))

                    ; #83562: <==closure== 15554 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pa_survivorat_s_p4))

                    ; #12223: <==negation-removal== 83562 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #15628: <==uncertain_firing== 15554 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #15789: <==uncertain_firing== 83233 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pa_survivorat_s_p4)))

                    ; #29296: <==negation-removal== 27908 (pos)
                    (not (not_checked_p4))

                    ; #29910: <==negation-removal== 44861 (pos)
                    (not (Ba_not_checked_p4))

                    ; #32921: <==negation-removal== 19135 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33985: <==negation-removal== 48026 (pos)
                    (not (Pb_not_checked_p4))

                    ; #48315: <==unclosure== 15789 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Ba_survivorat_s_p4)))

                    ; #51412: <==negation-removal== 83233 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pa_survivorat_s_p4)))

                    ; #54421: <==unclosure== 15628 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Ba_not_survivorat_s_p4)))

                    ; #55275: <==negation-removal== 69306 (pos)
                    (not (Bc_not_checked_p4))

                    ; #65690: <==negation-removal== 42127 (pos)
                    (not (Bb_not_checked_p4))

                    ; #68803: <==negation-removal== 15554 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pa_not_survivorat_s_p4)))

                    ; #79711: <==negation-removal== 72644 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Ba_survivorat_s_p4)))

                    ; #87131: <==negation-removal== 57480 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_a_p5_s
        :precondition (and (at_a_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11826: <==closure== 35510 (pos)
                    (Pc_checked_p5)

                    ; #16368: <==commonly_known== 41114 (pos)
                    (Ba_checked_p5)

                    ; #16775: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Ba_not_survivorat_s_p5))

                    ; #18180: <==closure== 16368 (pos)
                    (Pa_checked_p5)

                    ; #26059: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Ba_survivorat_s_p5))

                    ; #35510: <==commonly_known== 41114 (pos)
                    (Bc_checked_p5)

                    ; #41114: origin
                    (checked_p5)

                    ; #74387: <==closure== 26059 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pa_survivorat_s_p5))

                    ; #80548: <==commonly_known== 41114 (pos)
                    (Bb_checked_p5)

                    ; #84593: <==closure== 80548 (pos)
                    (Pb_checked_p5)

                    ; #85812: <==closure== 16775 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pa_not_survivorat_s_p5))

                    ; #15111: <==unclosure== 38467 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #18197: <==negation-removal== 84593 (pos)
                    (not (Bb_not_checked_p5))

                    ; #32345: <==negation-removal== 26059 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #38467: <==uncertain_firing== 26059 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pa_not_survivorat_s_p5)))

                    ; #46220: <==negation-removal== 16775 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pa_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 18180 (pos)
                    (not (Ba_not_checked_p5))

                    ; #58119: <==negation-removal== 16368 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60238: <==negation-removal== 35510 (pos)
                    (not (Pc_not_checked_p5))

                    ; #62445: <==uncertain_firing== 16775 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pa_survivorat_s_p5)))

                    ; #63253: <==negation-removal== 85812 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Ba_survivorat_s_p5)))

                    ; #63577: <==unclosure== 62445 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Ba_survivorat_s_p5)))

                    ; #66783: <==negation-removal== 11826 (pos)
                    (not (Bc_not_checked_p5))

                    ; #79378: <==negation-removal== 74387 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Ba_not_survivorat_s_p5)))

                    ; #79767: <==negation-removal== 41114 (pos)
                    (not (not_checked_p5))

                    ; #87740: <==negation-removal== 80548 (pos)
                    (not (Pb_not_checked_p5))))

    (:action observ_a_p6_s
        :precondition (and (at_a_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22162: origin
                    (checked_p6)

                    ; #29435: <==commonly_known== 22162 (pos)
                    (Bb_checked_p6)

                    ; #33648: <==closure== 78047 (pos)
                    (Pc_checked_p6)

                    ; #34846: <==closure== 53023 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pa_not_survivorat_s_p6))

                    ; #43531: <==closure== 44776 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pa_survivorat_s_p6))

                    ; #44776: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Ba_survivorat_s_p6))

                    ; #53023: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Ba_not_survivorat_s_p6))

                    ; #54671: <==closure== 29435 (pos)
                    (Pb_checked_p6)

                    ; #58302: <==closure== 68009 (pos)
                    (Pa_checked_p6)

                    ; #68009: <==commonly_known== 22162 (pos)
                    (Ba_checked_p6)

                    ; #78047: <==commonly_known== 22162 (pos)
                    (Bc_checked_p6)

                    ; #13056: <==unclosure== 65467 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #15770: <==negation-removal== 44776 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #21088: <==negation-removal== 54671 (pos)
                    (not (Bb_not_checked_p6))

                    ; #21902: <==uncertain_firing== 53023 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pa_survivorat_s_p6)))

                    ; #27332: <==negation-removal== 34846 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Ba_survivorat_s_p6)))

                    ; #28472: <==negation-removal== 78047 (pos)
                    (not (Pc_not_checked_p6))

                    ; #45816: <==negation-removal== 68009 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51057: <==negation-removal== 29435 (pos)
                    (not (Pb_not_checked_p6))

                    ; #59116: <==negation-removal== 43531 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Ba_not_survivorat_s_p6)))

                    ; #65467: <==uncertain_firing== 44776 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pa_not_survivorat_s_p6)))

                    ; #66754: <==negation-removal== 53023 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pa_survivorat_s_p6)))

                    ; #67425: <==unclosure== 21902 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Ba_survivorat_s_p6)))

                    ; #76964: <==negation-removal== 33648 (pos)
                    (not (Bc_not_checked_p6))

                    ; #82711: <==negation-removal== 58302 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90691: <==negation-removal== 22162 (pos)
                    (not (not_checked_p6))))

    (:action observ_a_p7_s
        :precondition (and (at_a_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #22472: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Ba_survivorat_s_p7))

                    ; #26102: origin
                    (checked_p7)

                    ; #32821: <==closure== 53889 (pos)
                    (Pc_checked_p7)

                    ; #38169: <==closure== 86803 (pos)
                    (Pa_checked_p7)

                    ; #47218: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Ba_not_survivorat_s_p7))

                    ; #50630: <==commonly_known== 26102 (pos)
                    (Bb_checked_p7)

                    ; #52092: <==closure== 47218 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pa_not_survivorat_s_p7))

                    ; #53889: <==commonly_known== 26102 (pos)
                    (Bc_checked_p7)

                    ; #81272: <==closure== 22472 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pa_survivorat_s_p7))

                    ; #86803: <==commonly_known== 26102 (pos)
                    (Ba_checked_p7)

                    ; #89079: <==closure== 50630 (pos)
                    (Pb_checked_p7)

                    ; #18686: <==negation-removal== 81272 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #22269: <==negation-removal== 22472 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pa_not_survivorat_s_p7)))

                    ; #38748: <==uncertain_firing== 47218 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pa_survivorat_s_p7)))

                    ; #41234: <==negation-removal== 50630 (pos)
                    (not (Pb_not_checked_p7))

                    ; #46249: <==negation-removal== 32821 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47259: <==negation-removal== 26102 (pos)
                    (not (not_checked_p7))

                    ; #52904: <==negation-removal== 89079 (pos)
                    (not (Bb_not_checked_p7))

                    ; #53417: <==negation-removal== 52092 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Ba_survivorat_s_p7)))

                    ; #64156: <==unclosure== 38748 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Ba_survivorat_s_p7)))

                    ; #64804: <==negation-removal== 53889 (pos)
                    (not (Pc_not_checked_p7))

                    ; #68769: <==negation-removal== 47218 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pa_survivorat_s_p7)))

                    ; #79704: <==negation-removal== 38169 (pos)
                    (not (Ba_not_checked_p7))

                    ; #84580: <==negation-removal== 86803 (pos)
                    (not (Pa_not_checked_p7))

                    ; #90485: <==unclosure== 91149 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Ba_not_survivorat_s_p7)))

                    ; #91149: <==uncertain_firing== 22472 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pa_not_survivorat_s_p7)))))

    (:action observ_a_p8_s
        :precondition (and (at_a_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10998: <==closure== 18536 (pos)
                    (Pb_checked_p8)

                    ; #13472: origin
                    (checked_p8)

                    ; #14089: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Ba_not_survivorat_s_p8))

                    ; #16722: <==commonly_known== 13472 (pos)
                    (Ba_checked_p8)

                    ; #18536: <==commonly_known== 13472 (pos)
                    (Bb_checked_p8)

                    ; #20479: <==closure== 16722 (pos)
                    (Pa_checked_p8)

                    ; #29062: <==closure== 14089 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pa_not_survivorat_s_p8))

                    ; #30439: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Ba_survivorat_s_p8))

                    ; #31694: <==commonly_known== 13472 (pos)
                    (Bc_checked_p8)

                    ; #77360: <==closure== 31694 (pos)
                    (Pc_checked_p8)

                    ; #79357: <==closure== 30439 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pa_survivorat_s_p8))

                    ; #11198: <==negation-removal== 16722 (pos)
                    (not (Pa_not_checked_p8))

                    ; #24268: <==negation-removal== 30439 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pa_not_survivorat_s_p8)))

                    ; #25102: <==negation-removal== 77360 (pos)
                    (not (Bc_not_checked_p8))

                    ; #27645: <==negation-removal== 20479 (pos)
                    (not (Ba_not_checked_p8))

                    ; #34675: <==negation-removal== 13472 (pos)
                    (not (not_checked_p8))

                    ; #49640: <==negation-removal== 29062 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Ba_survivorat_s_p8)))

                    ; #51440: <==negation-removal== 79357 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #57866: <==unclosure== 67086 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Ba_survivorat_s_p8)))

                    ; #59304: <==negation-removal== 18536 (pos)
                    (not (Pb_not_checked_p8))

                    ; #63303: <==unclosure== 82936 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Ba_not_survivorat_s_p8)))

                    ; #63440: <==negation-removal== 10998 (pos)
                    (not (Bb_not_checked_p8))

                    ; #67086: <==uncertain_firing== 14089 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pa_survivorat_s_p8)))

                    ; #67156: <==negation-removal== 14089 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pa_survivorat_s_p8)))

                    ; #82892: <==negation-removal== 31694 (pos)
                    (not (Pc_not_checked_p8))

                    ; #82936: <==uncertain_firing== 30439 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pa_not_survivorat_s_p8)))))

    (:action observ_a_p9_s
        :precondition (and (at_a_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #20356: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Ba_survivorat_s_p9))

                    ; #31302: <==closure== 67850 (pos)
                    (Pa_checked_p9)

                    ; #33423: <==closure== 45668 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pa_not_survivorat_s_p9))

                    ; #37906: <==closure== 52415 (pos)
                    (Pc_checked_p9)

                    ; #45668: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Ba_not_survivorat_s_p9))

                    ; #48278: <==closure== 89427 (pos)
                    (Pb_checked_p9)

                    ; #52415: <==commonly_known== 63575 (pos)
                    (Bc_checked_p9)

                    ; #62627: <==closure== 20356 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pa_survivorat_s_p9))

                    ; #63575: origin
                    (checked_p9)

                    ; #67850: <==commonly_known== 63575 (pos)
                    (Ba_checked_p9)

                    ; #89427: <==commonly_known== 63575 (pos)
                    (Bb_checked_p9)

                    ; #11385: <==negation-removal== 37906 (pos)
                    (not (Bc_not_checked_p9))

                    ; #12265: <==negation-removal== 20356 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #21611: <==unclosure== 41191 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #35882: <==negation-removal== 63575 (pos)
                    (not (not_checked_p9))

                    ; #41191: <==uncertain_firing== 20356 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pa_not_survivorat_s_p9)))

                    ; #44288: <==negation-removal== 45668 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pa_survivorat_s_p9)))

                    ; #47882: <==negation-removal== 48278 (pos)
                    (not (Bb_not_checked_p9))

                    ; #56053: <==negation-removal== 31302 (pos)
                    (not (Ba_not_checked_p9))

                    ; #58735: <==negation-removal== 62627 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Ba_not_survivorat_s_p9)))

                    ; #63083: <==uncertain_firing== 45668 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pa_survivorat_s_p9)))

                    ; #64720: <==negation-removal== 67850 (pos)
                    (not (Pa_not_checked_p9))

                    ; #72931: <==negation-removal== 33423 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Ba_survivorat_s_p9)))

                    ; #86857: <==negation-removal== 89427 (pos)
                    (not (Pb_not_checked_p9))

                    ; #89299: <==negation-removal== 52415 (pos)
                    (not (Pc_not_checked_p9))

                    ; #96968: <==unclosure== 63083 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Ba_survivorat_s_p9)))))

    (:action observ_b_p10_s
        :precondition (and (at_b_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #30540: <==closure== 50665 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pb_survivorat_s_p10))

                    ; #49051: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bb_not_survivorat_s_p10))

                    ; #50665: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bb_survivorat_s_p10))

                    ; #53364: <==commonly_known== 92199 (pos)
                    (Bc_checked_p10)

                    ; #58049: <==closure== 49051 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pb_not_survivorat_s_p10))

                    ; #65095: <==commonly_known== 92199 (pos)
                    (Bb_checked_p10)

                    ; #82646: <==closure== 53364 (pos)
                    (Pc_checked_p10)

                    ; #86372: <==closure== 65095 (pos)
                    (Pb_checked_p10)

                    ; #86914: <==commonly_known== 92199 (pos)
                    (Ba_checked_p10)

                    ; #89067: <==closure== 86914 (pos)
                    (Pa_checked_p10)

                    ; #92199: origin
                    (checked_p10)

                    ; #11198: <==negation-removal== 49051 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pb_survivorat_s_p10)))

                    ; #15010: <==negation-removal== 50665 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #16193: <==unclosure== 58532 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #19493: <==negation-removal== 86372 (pos)
                    (not (Bb_not_checked_p10))

                    ; #22977: <==negation-removal== 92199 (pos)
                    (not (not_checked_p10))

                    ; #27046: <==negation-removal== 82646 (pos)
                    (not (Bc_not_checked_p10))

                    ; #36585: <==negation-removal== 89067 (pos)
                    (not (Ba_not_checked_p10))

                    ; #41068: <==unclosure== 87859 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bb_survivorat_s_p10)))

                    ; #57990: <==negation-removal== 58049 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bb_survivorat_s_p10)))

                    ; #58532: <==uncertain_firing== 50665 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pb_not_survivorat_s_p10)))

                    ; #60189: <==negation-removal== 65095 (pos)
                    (not (Pb_not_checked_p10))

                    ; #67374: <==negation-removal== 86914 (pos)
                    (not (Pa_not_checked_p10))

                    ; #73569: <==negation-removal== 30540 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bb_not_survivorat_s_p10)))

                    ; #87859: <==uncertain_firing== 49051 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pb_survivorat_s_p10)))

                    ; #92139: <==negation-removal== 53364 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_b_p11_s
        :precondition (and (at_b_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #24134: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bb_survivorat_s_p11))

                    ; #28843: <==closure== 42751 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pb_not_survivorat_s_p11))

                    ; #42751: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bb_not_survivorat_s_p11))

                    ; #47707: <==closure== 24134 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pb_survivorat_s_p11))

                    ; #56455: <==closure== 61567 (pos)
                    (Pa_checked_p11)

                    ; #59986: <==commonly_known== 63246 (pos)
                    (Bb_checked_p11)

                    ; #60739: <==commonly_known== 63246 (pos)
                    (Bc_checked_p11)

                    ; #61567: <==commonly_known== 63246 (pos)
                    (Ba_checked_p11)

                    ; #63246: origin
                    (checked_p11)

                    ; #79873: <==closure== 59986 (pos)
                    (Pb_checked_p11)

                    ; #91368: <==closure== 60739 (pos)
                    (Pc_checked_p11)

                    ; #15823: <==negation-removal== 59986 (pos)
                    (not (Pb_not_checked_p11))

                    ; #17936: <==unclosure== 61290 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bb_survivorat_s_p11)))

                    ; #32163: <==negation-removal== 28843 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bb_survivorat_s_p11)))

                    ; #33725: <==negation-removal== 63246 (pos)
                    (not (not_checked_p11))

                    ; #33931: <==negation-removal== 47707 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #34784: <==uncertain_firing== 24134 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #51744: <==unclosure== 34784 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bb_not_survivorat_s_p11)))

                    ; #58861: <==negation-removal== 79873 (pos)
                    (not (Bb_not_checked_p11))

                    ; #59669: <==negation-removal== 56455 (pos)
                    (not (Ba_not_checked_p11))

                    ; #61290: <==uncertain_firing== 42751 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pb_survivorat_s_p11)))

                    ; #70585: <==negation-removal== 24134 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pb_not_survivorat_s_p11)))

                    ; #70696: <==negation-removal== 60739 (pos)
                    (not (Pc_not_checked_p11))

                    ; #83833: <==negation-removal== 42751 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pb_survivorat_s_p11)))

                    ; #87273: <==negation-removal== 61567 (pos)
                    (not (Pa_not_checked_p11))

                    ; #90821: <==negation-removal== 91368 (pos)
                    (not (Bc_not_checked_p11))))

    (:action observ_b_p12_s
        :precondition (and (at_b_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #24340: <==closure== 41373 (pos)
                    (Pa_checked_p12)

                    ; #25322: <==commonly_known== 33188 (pos)
                    (Bb_checked_p12)

                    ; #26695: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bb_survivorat_s_p12))

                    ; #28629: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bb_not_survivorat_s_p12))

                    ; #33188: origin
                    (checked_p12)

                    ; #41373: <==commonly_known== 33188 (pos)
                    (Ba_checked_p12)

                    ; #53430: <==closure== 26695 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pb_survivorat_s_p12))

                    ; #57541: <==commonly_known== 33188 (pos)
                    (Bc_checked_p12)

                    ; #62384: <==closure== 25322 (pos)
                    (Pb_checked_p12)

                    ; #64827: <==closure== 28629 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pb_not_survivorat_s_p12))

                    ; #66510: <==closure== 57541 (pos)
                    (Pc_checked_p12)

                    ; #10352: <==negation-removal== 28629 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pb_survivorat_s_p12)))

                    ; #15766: <==unclosure== 25252 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #15897: <==negation-removal== 24340 (pos)
                    (not (Ba_not_checked_p12))

                    ; #25252: <==uncertain_firing== 26695 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #33062: <==negation-removal== 66510 (pos)
                    (not (Bc_not_checked_p12))

                    ; #42775: <==negation-removal== 25322 (pos)
                    (not (Pb_not_checked_p12))

                    ; #47360: <==negation-removal== 33188 (pos)
                    (not (not_checked_p12))

                    ; #51080: <==negation-removal== 64827 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bb_survivorat_s_p12)))

                    ; #51604: <==unclosure== 79080 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bb_survivorat_s_p12)))

                    ; #52913: <==negation-removal== 26695 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pb_not_survivorat_s_p12)))

                    ; #59166: <==negation-removal== 57541 (pos)
                    (not (Pc_not_checked_p12))

                    ; #60538: <==negation-removal== 62384 (pos)
                    (not (Bb_not_checked_p12))

                    ; #68636: <==negation-removal== 41373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #77600: <==negation-removal== 53430 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bb_not_survivorat_s_p12)))

                    ; #79080: <==uncertain_firing== 28629 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pb_survivorat_s_p12)))))

    (:action observ_b_p1_s
        :precondition (and (at_b_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #30693: <==commonly_known== 48183 (pos)
                    (Bb_checked_p1)

                    ; #36591: <==closure== 77896 (pos)
                    (Pa_checked_p1)

                    ; #37895: <==closure== 62292 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pb_not_survivorat_s_p1))

                    ; #48183: origin
                    (checked_p1)

                    ; #57824: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bb_survivorat_s_p1))

                    ; #62292: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bb_not_survivorat_s_p1))

                    ; #63968: <==closure== 66054 (pos)
                    (Pc_checked_p1)

                    ; #66054: <==commonly_known== 48183 (pos)
                    (Bc_checked_p1)

                    ; #70799: <==closure== 30693 (pos)
                    (Pb_checked_p1)

                    ; #77896: <==commonly_known== 48183 (pos)
                    (Ba_checked_p1)

                    ; #89275: <==closure== 57824 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pb_survivorat_s_p1))

                    ; #10966: <==negation-removal== 57824 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #13885: <==negation-removal== 48183 (pos)
                    (not (not_checked_p1))

                    ; #15523: <==negation-removal== 63968 (pos)
                    (not (Bc_not_checked_p1))

                    ; #25333: <==negation-removal== 70799 (pos)
                    (not (Bb_not_checked_p1))

                    ; #27029: <==unclosure== 49865 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #27065: <==uncertain_firing== 62292 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pb_survivorat_s_p1)))

                    ; #34418: <==negation-removal== 89275 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bb_not_survivorat_s_p1)))

                    ; #39466: <==negation-removal== 66054 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39588: <==negation-removal== 36591 (pos)
                    (not (Ba_not_checked_p1))

                    ; #49865: <==uncertain_firing== 57824 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pb_not_survivorat_s_p1)))

                    ; #50008: <==negation-removal== 30693 (pos)
                    (not (Pb_not_checked_p1))

                    ; #50920: <==negation-removal== 37895 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bb_survivorat_s_p1)))

                    ; #64428: <==unclosure== 27065 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bb_survivorat_s_p1)))

                    ; #84069: <==negation-removal== 77896 (pos)
                    (not (Pa_not_checked_p1))

                    ; #91508: <==negation-removal== 62292 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pb_survivorat_s_p1)))))

    (:action observ_b_p2_s
        :precondition (and (at_b_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12190: <==commonly_known== 57642 (pos)
                    (Bb_checked_p2)

                    ; #25957: <==closure== 12190 (pos)
                    (Pb_checked_p2)

                    ; #39946: <==commonly_known== 57642 (pos)
                    (Bc_checked_p2)

                    ; #43781: <==closure== 75670 (pos)
                    (Pa_checked_p2)

                    ; #57642: origin
                    (checked_p2)

                    ; #61936: <==closure== 39946 (pos)
                    (Pc_checked_p2)

                    ; #75461: <==closure== 79452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pb_not_survivorat_s_p2))

                    ; #75670: <==commonly_known== 57642 (pos)
                    (Ba_checked_p2)

                    ; #79452: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bb_not_survivorat_s_p2))

                    ; #87051: <==closure== 89328 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pb_survivorat_s_p2))

                    ; #89328: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bb_survivorat_s_p2))

                    ; #10727: <==unclosure== 34891 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #30640: <==negation-removal== 39946 (pos)
                    (not (Pc_not_checked_p2))

                    ; #34891: <==uncertain_firing== 89328 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pb_not_survivorat_s_p2)))

                    ; #38890: <==uncertain_firing== 79452 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pb_survivorat_s_p2)))

                    ; #39265: <==negation-removal== 75461 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bb_survivorat_s_p2)))

                    ; #39306: <==negation-removal== 43781 (pos)
                    (not (Ba_not_checked_p2))

                    ; #46614: <==negation-removal== 57642 (pos)
                    (not (not_checked_p2))

                    ; #50284: <==negation-removal== 79452 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pb_survivorat_s_p2)))

                    ; #51957: <==negation-removal== 61936 (pos)
                    (not (Bc_not_checked_p2))

                    ; #57677: <==negation-removal== 75670 (pos)
                    (not (Pa_not_checked_p2))

                    ; #60800: <==negation-removal== 12190 (pos)
                    (not (Pb_not_checked_p2))

                    ; #61178: <==negation-removal== 87051 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bb_not_survivorat_s_p2)))

                    ; #82437: <==unclosure== 38890 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bb_survivorat_s_p2)))

                    ; #87474: <==negation-removal== 25957 (pos)
                    (not (Bb_not_checked_p2))

                    ; #88581: <==negation-removal== 89328 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pb_not_survivorat_s_p2)))))

    (:action observ_b_p3_s
        :precondition (and (at_b_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11326: <==closure== 30166 (pos)
                    (Pa_checked_p3)

                    ; #14540: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bb_survivorat_s_p3))

                    ; #15493: <==closure== 81221 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pb_not_survivorat_s_p3))

                    ; #30166: <==commonly_known== 62025 (pos)
                    (Ba_checked_p3)

                    ; #34841: <==closure== 49989 (pos)
                    (Pc_checked_p3)

                    ; #34895: <==closure== 76081 (pos)
                    (Pb_checked_p3)

                    ; #45996: <==closure== 14540 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pb_survivorat_s_p3))

                    ; #49989: <==commonly_known== 62025 (pos)
                    (Bc_checked_p3)

                    ; #62025: origin
                    (checked_p3)

                    ; #76081: <==commonly_known== 62025 (pos)
                    (Bb_checked_p3)

                    ; #81221: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bb_not_survivorat_s_p3))

                    ; #12954: <==unclosure== 85055 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #17093: <==negation-removal== 11326 (pos)
                    (not (Ba_not_checked_p3))

                    ; #23751: <==negation-removal== 49989 (pos)
                    (not (Pc_not_checked_p3))

                    ; #30069: <==negation-removal== 34841 (pos)
                    (not (Bc_not_checked_p3))

                    ; #33667: <==negation-removal== 81221 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pb_survivorat_s_p3)))

                    ; #34481: <==uncertain_firing== 81221 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pb_survivorat_s_p3)))

                    ; #43788: <==unclosure== 34481 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bb_survivorat_s_p3)))

                    ; #52649: <==negation-removal== 34895 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58105: <==negation-removal== 62025 (pos)
                    (not (not_checked_p3))

                    ; #65762: <==negation-removal== 14540 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pb_not_survivorat_s_p3)))

                    ; #67831: <==negation-removal== 15493 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bb_survivorat_s_p3)))

                    ; #69340: <==negation-removal== 76081 (pos)
                    (not (Pb_not_checked_p3))

                    ; #71972: <==negation-removal== 45996 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bb_not_survivorat_s_p3)))

                    ; #78142: <==negation-removal== 30166 (pos)
                    (not (Pa_not_checked_p3))

                    ; #85055: <==uncertain_firing== 14540 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pb_not_survivorat_s_p3)))))

    (:action observ_b_p4_s
        :precondition (and (at_b_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19135: <==commonly_known== 27908 (pos)
                    (Ba_checked_p4)

                    ; #27908: origin
                    (checked_p4)

                    ; #42127: <==closure== 48026 (pos)
                    (Pb_checked_p4)

                    ; #44861: <==closure== 19135 (pos)
                    (Pa_checked_p4)

                    ; #47163: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bb_survivorat_s_p4))

                    ; #47177: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bb_not_survivorat_s_p4))

                    ; #48026: <==commonly_known== 27908 (pos)
                    (Bb_checked_p4)

                    ; #53568: <==closure== 47163 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pb_survivorat_s_p4))

                    ; #57480: <==commonly_known== 27908 (pos)
                    (Bc_checked_p4)

                    ; #57929: <==closure== 47177 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pb_not_survivorat_s_p4))

                    ; #69306: <==closure== 57480 (pos)
                    (Pc_checked_p4)

                    ; #11344: <==unclosure== 79140 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bb_survivorat_s_p4)))

                    ; #29296: <==negation-removal== 27908 (pos)
                    (not (not_checked_p4))

                    ; #29578: <==unclosure== 39643 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #29910: <==negation-removal== 44861 (pos)
                    (not (Ba_not_checked_p4))

                    ; #30209: <==negation-removal== 47163 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #32921: <==negation-removal== 19135 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33985: <==negation-removal== 48026 (pos)
                    (not (Pb_not_checked_p4))

                    ; #39643: <==uncertain_firing== 47163 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pb_not_survivorat_s_p4)))

                    ; #49319: <==negation-removal== 47177 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pb_survivorat_s_p4)))

                    ; #55275: <==negation-removal== 69306 (pos)
                    (not (Bc_not_checked_p4))

                    ; #63514: <==negation-removal== 57929 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bb_survivorat_s_p4)))

                    ; #65690: <==negation-removal== 42127 (pos)
                    (not (Bb_not_checked_p4))

                    ; #69197: <==negation-removal== 53568 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bb_not_survivorat_s_p4)))

                    ; #79140: <==uncertain_firing== 47177 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pb_survivorat_s_p4)))

                    ; #87131: <==negation-removal== 57480 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_b_p5_s
        :precondition (and (at_b_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11826: <==closure== 35510 (pos)
                    (Pc_checked_p5)

                    ; #16368: <==commonly_known== 41114 (pos)
                    (Ba_checked_p5)

                    ; #18180: <==closure== 16368 (pos)
                    (Pa_checked_p5)

                    ; #25909: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bb_survivorat_s_p5))

                    ; #35510: <==commonly_known== 41114 (pos)
                    (Bc_checked_p5)

                    ; #35757: <==closure== 25909 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pb_survivorat_s_p5))

                    ; #37177: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bb_not_survivorat_s_p5))

                    ; #41114: origin
                    (checked_p5)

                    ; #47415: <==closure== 37177 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pb_not_survivorat_s_p5))

                    ; #80548: <==commonly_known== 41114 (pos)
                    (Bb_checked_p5)

                    ; #84593: <==closure== 80548 (pos)
                    (Pb_checked_p5)

                    ; #18197: <==negation-removal== 84593 (pos)
                    (not (Bb_not_checked_p5))

                    ; #28102: <==uncertain_firing== 25909 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #43640: <==negation-removal== 25909 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pb_not_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 18180 (pos)
                    (not (Ba_not_checked_p5))

                    ; #48824: <==unclosure== 28102 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #58094: <==negation-removal== 35757 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bb_not_survivorat_s_p5)))

                    ; #58119: <==negation-removal== 16368 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60238: <==negation-removal== 35510 (pos)
                    (not (Pc_not_checked_p5))

                    ; #66783: <==negation-removal== 11826 (pos)
                    (not (Bc_not_checked_p5))

                    ; #68139: <==uncertain_firing== 37177 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pb_survivorat_s_p5)))

                    ; #79661: <==negation-removal== 37177 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pb_survivorat_s_p5)))

                    ; #79767: <==negation-removal== 41114 (pos)
                    (not (not_checked_p5))

                    ; #87740: <==negation-removal== 80548 (pos)
                    (not (Pb_not_checked_p5))

                    ; #88555: <==negation-removal== 47415 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bb_survivorat_s_p5)))

                    ; #90691: <==unclosure== 68139 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bb_survivorat_s_p5)))))

    (:action observ_b_p6_s
        :precondition (and (at_b_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #22162: origin
                    (checked_p6)

                    ; #29435: <==commonly_known== 22162 (pos)
                    (Bb_checked_p6)

                    ; #33648: <==closure== 78047 (pos)
                    (Pc_checked_p6)

                    ; #34147: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bb_survivorat_s_p6))

                    ; #54171: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bb_not_survivorat_s_p6))

                    ; #54671: <==closure== 29435 (pos)
                    (Pb_checked_p6)

                    ; #58302: <==closure== 68009 (pos)
                    (Pa_checked_p6)

                    ; #68009: <==commonly_known== 22162 (pos)
                    (Ba_checked_p6)

                    ; #68226: <==closure== 34147 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pb_survivorat_s_p6))

                    ; #74648: <==closure== 54171 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pb_not_survivorat_s_p6))

                    ; #78047: <==commonly_known== 22162 (pos)
                    (Bc_checked_p6)

                    ; #13440: <==unclosure== 69930 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bb_survivorat_s_p6)))

                    ; #21088: <==negation-removal== 54671 (pos)
                    (not (Bb_not_checked_p6))

                    ; #28472: <==negation-removal== 78047 (pos)
                    (not (Pc_not_checked_p6))

                    ; #45816: <==negation-removal== 68009 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51057: <==negation-removal== 29435 (pos)
                    (not (Pb_not_checked_p6))

                    ; #53693: <==negation-removal== 74648 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bb_survivorat_s_p6)))

                    ; #55524: <==uncertain_firing== 34147 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #58490: <==negation-removal== 54171 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pb_survivorat_s_p6)))

                    ; #67983: <==negation-removal== 34147 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pb_not_survivorat_s_p6)))

                    ; #69930: <==uncertain_firing== 54171 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pb_survivorat_s_p6)))

                    ; #76964: <==negation-removal== 33648 (pos)
                    (not (Bc_not_checked_p6))

                    ; #82711: <==negation-removal== 58302 (pos)
                    (not (Ba_not_checked_p6))

                    ; #82859: <==negation-removal== 68226 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #84827: <==unclosure== 55524 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bb_not_survivorat_s_p6)))

                    ; #90691: <==negation-removal== 22162 (pos)
                    (not (not_checked_p6))))

    (:action observ_b_p7_s
        :precondition (and (at_b_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #24942: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bb_survivorat_s_p7))

                    ; #26102: origin
                    (checked_p7)

                    ; #32821: <==closure== 53889 (pos)
                    (Pc_checked_p7)

                    ; #38169: <==closure== 86803 (pos)
                    (Pa_checked_p7)

                    ; #43527: <==closure== 60763 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pb_not_survivorat_s_p7))

                    ; #50630: <==commonly_known== 26102 (pos)
                    (Bb_checked_p7)

                    ; #53889: <==commonly_known== 26102 (pos)
                    (Bc_checked_p7)

                    ; #54111: <==closure== 24942 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pb_survivorat_s_p7))

                    ; #60763: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bb_not_survivorat_s_p7))

                    ; #86803: <==commonly_known== 26102 (pos)
                    (Ba_checked_p7)

                    ; #89079: <==closure== 50630 (pos)
                    (Pb_checked_p7)

                    ; #10507: <==unclosure== 40914 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bb_survivorat_s_p7)))

                    ; #12682: <==negation-removal== 24942 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #20724: <==unclosure== 28333 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #28333: <==uncertain_firing== 24942 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pb_not_survivorat_s_p7)))

                    ; #40914: <==uncertain_firing== 60763 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pb_survivorat_s_p7)))

                    ; #41234: <==negation-removal== 50630 (pos)
                    (not (Pb_not_checked_p7))

                    ; #46249: <==negation-removal== 32821 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47259: <==negation-removal== 26102 (pos)
                    (not (not_checked_p7))

                    ; #52904: <==negation-removal== 89079 (pos)
                    (not (Bb_not_checked_p7))

                    ; #55000: <==negation-removal== 43527 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bb_survivorat_s_p7)))

                    ; #64804: <==negation-removal== 53889 (pos)
                    (not (Pc_not_checked_p7))

                    ; #73071: <==negation-removal== 54111 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bb_not_survivorat_s_p7)))

                    ; #79704: <==negation-removal== 38169 (pos)
                    (not (Ba_not_checked_p7))

                    ; #82182: <==negation-removal== 60763 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pb_survivorat_s_p7)))

                    ; #84580: <==negation-removal== 86803 (pos)
                    (not (Pa_not_checked_p7))))

    (:action observ_b_p8_s
        :precondition (and (at_b_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10998: <==closure== 18536 (pos)
                    (Pb_checked_p8)

                    ; #13472: origin
                    (checked_p8)

                    ; #16722: <==commonly_known== 13472 (pos)
                    (Ba_checked_p8)

                    ; #18536: <==commonly_known== 13472 (pos)
                    (Bb_checked_p8)

                    ; #20479: <==closure== 16722 (pos)
                    (Pa_checked_p8)

                    ; #28390: <==closure== 67960 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pb_not_survivorat_s_p8))

                    ; #31694: <==commonly_known== 13472 (pos)
                    (Bc_checked_p8)

                    ; #32497: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bb_survivorat_s_p8))

                    ; #67960: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bb_not_survivorat_s_p8))

                    ; #76515: <==closure== 32497 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pb_survivorat_s_p8))

                    ; #77360: <==closure== 31694 (pos)
                    (Pc_checked_p8)

                    ; #11198: <==negation-removal== 16722 (pos)
                    (not (Pa_not_checked_p8))

                    ; #12217: <==negation-removal== 32497 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #18736: <==uncertain_firing== 67960 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pb_survivorat_s_p8)))

                    ; #25102: <==negation-removal== 77360 (pos)
                    (not (Bc_not_checked_p8))

                    ; #27645: <==negation-removal== 20479 (pos)
                    (not (Ba_not_checked_p8))

                    ; #34675: <==negation-removal== 13472 (pos)
                    (not (not_checked_p8))

                    ; #40555: <==negation-removal== 67960 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pb_survivorat_s_p8)))

                    ; #44253: <==negation-removal== 76515 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #52826: <==unclosure== 18736 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bb_survivorat_s_p8)))

                    ; #59304: <==negation-removal== 18536 (pos)
                    (not (Pb_not_checked_p8))

                    ; #60611: <==negation-removal== 28390 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bb_survivorat_s_p8)))

                    ; #63440: <==negation-removal== 10998 (pos)
                    (not (Bb_not_checked_p8))

                    ; #75483: <==uncertain_firing== 32497 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pb_not_survivorat_s_p8)))

                    ; #80240: <==unclosure== 75483 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bb_not_survivorat_s_p8)))

                    ; #82892: <==negation-removal== 31694 (pos)
                    (not (Pc_not_checked_p8))))

    (:action observ_b_p9_s
        :precondition (and (at_b_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #16759: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bb_survivorat_s_p9))

                    ; #31302: <==closure== 67850 (pos)
                    (Pa_checked_p9)

                    ; #37906: <==closure== 52415 (pos)
                    (Pc_checked_p9)

                    ; #43764: <==closure== 16759 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pb_survivorat_s_p9))

                    ; #48278: <==closure== 89427 (pos)
                    (Pb_checked_p9)

                    ; #49938: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bb_not_survivorat_s_p9))

                    ; #52415: <==commonly_known== 63575 (pos)
                    (Bc_checked_p9)

                    ; #63575: origin
                    (checked_p9)

                    ; #67850: <==commonly_known== 63575 (pos)
                    (Ba_checked_p9)

                    ; #77290: <==closure== 49938 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pb_not_survivorat_s_p9))

                    ; #89427: <==commonly_known== 63575 (pos)
                    (Bb_checked_p9)

                    ; #11385: <==negation-removal== 37906 (pos)
                    (not (Bc_not_checked_p9))

                    ; #13462: <==negation-removal== 43764 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #23517: <==uncertain_firing== 49938 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pb_survivorat_s_p9)))

                    ; #35882: <==negation-removal== 63575 (pos)
                    (not (not_checked_p9))

                    ; #38853: <==unclosure== 73054 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bb_not_survivorat_s_p9)))

                    ; #45460: <==negation-removal== 77290 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bb_survivorat_s_p9)))

                    ; #47821: <==negation-removal== 16759 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #47882: <==negation-removal== 48278 (pos)
                    (not (Bb_not_checked_p9))

                    ; #56053: <==negation-removal== 31302 (pos)
                    (not (Ba_not_checked_p9))

                    ; #60309: <==unclosure== 23517 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bb_survivorat_s_p9)))

                    ; #62376: <==negation-removal== 49938 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pb_survivorat_s_p9)))

                    ; #64720: <==negation-removal== 67850 (pos)
                    (not (Pa_not_checked_p9))

                    ; #73054: <==uncertain_firing== 16759 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pb_not_survivorat_s_p9)))

                    ; #86857: <==negation-removal== 89427 (pos)
                    (not (Pb_not_checked_p9))

                    ; #89299: <==negation-removal== 52415 (pos)
                    (not (Pc_not_checked_p9))))

    (:action observ_c_p10_s
        :precondition (and (at_c_p10)
                           (not (checked_p10)))
        :effect (and
                    ; #24767: origin
                    (when (and (hiddensurvivorat_s_p10))
                          (Bc_survivorat_s_p10))

                    ; #25691: <==closure== 24767 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (Pc_survivorat_s_p10))

                    ; #26340: <==closure== 29619 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Pc_not_survivorat_s_p10))

                    ; #29619: origin
                    (when (and (not_hiddensurvivorat_s_p10))
                          (Bc_not_survivorat_s_p10))

                    ; #53364: <==commonly_known== 92199 (pos)
                    (Bc_checked_p10)

                    ; #65095: <==commonly_known== 92199 (pos)
                    (Bb_checked_p10)

                    ; #82646: <==closure== 53364 (pos)
                    (Pc_checked_p10)

                    ; #86372: <==closure== 65095 (pos)
                    (Pb_checked_p10)

                    ; #86914: <==commonly_known== 92199 (pos)
                    (Ba_checked_p10)

                    ; #89067: <==closure== 86914 (pos)
                    (Pa_checked_p10)

                    ; #92199: origin
                    (checked_p10)

                    ; #13308: <==unclosure== 66024 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #13857: <==uncertain_firing== 29619 (pos)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Pc_survivorat_s_p10)))

                    ; #19493: <==negation-removal== 86372 (pos)
                    (not (Bb_not_checked_p10))

                    ; #22977: <==negation-removal== 92199 (pos)
                    (not (not_checked_p10))

                    ; #27046: <==negation-removal== 82646 (pos)
                    (not (Bc_not_checked_p10))

                    ; #33451: <==negation-removal== 24767 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #36585: <==negation-removal== 89067 (pos)
                    (not (Ba_not_checked_p10))

                    ; #44405: <==unclosure== 13857 (neg)
                    (when (and (not (hiddensurvivorat_s_p10)))
                          (not (Bc_survivorat_s_p10)))

                    ; #53053: <==negation-removal== 26340 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Bc_survivorat_s_p10)))

                    ; #60189: <==negation-removal== 65095 (pos)
                    (not (Pb_not_checked_p10))

                    ; #66024: <==uncertain_firing== 24767 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p10)))
                          (not (Pc_not_survivorat_s_p10)))

                    ; #67374: <==negation-removal== 86914 (pos)
                    (not (Pa_not_checked_p10))

                    ; #79913: <==negation-removal== 29619 (pos)
                    (when (and (not_hiddensurvivorat_s_p10))
                          (not (Pc_survivorat_s_p10)))

                    ; #91375: <==negation-removal== 25691 (pos)
                    (when (and (hiddensurvivorat_s_p10))
                          (not (Bc_not_survivorat_s_p10)))

                    ; #92139: <==negation-removal== 53364 (pos)
                    (not (Pc_not_checked_p10))))

    (:action observ_c_p11_s
        :precondition (and (at_c_p11)
                           (not (checked_p11)))
        :effect (and
                    ; #41878: origin
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Bc_not_survivorat_s_p11))

                    ; #48446: <==closure== 81382 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (Pc_survivorat_s_p11))

                    ; #56455: <==closure== 61567 (pos)
                    (Pa_checked_p11)

                    ; #59986: <==commonly_known== 63246 (pos)
                    (Bb_checked_p11)

                    ; #60449: <==closure== 41878 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (Pc_not_survivorat_s_p11))

                    ; #60739: <==commonly_known== 63246 (pos)
                    (Bc_checked_p11)

                    ; #61567: <==commonly_known== 63246 (pos)
                    (Ba_checked_p11)

                    ; #63246: origin
                    (checked_p11)

                    ; #79873: <==closure== 59986 (pos)
                    (Pb_checked_p11)

                    ; #81382: origin
                    (when (and (hiddensurvivorat_s_p11))
                          (Bc_survivorat_s_p11))

                    ; #91368: <==closure== 60739 (pos)
                    (Pc_checked_p11)

                    ; #15823: <==negation-removal== 59986 (pos)
                    (not (Pb_not_checked_p11))

                    ; #16667: <==negation-removal== 81382 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #21327: <==unclosure== 68033 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #24296: <==uncertain_firing== 41878 (pos)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Pc_survivorat_s_p11)))

                    ; #32359: <==unclosure== 24296 (neg)
                    (when (and (not (hiddensurvivorat_s_p11)))
                          (not (Bc_survivorat_s_p11)))

                    ; #33725: <==negation-removal== 63246 (pos)
                    (not (not_checked_p11))

                    ; #51502: <==negation-removal== 41878 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Pc_survivorat_s_p11)))

                    ; #58861: <==negation-removal== 79873 (pos)
                    (not (Bb_not_checked_p11))

                    ; #59669: <==negation-removal== 56455 (pos)
                    (not (Ba_not_checked_p11))

                    ; #68033: <==uncertain_firing== 81382 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p11)))
                          (not (Pc_not_survivorat_s_p11)))

                    ; #70696: <==negation-removal== 60739 (pos)
                    (not (Pc_not_checked_p11))

                    ; #74431: <==negation-removal== 48446 (pos)
                    (when (and (hiddensurvivorat_s_p11))
                          (not (Bc_not_survivorat_s_p11)))

                    ; #86986: <==negation-removal== 60449 (pos)
                    (when (and (not_hiddensurvivorat_s_p11))
                          (not (Bc_survivorat_s_p11)))

                    ; #87273: <==negation-removal== 61567 (pos)
                    (not (Pa_not_checked_p11))

                    ; #90821: <==negation-removal== 91368 (pos)
                    (not (Bc_not_checked_p11))))

    (:action observ_c_p12_s
        :precondition (and (at_c_p12)
                           (not (checked_p12)))
        :effect (and
                    ; #24340: <==closure== 41373 (pos)
                    (Pa_checked_p12)

                    ; #25322: <==commonly_known== 33188 (pos)
                    (Bb_checked_p12)

                    ; #33188: origin
                    (checked_p12)

                    ; #41373: <==commonly_known== 33188 (pos)
                    (Ba_checked_p12)

                    ; #42680: <==closure== 74179 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (Pc_survivorat_s_p12))

                    ; #57541: <==commonly_known== 33188 (pos)
                    (Bc_checked_p12)

                    ; #59640: <==closure== 74903 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Pc_not_survivorat_s_p12))

                    ; #62384: <==closure== 25322 (pos)
                    (Pb_checked_p12)

                    ; #66510: <==closure== 57541 (pos)
                    (Pc_checked_p12)

                    ; #74179: origin
                    (when (and (hiddensurvivorat_s_p12))
                          (Bc_survivorat_s_p12))

                    ; #74903: origin
                    (when (and (not_hiddensurvivorat_s_p12))
                          (Bc_not_survivorat_s_p12))

                    ; #15897: <==negation-removal== 24340 (pos)
                    (not (Ba_not_checked_p12))

                    ; #27195: <==negation-removal== 74903 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Pc_survivorat_s_p12)))

                    ; #31084: <==negation-removal== 42680 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #33062: <==negation-removal== 66510 (pos)
                    (not (Bc_not_checked_p12))

                    ; #33512: <==unclosure== 54362 (neg)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Bc_survivorat_s_p12)))

                    ; #39863: <==negation-removal== 74179 (pos)
                    (when (and (hiddensurvivorat_s_p12))
                          (not (Pc_not_survivorat_s_p12)))

                    ; #42771: <==negation-removal== 59640 (pos)
                    (when (and (not_hiddensurvivorat_s_p12))
                          (not (Bc_survivorat_s_p12)))

                    ; #42775: <==negation-removal== 25322 (pos)
                    (not (Pb_not_checked_p12))

                    ; #43997: <==unclosure== 72168 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Bc_not_survivorat_s_p12)))

                    ; #47360: <==negation-removal== 33188 (pos)
                    (not (not_checked_p12))

                    ; #54362: <==uncertain_firing== 74903 (pos)
                    (when (and (not (hiddensurvivorat_s_p12)))
                          (not (Pc_survivorat_s_p12)))

                    ; #59166: <==negation-removal== 57541 (pos)
                    (not (Pc_not_checked_p12))

                    ; #60538: <==negation-removal== 62384 (pos)
                    (not (Bb_not_checked_p12))

                    ; #68636: <==negation-removal== 41373 (pos)
                    (not (Pa_not_checked_p12))

                    ; #72168: <==uncertain_firing== 74179 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p12)))
                          (not (Pc_not_survivorat_s_p12)))))

    (:action observ_c_p1_s
        :precondition (and (at_c_p1)
                           (not (checked_p1)))
        :effect (and
                    ; #30693: <==commonly_known== 48183 (pos)
                    (Bb_checked_p1)

                    ; #36095: <==closure== 78950 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Pc_not_survivorat_s_p1))

                    ; #36591: <==closure== 77896 (pos)
                    (Pa_checked_p1)

                    ; #38846: origin
                    (when (and (hiddensurvivorat_s_p1))
                          (Bc_survivorat_s_p1))

                    ; #48183: origin
                    (checked_p1)

                    ; #63968: <==closure== 66054 (pos)
                    (Pc_checked_p1)

                    ; #66054: <==commonly_known== 48183 (pos)
                    (Bc_checked_p1)

                    ; #70799: <==closure== 30693 (pos)
                    (Pb_checked_p1)

                    ; #77896: <==commonly_known== 48183 (pos)
                    (Ba_checked_p1)

                    ; #78950: origin
                    (when (and (not_hiddensurvivorat_s_p1))
                          (Bc_not_survivorat_s_p1))

                    ; #82167: <==closure== 38846 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (Pc_survivorat_s_p1))

                    ; #10264: <==unclosure== 42909 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #13885: <==negation-removal== 48183 (pos)
                    (not (not_checked_p1))

                    ; #14944: <==negation-removal== 38846 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #15523: <==negation-removal== 63968 (pos)
                    (not (Bc_not_checked_p1))

                    ; #24285: <==negation-removal== 36095 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Bc_survivorat_s_p1)))

                    ; #25102: <==negation-removal== 82167 (pos)
                    (when (and (hiddensurvivorat_s_p1))
                          (not (Bc_not_survivorat_s_p1)))

                    ; #25333: <==negation-removal== 70799 (pos)
                    (not (Bb_not_checked_p1))

                    ; #36851: <==unclosure== 51222 (neg)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Bc_survivorat_s_p1)))

                    ; #39466: <==negation-removal== 66054 (pos)
                    (not (Pc_not_checked_p1))

                    ; #39588: <==negation-removal== 36591 (pos)
                    (not (Ba_not_checked_p1))

                    ; #42909: <==uncertain_firing== 38846 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p1)))
                          (not (Pc_not_survivorat_s_p1)))

                    ; #50008: <==negation-removal== 30693 (pos)
                    (not (Pb_not_checked_p1))

                    ; #51222: <==uncertain_firing== 78950 (pos)
                    (when (and (not (hiddensurvivorat_s_p1)))
                          (not (Pc_survivorat_s_p1)))

                    ; #71690: <==negation-removal== 78950 (pos)
                    (when (and (not_hiddensurvivorat_s_p1))
                          (not (Pc_survivorat_s_p1)))

                    ; #84069: <==negation-removal== 77896 (pos)
                    (not (Pa_not_checked_p1))))

    (:action observ_c_p2_s
        :precondition (and (at_c_p2)
                           (not (checked_p2)))
        :effect (and
                    ; #12190: <==commonly_known== 57642 (pos)
                    (Bb_checked_p2)

                    ; #25957: <==closure== 12190 (pos)
                    (Pb_checked_p2)

                    ; #29755: origin
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Bc_not_survivorat_s_p2))

                    ; #39946: <==commonly_known== 57642 (pos)
                    (Bc_checked_p2)

                    ; #43194: <==closure== 60244 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (Pc_survivorat_s_p2))

                    ; #43781: <==closure== 75670 (pos)
                    (Pa_checked_p2)

                    ; #49612: <==closure== 29755 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (Pc_not_survivorat_s_p2))

                    ; #57642: origin
                    (checked_p2)

                    ; #60244: origin
                    (when (and (hiddensurvivorat_s_p2))
                          (Bc_survivorat_s_p2))

                    ; #61936: <==closure== 39946 (pos)
                    (Pc_checked_p2)

                    ; #75670: <==commonly_known== 57642 (pos)
                    (Ba_checked_p2)

                    ; #16505: <==unclosure== 56536 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #21171: <==negation-removal== 60244 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #30640: <==negation-removal== 39946 (pos)
                    (not (Pc_not_checked_p2))

                    ; #33346: <==negation-removal== 29755 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Pc_survivorat_s_p2)))

                    ; #36275: <==negation-removal== 43194 (pos)
                    (when (and (hiddensurvivorat_s_p2))
                          (not (Bc_not_survivorat_s_p2)))

                    ; #38927: <==unclosure== 77581 (neg)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Bc_survivorat_s_p2)))

                    ; #39306: <==negation-removal== 43781 (pos)
                    (not (Ba_not_checked_p2))

                    ; #42610: <==negation-removal== 49612 (pos)
                    (when (and (not_hiddensurvivorat_s_p2))
                          (not (Bc_survivorat_s_p2)))

                    ; #46614: <==negation-removal== 57642 (pos)
                    (not (not_checked_p2))

                    ; #51957: <==negation-removal== 61936 (pos)
                    (not (Bc_not_checked_p2))

                    ; #56536: <==uncertain_firing== 60244 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p2)))
                          (not (Pc_not_survivorat_s_p2)))

                    ; #57677: <==negation-removal== 75670 (pos)
                    (not (Pa_not_checked_p2))

                    ; #60800: <==negation-removal== 12190 (pos)
                    (not (Pb_not_checked_p2))

                    ; #77581: <==uncertain_firing== 29755 (pos)
                    (when (and (not (hiddensurvivorat_s_p2)))
                          (not (Pc_survivorat_s_p2)))

                    ; #87474: <==negation-removal== 25957 (pos)
                    (not (Bb_not_checked_p2))))

    (:action observ_c_p3_s
        :precondition (and (at_c_p3)
                           (not (checked_p3)))
        :effect (and
                    ; #11326: <==closure== 30166 (pos)
                    (Pa_checked_p3)

                    ; #14613: origin
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Bc_not_survivorat_s_p3))

                    ; #30166: <==commonly_known== 62025 (pos)
                    (Ba_checked_p3)

                    ; #34841: <==closure== 49989 (pos)
                    (Pc_checked_p3)

                    ; #34895: <==closure== 76081 (pos)
                    (Pb_checked_p3)

                    ; #49989: <==commonly_known== 62025 (pos)
                    (Bc_checked_p3)

                    ; #55255: origin
                    (when (and (hiddensurvivorat_s_p3))
                          (Bc_survivorat_s_p3))

                    ; #58843: <==closure== 55255 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (Pc_survivorat_s_p3))

                    ; #62025: origin
                    (checked_p3)

                    ; #65832: <==closure== 14613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (Pc_not_survivorat_s_p3))

                    ; #76081: <==commonly_known== 62025 (pos)
                    (Bb_checked_p3)

                    ; #12274: <==uncertain_firing== 14613 (pos)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Pc_survivorat_s_p3)))

                    ; #17093: <==negation-removal== 11326 (pos)
                    (not (Ba_not_checked_p3))

                    ; #23751: <==negation-removal== 49989 (pos)
                    (not (Pc_not_checked_p3))

                    ; #30069: <==negation-removal== 34841 (pos)
                    (not (Bc_not_checked_p3))

                    ; #37601: <==unclosure== 68666 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #44274: <==negation-removal== 65832 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Bc_survivorat_s_p3)))

                    ; #52649: <==negation-removal== 34895 (pos)
                    (not (Bb_not_checked_p3))

                    ; #58105: <==negation-removal== 62025 (pos)
                    (not (not_checked_p3))

                    ; #66725: <==negation-removal== 14613 (pos)
                    (when (and (not_hiddensurvivorat_s_p3))
                          (not (Pc_survivorat_s_p3)))

                    ; #68666: <==uncertain_firing== 55255 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p3)))
                          (not (Pc_not_survivorat_s_p3)))

                    ; #69340: <==negation-removal== 76081 (pos)
                    (not (Pb_not_checked_p3))

                    ; #77448: <==unclosure== 12274 (neg)
                    (when (and (not (hiddensurvivorat_s_p3)))
                          (not (Bc_survivorat_s_p3)))

                    ; #78142: <==negation-removal== 30166 (pos)
                    (not (Pa_not_checked_p3))

                    ; #80442: <==negation-removal== 58843 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Bc_not_survivorat_s_p3)))

                    ; #80957: <==negation-removal== 55255 (pos)
                    (when (and (hiddensurvivorat_s_p3))
                          (not (Pc_not_survivorat_s_p3)))))

    (:action observ_c_p4_s
        :precondition (and (at_c_p4)
                           (not (checked_p4)))
        :effect (and
                    ; #19135: <==commonly_known== 27908 (pos)
                    (Ba_checked_p4)

                    ; #26899: origin
                    (when (and (hiddensurvivorat_s_p4))
                          (Bc_survivorat_s_p4))

                    ; #27908: origin
                    (checked_p4)

                    ; #30015: <==closure== 26899 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (Pc_survivorat_s_p4))

                    ; #42127: <==closure== 48026 (pos)
                    (Pb_checked_p4)

                    ; #44861: <==closure== 19135 (pos)
                    (Pa_checked_p4)

                    ; #48026: <==commonly_known== 27908 (pos)
                    (Bb_checked_p4)

                    ; #57306: <==closure== 74407 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Pc_not_survivorat_s_p4))

                    ; #57480: <==commonly_known== 27908 (pos)
                    (Bc_checked_p4)

                    ; #69306: <==closure== 57480 (pos)
                    (Pc_checked_p4)

                    ; #74407: origin
                    (when (and (not_hiddensurvivorat_s_p4))
                          (Bc_not_survivorat_s_p4))

                    ; #10574: <==negation-removal== 26899 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #20810: <==unclosure== 71700 (neg)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Bc_survivorat_s_p4)))

                    ; #29296: <==negation-removal== 27908 (pos)
                    (not (not_checked_p4))

                    ; #29910: <==negation-removal== 44861 (pos)
                    (not (Ba_not_checked_p4))

                    ; #31292: <==negation-removal== 30015 (pos)
                    (when (and (hiddensurvivorat_s_p4))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #32921: <==negation-removal== 19135 (pos)
                    (not (Pa_not_checked_p4))

                    ; #33985: <==negation-removal== 48026 (pos)
                    (not (Pb_not_checked_p4))

                    ; #49685: <==unclosure== 71817 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Bc_not_survivorat_s_p4)))

                    ; #55275: <==negation-removal== 69306 (pos)
                    (not (Bc_not_checked_p4))

                    ; #57587: <==negation-removal== 74407 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Pc_survivorat_s_p4)))

                    ; #65690: <==negation-removal== 42127 (pos)
                    (not (Bb_not_checked_p4))

                    ; #65774: <==negation-removal== 57306 (pos)
                    (when (and (not_hiddensurvivorat_s_p4))
                          (not (Bc_survivorat_s_p4)))

                    ; #71700: <==uncertain_firing== 74407 (pos)
                    (when (and (not (hiddensurvivorat_s_p4)))
                          (not (Pc_survivorat_s_p4)))

                    ; #71817: <==uncertain_firing== 26899 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p4)))
                          (not (Pc_not_survivorat_s_p4)))

                    ; #87131: <==negation-removal== 57480 (pos)
                    (not (Pc_not_checked_p4))))

    (:action observ_c_p5_s
        :precondition (and (at_c_p5)
                           (not (checked_p5)))
        :effect (and
                    ; #11826: <==closure== 35510 (pos)
                    (Pc_checked_p5)

                    ; #13500: origin
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Bc_not_survivorat_s_p5))

                    ; #14452: origin
                    (when (and (hiddensurvivorat_s_p5))
                          (Bc_survivorat_s_p5))

                    ; #16368: <==commonly_known== 41114 (pos)
                    (Ba_checked_p5)

                    ; #16579: <==closure== 13500 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (Pc_not_survivorat_s_p5))

                    ; #18180: <==closure== 16368 (pos)
                    (Pa_checked_p5)

                    ; #35510: <==commonly_known== 41114 (pos)
                    (Bc_checked_p5)

                    ; #41114: origin
                    (checked_p5)

                    ; #80548: <==commonly_known== 41114 (pos)
                    (Bb_checked_p5)

                    ; #84593: <==closure== 80548 (pos)
                    (Pb_checked_p5)

                    ; #91421: <==closure== 14452 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (Pc_survivorat_s_p5))

                    ; #16669: <==negation-removal== 13500 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Pc_survivorat_s_p5)))

                    ; #18197: <==negation-removal== 84593 (pos)
                    (not (Bb_not_checked_p5))

                    ; #34320: <==negation-removal== 14452 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #46104: <==uncertain_firing== 14452 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Pc_not_survivorat_s_p5)))

                    ; #46337: <==negation-removal== 18180 (pos)
                    (not (Ba_not_checked_p5))

                    ; #50187: <==uncertain_firing== 13500 (pos)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Pc_survivorat_s_p5)))

                    ; #58119: <==negation-removal== 16368 (pos)
                    (not (Pa_not_checked_p5))

                    ; #60238: <==negation-removal== 35510 (pos)
                    (not (Pc_not_checked_p5))

                    ; #62607: <==unclosure== 50187 (neg)
                    (when (and (not (hiddensurvivorat_s_p5)))
                          (not (Bc_survivorat_s_p5)))

                    ; #66783: <==negation-removal== 11826 (pos)
                    (not (Bc_not_checked_p5))

                    ; #68927: <==negation-removal== 16579 (pos)
                    (when (and (not_hiddensurvivorat_s_p5))
                          (not (Bc_survivorat_s_p5)))

                    ; #76553: <==unclosure== 46104 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p5)))
                          (not (Bc_not_survivorat_s_p5)))

                    ; #79767: <==negation-removal== 41114 (pos)
                    (not (not_checked_p5))

                    ; #87740: <==negation-removal== 80548 (pos)
                    (not (Pb_not_checked_p5))

                    ; #96639: <==negation-removal== 91421 (pos)
                    (when (and (hiddensurvivorat_s_p5))
                          (not (Bc_not_survivorat_s_p5)))))

    (:action observ_c_p6_s
        :precondition (and (at_c_p6)
                           (not (checked_p6)))
        :effect (and
                    ; #20585: <==closure== 55994 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Pc_not_survivorat_s_p6))

                    ; #22162: origin
                    (checked_p6)

                    ; #29435: <==commonly_known== 22162 (pos)
                    (Bb_checked_p6)

                    ; #33648: <==closure== 78047 (pos)
                    (Pc_checked_p6)

                    ; #54671: <==closure== 29435 (pos)
                    (Pb_checked_p6)

                    ; #55994: origin
                    (when (and (not_hiddensurvivorat_s_p6))
                          (Bc_not_survivorat_s_p6))

                    ; #58302: <==closure== 68009 (pos)
                    (Pa_checked_p6)

                    ; #68009: <==commonly_known== 22162 (pos)
                    (Ba_checked_p6)

                    ; #78047: <==commonly_known== 22162 (pos)
                    (Bc_checked_p6)

                    ; #85827: origin
                    (when (and (hiddensurvivorat_s_p6))
                          (Bc_survivorat_s_p6))

                    ; #89543: <==closure== 85827 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (Pc_survivorat_s_p6))

                    ; #21088: <==negation-removal== 54671 (pos)
                    (not (Bb_not_checked_p6))

                    ; #21392: <==uncertain_firing== 55994 (pos)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Pc_survivorat_s_p6)))

                    ; #28472: <==negation-removal== 78047 (pos)
                    (not (Pc_not_checked_p6))

                    ; #35152: <==negation-removal== 55994 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Pc_survivorat_s_p6)))

                    ; #45816: <==negation-removal== 68009 (pos)
                    (not (Pa_not_checked_p6))

                    ; #51057: <==negation-removal== 29435 (pos)
                    (not (Pb_not_checked_p6))

                    ; #62934: <==negation-removal== 85827 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #70008: <==unclosure== 21392 (neg)
                    (when (and (not (hiddensurvivorat_s_p6)))
                          (not (Bc_survivorat_s_p6)))

                    ; #70733: <==negation-removal== 20585 (pos)
                    (when (and (not_hiddensurvivorat_s_p6))
                          (not (Bc_survivorat_s_p6)))

                    ; #72921: <==uncertain_firing== 85827 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Pc_not_survivorat_s_p6)))

                    ; #76964: <==negation-removal== 33648 (pos)
                    (not (Bc_not_checked_p6))

                    ; #82338: <==unclosure== 72921 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p6)))
                          (not (Bc_not_survivorat_s_p6)))

                    ; #82711: <==negation-removal== 58302 (pos)
                    (not (Ba_not_checked_p6))

                    ; #90691: <==negation-removal== 22162 (pos)
                    (not (not_checked_p6))

                    ; #91850: <==negation-removal== 89543 (pos)
                    (when (and (hiddensurvivorat_s_p6))
                          (not (Bc_not_survivorat_s_p6)))))

    (:action observ_c_p7_s
        :precondition (and (at_c_p7)
                           (not (checked_p7)))
        :effect (and
                    ; #26102: origin
                    (checked_p7)

                    ; #32821: <==closure== 53889 (pos)
                    (Pc_checked_p7)

                    ; #35005: <==closure== 77679 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (Pc_survivorat_s_p7))

                    ; #38169: <==closure== 86803 (pos)
                    (Pa_checked_p7)

                    ; #48635: <==closure== 55990 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Pc_not_survivorat_s_p7))

                    ; #50630: <==commonly_known== 26102 (pos)
                    (Bb_checked_p7)

                    ; #53889: <==commonly_known== 26102 (pos)
                    (Bc_checked_p7)

                    ; #55990: origin
                    (when (and (not_hiddensurvivorat_s_p7))
                          (Bc_not_survivorat_s_p7))

                    ; #77679: origin
                    (when (and (hiddensurvivorat_s_p7))
                          (Bc_survivorat_s_p7))

                    ; #86803: <==commonly_known== 26102 (pos)
                    (Ba_checked_p7)

                    ; #89079: <==closure== 50630 (pos)
                    (Pb_checked_p7)

                    ; #17512: <==negation-removal== 55990 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Pc_survivorat_s_p7)))

                    ; #28269: <==uncertain_firing== 77679 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #41234: <==negation-removal== 50630 (pos)
                    (not (Pb_not_checked_p7))

                    ; #46249: <==negation-removal== 32821 (pos)
                    (not (Bc_not_checked_p7))

                    ; #47259: <==negation-removal== 26102 (pos)
                    (not (not_checked_p7))

                    ; #52904: <==negation-removal== 89079 (pos)
                    (not (Bb_not_checked_p7))

                    ; #59104: <==uncertain_firing== 55990 (pos)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Pc_survivorat_s_p7)))

                    ; #61281: <==negation-removal== 77679 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Pc_not_survivorat_s_p7)))

                    ; #64804: <==negation-removal== 53889 (pos)
                    (not (Pc_not_checked_p7))

                    ; #69892: <==negation-removal== 48635 (pos)
                    (when (and (not_hiddensurvivorat_s_p7))
                          (not (Bc_survivorat_s_p7)))

                    ; #75246: <==negation-removal== 35005 (pos)
                    (when (and (hiddensurvivorat_s_p7))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #79704: <==negation-removal== 38169 (pos)
                    (not (Ba_not_checked_p7))

                    ; #79797: <==unclosure== 28269 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p7)))
                          (not (Bc_not_survivorat_s_p7)))

                    ; #84580: <==negation-removal== 86803 (pos)
                    (not (Pa_not_checked_p7))

                    ; #90069: <==unclosure== 59104 (neg)
                    (when (and (not (hiddensurvivorat_s_p7)))
                          (not (Bc_survivorat_s_p7)))))

    (:action observ_c_p8_s
        :precondition (and (at_c_p8)
                           (not (checked_p8)))
        :effect (and
                    ; #10998: <==closure== 18536 (pos)
                    (Pb_checked_p8)

                    ; #13472: origin
                    (checked_p8)

                    ; #16722: <==commonly_known== 13472 (pos)
                    (Ba_checked_p8)

                    ; #18536: <==commonly_known== 13472 (pos)
                    (Bb_checked_p8)

                    ; #20479: <==closure== 16722 (pos)
                    (Pa_checked_p8)

                    ; #30882: origin
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Bc_not_survivorat_s_p8))

                    ; #31694: <==commonly_known== 13472 (pos)
                    (Bc_checked_p8)

                    ; #42881: <==closure== 30882 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (Pc_not_survivorat_s_p8))

                    ; #62442: <==closure== 95277 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (Pc_survivorat_s_p8))

                    ; #77360: <==closure== 31694 (pos)
                    (Pc_checked_p8)

                    ; #95277: origin
                    (when (and (hiddensurvivorat_s_p8))
                          (Bc_survivorat_s_p8))

                    ; #11198: <==negation-removal== 16722 (pos)
                    (not (Pa_not_checked_p8))

                    ; #13741: <==negation-removal== 42881 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Bc_survivorat_s_p8)))

                    ; #14084: <==unclosure== 89411 (neg)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Bc_survivorat_s_p8)))

                    ; #24519: <==negation-removal== 30882 (pos)
                    (when (and (not_hiddensurvivorat_s_p8))
                          (not (Pc_survivorat_s_p8)))

                    ; #25102: <==negation-removal== 77360 (pos)
                    (not (Bc_not_checked_p8))

                    ; #25591: <==unclosure== 34658 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #27645: <==negation-removal== 20479 (pos)
                    (not (Ba_not_checked_p8))

                    ; #34658: <==uncertain_firing== 95277 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p8)))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #34675: <==negation-removal== 13472 (pos)
                    (not (not_checked_p8))

                    ; #59304: <==negation-removal== 18536 (pos)
                    (not (Pb_not_checked_p8))

                    ; #61949: <==negation-removal== 95277 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Pc_not_survivorat_s_p8)))

                    ; #63440: <==negation-removal== 10998 (pos)
                    (not (Bb_not_checked_p8))

                    ; #81788: <==negation-removal== 62442 (pos)
                    (when (and (hiddensurvivorat_s_p8))
                          (not (Bc_not_survivorat_s_p8)))

                    ; #82892: <==negation-removal== 31694 (pos)
                    (not (Pc_not_checked_p8))

                    ; #89411: <==uncertain_firing== 30882 (pos)
                    (when (and (not (hiddensurvivorat_s_p8)))
                          (not (Pc_survivorat_s_p8)))))

    (:action observ_c_p9_s
        :precondition (and (at_c_p9)
                           (not (checked_p9)))
        :effect (and
                    ; #17284: <==closure== 65493 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Pc_not_survivorat_s_p9))

                    ; #31302: <==closure== 67850 (pos)
                    (Pa_checked_p9)

                    ; #37906: <==closure== 52415 (pos)
                    (Pc_checked_p9)

                    ; #41958: origin
                    (when (and (hiddensurvivorat_s_p9))
                          (Bc_survivorat_s_p9))

                    ; #48278: <==closure== 89427 (pos)
                    (Pb_checked_p9)

                    ; #52415: <==commonly_known== 63575 (pos)
                    (Bc_checked_p9)

                    ; #63575: origin
                    (checked_p9)

                    ; #65493: origin
                    (when (and (not_hiddensurvivorat_s_p9))
                          (Bc_not_survivorat_s_p9))

                    ; #67850: <==commonly_known== 63575 (pos)
                    (Ba_checked_p9)

                    ; #86620: <==closure== 41958 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (Pc_survivorat_s_p9))

                    ; #89427: <==commonly_known== 63575 (pos)
                    (Bb_checked_p9)

                    ; #11385: <==negation-removal== 37906 (pos)
                    (not (Bc_not_checked_p9))

                    ; #35882: <==negation-removal== 63575 (pos)
                    (not (not_checked_p9))

                    ; #37367: <==negation-removal== 86620 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #43404: <==uncertain_firing== 41958 (pos)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Pc_not_survivorat_s_p9)))

                    ; #47882: <==negation-removal== 48278 (pos)
                    (not (Bb_not_checked_p9))

                    ; #51675: <==negation-removal== 65493 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Pc_survivorat_s_p9)))

                    ; #56053: <==negation-removal== 31302 (pos)
                    (not (Ba_not_checked_p9))

                    ; #64720: <==negation-removal== 67850 (pos)
                    (not (Pa_not_checked_p9))

                    ; #66725: <==uncertain_firing== 65493 (pos)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Pc_survivorat_s_p9)))

                    ; #73034: <==negation-removal== 17284 (pos)
                    (when (and (not_hiddensurvivorat_s_p9))
                          (not (Bc_survivorat_s_p9)))

                    ; #74910: <==unclosure== 66725 (neg)
                    (when (and (not (hiddensurvivorat_s_p9)))
                          (not (Bc_survivorat_s_p9)))

                    ; #81607: <==unclosure== 43404 (neg)
                    (when (and (not (not_hiddensurvivorat_s_p9)))
                          (not (Bc_not_survivorat_s_p9)))

                    ; #86857: <==negation-removal== 89427 (pos)
                    (not (Pb_not_checked_p9))

                    ; #89299: <==negation-removal== 52415 (pos)
                    (not (Pc_not_checked_p9))

                    ; #89395: <==negation-removal== 41958 (pos)
                    (when (and (hiddensurvivorat_s_p9))
                          (not (Pc_not_survivorat_s_p9)))))

)